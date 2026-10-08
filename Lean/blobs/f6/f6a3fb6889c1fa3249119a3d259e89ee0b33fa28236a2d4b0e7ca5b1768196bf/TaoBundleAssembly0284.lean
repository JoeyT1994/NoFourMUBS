import TaoBundleAssembly0283
import TaoBundleChunkBatch0370
import TaoBundleChunkBatch0371
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284
def root_3935933 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935933_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935933_left_fuel : Nat := 23
def small_3935933_left_count : Nat := 347
def small_3935933_left_encoded : String := "1151E8FF08A91301120700F608A912F912073D0208A912FB12073CFA0000000208A912FD12073D0605000108135D44FF04548A01138670F60CFD9BF90F350D020CFD9BFB000000050F34D0FA0CFD9BFD000000050F34D106000000030000000A00000002000000010F34D1020000000100000009000000001386ACF6000000000CFD9BF90F350D0200000009000000010000000900000004135D80FF0000000404548A01138670F60CFD9BF90F350D020CFD9BFB00000009000000090000000100000009000000000000000900000003120701060000000305000108135D44FF04548A01138670F60CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD000000080000000A0000000A000000010000000A000000001386ACF6000000000CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD000000090000000A0000000A000000010000000A00000004135D80FF0000000404548A01138670F60CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD000000081386710600000003000000080F34D0FA0000000A00000002000000010F34D102000000010000000A000000001386ACF6000000000CFD9BF90F350D020CFD9BFB0F350CFA00000002000000090F34D0FA0000000A00000002000000010F34D1020000000100000009120700FA08A912FD12073D0605000108135D44FF04548A01138670F60CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD0F350D060C9A87020F8750F90C9A8706000000090000000A0000000100000009000000030000000A0000000A000000010000000A000000001386ACF6000000000CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD000000090000000A0000000A000000010000000A00000004135D80FF0000000404548A01138670F60CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD0F350D0600000009000000030F34D106000000030000000A138670FA0CFD9BFD0F350D060C9A87020F8750F90C9A8706000000090000000A000000010000000A000000030000000A00000002000000010F34D102000000010000000A000000001386ACF6000000000CFD9BF90F350D02045489FB00000009138670FA0000000A0000000200000001000000090000000312070106000000030000000A0000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000912070106000000030000000A120700FA0000000A000000020000000012073CF60000000008A912F912073D0208A912FB12073CFA0000000208A912FD12073D0605000108135D44FF0CFD9C010F34D0F6000000090000000000000009000000040000000900000003120701060000000305000108135D44FF0CFD9C010F34D0F60CFD9BF90F350D020CFD9BFB0F350CFA00000002000000090000000A000000010000000A000000000F350CF6000000000CFD9BF90F350D020CFD9BFB0F350CFA00000002000000090F34D0FA0000000600000002000000010F34D102000000010000000900000004135D80FF000000040CFD9C010F34D0F60CFD9BF90F350D020CFD9BFB00000009000000090000000100000009000000000F350CF6000000000CFD9BF90F350D02000000090000000100000009120700FA08A912FD12073D0605000108135D44FF0CFD9C010F34D0F60CFD9BF90F350D02045489FB000000090000000A0000000100000009000000000F350CF6000000000CFD9BF90F350D0200000009000000010000000900000004135D80FF000000040CFD9C010F34D0F60000000900000000000000090000000312070106000000030000000A0000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000912070106000000030000000A120700FA0000000A0000000200000004"
theorem small_3935933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3935933_left_root small_3935933_left_fuel small_3935933_left_count small_3935933_left_encoded = true := by
  decide +kernel
theorem small_3935933_left_covered : CoveredBy scale carrier boxes small_3935933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3935933_left_root small_3935933_left_fuel small_3935933_left_count small_3935933_left_encoded small_3935933_left_checked

theorem cover_3935933 : CoveredBy scale carrier boxes root_3935933 := by
  apply coveredBy_split_literal root_3935933 small_3935933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1478.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3935933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1478.covered
#print axioms cover_3935933

def root_3935927 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935927_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935927_left_fuel : Nat := 1
def small_3935927_left_count : Nat := 1
def small_3935927_left_encoded : String := "00000003"
theorem small_3935927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3935927_left_root small_3935927_left_fuel small_3935927_left_count small_3935927_left_encoded = true := by
  decide +kernel
theorem small_3935927_left_covered : CoveredBy scale carrier boxes small_3935927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3935927_left_root small_3935927_left_fuel small_3935927_left_count small_3935927_left_encoded small_3935927_left_checked

theorem cover_3935927 : CoveredBy scale carrier boxes root_3935927 := by
  apply coveredBy_split_literal root_3935927 small_3935927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3935933 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3935927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3935933
#print axioms cover_3935927

def root_3935227 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935227_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935227_left_fuel : Nat := 34
def small_3935227_left_count : Nat := 331
def small_3935227_left_encoded : String := "1151E8FD0A0001081151E8FF08A91301120700F608A912F912073D0208A912FB00000009120700FA0500010600000009135D80FD0000000305000108135D44FF0000000900000004000000090000000200000001000000090000000012073CF6000000000000000900000004115224FF0000000408A91301120700F608A912F912073D0208A912FB12073CFA0000000208A912FF00000009120701080000000405000106135D44FD04548A01000000090000000700000003135D80FD0000000304548A01138670F60CFD9BF90F350D020CFD9BFB000000090F34D0FA0000000900000002000000010F34D1020000000100000007000000001386ACF6000000000CFD9BF90000000900000009120700FA08A912FF12073D080500010600000009135D80FD0000000304548A01138670F60CFD9BF90F350D02045489FB00000009138670FA0CFD9BFF000000090F34D1080000000400000009000000020000000100000009000000001386ACF6000000000CFD9BF9000000090000000900000004120701080000000405000106135D44FD04548A01138670F60CFD9BF90F350D02045489FB00000007138670FA045489FF000000090000000700000002000000010F34D1020000000100000007000000001386ACF6000000000CFD9BF90F350D02045489FB0000000700000007000000010000000900000003135D80FD0000000304548A01138670F60CFD9BF90F350D02045489FB1386ACFA00000002045489FF0000000913867108000000040C9A87020F8750F9000000070000000100000007138670FA045489FF1386AD080C9A87020F8750F907800106128A40FD022A4581000000090000000900000003128A7CFD00000003022A458113E1C4F6022A457B0000000913E1C4FA067ECE7F0000000812EA5908000000040B4D4402108010F9000000060000000100000008000000020000000013E200F600000000022A457B0000000613E1C4FA0000000600000002000000010F878CF900000001000000090000000413867108000000040C9A87020F8750F907800106128A40FD0000000700000003128A7CFD00000003022A458113E1C4F6022A457B13E200FA00000002022A457F13E201080B4D440200000006000000070000000400000005000000050000000000000005000000010F878CF9000000010780010600000007128A7CFD00000003022A458113E1C4F600000007000000000000000500000002000000010F34D10200000001045489FB00000007138670FA045489FF000000090000000700000002000000001386ACF6000000000CFD9BF90F350D02045489FB1386ACFA00000002045489FF0000000900000007138670FA045489FF1386AD080C9A87020F8750F9000000090000000100000009000000040000000700000002000000010F34D10200000001000000070000000200000001120701020000000108A912FB00000009120700FA08A912FF00000009120701080000000400000009000000020000000012073CF60000000008A912F912073D0208A912FB12073CFA0000000208A912FF0000000912070108000000040500010600000007135D80FD0000000300000009120700FA08A912FF00000009120701080000000405000106135D44FD0CFD9C01000000090000000700000003135D80FD000000030CFD9C010F34D0F60CFD9BF90F350D02045489FB00000007138670FA045489FF000000060000000500000002000000010F34D1020000000100000007000000000F350CF600000000000000090000000200000001120701020000000108A912FB00000009120700FA000000090000000200000003"
theorem small_3935227_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3935227_left_root small_3935227_left_fuel small_3935227_left_count small_3935227_left_encoded = true := by
  decide +kernel
theorem small_3935227_left_covered : CoveredBy scale carrier boxes small_3935227_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3935227_left_root small_3935227_left_fuel small_3935227_left_count small_3935227_left_encoded small_3935227_left_checked

theorem cover_3935227 : CoveredBy scale carrier boxes root_3935227 := by
  apply coveredBy_split_literal root_3935227 small_3935227_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3935927 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3935227_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3935927
#print axioms cover_3935227

def root_3935221 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935221_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935221_left_fuel : Nat := 1
def small_3935221_left_count : Nat := 1
def small_3935221_left_encoded : String := "00000002"
theorem small_3935221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3935221_left_root small_3935221_left_fuel small_3935221_left_count small_3935221_left_encoded = true := by
  decide +kernel
theorem small_3935221_left_covered : CoveredBy scale carrier boxes small_3935221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3935221_left_root small_3935221_left_fuel small_3935221_left_count small_3935221_left_encoded small_3935221_left_checked

theorem cover_3935221 : CoveredBy scale carrier boxes root_3935221 := by
  apply coveredBy_split_literal root_3935221 small_3935221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3935227 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3935221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3935227
#print axioms cover_3935221

def root_3935220 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935220_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935220_right_fuel : Nat := 18
def small_3935220_right_count : Nat := 125
def small_3935220_right_encoded : String := "1151E8FB0A0001061151E8FD0A0001081151E8FF0000000900000004115224FF0000000408A91301120700F608A912F912073D0208A912FF00000009120701080000000400000009000000011207010200000001000000090000000012073CF60000000008A912F912073D0208A912FF12073D080000000900000004000000070000000112070102000000010000000700000003115224FD000000030A0001081151E8FF08A91301120700F608A912F912073D0208A912FD000000091207010600000003050000FA135D80FB0000000205000108135D44FF04548A01138670F600000009000000000000000900000004000000090000000900000001000000090000000012073CF60000000008A912F912073D0200000009000000010000000900000004115224FF0000000408A91301120700F608A912F912073D0208A912FD12073D0608A912FF000000091207010800000004050000FA135D80FB0000000204548A010000000900000009135D44FB000000090000000200000003120701060000000308A912FF00000009120701080000000400000009000000011207010200000001000000090000000012073CF60000000008A912F912073D0208A912FD12073D0608A912FF0000000912070108000000040000000900000003000000090000000112070102000000010000000900000002"
theorem small_3935220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3935220_right_root small_3935220_right_fuel small_3935220_right_count small_3935220_right_encoded = true := by
  decide +kernel
theorem small_3935220_right_covered : CoveredBy scale carrier boxes small_3935220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3935220_right_root small_3935220_right_fuel small_3935220_right_count small_3935220_right_encoded small_3935220_right_checked

theorem cover_3935220 : CoveredBy scale carrier boxes root_3935220 := by
  apply coveredBy_split_literal root_3935220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3935221 small_3935220_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3935221
  · exact small_3935220_right_covered
#print axioms cover_3935220

def root_3935214 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935214_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3935214_left_fuel : Nat := 1
def small_3935214_left_count : Nat := 1
def small_3935214_left_encoded : String := "00000001"
theorem small_3935214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3935214_left_root small_3935214_left_fuel small_3935214_left_count small_3935214_left_encoded = true := by
  decide +kernel
theorem small_3935214_left_covered : CoveredBy scale carrier boxes small_3935214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3935214_left_root small_3935214_left_fuel small_3935214_left_count small_3935214_left_encoded small_3935214_left_checked

theorem cover_3935214 : CoveredBy scale carrier boxes root_3935214 := by
  apply coveredBy_split_literal root_3935214 small_3935214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3935220 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3935214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3935220
#print axioms cover_3935214

def root_3932018 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3932018 : CoveredBy scale carrier boxes root_3932018 := by
  apply coveredBy_split_literal root_3932018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3932019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3935214 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3932019
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3935214
#print axioms cover_3932018

def root_3932013 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932013_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932013_right_fuel : Nat := 1
def small_3932013_right_count : Nat := 1
def small_3932013_right_encoded : String := "00000000"
theorem small_3932013_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3932013_right_root small_3932013_right_fuel small_3932013_right_count small_3932013_right_encoded = true := by
  decide +kernel
theorem small_3932013_right_covered : CoveredBy scale carrier boxes small_3932013_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3932013_right_root small_3932013_right_fuel small_3932013_right_count small_3932013_right_encoded small_3932013_right_checked

theorem cover_3932013 : CoveredBy scale carrier boxes root_3932013 := by
  apply coveredBy_split_literal root_3932013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3932018 small_3932013_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3932018
  · exact small_3932013_right_covered
#print axioms cover_3932013

def root_3932012 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932012_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932012_right_fuel : Nat := 23
def small_3932012_right_count : Nat := 285
def small_3932012_right_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000900000004115224FF0000000408A912FB00000009120700FA000000060000000200000003115224FD000000030A0001081151E8FF08A912FB12073CFA0000000208A912FD00000006120701060000000300000006120700FA000000060000000200000004115224FF0000000408A912FB12073CFA0000000208A912FD00000006120701060000000300000006120700FA00000006000000021151E8FB0A0001061151E8FD0000000A00000003115224FD000000030A0001081151E8FF0000000900000004000000090000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF08A912F900000009120701020000000108A912FB000000070000000900000004115224FF0000000408A912F912073D0208A912FB00000009120700FA000000090000000200000001120701020000000108A912FB000000070000000900000003115224FD000000030A0001081151E8FF08A912F912073D0208A912FB12073CFA0000000208A912FD12073D0600000009000000031207010600000003050000F6135D810105000108135D44FF0CFD9BF90F350D020CFD9BFB00000006000000090000000100000009000000040000000900000000135D45010000000005000108135D44FF0CFD9BF90F350D0200000006000000010F34D10200000001000000080000000400000006120700FA08A912FD12073D06050000F600000009135D45010000000000000009000000031207010600000003050000F60000000A000000080000000200000001120701020000000108A912FB12073CFA0000000208A912FD00000008120701060000000300000008120700FA08A912FD000000080000000A0000000200000004115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD00000009120701060000000308A912FF12073D08050000F600000009000000080000000400000008120700FA08A912FD12073D0608A912FF0000000912070108000000040000000600000003120701060000000308A912FF00000006000000080000000200000001120701020000000108A912FB12073CFA0000000208A912FD00000008120701060000000300000008000000091151E8FB0A0001061151E8FD0A0001081151E8FF08A912F90000000912070102000000010000000700000004115224FF0000000408A912F912073D0208A912FF12073D08050000F6000000090000000900000004000000070000000112070102000000010000000700000003115224FD000000030A0001081151E8FF08A912F912073D0208A912FD0000000912070106000000030000000900000001120701020000000108A912FD12073D06050000F60000000900000008000000031207010600000003050000F600000009135D450100000000050000FA000000080000000900000004115224FF0000000408A912F900000009120701020000000108A912FD0000000812070106000000030000000800000002"
theorem small_3932012_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3932012_right_root small_3932012_right_fuel small_3932012_right_count small_3932012_right_encoded = true := by
  decide +kernel
theorem small_3932012_right_covered : CoveredBy scale carrier boxes small_3932012_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3932012_right_root small_3932012_right_fuel small_3932012_right_count small_3932012_right_encoded small_3932012_right_checked

theorem cover_3932012 : CoveredBy scale carrier boxes root_3932012 := by
  apply coveredBy_split_literal root_3932012 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3932013 small_3932012_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3932013
  · exact small_3932012_right_covered
#print axioms cover_3932012

def root_3932011 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3932011 : CoveredBy scale carrier boxes root_3932011 := by
  apply coveredBy_split_literal root_3932011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3932012 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1479.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3932012
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1479.covered
#print axioms cover_3932011

def root_3894935 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894935 : CoveredBy scale carrier boxes root_3894935 := by
  apply coveredBy_split_literal root_3894935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3932011 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894936
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3932011
#print axioms cover_3894935

def root_3942758 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942758 : CoveredBy scale carrier boxes root_3942758 := by
  apply coveredBy_split_literal root_3942758 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1480.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1481.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1480.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1481.covered
#print axioms cover_3942758

def root_3942753 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942753_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942753_right_fuel : Nat := 1
def small_3942753_right_count : Nat := 1
def small_3942753_right_encoded : String := "00000003"
theorem small_3942753_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3942753_right_root small_3942753_right_fuel small_3942753_right_count small_3942753_right_encoded = true := by
  decide +kernel
theorem small_3942753_right_covered : CoveredBy scale carrier boxes small_3942753_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3942753_right_root small_3942753_right_fuel small_3942753_right_count small_3942753_right_encoded small_3942753_right_checked

theorem cover_3942753 : CoveredBy scale carrier boxes root_3942753 := by
  apply coveredBy_split_literal root_3942753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3942758 small_3942753_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3942758
  · exact small_3942753_right_covered
#print axioms cover_3942753

def root_3942661 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942661_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942661_left_fuel : Nat := 13
def small_3942661_left_count : Nat := 43
def small_3942661_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A912FB12073CFA0000000208A912FF12073CFE0000000405000102135D44F9050001060000000800000005000000010000000500000005120700FA08A912FF12073CFE000000040000000500000005000000020000000012073CF600000000000000051151E8FF08A91301120700F608A912FB12073CFA000000020000000500000005000000000000000500000004"
theorem small_3942661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3942661_left_root small_3942661_left_fuel small_3942661_left_count small_3942661_left_encoded = true := by
  decide +kernel
theorem small_3942661_left_covered : CoveredBy scale carrier boxes small_3942661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3942661_left_root small_3942661_left_fuel small_3942661_left_count small_3942661_left_encoded small_3942661_left_checked

theorem cover_3942661 : CoveredBy scale carrier boxes root_3942661 := by
  apply coveredBy_split_literal root_3942661 small_3942661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3942753 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3942661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3942753
#print axioms cover_3942661

def root_3942655 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942655_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942655_left_fuel : Nat := 1
def small_3942655_left_count : Nat := 1
def small_3942655_left_encoded : String := "00000002"
theorem small_3942655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3942655_left_root small_3942655_left_fuel small_3942655_left_count small_3942655_left_encoded = true := by
  decide +kernel
theorem small_3942655_left_covered : CoveredBy scale carrier boxes small_3942655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3942655_left_root small_3942655_left_fuel small_3942655_left_count small_3942655_left_encoded small_3942655_left_checked

theorem cover_3942655 : CoveredBy scale carrier boxes root_3942655 := by
  apply coveredBy_split_literal root_3942655 small_3942655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3942661 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3942655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3942661
#print axioms cover_3942655

def root_3949506 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3949506 : CoveredBy scale carrier boxes root_3949506 := by
  apply coveredBy_split_literal root_3949506 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1483.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1484.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1483.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1484.covered
#print axioms cover_3949506

def root_3949500 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3949500_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3949500_left_fuel : Nat := 1
def small_3949500_left_count : Nat := 1
def small_3949500_left_encoded : String := "00000002"
theorem small_3949500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3949500_left_root small_3949500_left_fuel small_3949500_left_count small_3949500_left_encoded = true := by
  decide +kernel
theorem small_3949500_left_covered : CoveredBy scale carrier boxes small_3949500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3949500_left_root small_3949500_left_fuel small_3949500_left_count small_3949500_left_encoded small_3949500_left_checked

theorem cover_3949500 : CoveredBy scale carrier boxes root_3949500 := by
  apply coveredBy_split_literal root_3949500 small_3949500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3949506 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3949500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3949506
#print axioms cover_3949500

def root_3949499 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3949499_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3949499_right_fuel : Nat := 20
def small_3949499_right_count : Nat := 223
def small_3949499_right_encoded : String := "135D44FB04548A01138670F604548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078001020000000A128A7CF900000001028000FA00000006000000060F8750FF07800102128A40F9028000FA13D7ECFB00000002022A458113E1C4F6022A45870000000513E201060B4D43FE00000006108010FF0000000600000004000000030000000013E200F600000000022A45870000000A000000080000000A00000001128A7CF900000001028000FA13D7ECFB00000002022A45810000000613E200F600000000022A458713E1C506000000030000000713E201060B4D43FE00000006108010FF00000006000000040000000313D7B0FB022A45810000000613E200F600000000022A4587000000060000000600000002000000040F34D0FE0000000A000000041386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800102128A40F90000000800000001128A7CF900000001028000FA13D7ECFB00000002022A45810000000613E200F600000000067ECE870000000600000005000000080F8750FF07800102128A40F90000000800000001128A7CF900000001028000FA13D7ECFB00000002022A458113E1C4F6067ECE870000000600000006000000000000000800000008000000040F34D0FE078001020000000A128A7CF900000001028000FA00000005000000060000000400000003000000001386ACF60000000004548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800102128A40F90000000A00000001128A7CF900000001028000FA13D7ECFB00000002067ECE8112EA58F600000007000000000000000713D7B0FB00000007000000020F8750FF07800102128A40F9028000FA13D7ECFB00000002067ECE8112EA58F60000000800000000000000080000000800000001128A7CF900000001028000FA13D7ECFB00000002067ECE8112EA58F6022A458713E1C506000000030000000713E201060B4D43FE00000008108010FF0000000800000004000000030000000012EA94F600000000022A458713E1C50600000003000000070000000813D7B0FB067ECE8112EA58F600000008000000000000000800000002000000040F34D0FE078001020000000A00000007000000041386AD060CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF0000000800000004000000050000000300000002"
theorem small_3949499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3949499_right_root small_3949499_right_fuel small_3949499_right_count small_3949499_right_encoded = true := by
  decide +kernel
theorem small_3949499_right_covered : CoveredBy scale carrier boxes small_3949499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3949499_right_root small_3949499_right_fuel small_3949499_right_count small_3949499_right_encoded small_3949499_right_checked

theorem cover_3949499 : CoveredBy scale carrier boxes root_3949499 := by
  apply coveredBy_split_literal root_3949499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3949500 small_3949499_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3949500
  · exact small_3949499_right_covered
#print axioms cover_3949499

def root_3949493 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3949493_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3949493_left_fuel : Nat := 1
def small_3949493_left_count : Nat := 1
def small_3949493_left_encoded : String := "00000001"
theorem small_3949493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3949493_left_root small_3949493_left_fuel small_3949493_left_count small_3949493_left_encoded = true := by
  decide +kernel
theorem small_3949493_left_covered : CoveredBy scale carrier boxes small_3949493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3949493_left_root small_3949493_left_fuel small_3949493_left_count small_3949493_left_encoded small_3949493_left_checked

theorem cover_3949493 : CoveredBy scale carrier boxes root_3949493 := by
  apply coveredBy_split_literal root_3949493 small_3949493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3949499 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3949493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3949499
#print axioms cover_3949493

def root_3947625 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3947625 : CoveredBy scale carrier boxes root_3947625 := by
  apply coveredBy_split_literal root_3947625 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1482.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3949493 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1482.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3949493
#print axioms cover_3947625

def root_3947619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947619_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947619_left_fuel : Nat := 1
def small_3947619_left_count : Nat := 1
def small_3947619_left_encoded : String := "00000004"
theorem small_3947619_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947619_left_root small_3947619_left_fuel small_3947619_left_count small_3947619_left_encoded = true := by
  decide +kernel
theorem small_3947619_left_covered : CoveredBy scale carrier boxes small_3947619_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947619_left_root small_3947619_left_fuel small_3947619_left_count small_3947619_left_encoded small_3947619_left_checked

theorem cover_3947619 : CoveredBy scale carrier boxes root_3947619 := by
  apply coveredBy_split_literal root_3947619 small_3947619_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3947625 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3947619_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3947625
#print axioms cover_3947619

def root_3947618 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947618_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947618_right_fuel : Nat := 7
def small_3947618_right_count : Nat := 19
def small_3947618_right_encoded : String := "120700FE05000102135D44F9050000FA135D80FB0000000204548A010000000A000000050000000A00000001135D80F900000001050000FA00000005135D44FB0000000A0000000200000004"
theorem small_3947618_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947618_right_root small_3947618_right_fuel small_3947618_right_count small_3947618_right_encoded = true := by
  decide +kernel
theorem small_3947618_right_covered : CoveredBy scale carrier boxes small_3947618_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947618_right_root small_3947618_right_fuel small_3947618_right_count small_3947618_right_encoded small_3947618_right_checked

theorem cover_3947618 : CoveredBy scale carrier boxes root_3947618 := by
  apply coveredBy_split_literal root_3947618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3947619 small_3947618_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3947619
  · exact small_3947618_right_covered
#print axioms cover_3947618

def root_3947612 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947612_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947612_left_fuel : Nat := 1
def small_3947612_left_count : Nat := 1
def small_3947612_left_encoded : String := "00000003"
theorem small_3947612_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947612_left_root small_3947612_left_fuel small_3947612_left_count small_3947612_left_encoded = true := by
  decide +kernel
theorem small_3947612_left_covered : CoveredBy scale carrier boxes small_3947612_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947612_left_root small_3947612_left_fuel small_3947612_left_count small_3947612_left_encoded small_3947612_left_checked

theorem cover_3947612 : CoveredBy scale carrier boxes root_3947612 := by
  apply coveredBy_split_literal root_3947612 small_3947612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3947618 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3947612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3947618
#print axioms cover_3947612

def root_3947611 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947611_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947611_right_fuel : Nat := 18
def small_3947611_right_count : Nat := 67
def small_3947611_right_encoded : String := "12073D0608A912FF12073CFE0000000405000102135D44F9050000FA135D80FB0000000204548A01138670F60CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0000000800000005000000050000000500000000000000050000000800000001135D80F900000001050000FA135D80FB0000000204548A01138670F60CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF0780010200000005128A7CF900000001000000050000000400000005000000050000000000000005135D44FB04548A01138670F60CFD9C070F34D106000000030CFD9BFF0000000800000005000000050000000000000005000000020000000500000003"
theorem small_3947611_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947611_right_root small_3947611_right_fuel small_3947611_right_count small_3947611_right_encoded = true := by
  decide +kernel
theorem small_3947611_right_covered : CoveredBy scale carrier boxes small_3947611_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947611_right_root small_3947611_right_fuel small_3947611_right_count small_3947611_right_encoded small_3947611_right_checked

theorem cover_3947611 : CoveredBy scale carrier boxes root_3947611 := by
  apply coveredBy_split_literal root_3947611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3947612 small_3947611_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3947612
  · exact small_3947611_right_covered
#print axioms cover_3947611

def root_3947606 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947606_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947606_right_fuel : Nat := 1
def small_3947606_right_count : Nat := 1
def small_3947606_right_encoded : String := "00000000"
theorem small_3947606_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947606_right_root small_3947606_right_fuel small_3947606_right_count small_3947606_right_encoded = true := by
  decide +kernel
theorem small_3947606_right_covered : CoveredBy scale carrier boxes small_3947606_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947606_right_root small_3947606_right_fuel small_3947606_right_count small_3947606_right_encoded small_3947606_right_checked

theorem cover_3947606 : CoveredBy scale carrier boxes root_3947606 := by
  apply coveredBy_split_literal root_3947606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3947611 small_3947606_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3947611
  · exact small_3947606_right_covered
#print axioms cover_3947606

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284

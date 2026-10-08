import TaoBundleAssembly0024
import TaoBundleAssembly0025
import TaoBundleChunkBatch0099
import TaoBundleChunkBatch0102
import TaoBundleChunkBatch0103
import TaoBundleChunkBatch0104
import TaoBundleChunkBatch0105
import TaoBundleChunkBatch0106
import TaoBundleChunkBatch0107
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026
def root_1035882 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1035882_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1035882_right_fuel : Nat := 21
def small_1035882_right_count : Nat := 231
def small_1035882_right_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD12073D0608A912FF12073D08045489F71386ACF600000000045489F91386AD020CFD9BFB0000000900000009000000010000000900000009000000041207010800000004045489F71386ACF600000000045489F91386AD020CFD9BFB000000090F34D0FA000000090000000200000001000000090000000900000003120701060000000308A912FF12073D08045489F71386ACF600000000045489F91386AD020CFD9BFB000000080000000A000000010000000A138670F60000000A00000000000000041207010800000004045489F71386ACF600000000045489F91386AD020CFD9BFB0F350CFA00000002000000080F34D0FA0000000A0000000200000001138671020000000100000009138670F60000000900000000120700FA08A912FD12073D0608A912FF12073D08045489F71386ACF600000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350D0600000009000000030F34D106000000030000000A138670FA0CFD9BFD0F350D060CFD9BFF000000090F34D1080000000400000009000000030000000A00000002000000011386710200000001045489FB000000090000000A138670F6045489F91386AD02045489FB00000009138670FA0000000A00000002000000010000000900000000000000041207010800000004045489F71386ACF600000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350D06045489FF0000000913867108000000040C9A8706000000090F878CFD0000000300000009000000030F34D10600000003045489FF000000091386710800000004067ECE770000000A0000000A138670FA0CFD9BFD0F350D06045489FF1386AD08000000060000000400000006000000030F34D106000000030000000A00000002000000011386710200000001045489FB00000009138670FA0CFD9BFD000000060000000600000002138670F6045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350D06000000090000000300000009138670FA0CFD9BFD0F350D06045489FF0000000913867108000000040C9A8706000000090F878CFD00000003022A45770000000A00000009000000030F34D106000000030000000A00000002000000011386710200000001045489FB00000009138670FA0CFD9BFD0F350D06000000090000000300000009000000020000000000000003120701060000000308A912FF0000000A12070108000000040000000A00000002"
theorem small_1035882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1035882_right_root small_1035882_right_fuel small_1035882_right_count small_1035882_right_encoded = true := by
  decide +kernel
theorem small_1035882_right_covered : CoveredBy scale carrier boxes small_1035882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1035882_right_root small_1035882_right_fuel small_1035882_right_count small_1035882_right_encoded small_1035882_right_checked

theorem cover_1035882 : CoveredBy scale carrier boxes root_1035882 := by
  apply coveredBy_split_literal root_1035882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0025.root_1035883 small_1035882_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0025.cover_1035883
  · exact small_1035882_right_covered
#print axioms cover_1035882

def root_1035877 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1035877_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1035877_right_fuel : Nat := 1
def small_1035877_right_count : Nat := 1
def small_1035877_right_encoded : String := "00000000"
theorem small_1035877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1035877_right_root small_1035877_right_fuel small_1035877_right_count small_1035877_right_encoded = true := by
  decide +kernel
theorem small_1035877_right_covered : CoveredBy scale carrier boxes small_1035877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1035877_right_root small_1035877_right_fuel small_1035877_right_count small_1035877_right_encoded small_1035877_right_checked

theorem cover_1035877 : CoveredBy scale carrier boxes root_1035877 := by
  apply coveredBy_split_literal root_1035877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1035882 small_1035877_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1035882
  · exact small_1035877_right_covered
#print axioms cover_1035877

def root_1033507 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1033507 : CoveredBy scale carrier boxes root_1033507 := by
  apply coveredBy_split_literal root_1033507 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0395.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1035877 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0395.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1035877
#print axioms cover_1033507

def root_1033501 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1033501_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1033501_left_fuel : Nat := 1
def small_1033501_left_count : Nat := 1
def small_1033501_left_encoded : String := "00000004"
theorem small_1033501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1033501_left_root small_1033501_left_fuel small_1033501_left_count small_1033501_left_encoded = true := by
  decide +kernel
theorem small_1033501_left_covered : CoveredBy scale carrier boxes small_1033501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1033501_left_root small_1033501_left_fuel small_1033501_left_count small_1033501_left_encoded small_1033501_left_checked

theorem cover_1033501 : CoveredBy scale carrier boxes root_1033501 := by
  apply coveredBy_split_literal root_1033501 small_1033501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1033507 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1033501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1033507
#print axioms cover_1033501

def root_1032363 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1032363 : CoveredBy scale carrier boxes root_1032363 := by
  apply coveredBy_split_literal root_1032363 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0394.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1033501 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0394.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1033501
#print axioms cover_1032363

def root_1032357 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1032357_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1032357_left_fuel : Nat := 1
def small_1032357_left_count : Nat := 1
def small_1032357_left_encoded : String := "00000003"
theorem small_1032357_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1032357_left_root small_1032357_left_fuel small_1032357_left_count small_1032357_left_encoded = true := by
  decide +kernel
theorem small_1032357_left_covered : CoveredBy scale carrier boxes small_1032357_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1032357_left_root small_1032357_left_fuel small_1032357_left_count small_1032357_left_encoded small_1032357_left_checked

theorem cover_1032357 : CoveredBy scale carrier boxes root_1032357 := by
  apply coveredBy_split_literal root_1032357 small_1032357_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1032363 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1032357_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1032363
#print axioms cover_1032357

def root_1029789 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1029789 : CoveredBy scale carrier boxes root_1029789 := by
  apply coveredBy_split_literal root_1029789 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0393.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1032357 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0393.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1032357
#print axioms cover_1029789

def root_1029783 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1029783_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1029783_left_fuel : Nat := 1
def small_1029783_left_count : Nat := 1
def small_1029783_left_encoded : String := "00000002"
theorem small_1029783_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1029783_left_root small_1029783_left_fuel small_1029783_left_count small_1029783_left_encoded = true := by
  decide +kernel
theorem small_1029783_left_covered : CoveredBy scale carrier boxes small_1029783_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1029783_left_root small_1029783_left_fuel small_1029783_left_count small_1029783_left_encoded small_1029783_left_checked

theorem cover_1029783 : CoveredBy scale carrier boxes root_1029783 := by
  apply coveredBy_split_literal root_1029783 small_1029783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1029789 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1029783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1029789
#print axioms cover_1029783

def root_1029782 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1029782_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1029782_right_fuel : Nat := 20
def small_1029782_right_count : Nat := 195
def small_1029782_right_encoded : String := "1151E8FB0A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912F900000005120701020000000100000009120700F608A912F912073D0208A912FF000000051207010800000004050000FA0000000900000005000000011207010200000001000000090000000000000003115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912F900000005120701020000000108A912FD00000005120701060000000300000005120700F608A912F912073D0208A912FD000000051207010600000003050000FA135D80FB0000000205000108135D44FF045489F700000005138670F60CFD9BF900000005000000080000000000000004000000050000000500000001120701020000000108A912FD000000091207010600000003050000FA00000008000000090000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D0208A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF0000000512070108000000040000000500000001120701020000000108A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF00000005120701080000000400000005120700F608A912F912073D0208A912FD12073D0608A912FF12073D08050000FA0000000900000005000000041207010800000004050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90000000500000009138670F60CFD9BF9000000090000000900000000135D44FB000000050000000200000003120701060000000308A912FF12073D08050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90000000500000008138670F60CFD9BF90F350D0200000009000000010000000900000000135D44FB00000005000000020000000412070108000000040000000800000001120701020000000108A912FD12073D060000000900000003120701060000000308A912FF00000009000000080000000000000002"
theorem small_1029782_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1029782_right_root small_1029782_right_fuel small_1029782_right_count small_1029782_right_encoded = true := by
  decide +kernel
theorem small_1029782_right_covered : CoveredBy scale carrier boxes small_1029782_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1029782_right_root small_1029782_right_fuel small_1029782_right_count small_1029782_right_encoded small_1029782_right_checked

theorem cover_1029782 : CoveredBy scale carrier boxes root_1029782 := by
  apply coveredBy_split_literal root_1029782 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1029783 small_1029782_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1029783
  · exact small_1029782_right_covered
#print axioms cover_1029782

def root_1029776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1029776_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1029776_left_fuel : Nat := 1
def small_1029776_left_count : Nat := 1
def small_1029776_left_encoded : String := "00000001"
theorem small_1029776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1029776_left_root small_1029776_left_fuel small_1029776_left_count small_1029776_left_encoded = true := by
  decide +kernel
theorem small_1029776_left_covered : CoveredBy scale carrier boxes small_1029776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1029776_left_root small_1029776_left_fuel small_1029776_left_count small_1029776_left_encoded small_1029776_left_checked

theorem cover_1029776 : CoveredBy scale carrier boxes root_1029776 := by
  apply coveredBy_split_literal root_1029776 small_1029776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1029782 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1029776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1029782
#print axioms cover_1029776

def root_1025310 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1025310 : CoveredBy scale carrier boxes root_1025310 := by
  apply coveredBy_split_literal root_1025310 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1025311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1029776 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1025311
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1029776
#print axioms cover_1025310

def root_1025304 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025304_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025304_left_fuel : Nat := 1
def small_1025304_left_count : Nat := 1
def small_1025304_left_encoded : String := "00000000"
theorem small_1025304_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1025304_left_root small_1025304_left_fuel small_1025304_left_count small_1025304_left_encoded = true := by
  decide +kernel
theorem small_1025304_left_covered : CoveredBy scale carrier boxes small_1025304_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1025304_left_root small_1025304_left_fuel small_1025304_left_count small_1025304_left_encoded small_1025304_left_checked

theorem cover_1025304 : CoveredBy scale carrier boxes root_1025304 := by
  apply coveredBy_split_literal root_1025304 small_1025304_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1025310 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1025304_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1025310
#print axioms cover_1025304

def root_1025303 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025303_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025303_right_fuel : Nat := 26
def small_1025303_right_count : Nat := 293
def small_1025303_right_encoded : String := "1151E8F70A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB12073CFA0000000208A912FD00000005120701060000000300000007120700FA08A912FD12073D0608A912FF000000051207010800000004050000F6000000070000000500000003120701060000000300000007000000021151E8FB000000050000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FB00000005120700FA08A912FF000000051207010800000004050000F6135D80F70000000005000106135D44FD0CFD9BF900000005000000060000000300000005000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FF0000000500000006120700FA08A912FF12073D08050000F6135D80F70000000005000106135D44FD045489F90000000500000009000000030000000500000005000000041207010800000004050000F600000006135D44F700000006000000000000000200000003115224FD000000030A0001081151E8FF08A912F912073D0208A912FB00000005120700FA08A912FD00000005000000070000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000500000006120700FA08A912FD12073D06050000F6135D80F70000000005000108135D44FF045489F900000005138671020000000100000005000000040000000500000005000000031207010600000003050000F600000006000000070000000200000004115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF00000005120701080000000400000005120700FA08A912FD12073D0608A912FF12073D08050000F60000000700000005000000041207010800000004050000F6135D80F7000000000CFD9BF90F350D02045489FB0000000500000007000000010F34D1020000000100000006135D44F70000000500000000000000031207010600000003000000070000000200000001120701020000000108A912FB12073CFA0000000208A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF00000005120701080000000400000005120700FA08A912FD12073D0608A912FF12073D08050000F6135D80F700000000045489F91386AD02045489FB0000000500000007000000011386710200000001045489FB1386ACFA0000000200000005138670FA0CFD9BFD0F350D0600000006000000030000000600000002135D44F700000005000000000000000412070108000000040000000600000003120701060000000308A912FF0000000700000006000000021151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F9000000051207010200000001000000050000000200000000"
theorem small_1025303_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1025303_right_root small_1025303_right_fuel small_1025303_right_count small_1025303_right_encoded = true := by
  decide +kernel
theorem small_1025303_right_covered : CoveredBy scale carrier boxes small_1025303_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1025303_right_root small_1025303_right_fuel small_1025303_right_count small_1025303_right_encoded small_1025303_right_checked

theorem cover_1025303 : CoveredBy scale carrier boxes root_1025303 := by
  apply coveredBy_split_literal root_1025303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1025304 small_1025303_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1025304
  · exact small_1025303_right_covered
#print axioms cover_1025303

def root_1065277 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1065277_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1065277_right_fuel : Nat := 21
def small_1065277_right_count : Nat := 179
def small_1065277_right_encoded : String := "1151E8FB0A0001061151E8FD0A0001081151E9090000000408A912F712073CF600000000050001020000000800000007000000071152250908A912F712073CF60000000008A913090000000512073D0805000102135D44F9050000FA135D80FB0000000205000106135D44FD0CFD9BF7000000050000000800000003135D80FD000000030CFD9BF70000000500000008135D44FB000000080000000200000001135D80F900000001050000FA135D80FB0000000205000106135D44FD0CFD9BF7000000050000000700000003135D80FD000000030CFD9BF7000000050F34D0F60CFD9C09000000050000000700000000135D44FB05000106135D44FD0CFD9BF7000000050F34D0F6000000070000000000000003135D80FD000000030CFD9BF700000005000000080000000200000004120700F608A91309120701080000000405000102135D44F9050000FA135D80FB0000000205000106135D44FD000000080000000300000008135D44FB000000050000000200000001135D80F900000001050000FA135D80FB0000000205000106135D44FD0000000A000000030000000A135D44FB05000106135D44FD0000000500000003000000050000000212073D0805000102000000080000000700000004000000000000000400000003115224FD000000030A0001081151E90900000004000000081152250908A912F712073CF60000000008A912FD12073D0608A91309120701080000000405000102000000080000000512073D080500010200000008135D80F900000001050000FA135D80FB000000020CFD9BF70F350CF6000000000CFD9BFD0F350D060CFD9C090000000500000008000000030000000800000008135D44FB00000008000000020000000400000003120701060000000300000008120700F608A912FD12073D0608A913091207010800000004000000080000000800000003120701060000000300000008000000000000000400000002"
theorem small_1065277_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1065277_right_root small_1065277_right_fuel small_1065277_right_count small_1065277_right_encoded = true := by
  decide +kernel
theorem small_1065277_right_covered : CoveredBy scale carrier boxes small_1065277_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1065277_right_root small_1065277_right_fuel small_1065277_right_count small_1065277_right_encoded small_1065277_right_checked

theorem cover_1065277 : CoveredBy scale carrier boxes root_1065277 := by
  apply coveredBy_split_literal root_1065277 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0406.root small_1065277_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0406.covered
  · exact small_1065277_right_covered
#print axioms cover_1065277

def root_1065272 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1065272_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1065272_right_fuel : Nat := 1
def small_1065272_right_count : Nat := 1
def small_1065272_right_encoded : String := "00000001"
theorem small_1065272_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1065272_right_root small_1065272_right_fuel small_1065272_right_count small_1065272_right_encoded = true := by
  decide +kernel
theorem small_1065272_right_covered : CoveredBy scale carrier boxes small_1065272_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1065272_right_root small_1065272_right_fuel small_1065272_right_count small_1065272_right_encoded small_1065272_right_checked

theorem cover_1065272 : CoveredBy scale carrier boxes root_1065272 := by
  apply coveredBy_split_literal root_1065272 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1065277 small_1065272_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1065277
  · exact small_1065272_right_covered
#print axioms cover_1065272

def root_1070491 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1070491 : CoveredBy scale carrier boxes root_1070491 := by
  apply coveredBy_split_literal root_1070491 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0408.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0409.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0408.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0409.covered
#print axioms cover_1070491

def root_1070486 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070486_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070486_right_fuel : Nat := 1
def small_1070486_right_count : Nat := 1
def small_1070486_right_encoded : String := "00000003"
theorem small_1070486_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070486_right_root small_1070486_right_fuel small_1070486_right_count small_1070486_right_encoded = true := by
  decide +kernel
theorem small_1070486_right_covered : CoveredBy scale carrier boxes small_1070486_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070486_right_root small_1070486_right_fuel small_1070486_right_count small_1070486_right_encoded small_1070486_right_checked

theorem cover_1070486 : CoveredBy scale carrier boxes root_1070486 := by
  apply coveredBy_split_literal root_1070486 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070491 small_1070486_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070491
  · exact small_1070486_right_covered
#print axioms cover_1070486

def root_1070485 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1070485 : CoveredBy scale carrier boxes root_1070485 := by
  apply coveredBy_split_literal root_1070485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0410.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070486
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0410.covered
#print axioms cover_1070485

def root_1070479 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070479_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070479_left_fuel : Nat := 1
def small_1070479_left_count : Nat := 1
def small_1070479_left_encoded : String := "00000002"
theorem small_1070479_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070479_left_root small_1070479_left_fuel small_1070479_left_count small_1070479_left_encoded = true := by
  decide +kernel
theorem small_1070479_left_covered : CoveredBy scale carrier boxes small_1070479_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070479_left_root small_1070479_left_fuel small_1070479_left_count small_1070479_left_encoded small_1070479_left_checked

theorem cover_1070479 : CoveredBy scale carrier boxes root_1070479 := by
  apply coveredBy_split_literal root_1070479 small_1070479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070485 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1070479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070485
#print axioms cover_1070479

def root_1070478 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1070478 : CoveredBy scale carrier boxes root_1070478 := by
  apply coveredBy_split_literal root_1070478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070479 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0411.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070479
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0411.covered
#print axioms cover_1070478

def root_1070473 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070473_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070473_right_fuel : Nat := 1
def small_1070473_right_count : Nat := 1
def small_1070473_right_encoded : String := "00000001"
theorem small_1070473_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070473_right_root small_1070473_right_fuel small_1070473_right_count small_1070473_right_encoded = true := by
  decide +kernel
theorem small_1070473_right_covered : CoveredBy scale carrier boxes small_1070473_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070473_right_root small_1070473_right_fuel small_1070473_right_count small_1070473_right_encoded small_1070473_right_checked

theorem cover_1070473 : CoveredBy scale carrier boxes root_1070473 := by
  apply coveredBy_split_literal root_1070473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070478 small_1070473_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070478
  · exact small_1070473_right_covered
#print axioms cover_1070473

def root_1079269 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1079269 : CoveredBy scale carrier boxes root_1079269 := by
  apply coveredBy_split_literal root_1079269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0412.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0413.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0412.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0413.covered
#print axioms cover_1079269

def root_1079263 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1079263_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1079263_left_fuel : Nat := 1
def small_1079263_left_count : Nat := 1
def small_1079263_left_encoded : String := "00000002"
theorem small_1079263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1079263_left_root small_1079263_left_fuel small_1079263_left_count small_1079263_left_encoded = true := by
  decide +kernel
theorem small_1079263_left_covered : CoveredBy scale carrier boxes small_1079263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1079263_left_root small_1079263_left_fuel small_1079263_left_count small_1079263_left_encoded small_1079263_left_checked

theorem cover_1079263 : CoveredBy scale carrier boxes root_1079263 := by
  apply coveredBy_split_literal root_1079263 small_1079263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1079269 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1079263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1079269
#print axioms cover_1079263

def root_1079262 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1079262_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1079262_right_fuel : Nat := 26
def small_1079262_right_count : Nat := 335
def small_1079262_right_encoded : String := "120700FA08A912FD12073D0608A9130912070108000000040CFD9BF70F350CF600000000045489F91386AD02045489FB1386ACFA00000002000000060000000600000001000000060F34D0F6045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350D0600000006000000030F34D1060000000304548A0913867108000000040AD357770000000610D100F6067ECE7912EA9502067ECE7B12EA94FA000000020AD3577D0000000600000006000000060000000100000006000000001386AD080AD357770000000610D100F6067ECE7912EA9502067ECE7B12EA94FA000000020AD3577D00000006000000060000000600000001000000060000000000000004138670FA0CFD9BFD000000060000000600000002000000011386710200000001045489FB1386ACFA000000020CFD9BFD0000000600000006000000060000000012073D080CFD9BF70F350CF600000000045489F91386AD02045489FB1386ACFA00000002000000060000000600000001000000060F34D0F6045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350D0600000006000000030F34D106000000030CFD9C090F34D108000000040AD357770000000610D100F6067ECE7912EA9502067ECE7B12EA94FA000000020AD3577D0000000600000006000000060000000100000006000000000F350D080000000600000004138670FA0CFD9BFD000000060000000600000002000000011386710200000001045489FB1386ACFA000000020000000600000006000000000000000400000003120701060000000308A9130912070108000000040CFD9BF70F350CF600000000045489F91386AD02045489FB1386ACFA00000002045489FD1386AD0604548A09000000060000000600000003000000070000000600000001000000060F34D0F6045489F91386AD02045489FB1386ACFA00000002045489FD1386AD0604548A0913867108000000040AD357770000000A0000000A1386AD080AD3577710D13CF600000000067ECE7912EA9502067ECE7B12EA94FA00000002067ECE7D000000060000000600000006000000010000000610D100F6067ECE7912EA9502067ECE7B12EA94FA00000002067ECE7D12EA9506067ECE890000000612EA95080000000600000004000000030000000A12EA58FA067ECE7D000000060000000A00000002000000010000000A00000000000000040000000313867106000000030000000A138670FA045489FD1386AD0604548A090000000600000006000000030000000A00000002000000011386710200000001045489FB0000000A000000060000000012073D080CFD9BF70F350CF600000000045489F91386AD02045489FB1386ACFA00000002045489FD1386AD060CFD9C0900000006000000090000000313867106000000030000000900000009000000011386710200000001045489FB1386ACFA00000002045489FD0000000600000006000000060F34D0F6045489F91386AD02045489FB1386ACFA00000002045489FD1386AD060CFD9C090F34D108000000040AD357770000000910D100F6067ECE790000000912EA590200000001067ECE7B12EA94FA00000002067ECE7D00000006000000050000000500000000000000090000000313867106000000030CFD9C090F34D108000000040AD357770000000910D100F600000005000000000000000900000009000000011386710200000001045489FB1386ACFA00000002045489FD1386AD060CFD9C09000000060F350D0800000005000000040000000313867106000000030CFD9C090F34D108000000040000000A00000005138670FA0000000500000002000000000000000400000002"
theorem small_1079262_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1079262_right_root small_1079262_right_fuel small_1079262_right_count small_1079262_right_encoded = true := by
  decide +kernel
theorem small_1079262_right_covered : CoveredBy scale carrier boxes small_1079262_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1079262_right_root small_1079262_right_fuel small_1079262_right_count small_1079262_right_encoded small_1079262_right_checked

theorem cover_1079262 : CoveredBy scale carrier boxes root_1079262 := by
  apply coveredBy_split_literal root_1079262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1079263 small_1079262_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1079263
  · exact small_1079262_right_covered
#print axioms cover_1079262

def root_1079256 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1079256_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1079256_left_fuel : Nat := 1
def small_1079256_left_count : Nat := 1
def small_1079256_left_encoded : String := "00000001"
theorem small_1079256_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1079256_left_root small_1079256_left_fuel small_1079256_left_count small_1079256_left_encoded = true := by
  decide +kernel
theorem small_1079256_left_covered : CoveredBy scale carrier boxes small_1079256_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1079256_left_root small_1079256_left_fuel small_1079256_left_count small_1079256_left_encoded small_1079256_left_checked

theorem cover_1079256 : CoveredBy scale carrier boxes root_1079256 := by
  apply coveredBy_split_literal root_1079256 small_1079256_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1079262 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1079256_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1079262
#print axioms cover_1079256

def root_1070472 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1070472 : CoveredBy scale carrier boxes root_1070472 := by
  apply coveredBy_split_literal root_1070472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1079256 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070473
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1079256
#print axioms cover_1070472

def root_1070466 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070466_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070466_left_fuel : Nat := 1
def small_1070466_left_count : Nat := 1
def small_1070466_left_encoded : String := "00000000"
theorem small_1070466_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070466_left_root small_1070466_left_fuel small_1070466_left_count small_1070466_left_encoded = true := by
  decide +kernel
theorem small_1070466_left_covered : CoveredBy scale carrier boxes small_1070466_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070466_left_root small_1070466_left_fuel small_1070466_left_count small_1070466_left_encoded small_1070466_left_checked

theorem cover_1070466 : CoveredBy scale carrier boxes root_1070466 := by
  apply coveredBy_split_literal root_1070466 small_1070466_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070472 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1070466_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070472
#print axioms cover_1070466

def root_1083767 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083767_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083767_right_fuel : Nat := 17
def small_1083767_right_count : Nat := 95
def small_1083767_right_encoded : String := "120701060000000308A913091207010800000004045489F71386ACF6000000000CFD9BF90F350D020CFD9BFB000000080F34D0FA045489FD1386AD0600000008000000030000000800000002000000010F34D102000000010CFD9BFB0F350CFA00000002000000080F34D0FA045489FD1386AD0604548A091386710800000004067ECE7712EA94F6000000000AD357790000000800000008000000081386AD08067ECE7712EA94F6000000000AD3577900000008000000080000000800000004000000030000000800000002138670F60CFD9BF900000008000000080000000012073D08045489F71386ACF6000000000CFD9BF90F350D0200000008000000010F34D102000000010CFD9BFB0F350CFA00000002000000080F34D0FA045489FD1386AD060CFD9C090F34D10800000004067ECE7712EA94F6000000000AD357790000000800000008000000080F350D080000000700000004000000030000000800000002138670F60CFD9BF900000008000000080000000000000004"
theorem small_1083767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1083767_right_root small_1083767_right_fuel small_1083767_right_count small_1083767_right_encoded = true := by
  decide +kernel
theorem small_1083767_right_covered : CoveredBy scale carrier boxes small_1083767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1083767_right_root small_1083767_right_fuel small_1083767_right_count small_1083767_right_encoded small_1083767_right_checked

theorem cover_1083767 : CoveredBy scale carrier boxes root_1083767 := by
  apply coveredBy_split_literal root_1083767 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0414.root small_1083767_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0414.covered
  · exact small_1083767_right_covered
#print axioms cover_1083767

def root_1083761 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083761_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083761_left_fuel : Nat := 1
def small_1083761_left_count : Nat := 1
def small_1083761_left_encoded : String := "00000002"
theorem small_1083761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1083761_left_root small_1083761_left_fuel small_1083761_left_count small_1083761_left_encoded = true := by
  decide +kernel
theorem small_1083761_left_covered : CoveredBy scale carrier boxes small_1083761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1083761_left_root small_1083761_left_fuel small_1083761_left_count small_1083761_left_encoded small_1083761_left_checked

theorem cover_1083761 : CoveredBy scale carrier boxes root_1083761 := by
  apply coveredBy_split_literal root_1083761 small_1083761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1083767 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1083761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1083767
#print axioms cover_1083761

def root_1092625 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1092625_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1092625_right_fuel : Nat := 24
def small_1092625_right_count : Nat := 181
def small_1092625_right_encoded : String := "13E201080DE7CA020E5FD8F90DE7CA060E5FD8FD0569AC37134110F6000000000569AC3B0000000A000000091340D4F60569AC3B000000070000000A00000000000000030E6014FD000000030569AC37000000091340D4F60569AC3B134110FA00000002033F67C913BBF508000000040DAED87D0E9661060D4128820000000900000007000000030E9625060000000300000009000000090000000900000000000000010E6014F9000000010DE7CA060E5FD8FD0569AC37134110F6000000000569AC3B000000071340D4FA033F67C913BBF508000000040DAED8790E9661020D4128860000000700000009000000010E9625020000000100000007000000070000000200000007000000030E6014FD000000030569AC37134110F6000000000569AC3B134110FA00000002033F67C913BBF508000000040DAED8790E9661020DAED87D0E96610605F43D570000000900000007000000030E9625060000000300000009000000010E962502000000010DAED87D0E96610600000007000000030E9625060000000305F43D571317F8F60000000005F43D5B1317F8FA0000000202B4D6A913D0D108000000040D563A39000000090EE75102000000010000000700000007000000091317BCF605F43D5B000000071317BCFA00000007000000020000000013BC31080DAED879000000090E9625020000000100000007000000041340D4FA033F67C913BBF508000000040DAED879000000090E962502000000010DAED87D0E96610605F43D570000000900000005000000030E962506000000030000000900000009000000021340D4F60569AC3B134110FA00000002033F67C913BBF508000000040DAED8790E9661020DAED87D000000070E9625060000000304DF1B170000000900000005000000010E9625020000000100000007000000071340D4FA033F67C913BBF508000000040DAED8790E96610200000005000000010000000500000005000000020000000000000004"
theorem small_1092625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1092625_right_root small_1092625_right_fuel small_1092625_right_count small_1092625_right_encoded = true := by
  decide +kernel
theorem small_1092625_right_covered : CoveredBy scale carrier boxes small_1092625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1092625_right_root small_1092625_right_fuel small_1092625_right_count small_1092625_right_encoded small_1092625_right_checked

theorem cover_1092625 : CoveredBy scale carrier boxes root_1092625 := by
  apply coveredBy_split_literal root_1092625 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0417.root small_1092625_right_root coord4 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0417.covered
  · exact small_1092625_right_covered
#print axioms cover_1092625

def root_1092620 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1092620_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1092620_right_fuel : Nat := 1
def small_1092620_right_count : Nat := 1
def small_1092620_right_encoded : String := "00000002"
theorem small_1092620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1092620_right_root small_1092620_right_fuel small_1092620_right_count small_1092620_right_encoded = true := by
  decide +kernel
theorem small_1092620_right_covered : CoveredBy scale carrier boxes small_1092620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1092620_right_root small_1092620_right_fuel small_1092620_right_count small_1092620_right_encoded small_1092620_right_checked

theorem cover_1092620 : CoveredBy scale carrier boxes root_1092620 := by
  apply coveredBy_split_literal root_1092620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1092625 small_1092620_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1092625
  · exact small_1092620_right_covered
#print axioms cover_1092620

def root_1091100 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1091100 : CoveredBy scale carrier boxes root_1091100 := by
  apply coveredBy_split_literal root_1091100 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0416.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1092620 coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0416.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1092620
#print axioms cover_1091100

def root_1091095 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1091095_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1091095_right_fuel : Nat := 1
def small_1091095_right_count : Nat := 1
def small_1091095_right_encoded : String := "00000000"
theorem small_1091095_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1091095_right_root small_1091095_right_fuel small_1091095_right_count small_1091095_right_encoded = true := by
  decide +kernel
theorem small_1091095_right_covered : CoveredBy scale carrier boxes small_1091095_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1091095_right_root small_1091095_right_fuel small_1091095_right_count small_1091095_right_encoded small_1091095_right_checked

theorem cover_1091095 : CoveredBy scale carrier boxes root_1091095 := by
  apply coveredBy_split_literal root_1091095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1091100 small_1091095_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1091100
  · exact small_1091095_right_covered
#print axioms cover_1091095

def root_1088021 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1088021 : CoveredBy scale carrier boxes root_1088021 := by
  apply coveredBy_split_literal root_1088021 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0415.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1091095 coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0415.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1091095
#print axioms cover_1088021

def root_1088015 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1088015_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1088015_left_fuel : Nat := 1
def small_1088015_left_count : Nat := 1
def small_1088015_left_encoded : String := "00000003"
theorem small_1088015_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1088015_left_root small_1088015_left_fuel small_1088015_left_count small_1088015_left_encoded = true := by
  decide +kernel
theorem small_1088015_left_covered : CoveredBy scale carrier boxes small_1088015_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1088015_left_root small_1088015_left_fuel small_1088015_left_count small_1088015_left_encoded small_1088015_left_checked

theorem cover_1088015 : CoveredBy scale carrier boxes root_1088015 := by
  apply coveredBy_split_literal root_1088015 small_1088015_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1088021 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_1088015_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1088021
#print axioms cover_1088015

def root_1087599 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087599_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087599_left_fuel : Nat := 20
def small_1087599_left_count : Nat := 199
def small_1087599_left_encoded : String := "0F8750FD067ECE7712EA94F600000000067ECE7B12EA94FA00000002022A458913E1C508000000040DE7CA020E5FD8F90B4D4406108010FD0000000A0000000310804CFD000000030793F0B700000005128220F60793F0BB000000050000000A00000000000000010E6014F9000000010B4D4406108010FD0793F0B700000006000000070000000310804CFD000000030793F0B712825CF6000000000793F0BB0000000500000006128220F60793F0BB00000007128220FA0115234913F85908000000040DAED879000000050E962502000000010000000500000007000000020000000013E201080DE7CA020E5FD8F90000000A00000001000000070000000412EA58FA022A458913E1C508000000040DE7CA020E5FD8F90B4D4406108010FD0000000A0000000310804CFD000000030793F0B712825CF6000000000569AC3B0000000A0000000A128220F60569AC3B0000000A0000000A00000000000000010E6014F9000000010B4D44060000000610804CFD000000030793F0B700000006128220F60569AC3B134110FA00000002011523490000000600000006000000060000000013E201080DE7CA020E5FD8F90000000A000000010E6014F9000000010B4D44060000000610804CFD000000030793F0B700000006128220F60000000700000000000000040000000212EA58F6067ECE7B12EA94FA00000002022A458913E1C508000000040DE7CA020E5FD8F90B4D44060000000710804CFD000000030569AC37134110F6000000000793F0BB000000070000000A0000000700000001000000070000000712EA58FA022A458913E1C508000000040DE7CA020E5FD8F90B4D4406108010FD0000000A0000000310804CFD000000030569AC37134110F6000000000569AC3B0000000A0000000A1340D4F60569AC3B000000070000000A00000000000000010E6014F9000000010B4D4406108010FD000000070000000310804CFD000000030569AC37134110F6000000000569AC3B000000071340D4FA011523490000000800000007000000020000000713E201080DE7CA020E5FD8F900000007000000010000000700000004000000020000000000000003"
theorem small_1087599_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087599_left_root small_1087599_left_fuel small_1087599_left_count small_1087599_left_encoded = true := by
  decide +kernel
theorem small_1087599_left_covered : CoveredBy scale carrier boxes small_1087599_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087599_left_root small_1087599_left_fuel small_1087599_left_count small_1087599_left_encoded small_1087599_left_checked

theorem cover_1087599 : CoveredBy scale carrier boxes root_1087599 := by
  apply coveredBy_split_literal root_1087599 small_1087599_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1088015 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1087599_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1088015
#print axioms cover_1087599

def root_1087593 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087593_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087593_left_fuel : Nat := 1
def small_1087593_left_count : Nat := 1
def small_1087593_left_encoded : String := "00000001"
theorem small_1087593_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087593_left_root small_1087593_left_fuel small_1087593_left_count small_1087593_left_encoded = true := by
  decide +kernel
theorem small_1087593_left_covered : CoveredBy scale carrier boxes small_1087593_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087593_left_root small_1087593_left_fuel small_1087593_left_count small_1087593_left_encoded small_1087593_left_checked

theorem cover_1087593 : CoveredBy scale carrier boxes root_1087593 := by
  apply coveredBy_split_literal root_1087593 small_1087593_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087599 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_1087593_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087599
#print axioms cover_1087593

def root_1087045 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087045_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087045_left_fuel : Nat := 22
def small_1087045_left_count : Nat := 263
def small_1087045_left_encoded : String := "0F8750F90C9A87060F8750FD067ECE7712EA94F600000000067ECE7B12EA94FA00000002022A458913E1C508000000040B4D44020000000A0000000A0000000A12EA58FA022A458913E1C508000000040B4D44020000000A0000000A0000000A0000000212EA58F6067ECE7B12EA94FA00000002022A458913E1C508000000040B4D44020000000A0000000A0000000A12EA58FA022A458913E1C508000000040B4D44020000000A0000000A0000000A0000000200000000000000030F878CFD00000003067ECE7712EA94F600000000067ECE7B12EA94FA00000002022A458913E1C508000000040B4D4402108010F90DE7CA060E5FD8FD0000000A000000030E6014FD000000030793F0B700000009000000080000000110804CF9000000010DE7CA060E5FD8FD0793F0B700000005128220F60793F0BB000000050000000A00000000000000030E6014FD000000030793F0B712825CF6000000000793F0BB0000000500000009128220F60793F0BB00000008128220FA0115234913F85908000000040DAED87D000000050E962506000000030000000500000009000000020000000013E201080B4D4402108010F9000000090000000110804CF9000000010DE7CA060E5FD8FD0000000A00000003000000090000000412EA58FA022A458913E1C508000000040B4D4402108010F9000000090000000110804CF9000000010DE7CA060E5FD8FD0793F0B700000009128220F60569AC3B0000000A00000009000000000000000300000009000000090000000212EA58F6067ECE7B12EA94FA00000002022A458913E1C508000000040B4D4402108010F90DE7CA060E5FD8FD0000000A000000030E6014FD00000003000000060000000110804CF9000000010DE7CA060E5FD8FD0569AC37134110F6000000000793F0BB0000000A0000000A1340D4F60793F0BB0000000A0000000A00000000000000030E6014FD000000030569AC37134110F6000000000793F0BB00000008128220FA011523490000000800000008000000020000000813E201080B4D4402108010F90DE7CA060000000A000000080000000110804CF9000000010DE7CA060E5FD8FD0000000A000000030E6014FD000000030569AC37134110F60000000000000008000000080000000412EA58FA022A458913E1C508000000040B4D4402108010F90DE7CA060E5FD8FD0000000A00000003000000090000000110804CF9000000010DE7CA060E5FD8FD0569AC37134110F6000000000569AC3B0000000A000000091340D4F60569AC3B0000000A0000000A00000000000000030E6014FD000000030569AC37000000091340D4F60569AC3B134110FA00000002011523490000000600000009000000090000000013E201080B4D44020000000910804CF9000000010DE7CA060E5FD8FD00000009000000030000000900000004000000020000000000000001"
theorem small_1087045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087045_left_root small_1087045_left_fuel small_1087045_left_count small_1087045_left_encoded = true := by
  decide +kernel
theorem small_1087045_left_covered : CoveredBy scale carrier boxes small_1087045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087045_left_root small_1087045_left_fuel small_1087045_left_count small_1087045_left_encoded small_1087045_left_checked

theorem cover_1087045 : CoveredBy scale carrier boxes root_1087045 := by
  apply coveredBy_split_literal root_1087045 small_1087045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087593 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1087045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087593
#print axioms cover_1087045

def root_1087039 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087039_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087039_left_fuel : Nat := 1
def small_1087039_left_count : Nat := 1
def small_1087039_left_encoded : String := "00000004"
theorem small_1087039_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087039_left_root small_1087039_left_fuel small_1087039_left_count small_1087039_left_encoded = true := by
  decide +kernel
theorem small_1087039_left_covered : CoveredBy scale carrier boxes small_1087039_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087039_left_root small_1087039_left_fuel small_1087039_left_count small_1087039_left_encoded small_1087039_left_checked

theorem cover_1087039 : CoveredBy scale carrier boxes root_1087039 := by
  apply coveredBy_split_literal root_1087039 small_1087039_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087045 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1087039_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087045
#print axioms cover_1087039

def root_1087038 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087038_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087038_right_fuel : Nat := 24
def small_1087038_right_count : Nat := 157
def small_1087038_right_encoded : String := "1386AD080C9A87020F8750F90C9A87060F8750FD0000000A000000030F878CFD00000003067ECE770000000912EA58F6067ECE7B12EA94FA00000002067ECE8912EA5908000000040B4D4402000000090000000A000000090000000900000000000000010F878CF9000000010C9A87060F8750FD067ECE7712EA94F600000000067ECE7B0000000712EA58FA067ECE8912EA5908000000040DE7CA020000000A00000007000000070000000200000007000000030F878CFD00000003067ECE7712EA94F600000000067ECE7B12EA94FA00000002067ECE8912EA5908000000040DE7CA020E5FD8F90DE7CA060E5FD8FD0000000A0000000300000009000000010E6014F9000000010DE7CA060E5FD8FD00000007000000030E6014FD000000030793F0B712825CF6000000000793F0BB12825CFA000000020569AC491340D508000000040DAED879000000090E96250200000001000000070000000700000009128220F60793F0BB00000007128220FA00000007000000020000000012EA95080DE7CA0200000009000000070000000412EA58FA067ECE8912EA5908000000040DE7CA02000000090E6014F9000000010DE7CA060E5FD8FD0793F0B700000009000000070000000300000009000000090000000212EA58F6067ECE7B12EA94FA00000002067ECE8912EA5908000000040DE7CA020E5FD8F90DE7CA06000000070E6014FD000000030569AC37000000090000000700000001000000070000000712EA58FA067ECE8912EA5908000000040DE7CA020E5FD8F900000009000000010E6014F9000000010DE7CA06000000070E6014FD000000030569AC37000000090000000500000007000000020000000000000004"
theorem small_1087038_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087038_right_root small_1087038_right_fuel small_1087038_right_count small_1087038_right_encoded = true := by
  decide +kernel
theorem small_1087038_right_covered : CoveredBy scale carrier boxes small_1087038_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087038_right_root small_1087038_right_fuel small_1087038_right_count small_1087038_right_encoded small_1087038_right_checked

theorem cover_1087038 : CoveredBy scale carrier boxes root_1087038 := by
  apply coveredBy_split_literal root_1087038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087039 small_1087038_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087039
  · exact small_1087038_right_covered
#print axioms cover_1087038

def root_1087033 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087033_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087033_right_fuel : Nat := 1
def small_1087033_right_count : Nat := 1
def small_1087033_right_encoded : String := "00000003"
theorem small_1087033_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087033_right_root small_1087033_right_fuel small_1087033_right_count small_1087033_right_encoded = true := by
  decide +kernel
theorem small_1087033_right_covered : CoveredBy scale carrier boxes small_1087033_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087033_right_root small_1087033_right_fuel small_1087033_right_count small_1087033_right_encoded small_1087033_right_checked

theorem cover_1087033 : CoveredBy scale carrier boxes root_1087033 := by
  apply coveredBy_split_literal root_1087033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087038 small_1087033_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087038
  · exact small_1087033_right_covered
#print axioms cover_1087033

def root_1087032 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1087032 : CoveredBy scale carrier boxes root_1087032 := by
  apply coveredBy_split_literal root_1087032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087033 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0418.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087033
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0418.covered
#print axioms cover_1087032

def root_1087026 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087026_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087026_left_fuel : Nat := 1
def small_1087026_left_count : Nat := 1
def small_1087026_left_encoded : String := "00000002"
theorem small_1087026_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087026_left_root small_1087026_left_fuel small_1087026_left_count small_1087026_left_encoded = true := by
  decide +kernel
theorem small_1087026_left_covered : CoveredBy scale carrier boxes small_1087026_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087026_left_root small_1087026_left_fuel small_1087026_left_count small_1087026_left_encoded small_1087026_left_checked

theorem cover_1087026 : CoveredBy scale carrier boxes root_1087026 := by
  apply coveredBy_split_literal root_1087026 small_1087026_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087032 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1087026_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087032
#print axioms cover_1087026

def root_1087025 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1087025 : CoveredBy scale carrier boxes root_1087025 := by
  apply coveredBy_split_literal root_1087025 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087026 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0419.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087026
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0419.covered
#print axioms cover_1087025

def root_1087020 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087020_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087020_right_fuel : Nat := 1
def small_1087020_right_count : Nat := 1
def small_1087020_right_encoded : String := "00000001"
theorem small_1087020_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087020_right_root small_1087020_right_fuel small_1087020_right_count small_1087020_right_encoded = true := by
  decide +kernel
theorem small_1087020_right_covered : CoveredBy scale carrier boxes small_1087020_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087020_right_root small_1087020_right_fuel small_1087020_right_count small_1087020_right_encoded small_1087020_right_checked

theorem cover_1087020 : CoveredBy scale carrier boxes root_1087020 := by
  apply coveredBy_split_literal root_1087020 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087025 small_1087020_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087025
  · exact small_1087020_right_covered
#print axioms cover_1087020

def root_1102659 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1102659 : CoveredBy scale carrier boxes root_1102659 := by
  apply coveredBy_split_literal root_1102659 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0421.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0422.root coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0421.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0422.covered
#print axioms cover_1102659

def root_1102653 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1102653_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1102653_left_fuel : Nat := 1
def small_1102653_left_count : Nat := 1
def small_1102653_left_encoded : String := "00000004"
theorem small_1102653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1102653_left_root small_1102653_left_fuel small_1102653_left_count small_1102653_left_encoded = true := by
  decide +kernel
theorem small_1102653_left_covered : CoveredBy scale carrier boxes small_1102653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1102653_left_root small_1102653_left_fuel small_1102653_left_count small_1102653_left_encoded small_1102653_left_checked

theorem cover_1102653 : CoveredBy scale carrier boxes root_1102653 := by
  apply coveredBy_split_literal root_1102653 small_1102653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1102659 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1102653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1102659
#print axioms cover_1102653

def root_1102652 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1102652_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1102652_right_fuel : Nat := 25
def small_1102652_right_count : Nat := 421
def small_1102652_right_encoded : String := "1386AD08067ECE7712EA94F6000000000AD3577910D13D02067ECE7B12EA94FA000000020AD3577D10D13D06067ECE8912EA5908000000040793F0B712825CF6000000000BE879B91011AD020793F0BB12825CFA000000020BE879BD1011AD060569AC491340D50800000004081E81D700000009000000070000000700000003101171060000000300000009000000090000000110117102000000010793F0BB12825CFA000000020BE879BD0000000710117106000000030569AC491340D50800000004081E81D7124738F6000000000B5DE89900000009000000061246FCF60B5DE89900000008000000080000000000000007128220FA0BE879BD1011AD06000000060000000310117106000000030000000900000002128220F60BE879B91011AD020793F0BB12825CFA000000020BE879BD00000007101171060000000300000008128220FA00000009000000020000000110117102000000010793F0BB00000007128220FA0BE879BD0000000710117106000000030569AC491340D5080000000407095F97000000090000000700000007000000020000000012EA95080793F0B70000000900000007000000040000000310D1010600000003067ECE8912EA5908000000040793F0B712825CF6000000000BE879B90000000910117102000000010793F0BB12825CFA0000000209BE353D11777D0600000008000000030000000800000009128220F60BE879B90000000910117102000000010793F0BB0000000800000009000000000000000912EA58FA0AD3577D10D13D06067ECE8912EA5908000000040793F0B700000009128220F60BE879B90000000910117102000000010569AC3B134110FA000000020BE879BD1011AD0600000006000000031011710600000003000000090000000900000000000000090000000310D101060000000300000009000000020000000110D1010200000001067ECE7B12EA94FA000000020AD3577D10D13D06067ECE8912EA5908000000040793F0B712825CF60000000009BE353911777D020793F0BB12825CFA000000020BE879BD0000000600000006000000060000000100000006128220F60000000700000000000000070000000310D1010600000003067ECE8912EA5908000000040793F0B712825CF60000000009BE353911777D020793F0BB12825CFA0000000209BE353D11777D060569AC490000000A1341110800000006000000040000000300000008128220FA09BE353D11777D0600000006000000030000000A000000020000000111774102000000010793F0BB0000000A00000006128220F609BE353911777D020793F0BB12825CFA0000000200000008128220FA09BE353D11777D060569AC490000000A00000005000000030000000A000000020000000111774102000000010793F0BB0000000A0000000A0000000012EA95080793F0B712825CF60000000009BE35390000000911774102000000010793F0BB0000000700000006128220F609BE353911777D02000000090000000100000005000000000000000412EA58FA0AD3577D10D13D06067ECE8912EA5908000000040793F0B700000006128220F609BE353911777D020000000600000001000000060000000012EA950800000006000000040000000310D1010600000003067ECE8912EA5908000000040793F0B712825CF60000000009BE35390000000900000006128220F609BE353911777D0200000005000000010000000500000000000000090000000212EA58F60AD3577910D13D02067ECE7B12EA94FA000000020AD3577D10D13D06067ECE8912EA5908000000040569AC37134110F6000000000BE879B91011AD020793F0BB00000007128220FA0BE879BD00000007101171060000000300000008000000020000000110117102000000010000000700000007000000070000000310D1010600000003067ECE8912EA5908000000040569AC37134110F600000000000000080000000812EA9508000000080000000412EA58FA0AD3577D10D13D06067ECE8912EA5908000000040569AC37134110F6000000000BE879B9000000090000000500000005000000050000000300000005000000020000000110D1010200000001067ECE7B12EA94FA000000020AD3577D0000000710D1010600000003067ECE8912EA5908000000040569AC37134110F60000000009BE353911777D020793F0BB00000008128220FA00000005000000020000000111774102000000010000000A1340D4F609BE35390000000800000005000000000000000712EA58FA0AD3577D10D13D06000000050000000300000005000000020000000000000004"
theorem small_1102652_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1102652_right_root small_1102652_right_fuel small_1102652_right_count small_1102652_right_encoded = true := by
  decide +kernel
theorem small_1102652_right_covered : CoveredBy scale carrier boxes small_1102652_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1102652_right_root small_1102652_right_fuel small_1102652_right_count small_1102652_right_encoded small_1102652_right_checked

theorem cover_1102652 : CoveredBy scale carrier boxes root_1102652 := by
  apply coveredBy_split_literal root_1102652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1102653 small_1102652_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1102653
  · exact small_1102652_right_covered
#print axioms cover_1102652

def root_1102646 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1102646_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1102646_left_fuel : Nat := 1
def small_1102646_left_count : Nat := 1
def small_1102646_left_encoded : String := "00000003"
theorem small_1102646_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1102646_left_root small_1102646_left_fuel small_1102646_left_count small_1102646_left_encoded = true := by
  decide +kernel
theorem small_1102646_left_covered : CoveredBy scale carrier boxes small_1102646_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1102646_left_root small_1102646_left_fuel small_1102646_left_count small_1102646_left_encoded small_1102646_left_checked

theorem cover_1102646 : CoveredBy scale carrier boxes root_1102646 := by
  apply coveredBy_split_literal root_1102646 small_1102646_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1102652 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_1102646_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1102652
#print axioms cover_1102646

def root_1100062 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1100062 : CoveredBy scale carrier boxes root_1100062 := by
  apply coveredBy_split_literal root_1100062 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0420.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1102646 coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0420.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1102646
#print axioms cover_1100062

def root_1100056 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1100056_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1100056_left_fuel : Nat := 1
def small_1100056_left_count : Nat := 1
def small_1100056_left_encoded : String := "00000002"
theorem small_1100056_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1100056_left_root small_1100056_left_fuel small_1100056_left_count small_1100056_left_encoded = true := by
  decide +kernel
theorem small_1100056_left_covered : CoveredBy scale carrier boxes small_1100056_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1100056_left_root small_1100056_left_fuel small_1100056_left_count small_1100056_left_encoded small_1100056_left_checked

theorem cover_1100056 : CoveredBy scale carrier boxes root_1100056 := by
  apply coveredBy_split_literal root_1100056 small_1100056_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1100062 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1100056_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1100062
#print axioms cover_1100056

def root_1100055 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1100055_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1100055_right_fuel : Nat := 28
def small_1100055_right_count : Nat := 425
def small_1100055_right_encoded : String := "138670FA0CFD9BFD0F350D0604548A0913867108000000040C9A87060F8750FD067ECE770000000612EA58F60AD3577910D13D02022A457B13E200FA00000002022A4589000000060000000600000006000000010000000600000000000000030F878CFD00000003067ECE7712EA94F6000000000AD3577910D13D02022A457B13E200FA00000002022A458913E1C508000000040DE7CA06000000060E6014FD00000003000000060000000600000006000000010000000612EA58F60AD3577910D13D02022A457B13E200FA00000002022A458913E1C508000000040DE7CA060E5FD8FD0569AC37000000061340D4F60BE879B91011AD02033F67BB13BC30FA0000000201152349000000060000000500000005000000010000000600000000000000030E6014FD000000030569AC37134110F6000000000BE879B91011AD02033F67BB13BC30FA000000020115234913F85908000000040DAED87D0000000600000006000000060000000600000001000000061340D4F60BE879B91011AD02033F67BB13BC30FA000000020115234913F85908000000040DAED87D0E9661060000000500000003000000050000000500000005000000011011710200000001033F67BB13BC30FA00000002011523490000000600000005000000050000000013E201080DE7CA060E5FD8FD0569AC370000000600000005000000030E6014FD000000030569AC37134110F6000000000BE879B91011AD02000000050000000100000005000000050000000413E1C4FA022A458913E1C508000000040DE7CA06000000060E6014FD000000030569AC37000000060000000500000005000000020000000110D1010200000001022A457B13E200FA00000002022A4589000000060000000600000006000000001386AD080C9A87060F8750FD067ECE770000000600000007000000030F878CFD00000003067ECE7712EA94F6000000000AD3577910D13D02022A457B13E200FA00000002067ECE89000000060000000500000005000000010000000612EA58F60AD3577910D13D020000000500000001000000050000000000000004000000030F34D1060000000304548A091386710800000004067ECE7712EA94F6000000000AD3577910D13D02022A457B13E200FA000000020AD3577D10D13D06022A458913E1C508000000040793F0B712825CF6000000000BE879B91011AD02000000070000000100000006128220F60BE879B91011AD02033F67BB13BC30FA000000020BE879BD1011AD06000000060000000310117106000000030000000700000009000000011011710200000001000000060000000013E201080793F0B700000009128220F60000000900000000000000040000000310D1010600000003022A4589000000070000000913E1C4FA0AD3577D10D13D06022A458900000006000000060000000310D101060000000300000007000000020000000110D1010200000001022A457B13E200FA000000020AD3577D10D13D06000000060000000310D10106000000030000000A0000000612EA58F60AD3577910D13D02022A457B13E200FA000000020AD3577D10D13D06022A458913E1C508000000040569AC37134110F6000000000BE879B91011AD02033F67BB13BC30FA000000020BE879BD1011AD060115234913F85908000000040000000A13F8950805F43D570000000900000005000000040000000310117106000000030000000A13BBF4FA0BE879BD1011AD0600000005000000030000000500000002000000011011710200000001033F67BB0000000A0000000A1340D4F60BE879B91011AD02033F67BB13BC30FA000000020BE879BD1011AD0600000005000000030000000500000005000000011011710200000001033F67BB0000000A000000050000000013E201080569AC37134110F6000000000BE879B9000000090000000500000005000000040000000310D1010600000003022A45890000000A0000000513E1C4FA0AD3577D10D13D06022A458913E1C508000000040569AC37134110F6000000000BE879B9000000090000000500000005000000050000000300000005000000020000000110D1010200000001022A457B13E200FA000000020AD3577D10D13D06022A45890000000A000000050000000310D10106000000030000000A13E1C4FA0AD3577D10D13D0600000005000000030000000500000002000000001386AD08067ECE7712EA94F6000000000AD357790000000910D1010200000001022A457B13E200FA000000020AD3577D10D13D060000000600000003000000050000000512EA58F60AD3577910D13D02000000050000000100000005000000000000000400000002"
theorem small_1100055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1100055_right_root small_1100055_right_fuel small_1100055_right_count small_1100055_right_encoded = true := by
  decide +kernel
theorem small_1100055_right_covered : CoveredBy scale carrier boxes small_1100055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1100055_right_root small_1100055_right_fuel small_1100055_right_count small_1100055_right_encoded small_1100055_right_checked

theorem cover_1100055 : CoveredBy scale carrier boxes root_1100055 := by
  apply coveredBy_split_literal root_1100055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1100056 small_1100055_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1100056
  · exact small_1100055_right_covered
#print axioms cover_1100055

def root_1100049 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1100049_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1100049_left_fuel : Nat := 1
def small_1100049_left_count : Nat := 1
def small_1100049_left_encoded : String := "00000001"
theorem small_1100049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1100049_left_root small_1100049_left_fuel small_1100049_left_count small_1100049_left_encoded = true := by
  decide +kernel
theorem small_1100049_left_covered : CoveredBy scale carrier boxes small_1100049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1100049_left_root small_1100049_left_fuel small_1100049_left_count small_1100049_left_encoded small_1100049_left_checked

theorem cover_1100049 : CoveredBy scale carrier boxes root_1100049 := by
  apply coveredBy_split_literal root_1100049 small_1100049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1100055 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_1100049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1100055
#print axioms cover_1100049

def root_1087019 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1087019 : CoveredBy scale carrier boxes root_1087019 := by
  apply coveredBy_split_literal root_1087019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087020 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1100049 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087020
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1100049
#print axioms cover_1087019

def root_1087013 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087013_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087013_left_fuel : Nat := 1
def small_1087013_left_count : Nat := 1
def small_1087013_left_encoded : String := "00000000"
theorem small_1087013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087013_left_root small_1087013_left_fuel small_1087013_left_count small_1087013_left_encoded = true := by
  decide +kernel
theorem small_1087013_left_covered : CoveredBy scale carrier boxes small_1087013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087013_left_root small_1087013_left_fuel small_1087013_left_count small_1087013_left_encoded small_1087013_left_checked

theorem cover_1087013 : CoveredBy scale carrier boxes root_1087013 := by
  apply coveredBy_split_literal root_1087013 small_1087013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087019 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1087013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087019
#print axioms cover_1087013

def root_1087012 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1087012 : CoveredBy scale carrier boxes root_1087012 := by
  apply coveredBy_split_literal root_1087012 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087013 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0423.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087013
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0423.covered
#print axioms cover_1087012

def root_1087006 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087006_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087006_left_fuel : Nat := 1
def small_1087006_left_count : Nat := 1
def small_1087006_left_encoded : String := "00000004"
theorem small_1087006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087006_left_root small_1087006_left_fuel small_1087006_left_count small_1087006_left_encoded = true := by
  decide +kernel
theorem small_1087006_left_covered : CoveredBy scale carrier boxes small_1087006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087006_left_root small_1087006_left_fuel small_1087006_left_count small_1087006_left_encoded small_1087006_left_checked

theorem cover_1087006 : CoveredBy scale carrier boxes root_1087006 := by
  apply coveredBy_split_literal root_1087006 small_1087006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087012 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1087006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087012
#print axioms cover_1087006

def root_1087005 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087005_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087005_right_fuel : Nat := 17
def small_1087005_right_count : Nat := 81
def small_1087005_right_encoded : String := "12073D08045489F71386ACF6000000000CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A87020F8750F900000009000000010000000700000007000000030F34D106000000030000000900000009000000010F34D10200000001045489FB1386ACFA000000020CFD9BFD000000070F34D106000000030CFD9C090F34D10800000004067ECE7712EA94F6000000000AD357790000000910D1010200000001067ECE7B000000070000000512EA58F60AD3577910D13D020000000500000001000000050000000000000005138670FA0CFD9BFD0F350D0600000005000000030000000500000002138670F60CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD000000070000000500000005000000010F34D10200000001045489FB00000007000000050000000000000004"
theorem small_1087005_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087005_right_root small_1087005_right_fuel small_1087005_right_count small_1087005_right_encoded = true := by
  decide +kernel
theorem small_1087005_right_covered : CoveredBy scale carrier boxes small_1087005_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087005_right_root small_1087005_right_fuel small_1087005_right_count small_1087005_right_encoded small_1087005_right_checked

theorem cover_1087005 : CoveredBy scale carrier boxes root_1087005 := by
  apply coveredBy_split_literal root_1087005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087006 small_1087005_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087006
  · exact small_1087005_right_covered
#print axioms cover_1087005

def root_1087000 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087000_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1087000_right_fuel : Nat := 1
def small_1087000_right_count : Nat := 1
def small_1087000_right_encoded : String := "00000003"
theorem small_1087000_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1087000_right_root small_1087000_right_fuel small_1087000_right_count small_1087000_right_encoded = true := by
  decide +kernel
theorem small_1087000_right_covered : CoveredBy scale carrier boxes small_1087000_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1087000_right_root small_1087000_right_fuel small_1087000_right_count small_1087000_right_encoded small_1087000_right_checked

theorem cover_1087000 : CoveredBy scale carrier boxes root_1087000 := by
  apply coveredBy_split_literal root_1087000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087005 small_1087000_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087005
  · exact small_1087000_right_covered
#print axioms cover_1087000

def root_1086999 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1086999_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1086999_right_fuel : Nat := 25
def small_1086999_right_count : Nat := 273
def small_1086999_right_encoded : String := "120701060000000308A913091207010800000004045489F71386ACF6000000000CFD9BF90F350D02045489FB1386ACFA00000002045489FD1386AD0604548A0913867108000000040C9A8702000000080F878CF900000001067ECE7712EA94F600000000067ECE7B000000080000000700000008000000090000000313867106000000030000000800000009000000010F34D10200000001045489FB1386ACFA00000002045489FD1386AD0604548A091386710800000004067ECE7712EA94F6000000000AD3577910D13D02067ECE7B12EA94FA00000002067ECE7D12EA9506022A45890000000700000008000000030000000812EA58FA067ECE7D12EA9506022A458900000007000000090000000300000007000000020000000110D10102000000010000000A12EA58F60AD3577910D13D02067ECE7B0000000812EA58FA0000000A00000002000000010000000A000000001386AD08067ECE7712EA94F6000000000AD3577910D13D02000000090000000110D1010200000001067ECE7B12EA94FA00000002067ECE7D12EA9506067ECE8912EA5908000000040000000A12EA95080793F0B70000000900000008000000040000000312EA5906000000030000000812EA58FA067ECE7D12EA9506067ECE890000000A00000005000000030000000A0000000212EA58F60AD3577910D13D02067ECE7B00000008000000090000000110D1010200000001067ECE7B12EA94FA00000002067ECE7D12EA9506067ECE890000000800000005000000030000000812EA58FA0000000500000002000000000000000400000003138671060000000304548A090000000A1386AD08067ECE7712EA94F6000000000AD3577900000008000000080000000800000004138670FA045489FD1386AD0604548A091386710800000004067ECE7712EA94F6000000000AD35779000000090000000A12EA58F60AD3577910D13D02022A457B0000000A00000005000000010000000A000000000000000900000003138671060000000304548A09000000070000000500000002138670F60CFD9BF90F350D02045489FB1386ACFA00000002045489FD1386AD0604548A0900000008000000080000000300000008138670FA045489FD1386AD0604548A0913867108000000040C9A8702000000050F878CF9000000010000000500000005000000030000000500000002000000010F34D10200000001045489FB1386ACFA00000002045489FD1386AD0604548A091386710800000004022A457713E200F6000000000AD3577910D13D0200000008000000010000000A000000081386AD08022A457713E200F6000000000AD3577910D13D0200000005000000010000000500000005000000040000000300000008138670FA045489FD1386AD0604548A091386710800000004022A45770000000A00000005000000050000000300000005000000020000000012073D08045489F700000009138670F60CFD9BF900000009000000050000000000000004"
theorem small_1086999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1086999_right_root small_1086999_right_fuel small_1086999_right_count small_1086999_right_encoded = true := by
  decide +kernel
theorem small_1086999_right_covered : CoveredBy scale carrier boxes small_1086999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1086999_right_root small_1086999_right_fuel small_1086999_right_count small_1086999_right_encoded small_1086999_right_checked

theorem cover_1086999 : CoveredBy scale carrier boxes root_1086999 := by
  apply coveredBy_split_literal root_1086999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1087000 small_1086999_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1087000
  · exact small_1086999_right_covered
#print axioms cover_1086999

def root_1086994 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1086994_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1086994_right_fuel : Nat := 1
def small_1086994_right_count : Nat := 1
def small_1086994_right_encoded : String := "00000002"
theorem small_1086994_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1086994_right_root small_1086994_right_fuel small_1086994_right_count small_1086994_right_encoded = true := by
  decide +kernel
theorem small_1086994_right_covered : CoveredBy scale carrier boxes small_1086994_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1086994_right_root small_1086994_right_fuel small_1086994_right_count small_1086994_right_encoded small_1086994_right_checked

theorem cover_1086994 : CoveredBy scale carrier boxes root_1086994 := by
  apply coveredBy_split_literal root_1086994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1086999 small_1086994_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1086999
  · exact small_1086994_right_covered
#print axioms cover_1086994

def root_1083760 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1083760 : CoveredBy scale carrier boxes root_1083760 := by
  apply coveredBy_split_literal root_1083760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1083761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1086994 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1083761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1086994
#print axioms cover_1083760

def root_1083755 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083755_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083755_right_fuel : Nat := 1
def small_1083755_right_count : Nat := 1
def small_1083755_right_encoded : String := "00000001"
theorem small_1083755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1083755_right_root small_1083755_right_fuel small_1083755_right_count small_1083755_right_encoded = true := by
  decide +kernel
theorem small_1083755_right_covered : CoveredBy scale carrier boxes small_1083755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1083755_right_root small_1083755_right_fuel small_1083755_right_count small_1083755_right_encoded small_1083755_right_checked

theorem cover_1083755 : CoveredBy scale carrier boxes root_1083755 := by
  apply coveredBy_split_literal root_1083755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1083760 small_1083755_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1083760
  · exact small_1083755_right_covered
#print axioms cover_1083755

def root_1083754 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1083754 : CoveredBy scale carrier boxes root_1083754 := by
  apply coveredBy_split_literal root_1083754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1083755 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0424.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1083755
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0424.covered
#print axioms cover_1083754

def root_1083749 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083749_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1083749_right_fuel : Nat := 1
def small_1083749_right_count : Nat := 1
def small_1083749_right_encoded : String := "00000000"
theorem small_1083749_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1083749_right_root small_1083749_right_fuel small_1083749_right_count small_1083749_right_encoded = true := by
  decide +kernel
theorem small_1083749_right_covered : CoveredBy scale carrier boxes small_1083749_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1083749_right_root small_1083749_right_fuel small_1083749_right_count small_1083749_right_encoded small_1083749_right_checked

theorem cover_1083749 : CoveredBy scale carrier boxes root_1083749 := by
  apply coveredBy_split_literal root_1083749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1083754 small_1083749_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1083754
  · exact small_1083749_right_covered
#print axioms cover_1083749

def root_1070465 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1070465 : CoveredBy scale carrier boxes root_1070465 := by
  apply coveredBy_split_literal root_1070465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1083749 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070466
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1083749
#print axioms cover_1070465

def root_1070460 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070460_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070460_right_fuel : Nat := 1
def small_1070460_right_count : Nat := 1
def small_1070460_right_encoded : String := "00000004"
theorem small_1070460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070460_right_root small_1070460_right_fuel small_1070460_right_count small_1070460_right_encoded = true := by
  decide +kernel
theorem small_1070460_right_covered : CoveredBy scale carrier boxes small_1070460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070460_right_root small_1070460_right_fuel small_1070460_right_count small_1070460_right_encoded small_1070460_right_checked

theorem cover_1070460 : CoveredBy scale carrier boxes root_1070460 := by
  apply coveredBy_split_literal root_1070460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070465 small_1070460_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070465
  · exact small_1070460_right_covered
#print axioms cover_1070460

def root_1070088 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070088_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070088_left_fuel : Nat := 23
def small_1070088_left_count : Nat := 171
def small_1070088_left_encoded : String := "1151E9090000000408A912F712073CF60000000008A912F912073D0208A912FB12073CFA0000000208A912FD12073D0605000108135D4509000000040CFD9BF70000000900000007135D81090CFD9BF70F350CF6000000000CFD9BF90F350D0200000009000000010F34D102000000010CFD9BFB000000070F34D0FA00000009000000020F34D0F60CFD9BF90F350D020CFD9BFB0000000700000009000000010F34D1020000000100000007000000000000000400000003120701060000000300000009120700FA000000090000000200000001120701020000000108A912FB12073CFA0000000208A912FD12073D060000000700000003120701060000000305000108135D4509000000040CFD9BF70F350CF600000000045489F90000000913867102000000010CFD9BFB00000007000000060F34D0F60000000500000000135D81090CFD9BF70F350CF600000000045489F91386AD020CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F6000000070F8750F7000000090000000000000003138671060000000300000009000000090000000113867102000000010CFD9BFB0F350CFA00000002045489FD0000000713867106000000030C9A86F60F878CF7000000000C9A86FA00000007000000070F8750F70C9A86FA0000000600000006000000000F34D0FA00000006000000020F34D0F6045489F91386AD020CFD9BFB00000007000000090000000113867102000000010CFD9BFB000000070F34D0FA00000005000000020000000000000004120700FA08A912FD0000000612070106000000030000000900000002120700F608A912F912073D0208A912FB12073CFA0000000208A912FD00000007120701060000000300000008120700FA000000050000000200000001120701020000000108A912FB00000007120700FA000000050000000200000000"
theorem small_1070088_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070088_left_root small_1070088_left_fuel small_1070088_left_count small_1070088_left_encoded = true := by
  decide +kernel
theorem small_1070088_left_covered : CoveredBy scale carrier boxes small_1070088_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070088_left_root small_1070088_left_fuel small_1070088_left_count small_1070088_left_encoded small_1070088_left_checked

theorem cover_1070088 : CoveredBy scale carrier boxes root_1070088 := by
  apply coveredBy_split_literal root_1070088 small_1070088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070460 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1070088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070460
#print axioms cover_1070088

def root_1070082 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070082_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1070082_left_fuel : Nat := 1
def small_1070082_left_count : Nat := 1
def small_1070082_left_encoded : String := "00000003"
theorem small_1070082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1070082_left_root small_1070082_left_fuel small_1070082_left_count small_1070082_left_encoded = true := by
  decide +kernel
theorem small_1070082_left_covered : CoveredBy scale carrier boxes small_1070082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1070082_left_root small_1070082_left_fuel small_1070082_left_count small_1070082_left_encoded small_1070082_left_checked

theorem cover_1070082 : CoveredBy scale carrier boxes root_1070082 := by
  apply coveredBy_split_literal root_1070082 small_1070082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070088 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1070082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070088
#print axioms cover_1070082

def root_1068492 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1068492 : CoveredBy scale carrier boxes root_1068492 := by
  apply coveredBy_split_literal root_1068492 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0407.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1070082 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0407.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1070082
#print axioms cover_1068492

def root_1068486 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1068486_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1068486_left_fuel : Nat := 1
def small_1068486_left_count : Nat := 1
def small_1068486_left_encoded : String := "00000002"
theorem small_1068486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1068486_left_root small_1068486_left_fuel small_1068486_left_count small_1068486_left_encoded = true := by
  decide +kernel
theorem small_1068486_left_covered : CoveredBy scale carrier boxes small_1068486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1068486_left_root small_1068486_left_fuel small_1068486_left_count small_1068486_left_encoded small_1068486_left_checked

theorem cover_1068486 : CoveredBy scale carrier boxes root_1068486 := by
  apply coveredBy_split_literal root_1068486 small_1068486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1068492 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1068486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1068492
#print axioms cover_1068486

def root_1068485 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1068485 : CoveredBy scale carrier boxes root_1068485 := by
  apply coveredBy_split_literal root_1068485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1068486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0425.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1068486
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0425.covered
#print axioms cover_1068485

def root_1068479 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1068479_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1068479_left_fuel : Nat := 1
def small_1068479_left_count : Nat := 1
def small_1068479_left_encoded : String := "00000001"
theorem small_1068479_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1068479_left_root small_1068479_left_fuel small_1068479_left_count small_1068479_left_encoded = true := by
  decide +kernel
theorem small_1068479_left_covered : CoveredBy scale carrier boxes small_1068479_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1068479_left_root small_1068479_left_fuel small_1068479_left_count small_1068479_left_encoded small_1068479_left_checked

theorem cover_1068479 : CoveredBy scale carrier boxes root_1068479 := by
  apply coveredBy_split_literal root_1068479 small_1068479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1068485 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1068479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1068485
#print axioms cover_1068479

def root_1065271 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1065271 : CoveredBy scale carrier boxes root_1065271 := by
  apply coveredBy_split_literal root_1065271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1065272 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1068479 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1065272
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1068479
#print axioms cover_1065271

def root_1065265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1065265_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1065265_left_fuel : Nat := 1
def small_1065265_left_count : Nat := 1
def small_1065265_left_encoded : String := "00000000"
theorem small_1065265_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1065265_left_root small_1065265_left_fuel small_1065265_left_count small_1065265_left_encoded = true := by
  decide +kernel
theorem small_1065265_left_covered : CoveredBy scale carrier boxes small_1065265_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1065265_left_root small_1065265_left_fuel small_1065265_left_count small_1065265_left_encoded small_1065265_left_checked

theorem cover_1065265 : CoveredBy scale carrier boxes root_1065265 := by
  apply coveredBy_split_literal root_1065265 small_1065265_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1065271 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1065265_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1065271
#print axioms cover_1065265

def root_1065264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1065264 : CoveredBy scale carrier boxes root_1065264 := by
  apply coveredBy_split_literal root_1065264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1065265 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0426.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1065265
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0426.covered
#print axioms cover_1065264

def root_1025302 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1025302 : CoveredBy scale carrier boxes root_1025302 := by
  apply coveredBy_split_literal root_1025302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1025303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1065264 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1025303
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1065264
#print axioms cover_1025302

def root_1018978 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1018978 : CoveredBy scale carrier boxes root_1018978 := by
  apply coveredBy_split_literal root_1018978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1018979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1025302 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1018979
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1025302
#print axioms cover_1018978

def root_1119677 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1119677_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1119677_left_fuel : Nat := 17
def small_1119677_left_count : Nat := 117
def small_1119677_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FF12073CFE0000000405000102135D44F9050000FA00000006135D44FB0500010600000006000000060000000200000001135D80F900000001050000FA135D80FB00000002050001060000000600000006135D44FB05000106135D4507000000030CFD9BF7000000070F34D0F60CFD9BFF000000060000000500000000135D81070CFD9BF7000000090F34D0F60CFD9BFF0000000600000009000000000000000300000002120700FE05000102135D44F900000009000000010000000900000004120700F608A912FF12073CFE0000000405000102135D44F9050000FA135D80FB000000020500010600000006135D8107045489F70000000700000008000000030000000800000001135D80F900000001050000FA135D80FB000000020500010600000006135D8107045489F71386ACF60000000000000006000000050000000300000008120700FE05000102135D44F9050000FA135D80FB0000000205000106000000060000000500000005000000010000000500000004000000001151E8FF08A912F700000007120700F60500010200000007135D80F900000001050000FA00000007000000070000000000000004"
theorem small_1119677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1119677_left_root small_1119677_left_fuel small_1119677_left_count small_1119677_left_encoded = true := by
  decide +kernel
theorem small_1119677_left_covered : CoveredBy scale carrier boxes small_1119677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1119677_left_root small_1119677_left_fuel small_1119677_left_count small_1119677_left_encoded small_1119677_left_checked

theorem cover_1119677 : CoveredBy scale carrier boxes root_1119677 := by
  apply coveredBy_split_literal root_1119677 small_1119677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0428.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1119677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0428.covered
#print axioms cover_1119677

def root_1119672 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1119672_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1119672_right_fuel : Nat := 1
def small_1119672_right_count : Nat := 1
def small_1119672_right_encoded : String := "00000002"
theorem small_1119672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1119672_right_root small_1119672_right_fuel small_1119672_right_count small_1119672_right_encoded = true := by
  decide +kernel
theorem small_1119672_right_covered : CoveredBy scale carrier boxes small_1119672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1119672_right_root small_1119672_right_fuel small_1119672_right_count small_1119672_right_encoded small_1119672_right_checked

theorem cover_1119672 : CoveredBy scale carrier boxes root_1119672 := by
  apply coveredBy_split_literal root_1119672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1119677 small_1119672_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1119677
  · exact small_1119672_right_covered
#print axioms cover_1119672

def root_1118444 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1118444 : CoveredBy scale carrier boxes root_1118444 := by
  apply coveredBy_split_literal root_1118444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0427.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1119672 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0427.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1119672
#print axioms cover_1118444

def root_1118439 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1118439_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1118439_right_fuel : Nat := 1
def small_1118439_right_count : Nat := 1
def small_1118439_right_encoded : String := "00000001"
theorem small_1118439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1118439_right_root small_1118439_right_fuel small_1118439_right_count small_1118439_right_encoded = true := by
  decide +kernel
theorem small_1118439_right_covered : CoveredBy scale carrier boxes small_1118439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1118439_right_root small_1118439_right_fuel small_1118439_right_count small_1118439_right_encoded small_1118439_right_checked

theorem cover_1118439 : CoveredBy scale carrier boxes root_1118439 := by
  apply coveredBy_split_literal root_1118439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.root_1118444 small_1118439_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026.cover_1118444
  · exact small_1118439_right_covered
#print axioms cover_1118439

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0026

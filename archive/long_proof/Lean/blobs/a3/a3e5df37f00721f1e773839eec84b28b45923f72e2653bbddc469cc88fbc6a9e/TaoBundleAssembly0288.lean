import TaoBundleAssembly0281
import TaoBundleAssembly0284
import TaoBundleAssembly0287
import TaoBundleChunkBatch0375
import TaoBundleChunkBatch0376
import TaoBundleChunkBatch0377
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288
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
  apply coveredBy_split_literal root_3983143 small_3983143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3984007 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3983143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3984007
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
  apply coveredBy_split_literal root_3983137 small_3983137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3983143 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3983137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3983143
#print axioms cover_3983137

def root_3977685 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3977685 : CoveredBy scale carrier boxes root_3977685 := by
  apply coveredBy_split_literal root_3977685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3977686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3983137 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3977686
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3983137
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
  apply coveredBy_split_literal root_3977684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3977685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3992146 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3977685
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3992146
#print axioms cover_3977684

def root_3942640 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942640 : CoveredBy scale carrier boxes root_3942640 := by
  apply coveredBy_split_literal root_3942640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3942641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3977684 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3942641
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3977684
#print axioms cover_3942640

def root_3894934 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894934 : CoveredBy scale carrier boxes root_3894934 := by
  apply coveredBy_split_literal root_3894934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3894935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3942640 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3894935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3942640
#print axioms cover_3894934

def root_3880870 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880870 : CoveredBy scale carrier boxes root_3880870 := by
  apply coveredBy_split_literal root_3880870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3880871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3894934 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3880871
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3894934
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
  apply coveredBy_split_literal root_3997831 small_3997831_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3997837 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3997831_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3997837
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
  apply coveredBy_split_literal root_3997830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3997831 small_3997830_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3997831
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
  apply coveredBy_split_literal root_3997825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3997830 small_3997825_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3997830
  · exact small_3997825_right_covered
#print axioms cover_3997825

def root_3996269 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996269 : CoveredBy scale carrier boxes root_3996269 := by
  apply coveredBy_split_literal root_3996269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1500.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3997825 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1500.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3997825
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
  apply coveredBy_split_literal root_3996264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996269 small_3996264_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996269
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
  apply coveredBy_split_literal root_3996263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996264 small_3996263_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996264
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
  apply coveredBy_split_literal root_3996258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996263 small_3996258_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996263
  · exact small_3996258_right_covered
#print axioms cover_3996258

def root_3996257 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996257 : CoveredBy scale carrier boxes root_3996257 := by
  apply coveredBy_split_literal root_3996257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996258 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1503.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996258
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
  apply coveredBy_split_literal root_3996252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996257 small_3996252_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996257
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
  apply coveredBy_split_literal root_3996251 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996252 small_3996251_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996252
  · exact small_3996251_right_covered
#print axioms cover_3996251

def root_3996250 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996250 : CoveredBy scale carrier boxes root_3996250 := by
  apply coveredBy_split_literal root_3996250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996251 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1504.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996251
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1504.covered
#print axioms cover_3996250

def root_3996249 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996249 : CoveredBy scale carrier boxes root_3996249 := by
  apply coveredBy_split_literal root_3996249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3996250 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1505.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3996250
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1505.covered
#print axioms cover_3996249

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288

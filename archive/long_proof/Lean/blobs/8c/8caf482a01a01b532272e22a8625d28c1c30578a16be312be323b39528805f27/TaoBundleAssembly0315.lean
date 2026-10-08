import TaoBundleAssembly0314
import TaoBundleChunkBatch0403
import TaoBundleChunkBatch0404
import TaoBundleChunkBatch0405
import TaoBundleChunkBatch0406
import TaoBundleChunkBatch0407
import TaoBundleChunkBatch0408
import TaoBundleChunkBatch0409
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315
def root_4312606 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4312606 : CoveredBy scale carrier boxes root_4312606 := by
  apply coveredBy_split_literal root_4312606 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1611.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4313866 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1611.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4313866
#print axioms cover_4312606

def root_4302208 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4302208 : CoveredBy scale carrier boxes root_4302208 := by
  apply coveredBy_split_literal root_4302208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4302209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4312606 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4302209
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4312606
#print axioms cover_4302208

def root_4323978 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4323978_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4323978_right_fuel : Nat := 26
def small_4323978_right_count : Nat := 401
def small_4323978_right_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000900000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF12073CFE0000000400000009120700FE050000F6135D810105000102000000090000000700000000135D450100000000000000090000000400000003120701060000000308A912FF12073CFE00000004050000F6135D810105000102135D44F905000104135D44FB00000008000000020000000800000001135D80F90000000105000104135D44FB045489FD0000000913867106000000030CFD9BFF0000000800000008000000020000000900000000135D4501000000000500010200000009135D80F90000000105000104135D44FB045489FD00000009000000080000000200000008120700FE050000F6135D810105000102135D44F90000000800000001135D80F90000000105000104135D44FB00000007000000020000000800000000135D4501000000000500010200000008135D80F90000000105000104135D44FB045489FD00000007000000080000000200000008000000041151E8FF000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912FB00000009120701040000000208A912FF00000008000000061151E8FF000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD12073D0608A912FF00000009120700FE000000090000000400000003120701060000000308A912FF00000008120700FE050000F600000008000000080000000400000002120701040000000208A912FD12073D0608A912FF000000080000000600000003000000081151E8FF000000090000000400000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0000FE000000071151E8FF08A912F9000000091207010200000001000000070000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FD12073D0608A912FF12073CFE00000004000000090000000700000003120701060000000308A912FF12073CFE00000004050000F6135D810105000104135D44FB0CFD9BF90F350D02045489FD0000000913867106000000030CFD9BFF00000009000000090000000100000009000000020000000900000000135D45010000000005000104135D44FB0CFD9BF90F350D02045489FD0000000913867106000000030CFD9BFF0F350CFE000000040000000900000009000000010F34D10200000001000000090000000200000009120700FE050000F600000007135D450100000000000000070000000400000001120701020000000108A912FD00000007120701060000000308A912FF00000006000000071151E8FF08A912F912073D0208A912FD0000000912070106000000030000000900000001120701020000000108A912FD12073D06050000F600000007135D45010000000000000009000000031207010600000003050000F600000009135D4501000000000500010400000009000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FB0000000912070104000000020000000900000001120701020000000108A912FB00000007000000091151E8FF08A912F912073D0208A912FB12073D04050000F60000000900000009000000020000000900000001120701020000000108A912FB12073D04050000F600000007135D450100000000050001060000000700000009000000021207010400000002050000F600000006135D4501000000000500010600000006000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FB12073D0408A912FD12073D060000000900000003120701060000000308A912FF12073CFE00000004050000F60000000900000009120700FE050000F6135D81010CFD9BF90F350D0200000006000000010000000600000000000000060000000400000002120701040000000208A912FD000000060000000600000001120701020000000108A912FB12073D0408A912FD000000060000000600000002000000091151E8FF08A912F900000009120701020000000108A912FB12073D0408A912FD0000000900000006000000020000000900000004"
theorem small_4323978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4323978_right_root small_4323978_right_fuel small_4323978_right_count small_4323978_right_encoded = true := by
  decide +kernel
theorem small_4323978_right_covered : CoveredBy scale carrier boxes small_4323978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4323978_right_root small_4323978_right_fuel small_4323978_right_count small_4323978_right_encoded small_4323978_right_checked

theorem cover_4323978 : CoveredBy scale carrier boxes root_4323978 := by
  apply coveredBy_split_literal root_4323978 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1616.root small_4323978_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1616.covered
  · exact small_4323978_right_covered
#print axioms cover_4323978

def root_4327175 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4327175 : CoveredBy scale carrier boxes root_4327175 := by
  apply coveredBy_split_literal root_4327175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1617.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1618.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1617.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1618.covered
#print axioms cover_4327175

def root_4323977 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4323977 : CoveredBy scale carrier boxes root_4323977 := by
  apply coveredBy_split_literal root_4323977 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4323978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4327175 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4323978
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4327175
#print axioms cover_4323977

def root_4335344 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4335344 : CoveredBy scale carrier boxes root_4335344 := by
  apply coveredBy_split_literal root_4335344 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1620.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1621.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1620.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1621.covered
#print axioms cover_4335344

def root_4332886 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4332886 : CoveredBy scale carrier boxes root_4332886 := by
  apply coveredBy_split_literal root_4332886 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1619.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4335344 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1619.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4335344
#print axioms cover_4332886

def root_4323976 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4323976 : CoveredBy scale carrier boxes root_4323976 := by
  apply coveredBy_split_literal root_4323976 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4323977 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4332886 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4323977
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4332886
#print axioms cover_4323976

def root_4339259 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4339259 : CoveredBy scale carrier boxes root_4339259 := by
  apply coveredBy_split_literal root_4339259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1622.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1623.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1622.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1623.covered
#print axioms cover_4339259

def root_4339253 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4339253_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4339253_left_fuel : Nat := 1
def small_4339253_left_count : Nat := 1
def small_4339253_left_encoded : String := "00000001"
theorem small_4339253_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4339253_left_root small_4339253_left_fuel small_4339253_left_count small_4339253_left_encoded = true := by
  decide +kernel
theorem small_4339253_left_covered : CoveredBy scale carrier boxes small_4339253_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4339253_left_root small_4339253_left_fuel small_4339253_left_count small_4339253_left_encoded small_4339253_left_checked

theorem cover_4339253 : CoveredBy scale carrier boxes root_4339253 := by
  apply coveredBy_split_literal root_4339253 small_4339253_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4339259 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4339253_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4339259
#print axioms cover_4339253

def root_4338741 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4338741_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4338741_left_fuel : Nat := 24
def small_4338741_left_count : Nat := 243
def small_4338741_left_encoded : String := "1151E8F90A0001041151E8FB0A0001061151E907000000030A0000FE000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A91301120700F608A91307120701060000000308A912FF12073CFE0000000405000102135D44F905000104135D44FB04548A010000000A00000008000000020000000800000001135D80F90000000105000104135D44FB04548A01138670F604548A070000000A1386AD060CFD9BFF000000080000000A00000003000000001386ACF60000000004548A0713867106000000030CFD9BFF000000080000000A0000000800000002135D80FB0000000204548A010000000A000000080000000A12073D0608A912FF00000008120700FE0000000500000004000000030000000012073CF60000000008A91307120701060000000308A912FF12073CFE0000000405000102135D44F90000000800000001135D80F90000000105000104135D44FB0CFD9C010F34D0F604548A0713867106000000030CFD9BFF000000080000000A0000000800000000000000080000000200000008120700FE0500010200000005135D80F9000000010500010400000005135D80FB000000020CFD9C010000000A000000050000000412073D0608A912FF00000008120700FE0000000500000004000000031151E8FF08A91301120700F608A91307120701060000000305000102135D44F905000104135D44FB050000FE00000008135D44FF0000000800000004000000020000000800000001135D80F90000000105000104135D44FB050000FE135D80FF0000000404548A01138670F604548A07138671060000000307800102128A40F90000000800000001128A7CF90000000100000009000000080000000000000008135D44FF00000009000000040000000200000008000000080000000012073CF60000000008A9130712070106000000030500010200000008135D80F90000000105000104135D44FB050000FE0000000800000009000000020000000800000008000000040000000300000002115224FB000000020A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A91301120700F608A912FB12073D0408A91307120701060000000308A912FF00000008120700FE0500010200000008135D80F90000000104548A010000000A000000080000000400000008000000021207010400000002000000080000000012073CF60000000008A912FB12073D0408A91307120701060000000308A912FF00000008120700FE000000080000000400000008000000021207010400000002000000081151E8FF00000008000000040000000300000001"
theorem small_4338741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4338741_left_root small_4338741_left_fuel small_4338741_left_count small_4338741_left_encoded = true := by
  decide +kernel
theorem small_4338741_left_covered : CoveredBy scale carrier boxes small_4338741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4338741_left_root small_4338741_left_fuel small_4338741_left_count small_4338741_left_encoded small_4338741_left_checked

theorem cover_4338741 : CoveredBy scale carrier boxes root_4338741 := by
  apply coveredBy_split_literal root_4338741 small_4338741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4339253 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4338741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4339253
#print axioms cover_4338741

def root_4338736 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4338736_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4338736_right_fuel : Nat := 1
def small_4338736_right_count : Nat := 1
def small_4338736_right_encoded : String := "00000000"
theorem small_4338736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4338736_right_root small_4338736_right_fuel small_4338736_right_count small_4338736_right_encoded = true := by
  decide +kernel
theorem small_4338736_right_covered : CoveredBy scale carrier boxes small_4338736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4338736_right_root small_4338736_right_fuel small_4338736_right_count small_4338736_right_encoded small_4338736_right_checked

theorem cover_4338736 : CoveredBy scale carrier boxes root_4338736 := by
  apply coveredBy_split_literal root_4338736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4338741 small_4338736_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4338741
  · exact small_4338736_right_covered
#print axioms cover_4338736

def root_4338735 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4338735 : CoveredBy scale carrier boxes root_4338735 := by
  apply coveredBy_split_literal root_4338735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4338736 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1624.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4338736
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1624.covered
#print axioms cover_4338735

def root_4344434 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4344434 : CoveredBy scale carrier boxes root_4344434 := by
  apply coveredBy_split_literal root_4344434 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1625.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1626.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1625.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1626.covered
#print axioms cover_4344434

def root_4338734 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4338734 : CoveredBy scale carrier boxes root_4338734 := by
  apply coveredBy_split_literal root_4338734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4338735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4344434 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4338735
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4344434
#print axioms cover_4338734

def root_4349056 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4349056 : CoveredBy scale carrier boxes root_4349056 := by
  apply coveredBy_split_literal root_4349056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1627.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1628.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1627.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1628.covered
#print axioms cover_4349056

def root_4349055 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4349055 : CoveredBy scale carrier boxes root_4349055 := by
  apply coveredBy_split_literal root_4349055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4349056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1629.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4349056
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1629.covered
#print axioms cover_4349055

def root_4338733 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4338733 : CoveredBy scale carrier boxes root_4338733 := by
  apply coveredBy_split_literal root_4338733 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4338734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4349055 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4338734
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4349055
#print axioms cover_4338733

def root_4323975 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4323975 : CoveredBy scale carrier boxes root_4323975 := by
  apply coveredBy_split_literal root_4323975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4323976 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4338733 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4323976
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4338733
#print axioms cover_4323975

def root_4302207 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4302207 : CoveredBy scale carrier boxes root_4302207 := by
  apply coveredBy_split_literal root_4302207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4302208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4323975 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4302208
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4323975
#print axioms cover_4302207

def root_4357578 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4357578 : CoveredBy scale carrier boxes root_4357578 := by
  apply coveredBy_split_literal root_4357578 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1631.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1632.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1631.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1632.covered
#print axioms cover_4357578

def root_4354830 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4354830 : CoveredBy scale carrier boxes root_4354830 := by
  apply coveredBy_split_literal root_4354830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1630.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4357578 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1630.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4357578
#print axioms cover_4354830

def root_4362418 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4362418 : CoveredBy scale carrier boxes root_4362418 := by
  apply coveredBy_split_literal root_4362418 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1633.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1634.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1633.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1634.covered
#print axioms cover_4362418

def root_4361812 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4361812_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4361812_left_fuel : Nat := 23
def small_4361812_left_count : Nat := 281
def small_4361812_left_encoded : String := "0A0000F6115225010A0001021151E8F90A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F600000008000000000000000800000005000000031151E9070000000300000008115225050A0000FC000000081151E90700000003000000080000000200000001115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F608A912F900000005120701020000000108A913070000000512073CFC0000000308A912FF00000005120700FE05000104135D4505000000020000000800000005000000040000000012073CF60000000008A912F912073D0208A91307000000050000000800000001120701020000000108A91307120700FC000000090000000312073CFC0000000308A912FF00000008120700FE05000104135D4505000000020CFD9C010F34D0F600000008000000000000000800000008000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F608A912F900000005120701020000000108A912FF00000005120700FE05000104135D4505000000020000000700000008000000040000000012073CF60000000008A912F900000008120701020000000108A912FF00000008120700FE05000104135D450500000002050000FC000000080000000700000008000000041151E8FF0000000700000004115225050A0000FC115225070A0000FE115224FF0000000408A91301120700F6000000050000000012073CF60000000008A912F900000008120701020000000108A9130512070104000000020000000812073D0408A913070000000900000008000000021151E8FF08A91301120700F600000008000000000000000800000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F60000000800000000000000081151E8FF000000080000000400000002000000001151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC000000081151E90700000003000000080000000800000001115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F912073D0208A91307000000050000000800000001120701020000000108A913070000000912073CFC0000000308A912FF00000008120700FE050000F600000008135D45010000000000000009000000041151E8FF08A912F90000000812070102000000010000000800000004000000031151E907000000030A0000FE115224FF0000000408A912F900000008120701020000000108A912FF00000008120700FE00000008000000041151E8FF0000000800000004115225050A0000FC115225070A0000FE115224FF0000000408A912F900000008120701020000000108A9130512070104000000020000000812073D0408A91307120700FC000000080000000300000008000000021151E8FF0000000800000004000000031151E907000000030000000800000002"
theorem small_4361812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4361812_left_root small_4361812_left_fuel small_4361812_left_count small_4361812_left_encoded = true := by
  decide +kernel
theorem small_4361812_left_covered : CoveredBy scale carrier boxes small_4361812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4361812_left_root small_4361812_left_fuel small_4361812_left_count small_4361812_left_encoded small_4361812_left_checked

theorem cover_4361812 : CoveredBy scale carrier boxes root_4361812 := by
  apply coveredBy_split_literal root_4361812 small_4361812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4362418 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_4361812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4362418
#print axioms cover_4361812

def root_4366919 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366919_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366919_left_fuel : Nat := 19
def small_4366919_left_count : Nat := 265
def small_4366919_left_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A91301120700F60000000A000000000000000A1152250908A91301120700F608A913070000000A12073CFC0000000308A913090000000812073D080000000A000000040000000012073CF60000000008A913070000000A12073CFC0000000308A91309000000060000000A00000004000000031151E907000000030A0001081151E909000000040000000A1152250908A91301120700F608A9130912070108000000040000000812073D0805000102135D44F90000000A00000001135D80F90000000105000104135D4505000000020000000A0000000A000000040000000012073CF60000000008A91309120701080000000405000102000000080000000812073D080000000A0000000400000004115225050A0000FC115225070A0001081151E9090000000408A91301120700F608A91305120701040000000208A913070000000512073CFC0000000305000102000000050000000812073D0408A913070000000512073CFC0000000305000102135D44F9050001080000000500000008000000010000000A000000020000000012073CF60000000008A91305120701040000000208A91307120700FC050001020000000500000008000000030000000812073D0408A91307120700FC05000102135D44F905000108000000050000000800000001135D80F9000000010000000A0000000312073CFC000000030000000A000000021152250908A91301120700F608A91305120701040000000208A91307120700FC000000050000000312073CFC0000000308A913090000000812073D08000000080000000412073D0408A91307120700FC000000050000000312073CFC0000000308A913090000000812073D0805000102000000080000000800000004000000020000000012073CF60000000008A91305120701040000000208A91307120700FC08A913090000000812073D0800000008000000040000000312073CFC0000000308A913090000000812073D08000000080000000412073D0408A91307120700FC08A913090000000812073D08050001020000000800000008000000040000000312073CFC0000000308A913090000000812073D0805000102135D44F90CFD9C010000000800000008000000010000000A000000040000000200000004000000031151E907000000030A0001081151E9090000000408A91301120700F608A913051207010400000002000000080000000A000000000000000A1152250908A91301120700F608A91305120701040000000208A913090000000712073D08000000080000000412073D0408A913090000000812073D080000000A00000004000000020000000012073CF60000000008A9130512070104000000020000000812073D0408A91309000000080000000A00000002000000040000000200000001"
theorem small_4366919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4366919_left_root small_4366919_left_fuel small_4366919_left_count small_4366919_left_encoded = true := by
  decide +kernel
theorem small_4366919_left_covered : CoveredBy scale carrier boxes small_4366919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4366919_left_root small_4366919_left_fuel small_4366919_left_count small_4366919_left_encoded small_4366919_left_checked

theorem cover_4366919 : CoveredBy scale carrier boxes root_4366919 := by
  apply coveredBy_split_literal root_4366919 small_4366919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1635.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4366919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1635.covered
#print axioms cover_4366919

def root_4366914 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366914_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366914_right_fuel : Nat := 1
def small_4366914_right_count : Nat := 1
def small_4366914_right_encoded : String := "00000000"
theorem small_4366914_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4366914_right_root small_4366914_right_fuel small_4366914_right_count small_4366914_right_encoded = true := by
  decide +kernel
theorem small_4366914_right_covered : CoveredBy scale carrier boxes small_4366914_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4366914_right_root small_4366914_right_fuel small_4366914_right_count small_4366914_right_encoded small_4366914_right_checked

theorem cover_4366914 : CoveredBy scale carrier boxes root_4366914 := by
  apply coveredBy_split_literal root_4366914 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4366919 small_4366914_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4366919
  · exact small_4366914_right_covered
#print axioms cover_4366914

def root_4366913 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366913_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366913_right_fuel : Nat := 21
def small_4366913_right_count : Nat := 251
def small_4366913_right_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A91307000000060000000A0000000A000000031151E907000000030000000A115225050A0000FC115225070A0001081151E9090000000408A91305120701040000000208A91307120700FC00000008000000030000000812073D0408A91307120700FC050000F6135D81010500010200000006135D80F90000000105000108000000080000000600000000000000060000000312073CFC00000003050000F60000000A135D4501000000000500010200000008135D80F9000000010000000A000000021152250908A91305120701040000000208A91307120700FC08A913090000000612073D080000000800000004000000030000000812073D0408A91307120700FC000000060000000312073CFC0000000308A913090000000812073D080000000A000000040000000200000004000000031151E907000000030A0001080000000A115225090000000A000000040000000200000001115224F9000000010A0001041151E905000000020A0000FC115225070A0001081151E909000000040000000A1152250908A912F912073D0208A91307000000060000000A00000001120701020000000108A913070000000A0000000900000004000000031151E907000000030A0001081151E90900000004000000051152250908A912F912073D0208A91309000000060000000A0000000112070102000000010000000500000004115225050A0000FC115225070A0001081151E9090000000408A912F912073D0208A91305120701040000000208A91307120700FC050000F6135D81010500010800000009000000090000000000000009000000030000000912073D0408A91307120700FC050000F6135D81010000000A00000000135D4501000000000500010800000009135D81090CFD9BF9000000070000000900000004000000030000000A0000000200000001120701020000000108A913050000000A0000000A1152250908A912F912073D0208A91305120701040000000208A91307120700FC08A913090000000A12073D08050000F60000000A0000000A000000040000000312073CFC0000000308A913090000000A12073D080000000A0000000412073D040000000A0000000200000001120701020000000108A9130512070104000000020000000A12073D0408A913070000000A12073CFC000000030000000A0000000200000004000000031151E907000000030A0001081151E909000000040000000A1152250908A912F912073D0208A91305000000090000000A00000001120701020000000108A91305120701040000000200000005000000050000000400000002"
theorem small_4366913_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4366913_right_root small_4366913_right_fuel small_4366913_right_count small_4366913_right_encoded = true := by
  decide +kernel
theorem small_4366913_right_covered : CoveredBy scale carrier boxes small_4366913_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4366913_right_root small_4366913_right_fuel small_4366913_right_count small_4366913_right_encoded small_4366913_right_checked

theorem cover_4366913 : CoveredBy scale carrier boxes root_4366913 := by
  apply coveredBy_split_literal root_4366913 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4366914 small_4366913_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4366914
  · exact small_4366913_right_covered
#print axioms cover_4366913

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315

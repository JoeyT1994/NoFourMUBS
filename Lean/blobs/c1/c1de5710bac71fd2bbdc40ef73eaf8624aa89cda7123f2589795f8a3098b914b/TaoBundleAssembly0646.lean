import TaoBundleAssembly0645
import TaoBundleChunkBatch0885
import TaoBundleChunkBatch0886
import TaoBundleChunkBatch0887
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646
def root_9454728 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9454728_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9454728_left_fuel : Nat := 22
def small_9454728_left_count : Nat := 275
def small_9454728_left_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115225050A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250908A91305120700FA000000050000000212073CFA0000000208A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000400000009000000041151E9090000000408A91305120700FA08A912FD000000051207010600000003000000090000000200000008000000021151E905000000020A0001061151E8FD0A0000FE000000051151E909000000040000000800000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000100135D450100000000050001020000000900000008135D810105000102135D44F90000000800000001000000080000000000000003120701060000000308A91309120700FE000000090000000400000009000000041151E909000000040000000800000001115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE1152250900000008000000041151E909000000040000000700000003115224FD000000030A0000FE1152250908A912F912073D0208A91305120700FA08A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000412073CFE000000040500010000000008135D81010CFD9BF9000000080F34D1020000000100000007000000000000000212073CFA0000000208A912FD12073D060000000800000003120701060000000308A91309120700FE05000100135D4501000000000CFD9BF90000000500000008135D81010CFD9BF90000000800000008000000000000000412073CFE000000040000000800000001120701020000000108A91305120700FA08A912FD00000007120701060000000308A9130900000008000000070000000212073CFA0000000208A912FD0000000800000008000000041151E9090000000408A912F912073D0208A91305120700FA08A912FD000000071207010600000003050001000000000700000007000000020000000800000001120701020000000108A913050000000712073CFA0000000208A912FD0000000700000008000000021151E905000000020A0001061151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE0000000500000004000000080000000100000008000000041151E909000000040000000800000003115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073D0608A91309120700FE05000100135D4501000000000000000800000008000000040000000800000003120701060000000308A91309120700FE05000100135D4501000000000000000A135D8101050000FA000000080000000A000000000000000412073CFE0000000405000100000000060000000800000001120701020000000108A912FD00000008120701060000000300000008000000041151E9090000000400000008"
theorem small_9454728_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9454728_left_root small_9454728_left_fuel small_9454728_left_count small_9454728_left_encoded = true := by
  decide +kernel
theorem small_9454728_left_covered : CoveredBy scale carrier boxes small_9454728_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9454728_left_root small_9454728_left_fuel small_9454728_left_count small_9454728_left_encoded small_9454728_left_checked

theorem cover_9454728 : CoveredBy scale carrier boxes root_9454728 := by
  apply coveredBy_split_literal root_9454728 small_9454728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9455324 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9454728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9455324
#print axioms cover_9454728

def root_9450488 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450488 : CoveredBy scale carrier boxes root_9450488 := by
  apply coveredBy_split_literal root_9450488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9450489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9454728 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9450489
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9454728
#print axioms cover_9450488

def root_9459827 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9459827 : CoveredBy scale carrier boxes root_9459827 := by
  apply coveredBy_split_literal root_9459827 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3537.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3538.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3537.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3538.covered
#print axioms cover_9459827

def root_9459821 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9459821_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9459821_left_fuel : Nat := 1
def small_9459821_left_count : Nat := 1
def small_9459821_left_encoded : String := "00000000"
theorem small_9459821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9459821_left_root small_9459821_left_fuel small_9459821_left_count small_9459821_left_encoded = true := by
  decide +kernel
theorem small_9459821_left_covered : CoveredBy scale carrier boxes small_9459821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9459821_left_root small_9459821_left_fuel small_9459821_left_count small_9459821_left_encoded small_9459821_left_checked

theorem cover_9459821 : CoveredBy scale carrier boxes root_9459821 := by
  apply coveredBy_split_literal root_9459821 small_9459821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9459827 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9459821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9459827
#print axioms cover_9459821

def root_9459820 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9459820 : CoveredBy scale carrier boxes root_9459820 := by
  apply coveredBy_split_literal root_9459820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9459821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3539.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9459821
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3539.covered
#print axioms cover_9459820

def root_9468412 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9468412 : CoveredBy scale carrier boxes root_9468412 := by
  apply coveredBy_split_literal root_9468412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3541.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3542.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3541.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3542.covered
#print axioms cover_9468412

def root_9468407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9468407_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9468407_right_fuel : Nat := 1
def small_9468407_right_count : Nat := 1
def small_9468407_right_encoded : String := "00000000"
theorem small_9468407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9468407_right_root small_9468407_right_fuel small_9468407_right_count small_9468407_right_encoded = true := by
  decide +kernel
theorem small_9468407_right_covered : CoveredBy scale carrier boxes small_9468407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9468407_right_root small_9468407_right_fuel small_9468407_right_count small_9468407_right_encoded small_9468407_right_checked

theorem cover_9468407 : CoveredBy scale carrier boxes root_9468407 := by
  apply coveredBy_split_literal root_9468407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9468412 small_9468407_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9468412
  · exact small_9468407_right_covered
#print axioms cover_9468407

def root_9465961 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9465961 : CoveredBy scale carrier boxes root_9465961 := by
  apply coveredBy_split_literal root_9465961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3540.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9468407 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3540.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9468407
#print axioms cover_9465961

def root_9459819 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9459819 : CoveredBy scale carrier boxes root_9459819 := by
  apply coveredBy_split_literal root_9459819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9459820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9465961 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9459820
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9465961
#print axioms cover_9459819

def root_9450487 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450487 : CoveredBy scale carrier boxes root_9450487 := by
  apply coveredBy_split_literal root_9450487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9450488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9459819 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9450488
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9459819
#print axioms cover_9450487

def root_9477211 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477211_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477211_left_fuel : Nat := 25
def small_9477211_left_count : Nat := 483
def small_9477211_left_encoded : String := "120701000000000008A91307120701060000000305000102135D44F9050000FA135D8105050000FE135D80FF0000000404548A010000000900000007135D44FF04548A01000000081386AD0004548A07000000071386AD060280010213D7B0F9078000FA00000008128A410500000002028000FE0000000700000008000000010000000800000003000000000000000400000002135D450500000002050000FE135D80FF0000000404548A0113867100000000000000000900000007135D44FF04548A01138671000000000004548A07000000081386AD060280010213D7B0F9028000FA00000008000000050000000100000005000000031386AD0004548A07000000071386AD060280010213D7B0F9028000FA13D7ED05028000FE0000000713D7B0FF067ECE810000000800000007000000040000000213D7B10500000002028000FE00000007000000050000000113D7ECF900000001028000FA000000070000000500000003000000000000000400000001135D80F900000001050000FA135D8105050000FE000000070000000800000002135D450500000002050000FE000000070000000512073D0605000102135D44F9050000FA135D8105050000FE135D80FF0000000404548A01000000091386AD000CFD9C070F34D10600000003000000090000000900000000135D44FF04548A0113867100000000000CFD9C070F34D1060000000300000009000000091386AD000CFD9C070F34D106000000030280010213D7B0F9078000FA00000009128A410500000002000000090000000113D7ECF900000001078000FA00000009128A410500000002000000090F350D060C9A87060F87510700000003000000090F878D070280010200000009000000090000000300000003000000000000000400000002135D450500000002050000FE135D80FF0000000404548A0113867100000000000CFD9C070F34D1060000000300000009000000091386AD000CFD9C070F34D106000000030280010213D7B0F90000000900000001000000090F350D060C9A87060F87510700000003000000090F878D07028001020000000900000009000000030000000300000000135D44FF04548A0113867100000000000CFD9C070F34D106000000030280010200000009000000090F350D060000000A000000031386AD000CFD9C070F34D106000000030280010213D7B0F9028000FA13D7ED05028000FE0000000913D7B0FF067ECE810000000912EA95000AD3578710D101060000000301400102000000090000000910D13D060140010200000009000000090000000300000000000000040000000213D7B10500000002028000FE13D7ECFF00000004067ECE810000000912EA95000AD3578700000007000000090000000013D7B0FF067ECE8112EA5900000000000000000512EA95000AD3578710D10106000000030000000510D13D060000000A0000000300000000000000040000000113D7ECF900000001028000FA13D7ED05028000FE0000000913D7B0FF067ECE810000000912EA95000AD3578710D1010600000003000000050000000900000000000000040000000213D7B10500000002028000FE13D7ECFF00000004067ECE810000000912EA95000000000700000000000000050F350D060C9A87060F87510700000003028001020000000A13D7ECF900000001028000FA00000009000000060F878D070280010213D7B0F9028000FA13D7ED05028000FE000000090000000A000000020000000A0000000113D7ECF900000001028000FA13D7ED05028000FE0000000913D7B0FF067ECE810000000912EA95000000000900000000000000040000000213D7B10500000002028000FE00000006000000060000000300000003000000000000000400000001135D80F900000001050000FA135D8105050000FE135D80FF0000000404548A01000000091386AD000CFD9C070F34D10600000003000000090000000900000000135D44FF04548A0113867100000000000CFD9C070F34D1060000000300000008000000091386AD000CFD9C070F34D1060000000307800102128A40F9078000FA00000009128A4105000000020000000900000001128A7CF900000001078000FA00000008128A410500000002000000090F350D060C9A87060F87510700000003000000090F878D070780010200000009000000090000000300000003000000000000000400000002135D450500000002050000FE135D80FF0000000404548A0113867100000000000CFD9C070F34D1060000000300000009000000091386AD000CFD9C070F34D10600000003000000070F350D060C9A87060F87510700000003000000060F878D07078001020000000900000006000000030000000300000000135D44FF04548A0113867100000000000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000600000009000000031386AD000CFD9C070F34D1060000000307800102128A40F9028000FA13D7ED05028000FE0000000900000005000000020000000500000001000000050F350D060C9A87060F87510700000003000000060F878D0707800102128A40F9028000FA13D7ED05028000FE0000000600000006000000020000000600000001000000060000000300000003000000000000000400000003"
theorem small_9477211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9477211_left_root small_9477211_left_fuel small_9477211_left_count small_9477211_left_encoded = true := by
  decide +kernel
theorem small_9477211_left_covered : CoveredBy scale carrier boxes small_9477211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9477211_left_root small_9477211_left_fuel small_9477211_left_count small_9477211_left_encoded small_9477211_left_checked

theorem cover_9477211 : CoveredBy scale carrier boxes root_9477211 := by
  apply coveredBy_split_literal root_9477211 small_9477211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3545.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9477211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3545.covered
#print axioms cover_9477211

def root_9477206 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477206_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477206_right_fuel : Nat := 1
def small_9477206_right_count : Nat := 1
def small_9477206_right_encoded : String := "00000004"
theorem small_9477206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9477206_right_root small_9477206_right_fuel small_9477206_right_count small_9477206_right_encoded = true := by
  decide +kernel
theorem small_9477206_right_covered : CoveredBy scale carrier boxes small_9477206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9477206_right_root small_9477206_right_fuel small_9477206_right_count small_9477206_right_encoded small_9477206_right_checked

theorem cover_9477206 : CoveredBy scale carrier boxes root_9477206 := by
  apply coveredBy_split_literal root_9477206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9477211 small_9477206_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9477211
  · exact small_9477206_right_covered
#print axioms cover_9477206

def root_9476774 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476774_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476774_left_fuel : Nat := 20
def small_9476774_left_count : Nat := 199
def small_9476774_left_encoded : String := "115224FF0000000408A91301120701000000000008A91307120701060000000308A912FF12073CFE0000000405000102135D44F9050000FA000000070000000700000001000000070000000712073D0608A912FF12073CFE0000000405000102135D44F9050000FA00000009135D45050000000204548A01000000091386AD000CFD9C070F34D1060000000300000009000000090000000000000001135D80F900000001050000FA00000009135D45050000000204548A01000000091386AD000CFD9C070F34D10600000003000000070000000900000000120700FE00000009000000040000000312073D0008A91307120701060000000308A912FF00000007120700FE000000070000000412073D0608A912FF12073CFE0000000405000102135D44F9050000FA135D81050CFD9C010F34D100000000000CFD9C070F34D10600000003000000070F350D0600000005000000030F350D000CFD9C07000000050F350D0600000005000000030000000000000002135D4505000000020CFD9C010F34D100000000000CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F87510700000003000000080F878D0700000007000000030F34D0FE0000000500000004000000030F350D000CFD9C07000000070F350D0600000008000000030000000000000001135D80F900000001050000FA135D81050CFD9C010F34D100000000000CFD9C070F34D10600000003000000070F350D060CFD9BFF0000000900000009000000030F350D000CFD9C07000000070F350D060CFD9BFF0000000700000007000000030000000000000002135D4505000000020CFD9C010F34D100000000000CFD9C07000000070F350D060CFD9BFF0000000700000006000000030F350D000000000700000000120700FE05000102135D44F9050000FA135D81050CFD9C01000000050F350D000000000900000000000000020000000700000001135D80F900000001050000FA135D81050CFD9C01000000090F350D000CFD9C070F34D1060000000300000006000000060000000000000002135D45050000000200000007000000040000000300000000"
theorem small_9476774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9476774_left_root small_9476774_left_fuel small_9476774_left_count small_9476774_left_encoded = true := by
  decide +kernel
theorem small_9476774_left_covered : CoveredBy scale carrier boxes small_9476774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9476774_left_root small_9476774_left_fuel small_9476774_left_count small_9476774_left_encoded small_9476774_left_checked

theorem cover_9476774 : CoveredBy scale carrier boxes root_9476774 := by
  apply coveredBy_split_literal root_9476774 small_9476774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9477206 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9476774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9477206
#print axioms cover_9476774

def root_9476769 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476769_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476769_right_fuel : Nat := 1
def small_9476769_right_count : Nat := 1
def small_9476769_right_encoded : String := "00000003"
theorem small_9476769_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9476769_right_root small_9476769_right_fuel small_9476769_right_count small_9476769_right_encoded = true := by
  decide +kernel
theorem small_9476769_right_covered : CoveredBy scale carrier boxes small_9476769_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9476769_right_root small_9476769_right_fuel small_9476769_right_count small_9476769_right_encoded small_9476769_right_checked

theorem cover_9476769 : CoveredBy scale carrier boxes root_9476769 := by
  apply coveredBy_split_literal root_9476769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9476774 small_9476769_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9476774
  · exact small_9476769_right_covered
#print axioms cover_9476769

def root_9476229 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476229_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476229_left_fuel : Nat := 21
def small_9476229_left_count : Nat := 259
def small_9476229_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912FF12073CFE0000000405000102135D44F9050000FA00000005135D45050000000205000106000000050000000900000001135D80F900000001050000FA00000009135D45050000000205000106135D4507000000030000000900000009120700FE000000090000000412073D0008A912FF12073CFE0000000405000102135D44F9050000FA000000050000000800000001135D80F900000001050000FA135D81050500010600000005135D81070CFD9C010F34D10000000000000000090F350D000CFD9BFF0000000500000006000000000000000300000002135D45050000000205000106135D45070000000300000008135D81070CFD9C010F34D100000000000CFD9BFF00000008000000060000000800000003120700FE05000102135D44F9050000FA00000005135D45050000000205000106000000050000000600000001135D80F900000001050000FA135D810505000106135D450700000003000000090000000600000002135D45050000000205000106135D4507000000030CFD9C010F34D1000000000000000009000000060000000600000004000000001151E8FF08A91301120701000000000005000102135D44F9050000FA135D81050500010600000005135D8107050000FE000000050000000A0000000300000002135D450500000002050001060000000A135D8107050000FE135D80FF0000000404548A0100000009000000080000000A0000000300000001135D80F900000001050000FA135D810505000106135D450700000003050000FE000000050000000A135D8107050000FE00000009135D44FF00000009000000040000000300000002135D45050000000205000106135D450700000003050000FE135D80FF000000040000000A00000006135D8107050000FE135D80FF0000000404548A010000000900000006000000060000000312073D0005000102135D44F9050000FA135D81050500010600000005135D8107050000FE00000005135D44FF000000080000000400000003000000020000000800000001135D80F900000001050000FA135D810505000106135D450700000003050000FE00000005135D44FF0000000800000004135D8107050000FE135D80FF000000040CFD9C010F34D1000000000007800102000000050000000900000008135D44FF0CFD9C010F34D1000000000007800102128A40F9078000FA128A7D05078001060000000500000009000000020000000800000001128A7CF900000001078000FA128A7D05078001060000000600000006000000020000000600000008000000040000000300000002135D4505000000020500010600000008135D8107050000FE00000008135D44FF0000000800000004000000030000000000000004"
theorem small_9476229_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9476229_left_root small_9476229_left_fuel small_9476229_left_count small_9476229_left_encoded = true := by
  decide +kernel
theorem small_9476229_left_covered : CoveredBy scale carrier boxes small_9476229_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9476229_left_root small_9476229_left_fuel small_9476229_left_count small_9476229_left_encoded small_9476229_left_checked

theorem cover_9476229 : CoveredBy scale carrier boxes root_9476229 := by
  apply coveredBy_split_literal root_9476229 small_9476229_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9476769 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9476229_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9476769
#print axioms cover_9476229

def root_9476223 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476223_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476223_left_fuel : Nat := 1
def small_9476223_left_count : Nat := 1
def small_9476223_left_encoded : String := "00000002"
theorem small_9476223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9476223_left_root small_9476223_left_fuel small_9476223_left_count small_9476223_left_encoded = true := by
  decide +kernel
theorem small_9476223_left_covered : CoveredBy scale carrier boxes small_9476223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9476223_left_root small_9476223_left_fuel small_9476223_left_count small_9476223_left_encoded small_9476223_left_checked

theorem cover_9476223 : CoveredBy scale carrier boxes root_9476223 := by
  apply coveredBy_split_literal root_9476223 small_9476223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9476229 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9476223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9476229
#print axioms cover_9476223

def root_9474785 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9474785 : CoveredBy scale carrier boxes root_9474785 := by
  apply coveredBy_split_literal root_9474785 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3544.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9476223 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3544.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9476223
#print axioms cover_9474785

def root_9474780 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9474780_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9474780_right_fuel : Nat := 1
def small_9474780_right_count : Nat := 1
def small_9474780_right_encoded : String := "00000001"
theorem small_9474780_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9474780_right_root small_9474780_right_fuel small_9474780_right_count small_9474780_right_encoded = true := by
  decide +kernel
theorem small_9474780_right_covered : CoveredBy scale carrier boxes small_9474780_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9474780_right_root small_9474780_right_fuel small_9474780_right_count small_9474780_right_encoded small_9474780_right_checked

theorem cover_9474780 : CoveredBy scale carrier boxes root_9474780 := by
  apply coveredBy_split_literal root_9474780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9474785 small_9474780_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9474785
  · exact small_9474780_right_covered
#print axioms cover_9474780

def root_9480601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9480601 : CoveredBy scale carrier boxes root_9480601 := by
  apply coveredBy_split_literal root_9480601 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3546.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3547.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3546.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3547.covered
#print axioms cover_9480601

def root_9480595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9480595_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9480595_left_fuel : Nat := 1
def small_9480595_left_count : Nat := 1
def small_9480595_left_encoded : String := "00000001"
theorem small_9480595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9480595_left_root small_9480595_left_fuel small_9480595_left_count small_9480595_left_encoded = true := by
  decide +kernel
theorem small_9480595_left_covered : CoveredBy scale carrier boxes small_9480595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9480595_left_root small_9480595_left_fuel small_9480595_left_count small_9480595_left_encoded small_9480595_left_checked

theorem cover_9480595 : CoveredBy scale carrier boxes root_9480595 := by
  apply coveredBy_split_literal root_9480595 small_9480595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9480601 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9480595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9480601
#print axioms cover_9480595

def root_9474779 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9474779 : CoveredBy scale carrier boxes root_9474779 := by
  apply coveredBy_split_literal root_9474779 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9474780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9480595 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9474780
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9480595
#print axioms cover_9474779

def root_9474774 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9474774_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9474774_right_fuel : Nat := 1
def small_9474774_right_count : Nat := 1
def small_9474774_right_encoded : String := "00000000"
theorem small_9474774_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9474774_right_root small_9474774_right_fuel small_9474774_right_count small_9474774_right_encoded = true := by
  decide +kernel
theorem small_9474774_right_covered : CoveredBy scale carrier boxes small_9474774_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9474774_right_root small_9474774_right_fuel small_9474774_right_count small_9474774_right_encoded small_9474774_right_checked

theorem cover_9474774 : CoveredBy scale carrier boxes root_9474774 := by
  apply coveredBy_split_literal root_9474774 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9474779 small_9474774_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9474779
  · exact small_9474774_right_covered
#print axioms cover_9474774

def root_9472088 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9472088 : CoveredBy scale carrier boxes root_9472088 := by
  apply coveredBy_split_literal root_9472088 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3543.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9474774 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3543.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9474774
#print axioms cover_9472088

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646

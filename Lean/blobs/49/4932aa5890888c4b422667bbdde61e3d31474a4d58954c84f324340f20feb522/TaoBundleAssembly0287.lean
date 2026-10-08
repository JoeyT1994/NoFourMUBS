import TaoBundleAssembly0286
import TaoBundleChunkBatch0373
import TaoBundleChunkBatch0374
import TaoBundleChunkBatch0375
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287
def root_3972615 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972615_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972615_left_fuel : Nat := 8
def small_3972615_left_count : Nat := 19
def small_3972615_left_encoded : String := "1151E907000000030A0000FE000000051151E8FF08A912F912073D02050000F600000005135D45010000000000000008000000011207010200000001050000F6000000050000000600000004"
theorem small_3972615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3972615_left_root small_3972615_left_fuel small_3972615_left_count small_3972615_left_encoded = true := by
  decide +kernel
theorem small_3972615_left_covered : CoveredBy scale carrier boxes small_3972615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3972615_left_root small_3972615_left_fuel small_3972615_left_count small_3972615_left_encoded small_3972615_left_checked

theorem cover_3972615 : CoveredBy scale carrier boxes root_3972615 := by
  apply coveredBy_split_literal root_3972615 small_3972615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3972655 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3972615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3972655
#print axioms cover_3972615

def root_3972610 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972610_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972610_right_fuel : Nat := 1
def small_3972610_right_count : Nat := 1
def small_3972610_right_encoded : String := "00000002"
theorem small_3972610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3972610_right_root small_3972610_right_fuel small_3972610_right_count small_3972610_right_encoded = true := by
  decide +kernel
theorem small_3972610_right_covered : CoveredBy scale carrier boxes small_3972610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3972610_right_root small_3972610_right_fuel small_3972610_right_count small_3972610_right_encoded small_3972610_right_checked

theorem cover_3972610 : CoveredBy scale carrier boxes root_3972610 := by
  apply coveredBy_split_literal root_3972610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3972615 small_3972610_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3972615
  · exact small_3972610_right_covered
#print axioms cover_3972610

def root_3971984 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971984_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971984_left_fuel : Nat := 33
def small_3971984_left_count : Nat := 293
def small_3971984_left_encoded : String := "115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F900000005120701020000000108A912FB00000005000000061151E8FF0000000500000004115225070A0000FE115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A91307120701060000000308A912FF12073CFE00000004050000F600000005135D4501000000000CFD9BF90F350D0200000005000000010000000500000005000000050000000500000001120701020000000108A912FB12073CFA0000000208A913070000000512073D060000000500000003120700FA08A913070000000512073D060000000500000003000000021151E8FF08A912F912073D0208A912FB12073CFA0000000208A913071207010600000003050000F6135D8101050000FE135D80FF000000040CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87020F8750F90C9A86FA000000050F8750FB078000F600000005128A4101000000000000000500000002000000010000000A0000000500000005000000010F34D102000000010000000A135D44FF0CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030000000A0000000A0000000A000000010000000A0000000400000000135D450100000000050000FE135D80FF000000040CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87020F8750F90C9A86FA0F878CFB00000002000000050F8750FB028000F613D7ED01078000FE00000005000000060000000013D7B10100000000078000FE000000050000000600000002000000010F878CF9000000010C9A86FA0000000A0F8750FB028000F60000000A13D7B10100000000078000FE128A7CFF00000004022A458713E1C506000000030DE7CA02000000050000000A00000005128A40FF022A458713E1C506000000030000000A0000000A00000004000000021386AD060C9A8702000000050F878CF90000000100000005000000030F34D0FA0000000500000002000000010F34D102000000010000000A135D44FF0CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A8702000000060F878CF9000000010000000A1386AD060C9A87020F8750F90C9A86FA0000000600000007000000010000000A000000030F34D0FA0000000A00000002000000010F34D102000000010000000A0000000412073D06050000F6135D8101050000FE00000005135D44FF0CFD9BF90F350D020000000500000001000000050000000400000000135D450100000000050000FE00000005135D44FF0CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A8702000000050F878CF9000000010000000A0000000500000005000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0000000A0000000A0000000400000003120700FA08A9130712070106000000030000000A000000050000000200000001120701020000000108A912FB12073CFA0000000208A9130712070106000000030000000A0000000A0000000A0000000400000003"
theorem small_3971984_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3971984_left_root small_3971984_left_fuel small_3971984_left_count small_3971984_left_encoded = true := by
  decide +kernel
theorem small_3971984_left_covered : CoveredBy scale carrier boxes small_3971984_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3971984_left_root small_3971984_left_fuel small_3971984_left_count small_3971984_left_encoded small_3971984_left_checked

theorem cover_3971984 : CoveredBy scale carrier boxes root_3971984 := by
  apply coveredBy_split_literal root_3971984 small_3971984_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3972610 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3971984_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3972610
#print axioms cover_3971984

def root_3971978 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971978_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971978_left_fuel : Nat := 1
def small_3971978_left_count : Nat := 1
def small_3971978_left_encoded : String := "00000001"
theorem small_3971978_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3971978_left_root small_3971978_left_fuel small_3971978_left_count small_3971978_left_encoded = true := by
  decide +kernel
theorem small_3971978_left_covered : CoveredBy scale carrier boxes small_3971978_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3971978_left_root small_3971978_left_fuel small_3971978_left_count small_3971978_left_encoded small_3971978_left_checked

theorem cover_3971978 : CoveredBy scale carrier boxes root_3971978 := by
  apply coveredBy_split_literal root_3971978 small_3971978_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3971984 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3971978_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3971984
#print axioms cover_3971978

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
  apply coveredBy_split_literal root_3971296 small_3971296_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3971978 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3971296_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3971978
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
  apply coveredBy_split_literal root_3971290 small_3971290_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3971296 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3971290_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3971296
#print axioms cover_3971290

def root_3942642 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942642 : CoveredBy scale carrier boxes root_3942642 := by
  apply coveredBy_split_literal root_3942642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3942643 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3971290 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3942643
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3971290
#print axioms cover_3942642

def root_3942641 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942641 : CoveredBy scale carrier boxes root_3942641 := by
  apply coveredBy_split_literal root_3942641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3942642 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1491.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3942642
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
  apply coveredBy_split_literal root_3979553 small_3979553_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3979559 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3979553_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3979559
#print axioms cover_3979553

def root_3977691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3977691 : CoveredBy scale carrier boxes root_3977691 := by
  apply coveredBy_split_literal root_3977691 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1492.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3979553 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1492.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3979553
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
  apply coveredBy_split_literal root_3977686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3977691 small_3977686_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3977691
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
  apply coveredBy_split_literal root_3986997 small_3986997_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3987003 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3986997_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3987003
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
  apply coveredBy_split_literal root_3986717 small_3986717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3986997 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3986717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3986997
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
  apply coveredBy_split_literal root_3986711 small_3986711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3986717 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3986711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3986717
#print axioms cover_3986711

def root_3986710 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3986710 : CoveredBy scale carrier boxes root_3986710 := by
  apply coveredBy_split_literal root_3986710 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3986711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1497.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3986711
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
  apply coveredBy_split_literal root_3986705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3986710 small_3986705_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3986710
  · exact small_3986705_right_covered
#print axioms cover_3986705

def root_3984013 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3984013 : CoveredBy scale carrier boxes root_3984013 := by
  apply coveredBy_split_literal root_3984013 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1495.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3986705 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1495.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3986705
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
  apply coveredBy_split_literal root_3984007 small_3984007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.root_3984013 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3984007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287.cover_3984013
#print axioms cover_3984007

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0287

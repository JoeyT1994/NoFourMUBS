import TaoBundleAssembly0386
import TaoBundleChunkBatch0512
import TaoBundleChunkBatch0513
import TaoBundleChunkBatch0514
import TaoBundleChunkBatch0515
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387
def root_5474883 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474883_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474883_right_fuel : Nat := 23
def small_5474883_right_count : Nat := 225
def small_5474883_right_encoded : String := "120700F808A91305120700FA08A91307120700FC05000100135D44F7050000FE00000006135D44FF045489F91386ACF80000000104548A050000000700000006000000060000000400000000000000060000000312073CFC0000000305000100135D44F7050000FE135D80FF00000004045489F91386ACF80000000104548A05138670FA0CFD9C07000000070F350CFC0000000300000008000000021386ACFA000000020CFD9C070F34D0FC028001000000000700000006000000030F350CFC000000030C9A86FC0F878D070280010000000007000000080000000300000008138670F804548A05000000071386ACFA000000020CFD9C07000000060000000800000001135D44FF045489F91386ACF80000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D0FC0280010013D7B0F70000000A0000000000000006000000030F350CFC000000030C9A86FC0000000A00000005138670F80000000A000000010000000400000000135D80F700000000050000FE135D80FF00000004045489F91386ACF80000000104548A05138670FA00000008000000021386ACFA000000020CFD9C07000000060F350CFC000000030000000800000008135D44FF045489F91386ACF80000000104548A05138670FA00000008000000021386ACFA000000020CFD9C07000000060000000500000008000000040000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000305000100135D44F7050000FE135D80FF00000004045489F91386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D070280010013D7B0F7078000FE128A7CFF00000004067ECE7900000009000000050000000500000000000000050000000300000005000000020F350CFA000000020CFD9C070000000600000005138670F80CFD9C050F34D0FA0CFD9C07000000060F350CFC0000000300000005000000020000000600000001135D44FF045489F91386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC0000000600000003000000050000000200000005138670F80CFD9C050F34D0FA0CFD9C0700000006000000050000000200000005000000010000000400000000135D80F700000000050000FE135D80FF00000004045489F91386ACF8000000010CFD9C050F34D0FA000000060000000200000005000000050000000500000001"
theorem small_5474883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5474883_right_root small_5474883_right_fuel small_5474883_right_count small_5474883_right_encoded = true := by
  decide +kernel
theorem small_5474883_right_covered : CoveredBy scale carrier boxes small_5474883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5474883_right_root small_5474883_right_fuel small_5474883_right_count small_5474883_right_encoded small_5474883_right_checked

theorem cover_5474883 : CoveredBy scale carrier boxes root_5474883 := by
  apply coveredBy_split_literal root_5474883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5474884 small_5474883_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5474884
  · exact small_5474883_right_covered
#print axioms cover_5474883

def root_5474878 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474878_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474878_right_fuel : Nat := 1
def small_5474878_right_count : Nat := 1
def small_5474878_right_encoded : String := "00000004"
theorem small_5474878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5474878_right_root small_5474878_right_fuel small_5474878_right_count small_5474878_right_encoded = true := by
  decide +kernel
theorem small_5474878_right_covered : CoveredBy scale carrier boxes small_5474878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5474878_right_root small_5474878_right_fuel small_5474878_right_count small_5474878_right_encoded small_5474878_right_checked

theorem cover_5474878 : CoveredBy scale carrier boxes root_5474878 := by
  apply coveredBy_split_literal root_5474878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5474883 small_5474878_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5474883
  · exact small_5474878_right_covered
#print axioms cover_5474878

def root_5473408 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473408 : CoveredBy scale carrier boxes root_5473408 := by
  apply coveredBy_split_literal root_5473408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2048.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5474878 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2048.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5474878
#print axioms cover_5473408

def root_5473403 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473403_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473403_right_fuel : Nat := 1
def small_5473403_right_count : Nat := 1
def small_5473403_right_encoded : String := "00000003"
theorem small_5473403_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473403_right_root small_5473403_right_fuel small_5473403_right_count small_5473403_right_encoded = true := by
  decide +kernel
theorem small_5473403_right_covered : CoveredBy scale carrier boxes small_5473403_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473403_right_root small_5473403_right_fuel small_5473403_right_count small_5473403_right_encoded small_5473403_right_checked

theorem cover_5473403 : CoveredBy scale carrier boxes root_5473403 := by
  apply coveredBy_split_literal root_5473403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473408 small_5473403_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473408
  · exact small_5473403_right_covered
#print axioms cover_5473403

def root_5473402 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473402_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473402_right_fuel : Nat := 18
def small_5473402_right_count : Nat := 157
def small_5473402_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF00000009000000090000000212073CFA0000000208A912FF12073CFE0000000405000100135D44F7050000FC135D81070CFD9BF9000000090F34D0F8000000090000000100000003000000050000000000000005120700FE0000000900000004120700F808A91305120700FA08A912FF12073CFE0000000405000100135D44F7050000FC135D8107045489F900000009138670F804548A05000000070000000900000001000000030000000900000000135D80F700000000050000FC135D8107045489F900000009138670F804548A05138670FA000000090000000200000005000000010000000300000005120700FE00000009000000040000000212073CFA0000000208A912FF12073CFE0000000405000100135D44F7050000FC135D8107045489F91386ACF8000000010CFD9C050F34D0FA0000000900000002000000050000000500000003000000050000000000000005120700FE0000000900000004000000011151E8FF08A912F912073CF80000000108A91305120700FA05000100135D44F7050000FC135D8107050000FE00000009135D44FF0CFD9BF900000009000000050000000400000003135D4507000000030000000900000000135D80F700000000050000FC135D8107050000FE000000090000000500000003000000050000000212073CFA0000000200000005120700F808A91305120700FA05000100135D44F7050000FC135D8107050000FE135D80FF00000004045489F90000000800000005000000050000000300000005000000000000000500000002000000050000000100000004"
theorem small_5473402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473402_right_root small_5473402_right_fuel small_5473402_right_count small_5473402_right_encoded = true := by
  decide +kernel
theorem small_5473402_right_covered : CoveredBy scale carrier boxes small_5473402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473402_right_root small_5473402_right_fuel small_5473402_right_count small_5473402_right_encoded small_5473402_right_checked

theorem cover_5473402 : CoveredBy scale carrier boxes root_5473402 := by
  apply coveredBy_split_literal root_5473402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473403 small_5473402_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473403
  · exact small_5473402_right_covered
#print axioms cover_5473402

def root_5473397 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473397_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473397_right_fuel : Nat := 1
def small_5473397_right_count : Nat := 1
def small_5473397_right_encoded : String := "00000002"
theorem small_5473397_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473397_right_root small_5473397_right_fuel small_5473397_right_count small_5473397_right_encoded = true := by
  decide +kernel
theorem small_5473397_right_covered : CoveredBy scale carrier boxes small_5473397_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473397_right_root small_5473397_right_fuel small_5473397_right_count small_5473397_right_encoded small_5473397_right_checked

theorem cover_5473397 : CoveredBy scale carrier boxes root_5473397 := by
  apply coveredBy_split_literal root_5473397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473402 small_5473397_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473402
  · exact small_5473397_right_covered
#print axioms cover_5473397

def root_5473396 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473396_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473396_right_fuel : Nat := 20
def small_5473396_right_count : Nat := 181
def small_5473396_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F912073CF80000000108A91307120700FC08A912FF12073CFE0000000405000100135D44F7050000FA135D81050CFD9BF90000000A0000000A00000002135D4505000000020CFD9BF90000000A0000000A00000000135D80F700000000050000FA135D81050CFD9BF90000000A0000000600000002135D4505000000020CFD9BF90000000A00000005120700FE05000100135D44F70000000700000000135D80F700000000050000FA135D81050CFD9BF90F350CF8000000010000000A000000060000000200000005000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F7050000FA135D81050CFD9BF90000000A0F34D0F80CFD9C070000000A000000050000000100000002000000050000000000000005120700FE05000100135D44F7050000FA0000000900000005000000000000000500000004120700F808A91307120700FC08A912FF00000006120700FE00000006000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F7050000FA135D8105045489F91386ACF8000000010CFD9C070F34D0FC0000000600000003000000050000000500000002000000050000000000000005120700FE05000100135D44F7050000FA135D8105045489F900000009138670F80CFD9C070000000600000006000000010000000200000005000000000000000500000004000000011151E8FF08A912F912073CF80000000108A91307120700FC05000100135D44F7050000FA135D8105050000FE0000000A135D44FF0CFD9BF90000000A000000050000000400000002135D450500000002050000FE0000000A0000000500000000135D80F700000000050000FA00000006000000050000000312073CFC0000000300000005120700F808A9130700000006000000050000000100000004000000031151E9070000000300000005"
theorem small_5473396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473396_right_root small_5473396_right_fuel small_5473396_right_count small_5473396_right_encoded = true := by
  decide +kernel
theorem small_5473396_right_covered : CoveredBy scale carrier boxes small_5473396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473396_right_root small_5473396_right_fuel small_5473396_right_count small_5473396_right_encoded small_5473396_right_checked

theorem cover_5473396 : CoveredBy scale carrier boxes root_5473396 := by
  apply coveredBy_split_literal root_5473396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473397 small_5473396_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473397
  · exact small_5473396_right_covered
#print axioms cover_5473396

def root_5473390 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473390_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473390_left_fuel : Nat := 1
def small_5473390_left_count : Nat := 1
def small_5473390_left_encoded : String := "00000001"
theorem small_5473390_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473390_left_root small_5473390_left_fuel small_5473390_left_count small_5473390_left_encoded = true := by
  decide +kernel
theorem small_5473390_left_covered : CoveredBy scale carrier boxes small_5473390_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473390_left_root small_5473390_left_fuel small_5473390_left_count small_5473390_left_encoded small_5473390_left_checked

theorem cover_5473390 : CoveredBy scale carrier boxes root_5473390 := by
  apply coveredBy_split_literal root_5473390 small_5473390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473396 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5473390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473396
#print axioms cover_5473390

def root_5473389 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473389_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473389_right_fuel : Nat := 30
def small_5473389_right_count : Nat := 435
def small_5473389_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91305120700FA08A91307120700FC08A912FF12073CFE0000000405000100135D44F7050000F8135D80F900000001000000070000000A00000000135D80F700000000050000F8135D80F90000000104548A05138670FA00000009000000020000000A0000000A120700FE00000009000000040000000312073CFC0000000308A912FF00000009000000090000000212073CFA0000000208A91307120700FC08A912FF12073CFE00000004050001000000000A0000000A120700FE050001000000000A135D80F7000000000000000A000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F70000000A000000000000000A120700FE00000009000000041151E8FF08A91305120700FA08A91307120700FC05000100135D44F7050000F8135D80F900000001050000FE135D80FF0000000404548A05000000070000000A135D44FF04548A05138670FA04548A07000000051386ACFC00000003028001000000000713D7ECF700000000078000F8128A7CF9000000010000000700000007000000021386ACFA0000000204548A070000000A1386ACFC000000030280010013D7B0F7078000F8128A7CF900000001028000FE0000000713D7B0FF067ECE850000000712EA94FA000000020000000700000004000000070000000013D7ECF700000000078000F8128A7CF900000001028000FE0000000913D7B0FF067ECE8512EA58FA00000009000000020000000A000000040000000A00000004135D44F9050000FE00000007135D44FF04548A05000000070000000A000000040000000100000000135D80F700000000050000F8135D80F900000001050000FE135D80FF0000000404548A05138670FA04548A070000000700000009000000020000000A135D44FF04548A05138670FA04548A07138670FC07800100128A40F70000000500000000128A7CF700000000078000F8128A7CF900000001028000FE0000000513D7B0FF0000000A000000040000000A000000031386ACFC0000000307800100128A40F7078000F8128A7CF900000001028000FE0000000713D7B0FF022A45850000000900000009000000040000000900000000128A7CF700000000078000F8128A7CF900000001028000FE0000000913D7B0FF000000090000000400000009000000021386ACFA0000000204548A070000000A1386ACFC0000000307800100128A40F7078000F8128A7CF9000000010000000A0000000A000000000000000A00000004135D44F9050000FE0000000A135D44FF04548A05138670FA04548A070000000A00000009000000020000000A00000004000000010000000312073CFC0000000305000100135D44F7050000F8135D80F900000001050000FE00000009135D44FF04548A05138670FA00000009000000021386ACFA000000020CFD9C070F34D0FC028001000000000900000009000000030000000900000004135D44F9000000090000000100000000135D80F700000000050000F8135D80F900000001050000FE00000009135D44FF04548A05000000090000000900000004000000090000000212073CFA0000000208A91307120700FC05000100135D44F7050000F8135D80F900000001050000FE0000000A135D44FF0CFD9C050F34D0FA0000000A000000020000000A000000040000000A00000000135D80F700000000050000F8135D80F900000001050000FE0000000A135D44FF0000000A000000040000000A0000000312073CFC0000000305000100135D44F7050000F8135D80F900000001050000FE135D80FF000000040CFD9C050F34D0FA00000009000000020000000A135D44FF0CFD9C050F34D0FA0CFD9C070F34D0FC0280010013D7B0F7078000F800000009000000090000000013D7ECF7000000000000000A0000000300000005000000020000000500000004135D44F9050000FE135D80FF000000040CFD9C050000000900000005135D44FF0CFD9C050F34D0FA000000090000000200000005000000040000000100000000135D80F700000000050000F8135D80F900000001050000FE0000000A00000005135D44F9050000FE0000000A000000050000000100000004000000031151E907000000030A0000FE115224FF0000000408A9130500000009000000091151E8FF08A91305120700FA00000009000000020000000500000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF0000000A120700FE0000000A000000040000000312073CFC0000000308A912FF0000000A000000051151E8FF08A913070000000A0000000500000004000000031151E907000000030000000500000001"
theorem small_5473389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473389_right_root small_5473389_right_fuel small_5473389_right_count small_5473389_right_encoded = true := by
  decide +kernel
theorem small_5473389_right_covered : CoveredBy scale carrier boxes small_5473389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473389_right_root small_5473389_right_fuel small_5473389_right_count small_5473389_right_encoded small_5473389_right_checked

theorem cover_5473389 : CoveredBy scale carrier boxes root_5473389 := by
  apply coveredBy_split_literal root_5473389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473390 small_5473389_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473390
  · exact small_5473389_right_covered
#print axioms cover_5473389

def root_5473384 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473384_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473384_right_fuel : Nat := 1
def small_5473384_right_count : Nat := 1
def small_5473384_right_encoded : String := "00000000"
theorem small_5473384_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473384_right_root small_5473384_right_fuel small_5473384_right_count small_5473384_right_encoded = true := by
  decide +kernel
theorem small_5473384_right_covered : CoveredBy scale carrier boxes small_5473384_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473384_right_root small_5473384_right_fuel small_5473384_right_count small_5473384_right_encoded small_5473384_right_checked

theorem cover_5473384 : CoveredBy scale carrier boxes root_5473384 := by
  apply coveredBy_split_literal root_5473384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473389 small_5473384_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473389
  · exact small_5473384_right_covered
#print axioms cover_5473384

def root_5473383 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473383 : CoveredBy scale carrier boxes root_5473383 := by
  apply coveredBy_split_literal root_5473383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473384 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2051.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473384
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2051.covered
#print axioms cover_5473383

def root_5483999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5483999 : CoveredBy scale carrier boxes root_5483999 := by
  apply coveredBy_split_literal root_5483999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2052.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2053.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2052.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2053.covered
#print axioms cover_5483999

def root_5483994 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483994_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483994_right_fuel : Nat := 1
def small_5483994_right_count : Nat := 1
def small_5483994_right_encoded : String := "00000002"
theorem small_5483994_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483994_right_root small_5483994_right_fuel small_5483994_right_count small_5483994_right_encoded = true := by
  decide +kernel
theorem small_5483994_right_covered : CoveredBy scale carrier boxes small_5483994_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483994_right_root small_5483994_right_fuel small_5483994_right_count small_5483994_right_encoded small_5483994_right_checked

theorem cover_5483994 : CoveredBy scale carrier boxes root_5483994 := by
  apply coveredBy_split_literal root_5483994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483999 small_5483994_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483999
  · exact small_5483994_right_covered
#print axioms cover_5483994

def root_5483993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5483993 : CoveredBy scale carrier boxes root_5483993 := by
  apply coveredBy_split_literal root_5483993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2054.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2054.covered
#print axioms cover_5483993

def root_5483987 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483987_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483987_left_fuel : Nat := 1
def small_5483987_left_count : Nat := 1
def small_5483987_left_encoded : String := "00000001"
theorem small_5483987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483987_left_root small_5483987_left_fuel small_5483987_left_count small_5483987_left_encoded = true := by
  decide +kernel
theorem small_5483987_left_covered : CoveredBy scale carrier boxes small_5483987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483987_left_root small_5483987_left_fuel small_5483987_left_count small_5483987_left_encoded small_5483987_left_checked

theorem cover_5483987 : CoveredBy scale carrier boxes root_5483987 := by
  apply coveredBy_split_literal root_5483987 small_5483987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483993 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5483987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483993
#print axioms cover_5483987

def root_5483986 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483986_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483986_right_fuel : Nat := 14
def small_5483986_right_count : Nat := 91
def small_5483986_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A912F712073D0008A91305120700FA08A91307120700FC000000080000000312073CFC00000003000000050000000212073CFA0000000200000005000000001207010000000000000000050000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A912F700000005120701000000000008A913050000000500000007000000021151E905000000020A0000FC115225070A0000FE1152250900000005000000041151E9090000000408A912F700000005120701000000000008A913070000000500000007000000031151E907000000030A0000FE1152250908A912F700000005120701000000000008A913090000000512073CFE00000004050000F80000000500000009000000041151E9090000000408A912F7000000081207010000000000050000F800000009135D44F9000000090000000100000001"
theorem small_5483986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483986_right_root small_5483986_right_fuel small_5483986_right_count small_5483986_right_encoded = true := by
  decide +kernel
theorem small_5483986_right_covered : CoveredBy scale carrier boxes small_5483986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483986_right_root small_5483986_right_fuel small_5483986_right_count small_5483986_right_encoded small_5483986_right_checked

theorem cover_5483986 : CoveredBy scale carrier boxes root_5483986 := by
  apply coveredBy_split_literal root_5483986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483987 small_5483986_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483987
  · exact small_5483986_right_covered
#print axioms cover_5483986

def root_5483980 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483980_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483980_left_fuel : Nat := 1
def small_5483980_left_count : Nat := 1
def small_5483980_left_encoded : String := "00000000"
theorem small_5483980_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483980_left_root small_5483980_left_fuel small_5483980_left_count small_5483980_left_encoded = true := by
  decide +kernel
theorem small_5483980_left_covered : CoveredBy scale carrier boxes small_5483980_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483980_left_root small_5483980_left_fuel small_5483980_left_count small_5483980_left_encoded small_5483980_left_checked

theorem cover_5483980 : CoveredBy scale carrier boxes root_5483980 := by
  apply coveredBy_split_literal root_5483980 small_5483980_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483986 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5483980_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483986
#print axioms cover_5483980

def root_5483338 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483338_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483338_left_fuel : Nat := 23
def small_5483338_left_count : Nat := 297
def small_5483338_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115225050A0000FC115225070A0000FE1152250908A912F912073CF80000000108A91305120700FA08A91307120700FC000000080000000312073CFC0000000308A91309120700FE0000000900000004000000090000000212073CFA0000000208A91307120700FC08A91309120700FE05000100135D44F70000000900000000135D80F7000000000CFD9BF900000009000000080000000412073CFE000000040500010000000009000000080000000312073CFC0000000308A91309120700FE000000090000000400000009120700F808A91305120700FA08A91307120700FC000000080000000312073CFC0000000308A91309120700FE000000070000000412073CFE000000040500010000000008135D80F700000000045489F900000008000000080000000212073CFA0000000208A91307120700FC000000080000000312073CFC0000000308A91309120700FE05000100135D44F7045489F9000000090000000700000000135D80F700000000045489F900000009138670F80CFD9C050000000700000008000000010000000412073CFE0000000405000100000000080000000800000001000000041151E9090000000408A912F912073CF80000000108A91305000000080000000900000008000000031151E907000000030A0000FE1152250908A912F912073CF80000000108A91305120700FA000000090000000200000009120700F808A91305120700FA08A9130900000009000000090000000212073CFA0000000208A91309120700FE00000009000000040000000900000001000000041151E9090000000408A912F900000009120700F80000000900000001000000021151E905000000020A0000FC115225070A0000FE1152250908A912F912073CF80000000108A91307120700FC08A91309120700FE05000100000000070000000500000004000000090000000312073CFC0000000308A91309120700FE000000090000000400000009120700F808A91307120700FC08A91309120700FE0000000700000004000000080000000312073CFC0000000308A91309120700FE05000100135D44F70000000900000000135D80F700000000050000FA135D8105045489F900000009138670F8000000090000000100000002000000050000000412073CFE000000040500010000000009135D80F700000000050000FA00000008135D4505000000020000000900000001000000041151E9090000000408A912F900000009120700F80000000800000001000000031151E907000000030A0000FE1152250908A912F900000009120700F80000000900000001000000041151E90900000004000000091151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A91305120700FA08A91307120700FC08A91309120700FE0000000800000004000000080000000312073CFC00000003000000090000000212073CFA0000000208A91307120700FC08A91309120700FE0000000900000004000000090000000312073CFC0000000308A913090000000900000009000000041151E9090000000400000005000000031151E9070000000300000005000000021151E90500000002000000050000000100000000"
theorem small_5483338_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483338_left_root small_5483338_left_fuel small_5483338_left_count small_5483338_left_encoded = true := by
  decide +kernel
theorem small_5483338_left_covered : CoveredBy scale carrier boxes small_5483338_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483338_left_root small_5483338_left_fuel small_5483338_left_count small_5483338_left_encoded small_5483338_left_checked

theorem cover_5483338 : CoveredBy scale carrier boxes root_5483338 := by
  apply coveredBy_split_literal root_5483338 small_5483338_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483980 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5483338_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483980
#print axioms cover_5483338

def root_5473382 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473382 : CoveredBy scale carrier boxes root_5473382 := by
  apply coveredBy_split_literal root_5473382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5483338 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473383
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5483338
#print axioms cover_5473382

def root_5495462 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5495462 : CoveredBy scale carrier boxes root_5495462 := by
  apply coveredBy_split_literal root_5495462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2056.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2057.root coord2 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2056.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2057.covered
#print axioms cover_5495462

def root_5495456 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5495456_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5495456_left_fuel : Nat := 1
def small_5495456_left_count : Nat := 1
def small_5495456_left_encoded : String := "00000004"
theorem small_5495456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5495456_left_root small_5495456_left_fuel small_5495456_left_count small_5495456_left_encoded = true := by
  decide +kernel
theorem small_5495456_left_covered : CoveredBy scale carrier boxes small_5495456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5495456_left_root small_5495456_left_fuel small_5495456_left_count small_5495456_left_encoded small_5495456_left_checked

theorem cover_5495456 : CoveredBy scale carrier boxes root_5495456 := by
  apply coveredBy_split_literal root_5495456 small_5495456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5495462 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5495456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5495462
#print axioms cover_5495456

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387

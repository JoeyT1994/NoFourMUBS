import TaoBundleAssembly0665
import TaoBundleAssembly0667
import TaoBundleAssembly0669
import TaoBundleChunkBatch0928
import TaoBundleChunkBatch0932
import TaoBundleChunkBatch0933
import TaoBundleChunkBatch0934
import TaoBundleChunkBatch0935
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670
def root_9897092 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9897092 : CoveredBy scale carrier boxes root_9897092 := by
  apply coveredBy_split_literal root_9897092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3709.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899674 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3709.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899674
#print axioms cover_9897092

def root_9842850 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842850 : CoveredBy scale carrier boxes root_9842850 := by
  apply coveredBy_split_literal root_9842850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9897092 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9897092
#print axioms cover_9842850

def root_9936694 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9936694 : CoveredBy scale carrier boxes root_9936694 := by
  apply coveredBy_split_literal root_9936694 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3725.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3726.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3725.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3726.covered
#print axioms cover_9936694

def root_9941003 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9941003_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9941003_left_fuel : Nat := 21
def small_9941003_left_count : Nat := 259
def small_9941003_left_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115224FB000000020A0000FC115225070A0001081151E9090000000408A912FB12073CFA0000000208A913070000000700000006000000091152250908A912FB12073CFA0000000208A91307120700FC000000080000000312073CFC0000000308A9130912070108000000040000000812073D080500010000000006135D810105000102135D4503000000010CFD9BFB0000000600000006000000060000000000000004120700FA08A9130700000008000000080000000200000004000000031151E907000000030A0001081151E90900000004000000051152250908A912FB12073CFA0000000208A9130912070108000000040000000A00000006120700FA08A91309000000080000000500000002000000041151E8FB0A0000FC115225070A0001081151E90900000004000000061152250908A91307120700FC08A913090000000800000006000000030000000600000004000000031151E907000000030A0001080000000611522509000000060000000400000002115225030A0000FA115224FB000000020A0000FC115225070A0001081151E9090000000408A9130312070102000000010000000612073D0208A912FB0000000600000008000000011152250908A91303120701020000000108A912FB12073CFA0000000208A913070000000700000006120700FA08A9130700000007000000060000000212073D0208A912FB12073CFA0000000208A913070000000812073CFC0000000308A913090000000800000006120700FA08A91307120700FC000000080000000300000008000000020000000100000004000000031151E907000000030A0001081151E90900000004000000061152250908A91303120701020000000108A912FB12073CFA0000000208A9130900000008000000080000000812073D0208A912FB12073CFA0000000208A913090000000612073D080000000600000004120700FA000000080000000200000001000000041151E8FB0A0000FC115225070A0001081151E90900000004000000071152250908A91303120701020000000108A913070000000612073CFC0000000308A91309000000060000000612073D0208A91307120700FC0000000600000003000000060000000100000004000000031151E907000000030A0001081151E9090000000408A91303120701020000000100000007000000061152250908A91303120701020000000108A91309120701080000000405000100000000080000000612073D0805000100135D45010000000000000007135D8101050000FA0000000600000006000000000000000412073D0208A913090000000612073D0805000100135D450100000000050000FA0000000600000006000000060000000400000001000000040000000200000001"
theorem small_9941003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9941003_left_root small_9941003_left_fuel small_9941003_left_count small_9941003_left_encoded = true := by
  decide +kernel
theorem small_9941003_left_covered : CoveredBy scale carrier boxes small_9941003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9941003_left_root small_9941003_left_fuel small_9941003_left_count small_9941003_left_encoded small_9941003_left_checked

theorem cover_9941003 : CoveredBy scale carrier boxes root_9941003 := by
  apply coveredBy_split_literal root_9941003 small_9941003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3727.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9941003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3727.covered
#print axioms cover_9941003

def root_9936693 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9936693 : CoveredBy scale carrier boxes root_9936693 := by
  apply coveredBy_split_literal root_9936693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9936694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9941003 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9936694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9941003
#print axioms cover_9936693

def root_9842849 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842849 : CoveredBy scale carrier boxes root_9842849 := by
  apply coveredBy_split_literal root_9842849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9842850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9936693 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9842850
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9936693
#print axioms cover_9842849

def root_9831141 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831141 : CoveredBy scale carrier boxes root_9831141 := by
  apply coveredBy_split_literal root_9831141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9831142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9842849 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9831142
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9842849
#print axioms cover_9831141

def root_9944486 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944486_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944486_left_fuel : Nat := 22
def small_9944486_left_count : Nat := 293
def small_9944486_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD00000005120701060000000308A912FF00000005120700FE0000000500000004120700FA08A912FD00000005120701060000000308A912FF00000005120700FE0000000500000004000000021151E8FF08A912FB12073CFA0000000208A912FD12073D060500010000000005135D81010500010200000005135D8103050000FE00000005135D44FF000000060000000400000001000000000000000312070106000000030500010000000005135D81010500010200000005135D8103050000FE00000005135D44FF0CFD9BFB0F350CFA000000020000000900000009000000040000000100000000120700FA0000000500000002000000041151E8FB0A0001061151E8FD0A0000FE000000051151E8FF05000100135D450100000000050001020000000500000007135D81010500010200000006135D8103050000FA000000060000000A00000001000000000000000400000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF12073CFE000000040500010000000005135D81010500010200000005135D8103050000FA00000005135D44FB000000070000000200000001000000000000000900000003120701060000000308A912FF12073CFE000000040500010000000005135D81010500010200000005135D8103050000FA00000005135D44FB045489FD0000000713867106000000030CFD9BFF0F350CFE000000040000000900000007000000020000000100000000000000091151E8FF08A912FD12073D0605000100135D4501000000000500010200000009135D8103050000FA135D80FB0000000200000009135D44FB050000FE00000007000000090000000200000001135D810105000102135D450300000001050000FA135D80FB0000000200000009135D44FB050000FE000000090000000900000002135D8103050000FA135D80FB00000002050000FE135D80FF000000040CFD9BFD000000090F34D1060000000300000009135D44FF0CFD9BFD000000060F34D106000000030000000600000004135D44FB050000FE135D80FF000000040CFD9BFD000000070F34D1060000000300000007135D44FF0CFD9BFD0F350D060C9A87060000000600000006000000030F34D10600000003000000090000000400000002000000010000000000000003120701060000000305000100135D4501000000000500010200000009135D8103050000FA000000090000000900000001135D810105000102135D450300000001050000FA0000000900000009135D8103050000FA135D80FB00000002050000FE135D80FF00000004045489FD0000000913867106000000030780010000000005128A7D010000000900000000135D44FF045489FD0000000913867106000000030000000900000004135D44FB050000FE135D80FF00000004045489FD00000009138671060000000300000009135D44FF045489FD00000009138671060000000300000009000000040000000200000001000000000000000400000002"
theorem small_9944486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9944486_left_root small_9944486_left_fuel small_9944486_left_count small_9944486_left_encoded = true := by
  decide +kernel
theorem small_9944486_left_covered : CoveredBy scale carrier boxes small_9944486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9944486_left_root small_9944486_left_fuel small_9944486_left_count small_9944486_left_encoded small_9944486_left_checked

theorem cover_9944486 : CoveredBy scale carrier boxes root_9944486 := by
  apply coveredBy_split_literal root_9944486 small_9944486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3728.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9944486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3728.covered
#print axioms cover_9944486

def root_9944480 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944480_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944480_left_fuel : Nat := 1
def small_9944480_left_count : Nat := 1
def small_9944480_left_encoded : String := "00000000"
theorem small_9944480_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9944480_left_root small_9944480_left_fuel small_9944480_left_count small_9944480_left_encoded = true := by
  decide +kernel
theorem small_9944480_left_covered : CoveredBy scale carrier boxes small_9944480_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9944480_left_root small_9944480_left_fuel small_9944480_left_count small_9944480_left_encoded small_9944480_left_checked

theorem cover_9944480 : CoveredBy scale carrier boxes root_9944480 := by
  apply coveredBy_split_literal root_9944480 small_9944480_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9944486 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9944480_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9944486
#print axioms cover_9944480

def root_9951014 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9951014 : CoveredBy scale carrier boxes root_9951014 := by
  apply coveredBy_split_literal root_9951014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3730.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3731.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3730.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3731.covered
#print axioms cover_9951014

def root_9951008 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951008_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951008_left_fuel : Nat := 1
def small_9951008_left_count : Nat := 1
def small_9951008_left_encoded : String := "00000000"
theorem small_9951008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9951008_left_root small_9951008_left_fuel small_9951008_left_count small_9951008_left_encoded = true := by
  decide +kernel
theorem small_9951008_left_covered : CoveredBy scale carrier boxes small_9951008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9951008_left_root small_9951008_left_fuel small_9951008_left_count small_9951008_left_encoded small_9951008_left_checked

theorem cover_9951008 : CoveredBy scale carrier boxes root_9951008 := by
  apply coveredBy_split_literal root_9951008 small_9951008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9951014 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9951008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9951014
#print axioms cover_9951008

def root_9957318 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9957318 : CoveredBy scale carrier boxes root_9957318 := by
  apply coveredBy_split_literal root_9957318 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3733.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3734.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3733.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3734.covered
#print axioms cover_9957318

def root_9957312 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957312_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957312_left_fuel : Nat := 1
def small_9957312_left_count : Nat := 1
def small_9957312_left_encoded : String := "00000000"
theorem small_9957312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957312_left_root small_9957312_left_fuel small_9957312_left_count small_9957312_left_encoded = true := by
  decide +kernel
theorem small_9957312_left_covered : CoveredBy scale carrier boxes small_9957312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957312_left_root small_9957312_left_fuel small_9957312_left_count small_9957312_left_encoded small_9957312_left_checked

theorem cover_9957312 : CoveredBy scale carrier boxes root_9957312 := by
  apply coveredBy_split_literal root_9957312 small_9957312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9957318 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9957312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9957318
#print axioms cover_9957312

def root_9963290 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9963290 : CoveredBy scale carrier boxes root_9963290 := by
  apply coveredBy_split_literal root_9963290 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3735.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3736.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3735.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3736.covered
#print axioms cover_9963290

def root_9963285 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9963285_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9963285_right_fuel : Nat := 1
def small_9963285_right_count : Nat := 1
def small_9963285_right_encoded : String := "00000000"
theorem small_9963285_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9963285_right_root small_9963285_right_fuel small_9963285_right_count small_9963285_right_encoded = true := by
  decide +kernel
theorem small_9963285_right_covered : CoveredBy scale carrier boxes small_9963285_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9963285_right_root small_9963285_right_fuel small_9963285_right_count small_9963285_right_encoded small_9963285_right_checked

theorem cover_9963285 : CoveredBy scale carrier boxes root_9963285 := by
  apply coveredBy_split_literal root_9963285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9963290 small_9963285_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9963290
  · exact small_9963285_right_covered
#print axioms cover_9963285

def root_9957311 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9957311 : CoveredBy scale carrier boxes root_9957311 := by
  apply coveredBy_split_literal root_9957311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9957312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9963285 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9957312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9963285
#print axioms cover_9957311

def root_9957305 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957305_left_fuel : Nat := 1
def small_9957305_left_count : Nat := 1
def small_9957305_left_encoded : String := "00000004"
theorem small_9957305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957305_left_root small_9957305_left_fuel small_9957305_left_count small_9957305_left_encoded = true := by
  decide +kernel
theorem small_9957305_left_covered : CoveredBy scale carrier boxes small_9957305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957305_left_root small_9957305_left_fuel small_9957305_left_count small_9957305_left_encoded small_9957305_left_checked

theorem cover_9957305 : CoveredBy scale carrier boxes root_9957305 := by
  apply coveredBy_split_literal root_9957305 small_9957305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9957311 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9957305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9957311
#print axioms cover_9957305

def root_9957304 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957304_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957304_right_fuel : Nat := 14
def small_9957304_right_count : Nat := 59
def small_9957304_right_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD1386AD06045489FF1386ACFE000000040C9A86FA000000050000000A00000007000000031386710600000003045489FF1386ACFE000000040C9A86FA000000050F8750FB0000000A000000020000000A0F34D0FA00000005000000020F350D020CFD9BFB000000050F34D0FA0000000500000002000000010F350D000CFD9C030F34D102000000010CFD9BFB000000050F34D0FA00000005000000020F350D020CFD9BFB000000050F34D0FA0000000500000002000000010000000000000004"
theorem small_9957304_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957304_right_root small_9957304_right_fuel small_9957304_right_count small_9957304_right_encoded = true := by
  decide +kernel
theorem small_9957304_right_covered : CoveredBy scale carrier boxes small_9957304_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957304_right_root small_9957304_right_fuel small_9957304_right_count small_9957304_right_encoded small_9957304_right_checked

theorem cover_9957304 : CoveredBy scale carrier boxes root_9957304 := by
  apply coveredBy_split_literal root_9957304 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9957305 small_9957304_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9957305
  · exact small_9957304_right_covered
#print axioms cover_9957304

def root_9957298 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957298_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957298_left_fuel : Nat := 1
def small_9957298_left_count : Nat := 1
def small_9957298_left_encoded : String := "00000003"
theorem small_9957298_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957298_left_root small_9957298_left_fuel small_9957298_left_count small_9957298_left_encoded = true := by
  decide +kernel
theorem small_9957298_left_covered : CoveredBy scale carrier boxes small_9957298_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957298_left_root small_9957298_left_fuel small_9957298_left_count small_9957298_left_encoded small_9957298_left_checked

theorem cover_9957298 : CoveredBy scale carrier boxes root_9957298 := by
  apply coveredBy_split_literal root_9957298 small_9957298_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9957304 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9957298_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9957304
#print axioms cover_9957298

def root_9956556 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956556_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956556_left_fuel : Nat := 24
def small_9956556_left_count : Nat := 337
def small_9956556_left_encoded : String := "12073D0608A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A8706000000060F878CFD000000030C9A86FE00000006000000060F8750FB0000000A000000020F34D0FE0000000700000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040AD3578110D10100000000000AD357830000000A10D13D02000000060000000110D13D000AD3578310D10102000000010000000710D13D020AD3577D0000000610D10106000000030000000600000001000000000F8750FF0AD357810000000800000008000000040F8750FB0C9A86FE0F878CFF000000040AD357810000000A10D13D0000000007000000000F8750FF0AD357810000000810D13D00000000080000000000000004000000020F34D0FE0C9A86FA0F878CFB000000020AD3578110D10100000000000000000A000000070F8750FB0000000700000002000000040F34D0FA0CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040AD3578110D101000000000000000006000000060F8750FF00000006000000040F34D0FE0000000500000004000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87020F87510300000001000000060F878D030C9A86FA0F878CFB00000002000000060F8750FB0000000A00000002000000010F34D0FE0C9A8702000000050F878D030000000A00000001000000040F34D0FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000050000000400000002000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A86FA0F878CFB000000020C9A86FE0F878CFF0000000400000007000000080F8750FB0C9A86FE000000070F8750FF000000070000000400000002000000000F34D0FE00000007000000040F34D0FA0CFD9BFD0F350D060CFD9BFF0000000800000005000000030F34D106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878D0100000008000000000F34D0FE0000000500000004000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A8702000000060F878D030C9A86FA000000060000000700000001000000000F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A8702000000050F878D030C9A86FA0000000500000007000000010F878D010C9A87020F875103000000010C9A86FA000000050F8750FB00000006000000020F878D030C9A86FA0F878CFB000000020C9A86FE00000005000000060F8750FB0C9A86FE000000070F8750FF0AD3577D0000000610D101060000000300000006000000040000000200000001000000000F34D0FE00000005000000040F34D0FA00000005000000020000000100000000120700FE0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB000000070F34D0FA00000005000000020F350D0200000005000000010F350D0000000005000000000000000400000003"
theorem small_9956556_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956556_left_root small_9956556_left_fuel small_9956556_left_count small_9956556_left_encoded = true := by
  decide +kernel
theorem small_9956556_left_covered : CoveredBy scale carrier boxes small_9956556_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956556_left_root small_9956556_left_fuel small_9956556_left_count small_9956556_left_encoded small_9956556_left_checked

theorem cover_9956556 : CoveredBy scale carrier boxes root_9956556 := by
  apply coveredBy_split_literal root_9956556 small_9956556_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9957298 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9956556_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9957298
#print axioms cover_9956556

def root_9956550 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956550_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956550_left_fuel : Nat := 1
def small_9956550_left_count : Nat := 1
def small_9956550_left_encoded : String := "00000002"
theorem small_9956550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956550_left_root small_9956550_left_fuel small_9956550_left_count small_9956550_left_encoded = true := by
  decide +kernel
theorem small_9956550_left_covered : CoveredBy scale carrier boxes small_9956550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956550_left_root small_9956550_left_fuel small_9956550_left_count small_9956550_left_encoded small_9956550_left_checked

theorem cover_9956550 : CoveredBy scale carrier boxes root_9956550 := by
  apply coveredBy_split_literal root_9956550 small_9956550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9956556 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9956550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9956556
#print axioms cover_9956550

def root_9956549 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956549_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956549_right_fuel : Nat := 18
def small_9956549_right_count : Nat := 125
def small_9956549_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000050000000400000006000000060F350D000000000500000000120700FE000000050000000400000003120701060000000308A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE00000005000000080F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000008000000040F34D0FE0000000500000004138670FA045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0000000500000004000000020F350D02045489FB00000005138670FA0000000500000002000000010F350D000CFD9C030F34D10200000001045489FB00000005138670FA00000005000000020F350D02045489FB00000005138670FA00000005000000020000000100000000120700FE0CFD9C010F34D100000000000CFD9C03000000050F350D0200000005000000010F350D000CFD9C03000000050F350D020000000500000001000000000000000400000002"
theorem small_9956549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956549_right_root small_9956549_right_fuel small_9956549_right_count small_9956549_right_encoded = true := by
  decide +kernel
theorem small_9956549_right_covered : CoveredBy scale carrier boxes small_9956549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956549_right_root small_9956549_right_fuel small_9956549_right_count small_9956549_right_encoded small_9956549_right_checked

theorem cover_9956549 : CoveredBy scale carrier boxes root_9956549 := by
  apply coveredBy_split_literal root_9956549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9956550 small_9956549_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9956550
  · exact small_9956549_right_covered
#print axioms cover_9956549

def root_9956544 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956544_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956544_right_fuel : Nat := 1
def small_9956544_right_count : Nat := 1
def small_9956544_right_encoded : String := "00000001"
theorem small_9956544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956544_right_root small_9956544_right_fuel small_9956544_right_count small_9956544_right_encoded = true := by
  decide +kernel
theorem small_9956544_right_covered : CoveredBy scale carrier boxes small_9956544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956544_right_root small_9956544_right_fuel small_9956544_right_count small_9956544_right_encoded small_9956544_right_checked

theorem cover_9956544 : CoveredBy scale carrier boxes root_9956544 := by
  apply coveredBy_split_literal root_9956544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9956549 small_9956544_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9956549
  · exact small_9956544_right_covered
#print axioms cover_9956544

def root_9954440 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9954440 : CoveredBy scale carrier boxes root_9954440 := by
  apply coveredBy_split_literal root_9954440 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3732.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9956544 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3732.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9956544
#print axioms cover_9954440

def root_9954435 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9954435_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9954435_right_fuel : Nat := 1
def small_9954435_right_count : Nat := 1
def small_9954435_right_encoded : String := "00000000"
theorem small_9954435_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9954435_right_root small_9954435_right_fuel small_9954435_right_count small_9954435_right_encoded = true := by
  decide +kernel
theorem small_9954435_right_covered : CoveredBy scale carrier boxes small_9954435_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9954435_right_root small_9954435_right_fuel small_9954435_right_count small_9954435_right_encoded small_9954435_right_checked

theorem cover_9954435 : CoveredBy scale carrier boxes root_9954435 := by
  apply coveredBy_split_literal root_9954435 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9954440 small_9954435_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9954440
  · exact small_9954435_right_covered
#print axioms cover_9954435

def root_9951007 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9951007 : CoveredBy scale carrier boxes root_9951007 := by
  apply coveredBy_split_literal root_9951007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9951008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9954435 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9951008
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9954435
#print axioms cover_9951007

def root_9951001 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951001_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951001_left_fuel : Nat := 1
def small_9951001_left_count : Nat := 1
def small_9951001_left_encoded : String := "00000004"
theorem small_9951001_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9951001_left_root small_9951001_left_fuel small_9951001_left_count small_9951001_left_encoded = true := by
  decide +kernel
theorem small_9951001_left_covered : CoveredBy scale carrier boxes small_9951001_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9951001_left_root small_9951001_left_fuel small_9951001_left_count small_9951001_left_encoded small_9951001_left_checked

theorem cover_9951001 : CoveredBy scale carrier boxes root_9951001 := by
  apply coveredBy_split_literal root_9951001 small_9951001_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9951007 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9951001_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9951007
#print axioms cover_9951001

def root_9970286 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970286_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970286_right_fuel : Nat := 17
def small_9970286_right_count : Nat := 107
def small_9970286_right_encoded : String := "135D44FF0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000008000000080F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A8702000000060F878D030C9A86FA0000000600000008000000010000000313867106000000030C9A87020F875103000000010C9A86FA000000060F8750FB028000FE0000000600000005000000020F878D030C9A86FA0F878CFB000000020000000700000005000000010F34D0FA0000000600000002000000010F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A8700000000080F878D010C9A87020000000600000008000000000000000313867106000000030C9A87000F875101000000000C9A87020F875103000000010C9A86FA000000060F8750FB028000FE000000060000000600000002000000080F878D010C9A87020F875103000000010C9A86FA000000060F8750FB028000FE0000000600000006000000020F878D030000000800000001000000000F34D0FA045489FD000000060000000800000002000000010000000000000004"
theorem small_9970286_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970286_right_root small_9970286_right_fuel small_9970286_right_count small_9970286_right_encoded = true := by
  decide +kernel
theorem small_9970286_right_covered : CoveredBy scale carrier boxes small_9970286_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970286_right_root small_9970286_right_fuel small_9970286_right_count small_9970286_right_encoded small_9970286_right_checked

theorem cover_9970286 : CoveredBy scale carrier boxes root_9970286 := by
  apply coveredBy_split_literal root_9970286 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3737.root small_9970286_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3737.covered
  · exact small_9970286_right_covered
#print axioms cover_9970286

def root_9970280 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970280_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970280_left_fuel : Nat := 1
def small_9970280_left_count : Nat := 1
def small_9970280_left_encoded : String := "00000003"
theorem small_9970280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970280_left_root small_9970280_left_fuel small_9970280_left_count small_9970280_left_encoded = true := by
  decide +kernel
theorem small_9970280_left_covered : CoveredBy scale carrier boxes small_9970280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970280_left_root small_9970280_left_fuel small_9970280_left_count small_9970280_left_encoded small_9970280_left_checked

theorem cover_9970280 : CoveredBy scale carrier boxes root_9970280 := by
  apply coveredBy_split_literal root_9970280 small_9970280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9970286 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9970280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9970286
#print axioms cover_9970280

def root_9970068 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970068_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970068_left_fuel : Nat := 16
def small_9970068_left_count : Nat := 99
def small_9970068_left_encoded : String := "12073D06050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0000000800000008000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030C9A8702000000060F878D03000000060000000100000006000000010F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000006000000030F34D106000000030C9A87000F875101000000000C9A870200000006000000080F878D010C9A8702000000060F878D030000000800000001000000000F34D0FA00000006000000020000000100000000135D44FF0CFD9C010F34D100000000000CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030000000600000006000000010F350D000CFD9C03000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD00000006000000080000000800000001000000000000000400000003"
theorem small_9970068_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970068_left_root small_9970068_left_fuel small_9970068_left_count small_9970068_left_encoded = true := by
  decide +kernel
theorem small_9970068_left_covered : CoveredBy scale carrier boxes small_9970068_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970068_left_root small_9970068_left_fuel small_9970068_left_count small_9970068_left_encoded small_9970068_left_checked

theorem cover_9970068 : CoveredBy scale carrier boxes root_9970068 := by
  apply coveredBy_split_literal root_9970068 small_9970068_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9970280 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9970068_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9970280
#print axioms cover_9970068

def root_9970062 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970062_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970062_left_fuel : Nat := 1
def small_9970062_left_count : Nat := 1
def small_9970062_left_encoded : String := "00000002"
theorem small_9970062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970062_left_root small_9970062_left_fuel small_9970062_left_count small_9970062_left_encoded = true := by
  decide +kernel
theorem small_9970062_left_covered : CoveredBy scale carrier boxes small_9970062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970062_left_root small_9970062_left_fuel small_9970062_left_count small_9970062_left_encoded small_9970062_left_checked

theorem cover_9970062 : CoveredBy scale carrier boxes root_9970062 := by
  apply coveredBy_split_literal root_9970062 small_9970062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9970068 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9970062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9970068
#print axioms cover_9970062

def root_9970061 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970061_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970061_right_fuel : Nat := 11
def small_9970061_right_count : Nat := 53
def small_9970061_right_encoded : String := "120700FA08A912FD12073D06050000FE135D80FF000000040CFD9C010F34D100000000000000000600000006135D44FF0CFD9C010F34D10000000000000000060000000600000004000000031207010600000003050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D1020000000100000008000000060F350D000CFD9C03000000080F350D02045489FB00000006000000060000000100000000135D44FF0CFD9C010F34D100000000000CFD9C0300000007000000060F350D0000000008000000000000000400000002"
theorem small_9970061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970061_right_root small_9970061_right_fuel small_9970061_right_count small_9970061_right_encoded = true := by
  decide +kernel
theorem small_9970061_right_covered : CoveredBy scale carrier boxes small_9970061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970061_right_root small_9970061_right_fuel small_9970061_right_count small_9970061_right_encoded small_9970061_right_checked

theorem cover_9970061 : CoveredBy scale carrier boxes root_9970061 := by
  apply coveredBy_split_literal root_9970061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9970062 small_9970061_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9970062
  · exact small_9970061_right_covered
#print axioms cover_9970061

def root_9970056 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970056_right_fuel : Nat := 1
def small_9970056_right_count : Nat := 1
def small_9970056_right_encoded : String := "00000001"
theorem small_9970056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970056_right_root small_9970056_right_fuel small_9970056_right_count small_9970056_right_encoded = true := by
  decide +kernel
theorem small_9970056_right_covered : CoveredBy scale carrier boxes small_9970056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970056_right_root small_9970056_right_fuel small_9970056_right_count small_9970056_right_encoded small_9970056_right_checked

theorem cover_9970056 : CoveredBy scale carrier boxes root_9970056 := by
  apply coveredBy_split_literal root_9970056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9970061 small_9970056_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9970061
  · exact small_9970056_right_covered
#print axioms cover_9970056

def root_9969970 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969970_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969970_left_fuel : Nat := 17
def small_9969970_left_count : Nat := 41
def small_9969970_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD12073D06050000FE0000000800000008000000031207010600000003050000FE135D80FF000000040CFD9C010F34D10000000000000000080F350D0004548A031386710200000001000000081386AD020CFD9BFB0F350CFA00000002045489FD0000000813867106000000030C9A870000000008000000080000000800000001000000000000000800000008"
theorem small_9969970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9969970_left_root small_9969970_left_fuel small_9969970_left_count small_9969970_left_encoded = true := by
  decide +kernel
theorem small_9969970_left_covered : CoveredBy scale carrier boxes small_9969970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9969970_left_root small_9969970_left_fuel small_9969970_left_count small_9969970_left_encoded small_9969970_left_checked

theorem cover_9969970 : CoveredBy scale carrier boxes root_9969970 := by
  apply coveredBy_split_literal root_9969970 small_9969970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9970056 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9969970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9970056
#print axioms cover_9969970

def root_9969965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969965_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969965_right_fuel : Nat := 1
def small_9969965_right_count : Nat := 1
def small_9969965_right_encoded : String := "00000000"
theorem small_9969965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9969965_right_root small_9969965_right_fuel small_9969965_right_count small_9969965_right_encoded = true := by
  decide +kernel
theorem small_9969965_right_covered : CoveredBy scale carrier boxes small_9969965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9969965_right_root small_9969965_right_fuel small_9969965_right_count small_9969965_right_encoded small_9969965_right_checked

theorem cover_9969965 : CoveredBy scale carrier boxes root_9969965 := by
  apply coveredBy_split_literal root_9969965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9969970 small_9969965_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9969970
  · exact small_9969965_right_covered
#print axioms cover_9969965

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670

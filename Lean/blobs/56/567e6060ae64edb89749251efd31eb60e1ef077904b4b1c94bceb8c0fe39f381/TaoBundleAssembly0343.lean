import TaoBundleAssembly0342
import TaoBundleChunkBatch0451
import TaoBundleChunkBatch0452
import TaoBundleChunkBatch0453
import TaoBundleChunkBatch0454
import TaoBundleChunkBatch0455
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343
def root_4818393 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4818393_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4818393_right_fuel : Nat := 21
def small_4818393_right_count : Nat := 267
def small_4818393_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E8FB0A0001061151E907000000030A0000FE1152250908A913090000000600000009000000041151E9090000000400000005115225070A0000FE000000091151E90900000004000000090000000300000002115224FB000000020A0001061151E907000000030A0000FE1152250900000009000000041151E9090000000400000005115225070A0000FE1152250908A912FB12073D0408A91307000000060000000900000002120701040000000208A9130712070106000000030000000600000009000000041151E9090000000408A912FB12073D0408A9130700000006000000090000000212070104000000020000000500000003115225030A0001041151E8FB0A0001061151E907000000030A0000FE1152250908A91303120701020000000108A91309120700FE00000007000000040000000712073D0208A91309120700FE050000F6135D81010500010400000006135D80FB0000000205000106000000070000000600000000000000060000000412073CFE00000004050000F600000009135D4501000000000500010400000007135D80FB000000020000000900000001000000041151E9090000000400000009115225070A0000FE1152250908A91303120701020000000108A913070000000712073D0608A91309120700FE0000000700000004000000070000000312073D0208A913070000000912073D0608A91309120700FE000000060000000412073CFE00000004000000090000000300000001000000041151E90900000004000000090000000300000002115224FB000000020A0001061151E907000000030A0000FE1152250908A91303120701020000000108A912FB12073D0408A91309120700FE050000F6135D8101050001060000000A00000009000000000000000A000000040000000A0000000212070104000000020000000912073D0208A912FB12073D0408A91309120700FE050000F6135D81010000000900000000135D450100000000050001060000000A135D81070CFD9C0300000008000000090000000300000004000000090000000212070104000000020000000900000001000000041151E9090000000400000009115225070A0000FE1152250908A91303120701020000000108A912FB12073D0408A913070000000912073D0608A91309120700FE050000F600000009000000090000000412073CFE0000000400000009000000030000000212070104000000020000000912073D0208A912FB00000009120701040000000208A91307120701060000000308A913090000000612073CFE00000004000000090000000900000001000000041151E9090000000408A91303120701020000000108A912FB0000000912070104000000020000000512073D0208A912FB12073D040000000900000002120701040000000200000005000000010000000300000001"
theorem small_4818393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4818393_right_root small_4818393_right_fuel small_4818393_right_count small_4818393_right_encoded = true := by
  decide +kernel
theorem small_4818393_right_covered : CoveredBy scale carrier boxes small_4818393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4818393_right_root small_4818393_right_fuel small_4818393_right_count small_4818393_right_encoded small_4818393_right_checked

theorem cover_4818393 : CoveredBy scale carrier boxes root_4818393 := by
  apply coveredBy_split_literal root_4818393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4818394 small_4818393_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4818394
  · exact small_4818393_right_covered
#print axioms cover_4818393

def root_4816303 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4816303 : CoveredBy scale carrier boxes root_4816303 := by
  apply coveredBy_split_literal root_4816303 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1801.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4818393 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1801.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4818393
#print axioms cover_4816303

def root_4822377 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4822377 : CoveredBy scale carrier boxes root_4822377 := by
  apply coveredBy_split_literal root_4822377 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1804.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1805.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1804.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1805.covered
#print axioms cover_4822377

def root_4822372 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4822372_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4822372_right_fuel : Nat := 1
def small_4822372_right_count : Nat := 1
def small_4822372_right_encoded : String := "00000000"
theorem small_4822372_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4822372_right_root small_4822372_right_fuel small_4822372_right_count small_4822372_right_encoded = true := by
  decide +kernel
theorem small_4822372_right_covered : CoveredBy scale carrier boxes small_4822372_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4822372_right_root small_4822372_right_fuel small_4822372_right_count small_4822372_right_encoded small_4822372_right_checked

theorem cover_4822372 : CoveredBy scale carrier boxes root_4822372 := by
  apply coveredBy_split_literal root_4822372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4822377 small_4822372_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4822377
  · exact small_4822372_right_covered
#print axioms cover_4822372

def root_4822371 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4822371 : CoveredBy scale carrier boxes root_4822371 := by
  apply coveredBy_split_literal root_4822371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4822372 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1806.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4822372
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1806.covered
#print axioms cover_4822371

def root_4828498 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4828498 : CoveredBy scale carrier boxes root_4828498 := by
  apply coveredBy_split_literal root_4828498 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1807.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1808.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1807.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1808.covered
#print axioms cover_4828498

def root_4828493 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4828493_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4828493_right_fuel : Nat := 1
def small_4828493_right_count : Nat := 1
def small_4828493_right_encoded : String := "00000000"
theorem small_4828493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4828493_right_root small_4828493_right_fuel small_4828493_right_count small_4828493_right_encoded = true := by
  decide +kernel
theorem small_4828493_right_covered : CoveredBy scale carrier boxes small_4828493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4828493_right_root small_4828493_right_fuel small_4828493_right_count small_4828493_right_encoded small_4828493_right_checked

theorem cover_4828493 : CoveredBy scale carrier boxes root_4828493 := by
  apply coveredBy_split_literal root_4828493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4828498 small_4828493_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4828498
  · exact small_4828493_right_covered
#print axioms cover_4828493

def root_4828492 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4828492_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4828492_right_fuel : Nat := 23
def small_4828492_right_count : Nat := 353
def small_4828492_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E8FB0A0001061151E907000000030A0001081151E90900000004000000051152250908A9130912070108000000040000000A12073D08050000F6135D810105000102135D4503000000010000000A135D81030500010400000009000000050000000100000000135D450100000000000000050000000400000004115225070A0001081151E9090000000408A913071207010600000003050000F6135D810105000102135D450300000001050001040000000900000009000000090000000000000009000000091152250908A91307120701060000000308A913091207010800000004050000F6135D810105000102135D45030000000105000104135D44FB04548A070000000800000005000000020000000500000005000000000000000512073D08050000F6135D810105000102135D45030000000105000104135D44FB04548A0713867106000000030CFD9C090000000900000005000000090000000200000005135D81030500010400000009000000050000000100000000135D450100000000000000050000000412073D0608A913091207010800000004050000F6135D810105000102135D450300000001050001040000000A00000005135D81030500010400000009000000050000000100000000135D4501000000000000000512073D08050000F6135D810105000102135D4503000000010500010400000009135D80FB0000000200000005135D81030500010400000009000000050000000100000000135D45010000000005000102135D45030000000100000005000000050000000400000003000000040000000300000002115224FB000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A912FB12073D0408A9130912070108000000040000000500000005000000020000000500000004115225070A0001081151E9090000000408A912FB12073D0408A913071207010600000003000000050000000500000002000000051152250908A912FB12073D0408A9130712070106000000030000000512073D0608A913091207010800000004000000050000000500000003000000021207010400000002000000050000000400000003115225030A0001041151E8FB0A0001061151E907000000030A0001081151E90900000004000000091152250908A91303120701020000000108A913091207010800000004050000F600000009000000050000000912073D0208A913091207010800000004050000F6135D810105000104135D44FB050001060000000A0000000900000002135D80FB000000020000000500000000135D4501000000000000000512073D08050000F6135D81010500010400000009135D80FB000000020000000900000000135D450100000000050001040000000900000005000000040000000100000004115225070A0001081151E90900000004000000091152250908A91303120701020000000108A913071207010600000003000000050000000912073D0208A91307120701060000000308A913091207010800000004000000050000000512073D0608A9130912070108000000040000000512073D08050000F60000000900000005000000040000000300000001000000040000000300000002115224FB000000020A0001061151E907000000030A0001081151E9090000000408A9130300000009000000051152250908A9130312070102000000010000000512073D0208A912FB12073D0408A913091207010800000004000000050000000500000002000000050000000100000004115225070A0001081151E9090000000408A9130312070102000000010000000512073D0208A912FB12073D0408A9130712070106000000030000000500000005000000020000000500000001000000050000000300000001"
theorem small_4828492_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4828492_right_root small_4828492_right_fuel small_4828492_right_count small_4828492_right_encoded = true := by
  decide +kernel
theorem small_4828492_right_covered : CoveredBy scale carrier boxes small_4828492_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4828492_right_root small_4828492_right_fuel small_4828492_right_count small_4828492_right_encoded small_4828492_right_checked

theorem cover_4828492 : CoveredBy scale carrier boxes root_4828492 := by
  apply coveredBy_split_literal root_4828492 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4828493 small_4828492_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4828493
  · exact small_4828492_right_covered
#print axioms cover_4828492

def root_4822370 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4822370 : CoveredBy scale carrier boxes root_4822370 := by
  apply coveredBy_split_literal root_4822370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4822371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4828492 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4822371
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4828492
#print axioms cover_4822370

def root_4816302 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4816302 : CoveredBy scale carrier boxes root_4816302 := by
  apply coveredBy_split_literal root_4816302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4816303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4822370 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4816303
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4822370
#print axioms cover_4816302

def root_4805480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4805480 : CoveredBy scale carrier boxes root_4805480 := by
  apply coveredBy_split_literal root_4805480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4805481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4816302 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4805481
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4816302
#print axioms cover_4805480

def root_4731072 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4731072 : CoveredBy scale carrier boxes root_4731072 := by
  apply coveredBy_split_literal root_4731072 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4731073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4805480 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4731073
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4805480
#print axioms cover_4731072

def root_4834456 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834456_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834456_left_fuel : Nat := 18
def small_4834456_left_count : Nat := 119
def small_4834456_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A912FD12073CFC00000003000000090000000912073D0208A912FD12073CFC0000000308A912FF00000005120700FE0000000900000004120700FC08A912FF12073CFE00000004050000F6135D81010500010400000009135D81050CFD9C03000000050F350D0200000006000000010000000200000000135D4501000000000500010400000006135D81050CFD9C03000000050000000600000002120700FE000000090000000400000003000000011151E8FF08A91303120701020000000108A912FD00000005120700FC000000050000000312073D0208A912FD12073CFC00000003050000F60000000500000006120700FC050000F600000005135D4501000000000500010400000005135D8105050000FE0000000500000007000000020000000300000001000000041151E8FD0A0000FE115224FF0000000408A9130312070102000000010000000912073D0208A912FF12073CFE00000004050000F60000000500000006120700FE0000000900000004000000011151E8FF08A913031207010200000001050000F6000000050000000912073D02050000F60000000500000006000000010000000400000003"
theorem small_4834456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4834456_left_root small_4834456_left_fuel small_4834456_left_count small_4834456_left_encoded = true := by
  decide +kernel
theorem small_4834456_left_covered : CoveredBy scale carrier boxes small_4834456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4834456_left_root small_4834456_left_fuel small_4834456_left_count small_4834456_left_encoded small_4834456_left_checked

theorem cover_4834456 : CoveredBy scale carrier boxes root_4834456 := by
  apply coveredBy_split_literal root_4834456 small_4834456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1810.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4834456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1810.covered
#print axioms cover_4834456

def root_4834451 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834451_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834451_right_fuel : Nat := 1
def small_4834451_right_count : Nat := 1
def small_4834451_right_encoded : String := "00000001"
theorem small_4834451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4834451_right_root small_4834451_right_fuel small_4834451_right_count small_4834451_right_encoded = true := by
  decide +kernel
theorem small_4834451_right_covered : CoveredBy scale carrier boxes small_4834451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4834451_right_root small_4834451_right_fuel small_4834451_right_count small_4834451_right_encoded small_4834451_right_checked

theorem cover_4834451 : CoveredBy scale carrier boxes root_4834451 := by
  apply coveredBy_split_literal root_4834451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4834456 small_4834451_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4834456
  · exact small_4834451_right_covered
#print axioms cover_4834451

def root_4834131 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834131_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834131_left_fuel : Nat := 20
def small_4834131_left_count : Nat := 151
def small_4834131_left_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE0000000600000004000000031151E8FF00000006000000041151E8FD0A0000FE000000061151E8FF000000050000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD0000000A0000000A12073D0408A912FD12073CFC0000000308A912FF00000005120700FE050000F6135D8101050001020000000A135D81030CFD9C05000000050F350D0400000006000000020000000100000000135D4501000000000500010200000006135D81030CFD9C0500000005000000060000000100000004120700FC08A912FF12073CFE000000040000000A0000000A00000003000000021151E8FF08A9130512070104000000020000000A12073D0408A912FD12073CFC00000003050000F60000000500000006120700FC0000000A0000000300000002000000041151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000005120700FE000000050000000412073D0408A912FF12073CFE00000004050000F60000000500000006120700FE050000F600000005135D4501000000000500010200000005135D8103050000FC00000005000000080000000100000004000000021151E8FF08A913051207010400000002050000F6000000050000000A12073D04050000F6000000050000000600000002000000040000000300000002"
theorem small_4834131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4834131_left_root small_4834131_left_fuel small_4834131_left_count small_4834131_left_encoded = true := by
  decide +kernel
theorem small_4834131_left_covered : CoveredBy scale carrier boxes small_4834131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4834131_left_root small_4834131_left_fuel small_4834131_left_count small_4834131_left_encoded small_4834131_left_checked

theorem cover_4834131 : CoveredBy scale carrier boxes root_4834131 := by
  apply coveredBy_split_literal root_4834131 small_4834131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4834451 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4834131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4834451
#print axioms cover_4834131

def root_4834125 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834125_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4834125_left_fuel : Nat := 1
def small_4834125_left_count : Nat := 1
def small_4834125_left_encoded : String := "00000000"
theorem small_4834125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4834125_left_root small_4834125_left_fuel small_4834125_left_count small_4834125_left_encoded = true := by
  decide +kernel
theorem small_4834125_left_covered : CoveredBy scale carrier boxes small_4834125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4834125_left_root small_4834125_left_fuel small_4834125_left_count small_4834125_left_encoded small_4834125_left_checked

theorem cover_4834125 : CoveredBy scale carrier boxes root_4834125 := by
  apply coveredBy_split_literal root_4834125 small_4834125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4834131 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4834125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4834131
#print axioms cover_4834125

def root_4832829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4832829 : CoveredBy scale carrier boxes root_4832829 := by
  apply coveredBy_split_literal root_4832829 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1809.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4834125 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1809.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4834125
#print axioms cover_4832829

def root_4832828 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4832828 : CoveredBy scale carrier boxes root_4832828 := by
  apply coveredBy_split_literal root_4832828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4832829 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1811.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4832829
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1811.covered
#print axioms cover_4832828

def root_4843358 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4843358 : CoveredBy scale carrier boxes root_4843358 := by
  apply coveredBy_split_literal root_4843358 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1814.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1815.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1814.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1815.covered
#print axioms cover_4843358

def root_4843353 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4843353_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4843353_right_fuel : Nat := 1
def small_4843353_right_count : Nat := 1
def small_4843353_right_encoded : String := "00000002"
theorem small_4843353_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4843353_right_root small_4843353_right_fuel small_4843353_right_count small_4843353_right_encoded = true := by
  decide +kernel
theorem small_4843353_right_covered : CoveredBy scale carrier boxes small_4843353_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4843353_right_root small_4843353_right_fuel small_4843353_right_count small_4843353_right_encoded small_4843353_right_checked

theorem cover_4843353 : CoveredBy scale carrier boxes root_4843353 := by
  apply coveredBy_split_literal root_4843353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4843358 small_4843353_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4843358
  · exact small_4843353_right_covered
#print axioms cover_4843353

def root_4842219 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4842219 : CoveredBy scale carrier boxes root_4842219 := by
  apply coveredBy_split_literal root_4842219 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1813.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4843353 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1813.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4843353
#print axioms cover_4842219

def root_4842214 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4842214_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4842214_right_fuel : Nat := 1
def small_4842214_right_count : Nat := 1
def small_4842214_right_encoded : String := "00000001"
theorem small_4842214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4842214_right_root small_4842214_right_fuel small_4842214_right_count small_4842214_right_encoded = true := by
  decide +kernel
theorem small_4842214_right_covered : CoveredBy scale carrier boxes small_4842214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4842214_right_root small_4842214_right_fuel small_4842214_right_count small_4842214_right_encoded small_4842214_right_checked

theorem cover_4842214 : CoveredBy scale carrier boxes root_4842214 := by
  apply coveredBy_split_literal root_4842214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4842219 small_4842214_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4842219
  · exact small_4842214_right_covered
#print axioms cover_4842214

def root_4840480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4840480 : CoveredBy scale carrier boxes root_4840480 := by
  apply coveredBy_split_literal root_4840480 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1812.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4842214 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1812.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4842214
#print axioms cover_4840480

def root_4840475 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4840475_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4840475_right_fuel : Nat := 1
def small_4840475_right_count : Nat := 1
def small_4840475_right_encoded : String := "00000000"
theorem small_4840475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4840475_right_root small_4840475_right_fuel small_4840475_right_count small_4840475_right_encoded = true := by
  decide +kernel
theorem small_4840475_right_covered : CoveredBy scale carrier boxes small_4840475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4840475_right_root small_4840475_right_fuel small_4840475_right_count small_4840475_right_encoded small_4840475_right_checked

theorem cover_4840475 : CoveredBy scale carrier boxes root_4840475 := by
  apply coveredBy_split_literal root_4840475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4840480 small_4840475_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4840480
  · exact small_4840475_right_covered
#print axioms cover_4840475

def root_4850857 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4850857_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4850857_left_fuel : Nat := 27
def small_4850857_left_count : Nat := 489
def small_4850857_left_encoded : String := "120701020000000108A913051207010400000002050000F6135D8101050000FC135D80FD0000000305000108135D44FF04548A03000000080000000A000000040000000A135D44FD05000108135D44FF04548A03000000061386AD0204548A05000000061386AD04078000F600000006128A410100000000028000FC0000000800000006000000020000000100000004135D80FF00000004000000060000000300000000135D450100000000050000FC135D80FD0000000305000108135D44FF04548A031386710200000001000000080000000A000000040000000A135D44FD05000108135D44FF04548A03138671020000000104548A05000000061386AD04028000F60000000600000005000000021386AD0204548A050000000A1386AD04028000F613D7ED01028000FC0000000A13D7B0FD0280010813D7B0FF067ECE83000000060000000A0000000400000005000000030000000013D7B10100000000028000FC0000000A00000005000000020000000100000004000000050000000312073D04050000F6135D8101050000FC135D80FD0000000305000108135D44FF04548A03000000081386AD020CFD9C050F34D1040000000200000008000000080000000100000004135D80FF0000000404548A03000000081386AD020CFD9C050F34D10400000002000000080000000800000001135D44FD05000108135D44FF04548A0313867102000000010CFD9C050F34D1040000000200000008000000081386AD020CFD9C050F34D10400000002078000F600000008128A410100000000028000FC0000000813D7B0FD0280010813D7B0FF000000080000000400000008000000030F350D040C9A87040F87510500000002000000080F878D05078000F600000008128A4101000000000000000800000002000000020000000100000004135D80FF0000000404548A0313867102000000010CFD9C050F34D1040000000200000006000000081386AD020CFD9C050F34D10400000002078000F600000008128A410100000000028000FC0000000813D7B0FD07800108128A40FF000000080000000400000005000000030F350D040C9A87040F87510500000002000000080F878D05078000F600000008128A410100000000000000080000000200000002000000010000000300000000135D450100000000050000FC135D80FD0000000305000108135D44FF04548A0313867102000000010CFD9C050F34D1040000000200000008000000081386AD020CFD9C050F34D10400000002028000F60000000813D7B10100000000078000FC00000008128A40FD028001080000000800000008000000030F350D040C9A87040F87510500000002000000080F878D05028000F60000000813D7B101000000000000000800000002000000020000000100000004135D80FF0000000404548A0313867102000000010CFD9C050F34D1040000000200000008000000081386AD020CFD9C050F34D104000000020000000A0F350D040C9A87040F87510500000002000000070F878D05028000F60000000800000007000000020000000200000001135D44FD05000108135D44FF04548A0313867102000000010CFD9C050F34D10400000002028000F60000000813D7B10100000000028000FC00000008000000050F350D0400000009000000021386AD020CFD9C050F34D10400000002028000F613D7ED01028000FC13D7ECFD0000000302800108000000080000000813D7B0FD0280010813D7B0FF067ECE830000000812EA95020AD3578510D101040000000203C000F60000000813A5110100000000014000FC000000080000000510D13D0403C000F6000000080000000900000002000000010000000413D7ECFF00000004067ECE830000000812EA95020AD3578510D1010400000002000000050000000800000001000000030000000013D7B10100000000028000FC13D7ECFD000000030280010813D7B0FF067ECE830000000812EA95020AD357850000000A00000008000000010000000413D7ECFF00000004067ECE830000000812EA95020000000A0000000113D7B0FD0280010813D7B0FF067ECE8312EA5902000000010000000512EA95020AD3578510D10104000000020000000510D13D040000000900000002000000010000000400000005000000030F350D040C9A87040F87510500000002028000F600000009000000060F878D05028000F613D7ED01028000FC0000000813D7B0FD028001080000000913D7ECFF00000004067ECE830000000812EA95020000000800000001000000030000000013D7B10100000000028000FC13D7ECFD0000000302800108000000090000000713D7B0FD0280010800000009000000070000000300000002000000020000000100000004135D80FF0000000404548A0313867102000000010CFD9C050F34D10400000002000000050F350D040C9A87040F875105000000020000000700000008000000021386AD020CFD9C050F34D10400000002028000F613D7ED01028000FC13D7ECFD0000000307800108128A40FF0000000800000004000000050000000500000000000000050F350D040C9A87040F87510500000002000000070F878D05028000F613D7ED01028000FC0000000813D7B0FD07800108128A40FF0000000700000004000000050000000300000000000000070000000200000002000000010000000300000002"
theorem small_4850857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4850857_left_root small_4850857_left_fuel small_4850857_left_count small_4850857_left_encoded = true := by
  decide +kernel
theorem small_4850857_left_covered : CoveredBy scale carrier boxes small_4850857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4850857_left_root small_4850857_left_fuel small_4850857_left_count small_4850857_left_encoded small_4850857_left_checked

theorem cover_4850857 : CoveredBy scale carrier boxes root_4850857 := by
  apply coveredBy_split_literal root_4850857 small_4850857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1817.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4850857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1817.covered
#print axioms cover_4850857

def root_4850852 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4850852_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4850852_right_fuel : Nat := 1
def small_4850852_right_count : Nat := 1
def small_4850852_right_encoded : String := "00000004"
theorem small_4850852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4850852_right_root small_4850852_right_fuel small_4850852_right_count small_4850852_right_encoded = true := by
  decide +kernel
theorem small_4850852_right_covered : CoveredBy scale carrier boxes small_4850852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4850852_right_root small_4850852_right_fuel small_4850852_right_count small_4850852_right_encoded small_4850852_right_checked

theorem cover_4850852 : CoveredBy scale carrier boxes root_4850852 := by
  apply coveredBy_split_literal root_4850852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4850857 small_4850852_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4850857
  · exact small_4850852_right_covered
#print axioms cover_4850852

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343

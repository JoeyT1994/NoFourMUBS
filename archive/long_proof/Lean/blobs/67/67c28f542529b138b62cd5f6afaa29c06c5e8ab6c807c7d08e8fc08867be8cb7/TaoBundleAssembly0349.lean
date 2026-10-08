import TaoBundleAssembly0345
import TaoBundleAssembly0348
import TaoBundleChunkBatch0457
import TaoBundleChunkBatch0460
import TaoBundleChunkBatch0461
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349
def root_4878724 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4878724_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4878724_right_fuel : Nat := 19
def small_4878724_right_count : Nat := 185
def small_4878724_right_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A91303120701020000000108A913051207010400000002050000FC00000009135D4507000000030000000912073D04050000FC135D810705000108135D45090000000404548A01138670F604548A030000000A0000000500000000000000050000000500000003000000050000000212073D0208A913051207010400000002050000FC135D810705000108135D45090000000404548A01000000090000000500000005000000030000000500000005000000010000000012073CF60000000008A91303120701020000000108A913050000000900000005000000051152250908A91301120700F608A91303120701020000000108A91305120701040000000208A913090000000712073D08000000090000000412073D0408A913090000000712073D08050000FC135D810704548A01138670F604548A0313867102000000010CFD9C05000000070000000700000007000000001386ACF60000000004548A031386710200000001000000050000000500000003135D45070000000300000005000000040000000212073D0208A91305120701040000000208A9130912070108000000040000000712073D08050000FC135D810704548A01138670F60CFD9C03000000070F350D020000000700000001000000001386ACF6000000000CFD9C030F34D10200000001000000050000000500000003135D450700000003000000050000000412073D0408A913090000000712073D08050000FC00000007000000050000000400000002000000010000000012073CF60000000008A91303120701020000000108A91305120701040000000208A913091207010800000004000000050000000512073D0408A91309120701080000000400000005000000050000000212073D0208A91305120701040000000208A913091207010800000004000000050000000512073D0408A9130912070108000000040000000500000005000000020000000100000004"
theorem small_4878724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4878724_right_root small_4878724_right_fuel small_4878724_right_count small_4878724_right_encoded = true := by
  decide +kernel
theorem small_4878724_right_covered : CoveredBy scale carrier boxes small_4878724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4878724_right_root small_4878724_right_fuel small_4878724_right_count small_4878724_right_encoded small_4878724_right_checked

theorem cover_4878724 : CoveredBy scale carrier boxes root_4878724 := by
  apply coveredBy_split_literal root_4878724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4878725 small_4878724_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4878725
  · exact small_4878724_right_covered
#print axioms cover_4878724

def root_4878719 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4878719_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4878719_right_fuel : Nat := 1
def small_4878719_right_count : Nat := 1
def small_4878719_right_encoded : String := "00000002"
theorem small_4878719_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4878719_right_root small_4878719_right_fuel small_4878719_right_count small_4878719_right_encoded = true := by
  decide +kernel
theorem small_4878719_right_covered : CoveredBy scale carrier boxes small_4878719_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4878719_right_root small_4878719_right_fuel small_4878719_right_count small_4878719_right_encoded small_4878719_right_checked

theorem cover_4878719 : CoveredBy scale carrier boxes root_4878719 := by
  apply coveredBy_split_literal root_4878719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4878724 small_4878719_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4878724
  · exact small_4878719_right_covered
#print axioms cover_4878719

def root_4877155 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4877155 : CoveredBy scale carrier boxes root_4877155 := by
  apply coveredBy_split_literal root_4877155 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1826.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4878719 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1826.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4878719
#print axioms cover_4877155

def root_4877150 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4877150_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4877150_right_fuel : Nat := 1
def small_4877150_right_count : Nat := 1
def small_4877150_right_encoded : String := "00000001"
theorem small_4877150_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4877150_right_root small_4877150_right_fuel small_4877150_right_count small_4877150_right_encoded = true := by
  decide +kernel
theorem small_4877150_right_covered : CoveredBy scale carrier boxes small_4877150_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4877150_right_root small_4877150_right_fuel small_4877150_right_count small_4877150_right_encoded small_4877150_right_checked

theorem cover_4877150 : CoveredBy scale carrier boxes root_4877150 := by
  apply coveredBy_split_literal root_4877150 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4877155 small_4877150_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4877155
  · exact small_4877150_right_covered
#print axioms cover_4877150

def root_4872662 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4872662 : CoveredBy scale carrier boxes root_4872662 := by
  apply coveredBy_split_literal root_4872662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4872663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4877150 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4872663
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4877150
#print axioms cover_4872662

def root_4872657 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872657_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872657_right_fuel : Nat := 1
def small_4872657_right_count : Nat := 1
def small_4872657_right_encoded : String := "00000000"
theorem small_4872657_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872657_right_root small_4872657_right_fuel small_4872657_right_count small_4872657_right_encoded = true := by
  decide +kernel
theorem small_4872657_right_covered : CoveredBy scale carrier boxes small_4872657_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872657_right_root small_4872657_right_fuel small_4872657_right_count small_4872657_right_encoded small_4872657_right_checked

theorem cover_4872657 : CoveredBy scale carrier boxes root_4872657 := by
  apply coveredBy_split_literal root_4872657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4872662 small_4872657_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4872662
  · exact small_4872657_right_covered
#print axioms cover_4872657

def root_4872656 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872656_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872656_right_fuel : Nat := 25
def small_4872656_right_count : Nat := 289
def small_4872656_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E9050000000200000005115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120701040000000208A91307120700FC08A913091207010800000004050000F600000006135D4501000000000000000612073D08050000F6135D810105000102135D45030000000104548A050000000600000005000000050000000000000005000000040000000312073CFC0000000308A913091207010800000004000000050000000512073D0408A91307120700FC08A913091207010800000004050000F6135D810105000102135D4503000000010CFD9C050F34D1040000000200000005000000050000000500000000000000050000000500000003000000050000000200000004000000031151E907000000030000000500000002115225030A0001041151E905000000020A0000FC115225070A0001081151E90900000004000000051152250908A91303120701020000000108A91307120700FC08A913091207010800000004050000F6000000060000000A0000000A0000000312073CFC0000000308A913091207010800000004000000050000000512073D0208A91307120700FC08A913091207010800000004050000F6135D810105000104135D4505000000020CFD9C030F34D1020000000100000005000000050000000500000000000000050000000500000003000000050000000100000004000000031151E9070000000300000005115225050A0000FC115225070A0001081151E9090000000408A91303120701020000000108A9130512070104000000020000000A0000000A12073D0208A91305120701040000000208A91307120700FC050000F60000000A00000005000000030000000500000005000000011152250908A91303120701020000000108A91305120701040000000208A913070000000A12073CFC0000000308A913091207010800000004000000050000000512073D0408A91307120700FC0000000A0000000312073CFC0000000308A91309120701080000000400000005000000050000000212073D0208A91305120701040000000208A91307120700FC08A9130912070108000000040000000612073D08050000F6135D81010CFD9C030F34D102000000010000000A0F350D0204548A05138671040000000204548A070000000600000005000000050000000100000000135D45010000000000000005000000040000000312073CFC0000000308A913091207010800000004000000050000000512073D0408A91307120700FC08A913091207010800000004050000F6135D81010CFD9C030F34D102000000010000000A0F350D020CFD9C050F34D1040000000200000005000000050000000100000000135D4501000000000000000512073D08050000F60000000A00000005000000040000000312073CFC0000000308A9130912070108000000040000000500000005000000020000000100000004000000031151E907000000030A0001081151E90900000004000000051152250908A9130312070102000000010000000500000005000000040000000200000001"
theorem small_4872656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872656_right_root small_4872656_right_fuel small_4872656_right_count small_4872656_right_encoded = true := by
  decide +kernel
theorem small_4872656_right_covered : CoveredBy scale carrier boxes small_4872656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872656_right_root small_4872656_right_fuel small_4872656_right_count small_4872656_right_encoded small_4872656_right_checked

theorem cover_4872656 : CoveredBy scale carrier boxes root_4872656 := by
  apply coveredBy_split_literal root_4872656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4872657 small_4872656_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4872657
  · exact small_4872656_right_covered
#print axioms cover_4872656

def root_4868700 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4868700 : CoveredBy scale carrier boxes root_4868700 := by
  apply coveredBy_split_literal root_4868700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4868701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4872656 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4868701
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4872656
#print axioms cover_4868700

def root_4862730 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4862730 : CoveredBy scale carrier boxes root_4862730 := by
  apply coveredBy_split_literal root_4862730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4862731 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4868700 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4862731
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4868700
#print axioms cover_4862730

def root_4832826 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4832826 : CoveredBy scale carrier boxes root_4832826 := by
  apply coveredBy_split_literal root_4832826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4832827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4862730 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4832827
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4862730
#print axioms cover_4832826

def root_4916316 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4916316 : CoveredBy scale carrier boxes root_4916316 := by
  apply coveredBy_split_literal root_4916316 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1841.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1842.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1841.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1842.covered
#print axioms cover_4916316

def root_4916311 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4916311_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4916311_right_fuel : Nat := 1
def small_4916311_right_count : Nat := 1
def small_4916311_right_encoded : String := "00000002"
theorem small_4916311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4916311_right_root small_4916311_right_fuel small_4916311_right_count small_4916311_right_encoded = true := by
  decide +kernel
theorem small_4916311_right_covered : CoveredBy scale carrier boxes small_4916311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4916311_right_root small_4916311_right_fuel small_4916311_right_count small_4916311_right_encoded small_4916311_right_checked

theorem cover_4916311 : CoveredBy scale carrier boxes root_4916311 := by
  apply coveredBy_split_literal root_4916311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4916316 small_4916311_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4916316
  · exact small_4916311_right_covered
#print axioms cover_4916311

def root_4915195 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4915195 : CoveredBy scale carrier boxes root_4915195 := by
  apply coveredBy_split_literal root_4915195 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1840.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4916311 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1840.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4916311
#print axioms cover_4915195

def root_4915190 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4915190_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4915190_right_fuel : Nat := 1
def small_4915190_right_count : Nat := 1
def small_4915190_right_encoded : String := "00000001"
theorem small_4915190_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4915190_right_root small_4915190_right_fuel small_4915190_right_count small_4915190_right_encoded = true := by
  decide +kernel
theorem small_4915190_right_covered : CoveredBy scale carrier boxes small_4915190_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4915190_right_root small_4915190_right_fuel small_4915190_right_count small_4915190_right_encoded small_4915190_right_checked

theorem cover_4915190 : CoveredBy scale carrier boxes root_4915190 := by
  apply coveredBy_split_literal root_4915190 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4915195 small_4915190_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4915195
  · exact small_4915190_right_covered
#print axioms cover_4915190

def root_4913438 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4913438 : CoveredBy scale carrier boxes root_4913438 := by
  apply coveredBy_split_literal root_4913438 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1839.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4915190 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1839.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4915190
#print axioms cover_4913438

def root_4913433 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4913433_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4913433_right_fuel : Nat := 1
def small_4913433_right_count : Nat := 1
def small_4913433_right_encoded : String := "00000000"
theorem small_4913433_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4913433_right_root small_4913433_right_fuel small_4913433_right_count small_4913433_right_encoded = true := by
  decide +kernel
theorem small_4913433_right_covered : CoveredBy scale carrier boxes small_4913433_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4913433_right_root small_4913433_right_fuel small_4913433_right_count small_4913433_right_encoded small_4913433_right_checked

theorem cover_4913433 : CoveredBy scale carrier boxes root_4913433 := by
  apply coveredBy_split_literal root_4913433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4913438 small_4913433_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4913438
  · exact small_4913433_right_covered
#print axioms cover_4913433

def root_4923489 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923489_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923489_left_fuel : Nat := 23
def small_4923489_left_count : Nat := 159
def small_4923489_left_encoded : String := "120701020000000108A913051207010400000002050000F6135D810105000106135D44FD050000FE135D80FF0000000404548A030000000900000007135D44FF04548A03000000061386AD0204548A05000000061386AD04078000F600000006128A4101000000000280010613D7B0FD028000FE0000000700000006000000030000000600000002000000010000000400000003135D80FD00000003050000FE000000090000000600000000135D45010000000005000106135D44FD050000FE135D80FF0000000404548A03000000091386AD0204548A05000000070000000900000001135D44FF04548A03138671020000000104548A0500000006000000091386AD0204548A051386710400000002028000F600000006000000051386AD04028000F613D7ED010280010613D7B0FD028000FE0000000913D7B0FF067ECE830000000612EA9502067ECE850000000600000009000000010000000400000003000000090000000013D7B101000000000280010613D7B0FD028000FE0000000900000005000000030000000500000002000000010000000400000003135D80FD00000003050000FE000000090000000512073D04050000F6135D810105000106135D44FD050000FE00000009135D44FF04548A03000000091386AD020CFD9C050F34D10400000002078000F6128A7D010000000900000000000000090F350D040000000900000002000000010000000400000003135D80FD00000003050000FE00000009135D44FF000000090000000400000000135D45010000000005000106135D44FD050000FE00000009135D44FF04548A03000000091386AD020CFD9C0500000009000000090000000100000004000000030000000900000002"
theorem small_4923489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4923489_left_root small_4923489_left_fuel small_4923489_left_count small_4923489_left_encoded = true := by
  decide +kernel
theorem small_4923489_left_covered : CoveredBy scale carrier boxes small_4923489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4923489_left_root small_4923489_left_fuel small_4923489_left_count small_4923489_left_encoded small_4923489_left_checked

theorem cover_4923489 : CoveredBy scale carrier boxes root_4923489 := by
  apply coveredBy_split_literal root_4923489 small_4923489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1844.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4923489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1844.covered
#print axioms cover_4923489

def root_4923484 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923484_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923484_right_fuel : Nat := 1
def small_4923484_right_count : Nat := 1
def small_4923484_right_encoded : String := "00000004"
theorem small_4923484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4923484_right_root small_4923484_right_fuel small_4923484_right_count small_4923484_right_encoded = true := by
  decide +kernel
theorem small_4923484_right_covered : CoveredBy scale carrier boxes small_4923484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4923484_right_root small_4923484_right_fuel small_4923484_right_count small_4923484_right_encoded small_4923484_right_checked

theorem cover_4923484 : CoveredBy scale carrier boxes root_4923484 := by
  apply coveredBy_split_literal root_4923484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4923489 small_4923484_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4923489
  · exact small_4923484_right_covered
#print axioms cover_4923484

def root_4923114 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923114_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923114_left_fuel : Nat := 20
def small_4923114_left_count : Nat := 169
def small_4923114_left_encoded : String := "115224FF0000000408A91303120701020000000108A91305120701040000000208A912FF12073CFE00000004050000F600000009000000090000000912073D0408A912FF00000009120700FE00000009000000040000000212073D0208A91305120701040000000208A912FF12073CFE00000004050000F6135D810105000106135D44FD00000007000000030000000700000000135D45010000000005000106135D44FD0CFD9C030F34D10200000001000000070000000700000003135D80FD000000030CFD9C030F34D102000000010000000700000007120700FE000000070000000412073D0408A912FF12073CFE00000004050000F6135D810105000106135D44FD0CFD9C030F34D102000000010CFD9C0500000009000000090F350D020CFD9C05000000050F350D0400000005000000020000000100000003135D80FD000000030CFD9C030F34D10200000001000000090F350D020CFD9C050F34D104000000020CFD9BFF00000007000000070F350D040CFD9BFF0000000900000009000000020000000100000000135D45010000000005000106135D44FD0CFD9C030F34D10200000001000000090F350D020CFD9C050F34D104000000020CFD9BFF0F350CFE000000040C9A87020F87510300000001000000060F878D0300000009000000010F34D0FE00000005000000040F350D0400000006000000020000000100000003135D80FD000000030CFD9C030F34D10200000001000000090F350D020CFD9C050F34D104000000020CFD9BFF00000009000000080F350D04000000090000000200000001120700FE050000F6135D810105000106135D44FD0CFD9C03000000050000000700000003135D80FD000000030CFD9C030F34D10200000001000000070000000700000000135D45010000000000000009000000040000000200000001"
theorem small_4923114_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4923114_left_root small_4923114_left_fuel small_4923114_left_count small_4923114_left_encoded = true := by
  decide +kernel
theorem small_4923114_left_covered : CoveredBy scale carrier boxes small_4923114_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4923114_left_root small_4923114_left_fuel small_4923114_left_count small_4923114_left_encoded small_4923114_left_checked

theorem cover_4923114 : CoveredBy scale carrier boxes root_4923114 := by
  apply coveredBy_split_literal root_4923114 small_4923114_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4923484 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4923114_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4923484
#print axioms cover_4923114

def root_4923109 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923109_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923109_right_fuel : Nat := 1
def small_4923109_right_count : Nat := 1
def small_4923109_right_encoded : String := "00000003"
theorem small_4923109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4923109_right_root small_4923109_right_fuel small_4923109_right_count small_4923109_right_encoded = true := by
  decide +kernel
theorem small_4923109_right_covered : CoveredBy scale carrier boxes small_4923109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4923109_right_root small_4923109_right_fuel small_4923109_right_count small_4923109_right_encoded small_4923109_right_checked

theorem cover_4923109 : CoveredBy scale carrier boxes root_4923109 := by
  apply coveredBy_split_literal root_4923109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4923114 small_4923109_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4923114
  · exact small_4923109_right_covered
#print axioms cover_4923109

def root_4923108 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923108_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923108_right_fuel : Nat := 29
def small_4923108_right_count : Nat := 489
def small_4923108_right_encoded : String := "115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A9130512070104000000020000000912073D0408A912FD12073D0608A912FF00000009120700FE050000F6135D810104548A031386710200000001000000090000000900000000000000090000000400000003120701060000000308A912FF00000009120700FE00000009000000040000000212073D0208A91305120701040000000208A912FD12073D0608A912FF12073CFE00000004050000F6135D81010CFD9C03000000090F350D0204548A05000000071386AD040CFD9BFD0000000700000009000000020000000100000000135D4501000000000CFD9C03000000090F350D0204548A05000000090000000900000001120700FE00000009000000040000000312070106000000030000000912073D0408A912FD12073D0608A912FF12073CFE00000004050000F6135D81010CFD9C030F34D10200000001000000090F350D020CFD9C05000000090F350D040CFD9BFD0F350D06000000090000000300000009000000020000000100000000135D45010000000000000009120700FE050000F6135D81010CFD9C030F34D102000000010CFD9C05000000090F350D0400000009000000020F350D020CFD9C050F34D10400000002000000070F350D040CFD9BFD000000080F34D1060000000300000008000000020000000100000000135D4501000000000CFD9C030F34D1020000000100000009000000090000000400000003120701060000000308A912FF00000009120700FE050000F6135D81010CFD9C030F34D10200000001000000090F350D020CFD9C05000000090F350D0400000009000000020000000100000000000000090000000400000002000000011151E8FF08A91303120701020000000108A91305120701040000000208A912FD12073D06050000F6000000090000000500000003000000060000000912073D0208A91305120701040000000208A912FD12073D06050000F6135D8101050000FE135D80FF000000040CFD9C030F34D10200000001000000090F350D0204548A05000000071386AD040CFD9BFD00000007000000090000000200000001135D44FF0CFD9C030F34D1020000000104548A05000000061386AD040CFD9BFD0F350D060C9A870600000006000000050000000300000006000000020F350D0204548A0513867104000000020CFD9BFD000000070F34D10600000003000000051386AD040CFD9BFD0F350D060C9A87020F87510300000001000000070F878D030C9A87060F8750FD00000007000000030000000700000001000000030F34D106000000030C9A87020F87510300000001000000070000000500000002000000010000000400000000135D450100000000050000FE135D80FF000000040CFD9C030F34D10200000001000000090F350D0204548A0513867104000000020CFD9BFD00000007000000091386AD040CFD9BFD0F350D060C9A87020F87510300000001000000080000000900000003000000090000000200000001135D44FF0CFD9C030F34D10200000001000000050F350D0204548A051386710400000002000000051386AD040CFD9BFD0F350D060C9A87020F875103000000010000000800000005000000030F34D1060000000300000005000000020000000100000004000000031207010600000003050000F6135D810100000009000000000000000512073D0408A912FD12073D06050000F6135D8101050000FE135D80FF000000040CFD9C030F34D10200000001000000090F350D020CFD9C050F34D104000000020CFD9BFD0F350D060C9A87020F875103000000010C9A87060F8750FD0000000700000003000000070000000900000003000000090F350D04000000090000000200000001135D44FF0CFD9C030F34D102000000010CFD9C0500000009000000090F350D020CFD9C050F34D104000000020CFD9BFD0F350D060C9A87020F875103000000010C9A87060F8750FD078000F6128A7D01000000070000000000000008000000030F878CFD00000003078000F6128A7D010000000800000000000000080F878D030C9A87060F8750FD078000F6128A7D01028000FE0000000713D7B0FF0AD3578500000007000000090000000400000000128A410100000000028000FE0000000913D7B0FF0000000900000004000000030F878CFD000000030000000900000001000000030F34D10600000003000000090F350D040CFD9BFD0F350D060C9A87020F875103000000010C9A8704000000090F878D050C9A87060F8750FD078000F6128A7D010000000800000000000000080000000300000008000000020F878D030000000900000001000000030000000900000002000000010000000400000000135D450100000000050000FE135D80FF000000040CFD9C03000000090F350D020CFD9C05000000090000000900000001135D44FF0CFD9C030F34D10200000001000000090F350D020CFD9C050F34D104000000020CFD9BFD0F350D060C9A87020F87510300000001000000080F878D030C9A87060F8750FD00000008000000030000000500000001000000030F34D10600000003000000050F350D040CFD9BFD0F350D060C9A87020F875103000000010000000800000009000000030000000900000002000000010000000400000003120701060000000300000009000000020000000100000004"
theorem small_4923108_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4923108_right_root small_4923108_right_fuel small_4923108_right_count small_4923108_right_encoded = true := by
  decide +kernel
theorem small_4923108_right_covered : CoveredBy scale carrier boxes small_4923108_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4923108_right_root small_4923108_right_fuel small_4923108_right_count small_4923108_right_encoded small_4923108_right_checked

theorem cover_4923108 : CoveredBy scale carrier boxes root_4923108 := by
  apply coveredBy_split_literal root_4923108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4923109 small_4923108_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4923109
  · exact small_4923108_right_covered
#print axioms cover_4923108

def root_4923103 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923103_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4923103_right_fuel : Nat := 1
def small_4923103_right_count : Nat := 1
def small_4923103_right_encoded : String := "00000002"
theorem small_4923103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4923103_right_root small_4923103_right_fuel small_4923103_right_count small_4923103_right_encoded = true := by
  decide +kernel
theorem small_4923103_right_covered : CoveredBy scale carrier boxes small_4923103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4923103_right_root small_4923103_right_fuel small_4923103_right_count small_4923103_right_encoded small_4923103_right_checked

theorem cover_4923103 : CoveredBy scale carrier boxes root_4923103 := by
  apply coveredBy_split_literal root_4923103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4923108 small_4923103_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4923108
  · exact small_4923103_right_covered
#print axioms cover_4923103

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349

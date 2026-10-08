import TaoBundleAssembly0060
import TaoBundleAssembly0098
import TaoBundleAssembly0112
import TaoBundleAssembly0119
import TaoBundleAssembly0120
import TaoBundleAssembly0122
import TaoBundleAssembly0125
import TaoBundleChunkBatch0475
import TaoBundleChunkBatch0476
import TaoBundleChunkBatch0477
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126
def root_5032566 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032566_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032566_right_fuel : Nat := 25
def small_5032566_right_count : Nat := 281
def small_5032566_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E9050000000200000005115225050A0001061151E9070000000300000005115225070A0000FE1152250908A91305120701040000000208A91307120701060000000308A91309120700FE050000F60000000600000009000000040000000512073D0608A9130900000009000000050000000312073D0408A91307120701060000000308A91309120700FE050000F6135D810105000102135D4503000000010CFD9C050F34D10400000002000000050000000500000005000000000000000500000004000000050000000500000002000000041151E90900000004000000050000000300000002115225030A0001041151E905000000020A0001061151E9070000000300000005115225070A0000FE1152250908A91303120701020000000108A91307120701060000000308A91309120700FE050000F600000006135D45010000000000000006000000040000000512073D0608A91309120700FE050000F6135D810105000104135D45050000000204548A03000000060000000500000005000000000000000500000004000000050000000312073D0208A91307120701060000000308A91309120700FE050000F6135D810105000104135D4505000000020CFD9C030F34D10200000001000000050000000500000005000000000000000500000004000000050000000500000001000000041151E909000000040000000500000003115225050A0001061151E907000000030A0000FE1152250908A91303120701020000000108A9130512070104000000020000000912073D0408A91309120700FE050000F6000000090000000500000004000000050000000212073D0208A91305000000090000000500000001000000041151E9090000000400000005115225070A0000FE1152250908A91303120701020000000108A91305120701040000000208A91307120701060000000308A91309000000060000000512073D0608A9130900000009000000050000000312073D0408A91307120701060000000308A91309000000060000000512073D0608A91309120700FE050000F6135D810104548A0313867102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070000000600000005000000020000000900000000135D450100000000000000050000000400000005000000030000000212073D0208A91305120701040000000208A91307120701060000000308A91309000000060000000512073D0608A9130900000009000000050000000312073D0408A91307120701060000000308A91309120700FE050000F6135D81010CFD9C030F34D102000000010CFD9C0500000006000000050F350D020CFD9C0500000009000000050000000100000000135D45010000000000000005000000040000000512073D0608A91309120700FE050000F600000009000000050000000400000005000000030000000200000001000000041151E9090000000408A9130312070102000000010000000500000005000000030000000200000001"
theorem small_5032566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5032566_right_root small_5032566_right_fuel small_5032566_right_count small_5032566_right_encoded = true := by
  decide +kernel
theorem small_5032566_right_covered : CoveredBy scale carrier boxes small_5032566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5032566_right_root small_5032566_right_fuel small_5032566_right_count small_5032566_right_encoded small_5032566_right_checked

theorem cover_5032566 : CoveredBy scale carrier boxes root_5032566 := by
  apply coveredBy_split_literal root_5032566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5032567 small_5032566_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5032567
  · exact small_5032566_right_covered
#print axioms cover_5032566

def root_5024934 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5024934 : CoveredBy scale carrier boxes root_5024934 := by
  apply coveredBy_split_literal root_5024934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5024935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5032566 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5024935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5032566
#print axioms cover_5024934

def root_5024933 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5024933 : CoveredBy scale carrier boxes root_5024933 := by
  apply coveredBy_split_literal root_5024933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5024934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1899.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5024934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1899.covered
#print axioms cover_5024933

def root_4913429 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4913429 : CoveredBy scale carrier boxes root_4913429 := by
  apply coveredBy_split_literal root_4913429 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4913430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5024933 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4913430
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5024933
#print axioms cover_4913429

def root_4832825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4832825 : CoveredBy scale carrier boxes root_4832825 := by
  apply coveredBy_split_literal root_4832825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0122.root_4832826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_4913429 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0122.cover_4832826
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_4913429
#print axioms cover_4832825

def root_4731071 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4731071 : CoveredBy scale carrier boxes root_4731071 := by
  apply coveredBy_split_literal root_4731071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0120.root_4731072 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_4832825 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0120.cover_4731072
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_4832825
#print axioms cover_4731071

def root_4456817 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456817 : CoveredBy scale carrier boxes root_4456817 := by
  apply coveredBy_split_literal root_4456817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4456818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_4731071 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4456818
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_4731071
#print axioms cover_4456817

def root_3880867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880867 : CoveredBy scale carrier boxes root_3880867 := by
  apply coveredBy_split_literal root_3880867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0112.root_3880868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_4456817 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0112.cover_3880868
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_4456817
#print axioms cover_3880867

def root_2513321 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513321 : CoveredBy scale carrier boxes root_2513321 := by
  apply coveredBy_split_literal root_2513321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_2513322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_3880867 coord1 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_2513322
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_3880867
#print axioms cover_2513321

def root_1 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1 : CoveredBy scale carrier boxes root_1 := by
  apply coveredBy_split_literal root_1 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_2513321 coord0 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_2513321
#print axioms cover_1

def root_5080656 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5080656 : CoveredBy scale carrier boxes root_5080656 := by
  apply coveredBy_split_literal root_5080656 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1901.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1902.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1901.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1902.covered
#print axioms cover_5080656

def root_5080650 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080650_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080650_left_fuel : Nat := 1
def small_5080650_left_count : Nat := 1
def small_5080650_left_encoded : String := "00000003"
theorem small_5080650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080650_left_root small_5080650_left_fuel small_5080650_left_count small_5080650_left_encoded = true := by
  decide +kernel
theorem small_5080650_left_covered : CoveredBy scale carrier boxes small_5080650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080650_left_root small_5080650_left_fuel small_5080650_left_count small_5080650_left_encoded small_5080650_left_checked

theorem cover_5080650 : CoveredBy scale carrier boxes root_5080650 := by
  apply coveredBy_split_literal root_5080650 small_5080650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080656 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5080650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080656
#print axioms cover_5080650

def root_5085210 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5085210 : CoveredBy scale carrier boxes root_5085210 := by
  apply coveredBy_split_literal root_5085210 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1903.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1904.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1903.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1904.covered
#print axioms cover_5085210

def root_5085205 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5085205_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5085205_right_fuel : Nat := 1
def small_5085205_right_count : Nat := 1
def small_5085205_right_encoded : String := "00000003"
theorem small_5085205_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5085205_right_root small_5085205_right_fuel small_5085205_right_count small_5085205_right_encoded = true := by
  decide +kernel
theorem small_5085205_right_covered : CoveredBy scale carrier boxes small_5085205_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5085205_right_root small_5085205_right_fuel small_5085205_right_count small_5085205_right_encoded small_5085205_right_checked

theorem cover_5085205 : CoveredBy scale carrier boxes root_5085205 := by
  apply coveredBy_split_literal root_5085205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5085210 small_5085205_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5085210
  · exact small_5085205_right_covered
#print axioms cover_5085205

def root_5080649 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5080649 : CoveredBy scale carrier boxes root_5080649 := by
  apply coveredBy_split_literal root_5080649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5085205 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080650
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5085205
#print axioms cover_5080649

def root_5080643 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080643_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080643_left_fuel : Nat := 1
def small_5080643_left_count : Nat := 1
def small_5080643_left_encoded : String := "00000002"
theorem small_5080643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080643_left_root small_5080643_left_fuel small_5080643_left_count small_5080643_left_encoded = true := by
  decide +kernel
theorem small_5080643_left_covered : CoveredBy scale carrier boxes small_5080643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080643_left_root small_5080643_left_fuel small_5080643_left_count small_5080643_left_encoded small_5080643_left_checked

theorem cover_5080643 : CoveredBy scale carrier boxes root_5080643 := by
  apply coveredBy_split_literal root_5080643 small_5080643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080649 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5080643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080649
#print axioms cover_5080643

def root_5080642 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080642_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080642_right_fuel : Nat := 17
def small_5080642_right_count : Nat := 107
def small_5080642_right_encoded : String := "0F34D0FA045489FD1386ACFC00000003045489FF00000006138670FE0C9A86F8000000060F8750F9000000080000000100000004138670FC045489FF1386ACFE000000040C9A86F8000000060F8750F9022A457713E201000AD3577B10D13CFA00000002022A457D0000000600000009000000060000000013E1C500000000000AD3577B10D13CFA00000002022A457D000000060000000A0000000600000001138670FE0C9A86F80F878CF900000001022A457713E201000AD3577B10D13CFA00000002022A457D0000000613E1C4FC022A457F0000000613E1C4FE0DE7C9F800000006000000050000000400000003000000060000000013E1C500000000000AD3577B10D13CFA00000002022A457D0000000613E1C4FC022A457F000000060000000500000003000000060F8750F9022A457713E201000AD3577B10D13CFA00000002022A457D0000000800000009000000080000000013E1C500000000000AD3577B10D13CFA00000002022A457D13E200FC00000003022A457F00000006000000050000000510D100FA022A457D00000006000000050000000200000001000000040000000300000002"
theorem small_5080642_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080642_right_root small_5080642_right_fuel small_5080642_right_count small_5080642_right_encoded = true := by
  decide +kernel
theorem small_5080642_right_covered : CoveredBy scale carrier boxes small_5080642_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080642_right_root small_5080642_right_fuel small_5080642_right_count small_5080642_right_encoded small_5080642_right_checked

theorem cover_5080642 : CoveredBy scale carrier boxes root_5080642 := by
  apply coveredBy_split_literal root_5080642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080643 small_5080642_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080643
  · exact small_5080642_right_covered
#print axioms cover_5080642

def root_5080636 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080636_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080636_left_fuel : Nat := 1
def small_5080636_left_count : Nat := 1
def small_5080636_left_encoded : String := "00000001"
theorem small_5080636_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080636_left_root small_5080636_left_fuel small_5080636_left_count small_5080636_left_encoded = true := by
  decide +kernel
theorem small_5080636_left_covered : CoveredBy scale carrier boxes small_5080636_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080636_left_root small_5080636_left_fuel small_5080636_left_count small_5080636_left_encoded small_5080636_left_checked

theorem cover_5080636 : CoveredBy scale carrier boxes root_5080636 := by
  apply coveredBy_split_literal root_5080636 small_5080636_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080642 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5080636_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080642
#print axioms cover_5080636

def root_5080635 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080635_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080635_right_fuel : Nat := 19
def small_5080635_right_count : Nat := 123
def small_5080635_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF00000006138670FE0C9A86FA000000060F8750FB022A457713E201000AD3577910D13CF800000001067ECE7D0000000612EA58FC022A457F000000060000000A00000003000000060000000013E1C500000000000AD3577910D13CF800000001067ECE7D0000000612EA58FC0000000600000003000000060000000200000004138670FC045489FF1386ACFE000000040C9A86FA000000060F8750FB0000000700000002138670FE0C9A86FA0F878CFB00000002022A457713E201000AD3577910D13CF800000001022A457D0000000613E1C4FC022A457F0000000613E1C4FE0DE7C9FA00000006000000050000000400000003000000060000000013E1C500000000000AD3577910D13CF800000001022A457D0000000613E1C4FC022A457F000000060000000500000003000000060F8750FB022A457713E201000AD3577910D13CF800000001022A457D13E200FC00000003022A457F000000060000000A00000007000000070000000013E1C500000000000AD3577910D13CF800000001022A457D13E200FC00000003022A457F00000006000000050000000510D100F8022A457D0000000600000005000000010000000200000004000000030F34D0FA000000060000000200000001"
theorem small_5080635_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080635_right_root small_5080635_right_fuel small_5080635_right_count small_5080635_right_encoded = true := by
  decide +kernel
theorem small_5080635_right_covered : CoveredBy scale carrier boxes small_5080635_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080635_right_root small_5080635_right_fuel small_5080635_right_count small_5080635_right_encoded small_5080635_right_checked

theorem cover_5080635 : CoveredBy scale carrier boxes root_5080635 := by
  apply coveredBy_split_literal root_5080635 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080636 small_5080635_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080636
  · exact small_5080635_right_covered
#print axioms cover_5080635

def root_5080629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080629_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080629_left_fuel : Nat := 1
def small_5080629_left_count : Nat := 1
def small_5080629_left_encoded : String := "00000000"
theorem small_5080629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080629_left_root small_5080629_left_fuel small_5080629_left_count small_5080629_left_encoded = true := by
  decide +kernel
theorem small_5080629_left_covered : CoveredBy scale carrier boxes small_5080629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080629_left_root small_5080629_left_fuel small_5080629_left_count small_5080629_left_encoded small_5080629_left_checked

theorem cover_5080629 : CoveredBy scale carrier boxes root_5080629 := by
  apply coveredBy_split_literal root_5080629 small_5080629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080635 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5080629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080635
#print axioms cover_5080629

def root_5079303 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5079303 : CoveredBy scale carrier boxes root_5079303 := by
  apply coveredBy_split_literal root_5079303 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1900.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5080629 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1900.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5080629
#print axioms cover_5079303

def root_5079298 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5079298_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5079298_right_fuel : Nat := 1
def small_5079298_right_count : Nat := 1
def small_5079298_right_encoded : String := "00000004"
theorem small_5079298_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5079298_right_root small_5079298_right_fuel small_5079298_right_count small_5079298_right_encoded = true := by
  decide +kernel
theorem small_5079298_right_covered : CoveredBy scale carrier boxes small_5079298_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5079298_right_root small_5079298_right_fuel small_5079298_right_count small_5079298_right_encoded small_5079298_right_checked

theorem cover_5079298 : CoveredBy scale carrier boxes root_5079298 := by
  apply coveredBy_split_literal root_5079298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5079303 small_5079298_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5079303
  · exact small_5079298_right_covered
#print axioms cover_5079298

def root_5078520 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078520_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078520_left_fuel : Nat := 29
def small_5078520_left_count : Nat := 361
def small_5078520_left_encoded : String := "12073CFE00000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F80F878CF900000001000000060F8750F900000005000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA00000006000000070F8750F90C9A86FA0F878CFB00000002067ECE770000000512EA590000000000000000060F8750FB00000005000000020000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86F80F878CF900000001000000070F8750F90C9A86FA0F878CFB000000020C9A86FE000000070F8750FF000000050000000400000007000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA0F878CFB0000000200000007000000070F8750F90C9A86FA0F878CFB00000002067ECE7712EA9500000000070000000012EA590000000000022A457D13E200FC000000030AD3577F0000000510D100FE000000060000000413E1C4FC0AD3577F0000000710D100FE0000000700000004000000030F8750FB00000007000000020000000100000004000000030F34D0FA045489FD00000006138670FC0CFD9BFF000000060F34D0FE000000060000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD000000060000000700000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F8000000060F8750F90C9A86FA000000060F8750FB0000000500000002000000010F34D0FE0C9A86F80F878CF900000001000000060F8750F90C9A86FA0F878CFB00000002000000060F8750FB022A457713E20100067ECE7D0000000512EA58FC0AD3577F0000000510D100FE0000000700000004000000030000000013E1C50000000000067ECE7D0000000612EA58FC0AD3577F0000000610D100FE000000060000000400000003000000020000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86F80F878CF9000000010C9A86FA00000006000000070F8750F90C9A86FA0F878CFB000000020C9A86FE00000006000000060F8750FB0C9A86FE0F878CFF00000004022A45770000000713E1C50000000000022A457D00000006000000070F8750FF000000070000000400000002000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB022A45770000000713E1C50000000000022A457D0000000600000007000000020F8750F90C9A86FA0F878CFB00000002022A457713E20100022A457D0000000613E1C4FC0AD3577F0000000610D100FE0000000900000004000000030000000013E1C50000000000022A457D0000000613E1C4FC0AD3577F0000000610D100FE0000000A00000004000000030F8750FB022A457713E20100022A457D13E200FC000000030AD3577F0000000710D100FE000000070000000413E1C4FC0AD3577F0000000710D100FE0000000700000004000000030000000013E1C50000000000022A457D13E200FC000000030AD3577F10D13CFE000000040B4D43F8000000060000000A10D100FE0B4D43F810804CF9000000010B4D43FA0000000600000007108010F90B4D43FA10804CFB0000000200000006108010FB011523370000000713F8590000000000033F67BD000000070000000700000002000000010000000413E1C4FC0AD3577F10D13CFE000000040000000710D100FE0B4D43F810804CF90000000100000007108010F90B4D43FA0000000900000007000000010000000400000003000000020000000100000004000000030F34D0FA045489FD00000006138670FC0CFD9BFF000000060F34D0FE000000060000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD00000006138670FC0CFD9BFF000000060F34D0FE0000000600000004000000030000000600000001"
theorem small_5078520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5078520_left_root small_5078520_left_fuel small_5078520_left_count small_5078520_left_encoded = true := by
  decide +kernel
theorem small_5078520_left_covered : CoveredBy scale carrier boxes small_5078520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5078520_left_root small_5078520_left_fuel small_5078520_left_count small_5078520_left_encoded small_5078520_left_checked

theorem cover_5078520 : CoveredBy scale carrier boxes root_5078520 := by
  apply coveredBy_split_literal root_5078520 small_5078520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5079298 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5078520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5079298
#print axioms cover_5078520

def root_5078515 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078515_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078515_right_fuel : Nat := 1
def small_5078515_right_count : Nat := 1
def small_5078515_right_encoded : String := "00000003"
theorem small_5078515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5078515_right_root small_5078515_right_fuel small_5078515_right_count small_5078515_right_encoded = true := by
  decide +kernel
theorem small_5078515_right_covered : CoveredBy scale carrier boxes small_5078515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5078515_right_root small_5078515_right_fuel small_5078515_right_count small_5078515_right_encoded small_5078515_right_checked

theorem cover_5078515 : CoveredBy scale carrier boxes root_5078515 := by
  apply coveredBy_split_literal root_5078515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5078520 small_5078515_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5078520
  · exact small_5078515_right_covered
#print axioms cover_5078515

def root_5077687 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077687_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077687_left_fuel : Nat := 32
def small_5077687_left_count : Nat := 387
def small_5077687_left_encoded : String := "12073CFC0000000308A912FF12073CFE00000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A86F8000000050F8750F9000000050000000100000004000000030F34D0FA00000006000000020F34D0F800000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D0FE00000006000000040F34D0FC0CFD9BFF000000060F34D0FE0000000600000004000000030F34D0FA00000006000000020F34D0F80000000600000001120700FE045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F80F878CF9000000010000000600000008138670FE0C9A86F80F878CF9000000010C9A86FA000000080F8750FB0C9A86FC000000080F8750FD00000005000000030000000200000008000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF9000000010C9A86FA000000060F8750FB067ECE770000000512EA59000000000000000006000000020F8750F90C9A86FA000000080F8750FB000000050000000200000001138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000080F8750FB067ECE7712EA9500000000080000000012EA5900000000000AD3577D0000000810D100FC022A457F000000060000000800000003000000020F8750F9000000080000000100000004000000030F34D0FA0CFD9BFD000000060F34D0FC0000000800000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC045489FF00000006138670FE00000006000000040000000300000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F8000000060F8750F90C9A86FA000000060F8750FB000000050000000200000001138670FE0C9A86F80F878CF9000000010C9A86FA000000060F8750FB0C9A86FC0000000600000006000000020F8750F90C9A86FA0F878CFB00000002000000080F8750FB0C9A86FC0F878CFD00000003022A45770000000813E1C50000000000022A457F00000006000000080F8750FD00000008000000030000000200000001000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF900000001000000060F8750F90C9A86FA0F878CFB00000002000000060F8750FB022A457713E201000AD3577D0000000510D100FC067ECE7F0000000500000008000000030000000013E1C500000000000AD3577D0000000610D100FC067ECE7F0000000612EA58FE0000000600000004000000030000000200000001138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB022A457713E201000AD3577D0000000610D100FC022A457F000000060000000A000000030000000013E1C500000000000AD3577D0000000610D100FC022A457F000000060000000900000003000000020F8750F90C9A86FA0F878CFB00000002022A45770000000813E1C500000000000AD3577D0000000610D100FC00000008000000030F8750FB022A457713E201000AD3577D0000000810D100FC022A457F0000000800000008000000030000000013E1C500000000000AD3577D10D13CFC00000003022A457F13E200FE000000040B4D43F800000006000000080000000810D100FC022A457F13E200FE000000040B4D43F810804CF9000000010B4D43FA0000000600000009108010F90B4D43FA00000008108010FB011523370000000813F859000000000009BE353D00000008117740FC0000000800000003000000020000000113E1C4FE0B4D43F810804CF9000000010B4D43FA0000000800000009000000080000000400000003000000020000000100000004000000030F34D0FA0CFD9BFD000000060F34D0FC0000000600000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC0000000600000003000000060000000100000004"
theorem small_5077687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5077687_left_root small_5077687_left_fuel small_5077687_left_count small_5077687_left_encoded = true := by
  decide +kernel
theorem small_5077687_left_covered : CoveredBy scale carrier boxes small_5077687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5077687_left_root small_5077687_left_fuel small_5077687_left_count small_5077687_left_encoded small_5077687_left_checked

theorem cover_5077687 : CoveredBy scale carrier boxes root_5077687 := by
  apply coveredBy_split_literal root_5077687 small_5077687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5078515 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5077687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5078515
#print axioms cover_5077687

def root_5077681 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077681_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077681_left_fuel : Nat := 1
def small_5077681_left_count : Nat := 1
def small_5077681_left_encoded : String := "00000002"
theorem small_5077681_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5077681_left_root small_5077681_left_fuel small_5077681_left_count small_5077681_left_encoded = true := by
  decide +kernel
theorem small_5077681_left_covered : CoveredBy scale carrier boxes small_5077681_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5077681_left_root small_5077681_left_fuel small_5077681_left_count small_5077681_left_encoded small_5077681_left_checked

theorem cover_5077681 : CoveredBy scale carrier boxes root_5077681 := by
  apply coveredBy_split_literal root_5077681 small_5077681_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5077687 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5077681_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5077687
#print axioms cover_5077681

def root_5077680 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077680_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077680_right_fuel : Nat := 15
def small_5077680_right_count : Nat := 37
def small_5077680_right_encoded : String := "120700FA08A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA00000002045489FD00000006138670FC045489FF000000060000000800000003000000060000000600000000138671000000000000000006000000040000000300000002"
theorem small_5077680_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5077680_right_root small_5077680_right_fuel small_5077680_right_count small_5077680_right_encoded = true := by
  decide +kernel
theorem small_5077680_right_covered : CoveredBy scale carrier boxes small_5077680_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5077680_right_root small_5077680_right_fuel small_5077680_right_count small_5077680_right_encoded small_5077680_right_checked

theorem cover_5077680 : CoveredBy scale carrier boxes root_5077680 := by
  apply coveredBy_split_literal root_5077680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5077681 small_5077680_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5077681
  · exact small_5077680_right_covered
#print axioms cover_5077680

def root_5077674 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077674_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077674_left_fuel : Nat := 1
def small_5077674_left_count : Nat := 1
def small_5077674_left_encoded : String := "00000001"
theorem small_5077674_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5077674_left_root small_5077674_left_fuel small_5077674_left_count small_5077674_left_encoded = true := by
  decide +kernel
theorem small_5077674_left_covered : CoveredBy scale carrier boxes small_5077674_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5077674_left_root small_5077674_left_fuel small_5077674_left_count small_5077674_left_encoded small_5077674_left_checked

theorem cover_5077674 : CoveredBy scale carrier boxes root_5077674 := by
  apply coveredBy_split_literal root_5077674 small_5077674_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5077680 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5077674_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5077680
#print axioms cover_5077674

def root_5077673 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077673_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077673_right_fuel : Nat := 15
def small_5077673_right_count : Nat := 39
def small_5077673_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD00000006000000070000000600000006000000001386710000000000000000060000000400000003120700FA000000060000000200000001"
theorem small_5077673_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5077673_right_root small_5077673_right_fuel small_5077673_right_count small_5077673_right_encoded = true := by
  decide +kernel
theorem small_5077673_right_covered : CoveredBy scale carrier boxes small_5077673_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5077673_right_root small_5077673_right_fuel small_5077673_right_count small_5077673_right_encoded small_5077673_right_checked

theorem cover_5077673 : CoveredBy scale carrier boxes root_5077673 := by
  apply coveredBy_split_literal root_5077673 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5077674 small_5077673_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5077674
  · exact small_5077673_right_covered
#print axioms cover_5077673

def root_5077667 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077667_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5077667_left_fuel : Nat := 1
def small_5077667_left_count : Nat := 1
def small_5077667_left_encoded : String := "00000000"
theorem small_5077667_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5077667_left_root small_5077667_left_fuel small_5077667_left_count small_5077667_left_encoded = true := by
  decide +kernel
theorem small_5077667_left_covered : CoveredBy scale carrier boxes small_5077667_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5077667_left_root small_5077667_left_fuel small_5077667_left_count small_5077667_left_encoded small_5077667_left_checked

theorem cover_5077667 : CoveredBy scale carrier boxes root_5077667 := by
  apply coveredBy_split_literal root_5077667 small_5077667_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5077673 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5077667_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5077673
#print axioms cover_5077667

def root_5076681 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076681_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076681_left_fuel : Nat := 29
def small_5076681_left_count : Nat := 461
def small_5076681_left_encoded : String := "12073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350D000CFD9BF9000000050F34D0F80000000700000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA00000002000000070000000600000001120700FE0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB00000005000000080F34D0F80CFD9BFB0F350CFA000000020CFD9BFD00000005000000070000000800000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003000000080F34D0FC045489FF0000000500000008000000030F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF00000005138670FE0C9A86FA0000000800000007000000040F34D0FC045489FF00000006138670FE0C9A86FA000000080000000700000004000000030F34D0FA00000006000000020000000100000004120700FC08A912FF12073CFE000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA045489FD00000005138670FC0CFD9BFF000000050000000800000003000000020F34D0F80000000700000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0000000500000004138670FC0CFD9BFF000000050F34D0FE0000000700000004000000030F34D0FA045489FD1386ACFC0000000300000008138670FC0CFD9BFF0F350CFE000000040C9A86F800000007000000080F34D0FE0C9A86F800000007000000080000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002000000070F34D0FA000000060000000200000001120700FE0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF0000000500000008138670FC045489FF00000007138670FE0C9A87000F8750F700000005000000000F878CF7000000000C9A86F8000000070000000800000004000000030F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA00000002000000070000000700000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF1386ACFE000000040C9A86F80F878CF900000001000000070F8750F90000000500000001138670FE0C9A86F80F878CF9000000010C9A86FA000000080F8750FB0AD357770000000710D101000000000000000007000000020000000800000004138670FC045489FF1386ACFE000000040C9A86F80F878CF900000001000000070F8750F90C9A86FA0F878CFB000000020AD357770000000710D1010000000000000000080000000700000001138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB000000020AD357770000000710D1010000000000022A457D0000000700000007000000070F8750F90C9A86FA0F878CFB00000002000000080F8750FB0AD3577710D13D00000000070000000010D1010000000000022A457D0000000813E1C4FC022A457F000000070000000900000003000000020000000100000004000000030F34D0FA045489FD00000008138670FC045489FF1386ACFE00000004000000080000000800000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF00000007138670FE0000000700000004000000070F34D0FA045489FD00000006138670FC045489FF00000006138670FE0AD357770000000710D101000000000000000006000000040000000300000002000000010000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE000000040000000800000008120700FC08A912FF12073CFE000000040CFD9BF70F350D000CFD9BF90000000800000008000000000F34D100000000000CFD9BF90F350CF8000000010000000800000006120700FE0CFD9BF7000000080F34D100000000000CFD9BF90F350CF8000000010000000800000008000000040000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE0000000400000007120700FE0CFD9BF70F350D00045489F91386ACF8000000010CFD9BFB000000070000000700000007000000000F34D10000000000045489F91386ACF8000000010CFD9BFB0F350CFA0000000200000007000000060000000600000004120700FC08A912FF00000007120700FE0CFD9BF7000000070F34D10000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000700000007000000070000000400000003120700FA08A912FD00000006120700FC08A912FF00000006120700FE000000060000000400000003000000020000000100000000"
theorem small_5076681_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076681_left_root small_5076681_left_fuel small_5076681_left_count small_5076681_left_encoded = true := by
  decide +kernel
theorem small_5076681_left_covered : CoveredBy scale carrier boxes small_5076681_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076681_left_root small_5076681_left_fuel small_5076681_left_count small_5076681_left_encoded small_5076681_left_checked

theorem cover_5076681 : CoveredBy scale carrier boxes root_5076681 := by
  apply coveredBy_split_literal root_5076681 small_5076681_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5077667 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5076681_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5077667
#print axioms cover_5076681

def root_5076675 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076675_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076675_left_fuel : Nat := 1
def small_5076675_left_count : Nat := 1
def small_5076675_left_encoded : String := "00000004"
theorem small_5076675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076675_left_root small_5076675_left_fuel small_5076675_left_count small_5076675_left_encoded = true := by
  decide +kernel
theorem small_5076675_left_covered : CoveredBy scale carrier boxes small_5076675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076675_left_root small_5076675_left_fuel small_5076675_left_count small_5076675_left_encoded small_5076675_left_checked

theorem cover_5076675 : CoveredBy scale carrier boxes root_5076675 := by
  apply coveredBy_split_literal root_5076675 small_5076675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076681 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076681
#print axioms cover_5076675

def root_5076674 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076674_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076674_right_fuel : Nat := 25
def small_5076674_right_count : Nat := 211
def small_5076674_right_encoded : String := "1151E8FF08A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC050000FE135D80FF000000040CFD9BF70F350D0000000007000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA000000080000000200000007135D44FF0CFD9BF7000000050F34D100000000000CFD9BF900000005000000070000000400000003120700FA08A912FD00000006120700FC050000FE135D80FF000000040CFD9BF70F350D000CFD9BF90F350CF8000000010000000800000006000000000F34D1000000000000000006135D44FF0CFD9BF70F350D000CFD9BF90F350CF800000001045489FB000000050000000600000006000000000F34D1000000000000000006000000040000000300000002120700F808A912FB12073CFA0000000208A912FD0000000600000007000000060000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D80FF00000004045489F71386AD000CFD9BF900000005000000060000000000000006135D44FF045489F7000000050000000600000004120700FC050000FE135D80FF00000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000005138670FC0C9A86F8000000070F8750F90000000500000001000000030F34D0FA00000006000000020F34D0F800000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F90C9A86FA000000060F8750FB078000FE00000006000000070000000200000001000000030000000600000006135D44FF045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000006000000020F34D0F800000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000005138670FC0C9A86F8000000060F8750F90C9A86FA000000060F8750FB0000000500000002000000010000000300000006000000060000000400000003120700FA0000000600000002120700F8000000060000000100000004"
theorem small_5076674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076674_right_root small_5076674_right_fuel small_5076674_right_count small_5076674_right_encoded = true := by
  decide +kernel
theorem small_5076674_right_covered : CoveredBy scale carrier boxes small_5076674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076674_right_root small_5076674_right_fuel small_5076674_right_count small_5076674_right_encoded small_5076674_right_checked

theorem cover_5076674 : CoveredBy scale carrier boxes root_5076674 := by
  apply coveredBy_split_literal root_5076674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076675 small_5076674_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076675
  · exact small_5076674_right_covered
#print axioms cover_5076674

def root_5076668 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076668_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076668_left_fuel : Nat := 1
def small_5076668_left_count : Nat := 1
def small_5076668_left_encoded : String := "00000003"
theorem small_5076668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076668_left_root small_5076668_left_fuel small_5076668_left_count small_5076668_left_encoded = true := by
  decide +kernel
theorem small_5076668_left_covered : CoveredBy scale carrier boxes small_5076668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076668_left_root small_5076668_left_fuel small_5076668_left_count small_5076668_left_encoded small_5076668_left_checked

theorem cover_5076668 : CoveredBy scale carrier boxes root_5076668 := by
  apply coveredBy_split_literal root_5076668 small_5076668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076674 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076674
#print axioms cover_5076668

def root_5076667 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076667_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076667_right_fuel : Nat := 27
def small_5076667_right_count : Nat := 219
def small_5076667_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF00000005120700FE050000FC135D80FD000000030CFD9BF70F350D0000000008000000000F34D100000000000CFD9BF90F350CF800000001000000080F34D0F80CFD9BFB000000070000000600000001135D44FD0CFD9BF7000000050F34D100000000000CFD9BF9000000050F34D0F800000007000000010000000300000004120700FA08A912FF000000060000000800000002120700F808A912FB12073CFA0000000208A912FF00000006120700FE050000FC135D80FD000000030CFD9BF70F350D00045489F90000000700000006000000000F34D1000000000000000006135D44FD0CFD9BF70F350D00045489F90000000700000006000000000F34D10000000000000000060000000300000004000000060000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D80FD00000003045489F71386AD000CFD9BF900000005000000060000000000000006135D44FD045489F7000000050000000600000003120700FE050000FC135D80FD00000003045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86F80F878CF900000001000000080000000800000004000000080F34D0F800000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000006138670FE0C9A86F8000000060F8750F90C9A86FA000000060F8750FB078000FC00000006000000080000000200000001000000040000000600000006135D44FD045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB00000005000000080F34D0F800000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86F8000000060F8750F90C9A86FA000000060F8750FB0000000500000002000000010000000400000006000000060000000300000004120700FA0000000600000002120700F800000006000000011151E8FF08A912F712073D0008A912F9000000050000000700000000120701000000000008A912F900000006000000060000000400000003"
theorem small_5076667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076667_right_root small_5076667_right_fuel small_5076667_right_count small_5076667_right_encoded = true := by
  decide +kernel
theorem small_5076667_right_covered : CoveredBy scale carrier boxes small_5076667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076667_right_root small_5076667_right_fuel small_5076667_right_count small_5076667_right_encoded small_5076667_right_checked

theorem cover_5076667 : CoveredBy scale carrier boxes root_5076667 := by
  apply coveredBy_split_literal root_5076667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076668 small_5076667_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076668
  · exact small_5076667_right_covered
#print axioms cover_5076667

def root_5076661 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076661_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076661_left_fuel : Nat := 1
def small_5076661_left_count : Nat := 1
def small_5076661_left_encoded : String := "00000002"
theorem small_5076661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076661_left_root small_5076661_left_fuel small_5076661_left_count small_5076661_left_encoded = true := by
  decide +kernel
theorem small_5076661_left_covered : CoveredBy scale carrier boxes small_5076661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076661_left_root small_5076661_left_fuel small_5076661_left_count small_5076661_left_encoded small_5076661_left_checked

theorem cover_5076661 : CoveredBy scale carrier boxes root_5076661 := by
  apply coveredBy_split_literal root_5076661 small_5076661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076667 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076667
#print axioms cover_5076661

def root_5092598 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092598_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092598_left_fuel : Nat := 28
def small_5092598_left_count : Nat := 341
def small_5092598_left_encoded : String := "12073CFC0000000308A912FF12073CFE00000004050000FA135D80FB00000002045489F71386AD000CFD9BF9000000050F34D0F800000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A86F80F878CF900000001078000FA00000006000000070F8750F9000000050000000100000004000000030F34D0F80CFD9BFD000000060000000700000001135D44FB045489F70000000513867100000000000CFD9BF9000000050F34D0F8000000070000000100000002120700FE050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF00000005138670FE0C9A86F80F878CF9000000010C9A86FC0F878CFD00000003078000FA00000005000000090F8750FD00000005000000030F8750F90000000500000001000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF900000001000000070F8750F90000000500000001138670FE0C9A86F80F878CF900000001078000FA128A7CFB00000002067ECE770000000A12EA5900000000000000000A0000000A0F8750F9078000FA128A7CFB00000002067ECE770000000512EA5900000000000AD3577D0000000510D100FC0000000A000000030000000A0000000100000004000000030F34D0F80CFD9BFD0F350CFC00000003045489FF00000006000000090F34D0FC045489FF00000007138670FE078000FA128A7CFB0000000200000007000000070000000400000003000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F80F878CF900000001000000090F8750F90000000500000001138670FE0C9A86F80F878CF900000001000000090F8750F90C9A86FC0F878CFD00000003078000FA128A7CFB00000002022A457713E20100022A457F00000005000000080000000000000009000000090F8750FD000000090000000300000001000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF900000001078000FA128A7CFB00000002022A457713E201000AD3577D00000005000000070000000000000009000000090F8750F9078000FA128A7CFB00000002022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F0000000512EA58FE0B4D43F800000009108010F908C000FA0000000500000009000000010000000400000003128A40FB022A457700000005000000090000000200000001138670FE0C9A86F80F878CF900000001078000FA128A7CFB00000002022A457713E201000AD3577D0000000910D100FC00000009000000030000000000000009000000090F8750F9078000FA128A7CFB00000002022A457713E201000AD3577D10D13CFC00000003022A457F000000050000000A10D100FC022A457F13E200FE000000040B4D43F80000000A108010F90000000A000000010000000A000000030000000013E1C500000000000AD3577D0000000910D100FC022A457F13E200FE000000040B4D43F800000009108010F908C000FA11FC24FB000000020000000900000009000000010000000900000003128A40FB0000000A000000020000000100000004000000030F34D0F80CFD9BFD000000090F34D0FC000000090000000300000001135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC045489FF000000050000000A000000030F34D0F800000009000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD000000090F34D0FC045489FF000000090000000900000003000000090000000200000004"
theorem small_5092598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092598_left_root small_5092598_left_fuel small_5092598_left_count small_5092598_left_encoded = true := by
  decide +kernel
theorem small_5092598_left_covered : CoveredBy scale carrier boxes small_5092598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092598_left_root small_5092598_left_fuel small_5092598_left_count small_5092598_left_encoded small_5092598_left_checked

theorem cover_5092598 : CoveredBy scale carrier boxes root_5092598 := by
  apply coveredBy_split_literal root_5092598 small_5092598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1905.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5092598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1905.covered
#print axioms cover_5092598

def root_5092592 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092592_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092592_left_fuel : Nat := 1
def small_5092592_left_count : Nat := 1
def small_5092592_left_encoded : String := "00000001"
theorem small_5092592_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092592_left_root small_5092592_left_fuel small_5092592_left_count small_5092592_left_encoded = true := by
  decide +kernel
theorem small_5092592_left_covered : CoveredBy scale carrier boxes small_5092592_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092592_left_root small_5092592_left_fuel small_5092592_left_count small_5092592_left_encoded small_5092592_left_checked

theorem cover_5092592 : CoveredBy scale carrier boxes root_5092592 := by
  apply coveredBy_split_literal root_5092592 small_5092592_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092598 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5092592_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092598
#print axioms cover_5092592

def root_5092591 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092591_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092591_right_fuel : Nat := 13
def small_5092591_right_count : Nat := 39
def small_5092591_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF00000007120700FE050000FA135D80FB00000002045489F71386AD000000000700000000000000090000000900000004120700FC08A912FF00000007120700FE050000FA135D80FB00000002045489F7000000071386710000000000045489F91386ACF800000001045489FD00000007000000070000000700000007000000040000000300000001"
theorem small_5092591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092591_right_root small_5092591_right_fuel small_5092591_right_count small_5092591_right_encoded = true := by
  decide +kernel
theorem small_5092591_right_covered : CoveredBy scale carrier boxes small_5092591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092591_right_root small_5092591_right_fuel small_5092591_right_count small_5092591_right_encoded small_5092591_right_checked

theorem cover_5092591 : CoveredBy scale carrier boxes root_5092591 := by
  apply coveredBy_split_literal root_5092591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092592 small_5092591_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092592
  · exact small_5092591_right_covered
#print axioms cover_5092591

def root_5092585 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092585_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092585_left_fuel : Nat := 1
def small_5092585_left_count : Nat := 1
def small_5092585_left_encoded : String := "00000000"
theorem small_5092585_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092585_left_root small_5092585_left_fuel small_5092585_left_count small_5092585_left_encoded = true := by
  decide +kernel
theorem small_5092585_left_covered : CoveredBy scale carrier boxes small_5092585_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092585_left_root small_5092585_left_fuel small_5092585_left_count small_5092585_left_encoded small_5092585_left_checked

theorem cover_5092585 : CoveredBy scale carrier boxes root_5092585 := by
  apply coveredBy_split_literal root_5092585 small_5092585_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092591 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5092585_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092591
#print axioms cover_5092585

def root_5092203 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092203_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092203_left_fuel : Nat := 24
def small_5092203_left_count : Nat := 181
def small_5092203_left_encoded : String := "12073D0008A912F912073CF80000000108A912FD12073CFC0000000308A912FF00000005120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF9000000050F34D0F80000000500000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC045489FF00000005138670FE0000000500000004000000030F34D0F80CFD9BFD000000070000000700000001135D44FB0CFD9BF7000000050F34D100000000000CFD9BF9000000050F34D0F800000007000000010000000200000004120700FC08A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF7000000070F34D100000000000000000700000007120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF800000001045489FD000000050000000700000007000000000F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF00000005138670FE0C9A86F80000000A0F8750F9078000FA128A7CFB000000020AD357770000000510D10100000000000000000A0000000A0000000100000004138670FC045489FF00000007138670FE0C9A86F8000000070F8750F9078000FA128A7CFB000000020AD357770000000710D101000000000000000007000000070000000100000004000000030F34D0F80000000700000001135D44FB0CFD9BF7000000070F34D100000000000CFD9BF90F350CF800000001045489FD000000070000000700000007000000020000000400000003120700F808A912FD12073CFC0000000308A912FF12073CFE00000004050000FA0000000700000007120700FE050000FA135D80FB000000020CFD9BF70F350D00045489F900000007138670F80000000700000001000000000F34D1000000000000000007135D44FB0CFD9BF70F350D00045489F9000000070000000900000000000000090000000200000004120700FC00000007000000030000000100000000"
theorem small_5092203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092203_left_root small_5092203_left_fuel small_5092203_left_count small_5092203_left_encoded = true := by
  decide +kernel
theorem small_5092203_left_covered : CoveredBy scale carrier boxes small_5092203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092203_left_root small_5092203_left_fuel small_5092203_left_count small_5092203_left_encoded small_5092203_left_checked

theorem cover_5092203 : CoveredBy scale carrier boxes root_5092203 := by
  apply coveredBy_split_literal root_5092203 small_5092203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092585 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5092203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092585
#print axioms cover_5092203

def root_5092197 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092197_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092197_left_fuel : Nat := 1
def small_5092197_left_count : Nat := 1
def small_5092197_left_encoded : String := "00000004"
theorem small_5092197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092197_left_root small_5092197_left_fuel small_5092197_left_count small_5092197_left_encoded = true := by
  decide +kernel
theorem small_5092197_left_covered : CoveredBy scale carrier boxes small_5092197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092197_left_root small_5092197_left_fuel small_5092197_left_count small_5092197_left_encoded small_5092197_left_checked

theorem cover_5092197 : CoveredBy scale carrier boxes root_5092197 := by
  apply coveredBy_split_literal root_5092197 small_5092197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092203 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5092197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092203
#print axioms cover_5092197

def root_5092196 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092196_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092196_right_fuel : Nat := 15
def small_5092196_right_count : Nat := 41
def small_5092196_right_encoded : String := "1151E8FF08A912F712073D0008A912F9000000050000000700000000120701000000000008A912F912073CF80000000108A912FD00000005120700FC050000FA135D80FB00000002050000FE135D80FF00000004045489F700000007138671000000000000000007135D44FF045489F70000000513867100000000000CFD9BF90000000500000007000000040000000700000003120700F8000000070000000100000004"
theorem small_5092196_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092196_right_root small_5092196_right_fuel small_5092196_right_count small_5092196_right_encoded = true := by
  decide +kernel
theorem small_5092196_right_covered : CoveredBy scale carrier boxes small_5092196_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092196_right_root small_5092196_right_fuel small_5092196_right_count small_5092196_right_encoded small_5092196_right_checked

theorem cover_5092196 : CoveredBy scale carrier boxes root_5092196 := by
  apply coveredBy_split_literal root_5092196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092197 small_5092196_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092197
  · exact small_5092196_right_covered
#print axioms cover_5092196

def root_5092190 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092190_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092190_left_fuel : Nat := 1
def small_5092190_left_count : Nat := 1
def small_5092190_left_encoded : String := "00000003"
theorem small_5092190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092190_left_root small_5092190_left_fuel small_5092190_left_count small_5092190_left_encoded = true := by
  decide +kernel
theorem small_5092190_left_covered : CoveredBy scale carrier boxes small_5092190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092190_left_root small_5092190_left_fuel small_5092190_left_count small_5092190_left_encoded small_5092190_left_checked

theorem cover_5092190 : CoveredBy scale carrier boxes root_5092190 := by
  apply coveredBy_split_literal root_5092190 small_5092190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092196 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5092190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092196
#print axioms cover_5092190

def root_5092189 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092189_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092189_right_fuel : Nat := 22
def small_5092189_right_count : Nat := 137
def small_5092189_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F900000005120700F808A912FF00000005120700FE050000FA135D80FB00000002050000FC135D80FD000000030CFD9BF70F350D00045489F900000005138670F80000000500000001000000000F34D1000000000000000007135D44FD0CFD9BF7000000050F34D100000000000000000700000003135D44FB050000FC135D80FD000000030CFD9BF70000000500000009135D44FD0CFD9BF700000005000000090000000300000002000000040000000100000000120701000000000008A912F912073CF80000000108A912FF00000005120700FE050000FA135D80FB00000002050000FC135D80FD00000003045489F71386AD000CFD9BF9000000050F34D0F800000007000000010000000013867100000000000CFD9BF90F350CF800000001045489FF00000005138670FE0C9A86F80F878CF900000001000000090F8750F90000000500000001000000040F34D0F80000000900000001135D44FD045489F70000000513867100000000000CFD9BF9000000050F34D0F8000000060000000100000003135D44FB050000FC135D80FD00000003045489F70000000500000009135D44FD045489F70000000513867100000000000CFD9BF90000000500000009000000030000000200000004120700F808A912FF00000006120700FE050000FA135D80FB00000002000000060000000900000004000000011151E8FF000000050000000400000003"
theorem small_5092189_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092189_right_root small_5092189_right_fuel small_5092189_right_count small_5092189_right_encoded = true := by
  decide +kernel
theorem small_5092189_right_covered : CoveredBy scale carrier boxes small_5092189_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092189_right_root small_5092189_right_fuel small_5092189_right_count small_5092189_right_encoded small_5092189_right_checked

theorem cover_5092189 : CoveredBy scale carrier boxes root_5092189 := by
  apply coveredBy_split_literal root_5092189 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092190 small_5092189_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092190
  · exact small_5092189_right_covered
#print axioms cover_5092189

def root_5092184 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092184_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092184_right_fuel : Nat := 1
def small_5092184_right_count : Nat := 1
def small_5092184_right_encoded : String := "00000002"
theorem small_5092184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092184_right_root small_5092184_right_fuel small_5092184_right_count small_5092184_right_encoded = true := by
  decide +kernel
theorem small_5092184_right_covered : CoveredBy scale carrier boxes small_5092184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092184_right_root small_5092184_right_fuel small_5092184_right_count small_5092184_right_encoded small_5092184_right_checked

theorem cover_5092184 : CoveredBy scale carrier boxes root_5092184 := by
  apply coveredBy_split_literal root_5092184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092189 small_5092184_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092189
  · exact small_5092184_right_covered
#print axioms cover_5092184

def root_5076660 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076660 : CoveredBy scale carrier boxes root_5076660 := by
  apply coveredBy_split_literal root_5076660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5092184 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076661
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5092184
#print axioms cover_5076660

def root_5076654 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076654_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076654_left_fuel : Nat := 1
def small_5076654_left_count : Nat := 1
def small_5076654_left_encoded : String := "00000001"
theorem small_5076654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076654_left_root small_5076654_left_fuel small_5076654_left_count small_5076654_left_encoded = true := by
  decide +kernel
theorem small_5076654_left_covered : CoveredBy scale carrier boxes small_5076654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076654_left_root small_5076654_left_fuel small_5076654_left_count small_5076654_left_encoded small_5076654_left_checked

theorem cover_5076654 : CoveredBy scale carrier boxes root_5076654 := by
  apply coveredBy_split_literal root_5076654 small_5076654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076660 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076660
#print axioms cover_5076654

def root_5097549 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097549_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097549_left_fuel : Nat := 26
def small_5097549_left_count : Nat := 289
def small_5097549_left_encoded : String := "12073CFE00000004050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0C9A86FA0F878CFB00000002000000080F8750FB000000050000000200000004138670FC0CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004078000F800000005000000090F8750FF00000005000000040F8750FB00000005000000020F34D0FE0C9A86FA0F878CFB00000002078000F8128A7CF900000001067ECE770000000912EA59000000000000000009000000090F8750FB078000F8128A7CF900000001067ECE770000000512EA590000000000022A457D0000000500000009000000090000000200000004000000030F34D0FA045489FD00000008138670FC0CFD9BFF0000000A0F34D0FE078000F8128A7CF90000000100000008000000080000000400000003000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020000000A0F8750FB00000005000000020F34D0FE0C9A86FA0F878CFB00000002078000F8128A7CF900000001022A457713E20100067ECE7D000000050000000A000000000000000A0000000A0F8750FB078000F8128A7CF900000001022A45770000000513E1C50000000000067ECE7D0000000512EA58FC0AD3577F0000000510D100FE0B4D43FA0000000A108010FB08C000F8000000050000000A000000020000000400000003128A40F9022A4577000000050000000A000000010000000200000004138670FC0CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020000000A0F8750FB0C9A86FE0F878CFF00000004078000F8128A7CF900000001022A457713E20100022A457D0000000500000007000000000000000A0000000A0F8750FF0000000A00000004000000020F34D0FE0C9A86FA0F878CFB00000002078000F8128A7CF900000001022A457713E20100022A457D0000000A00000009000000000000000A000000090F8750FB078000F8128A7CF900000001022A457713E20100022A457D13E200FC000000030AD3577F0000000510D100FE0B4D43FA00000009108010FB000000090000000200000004000000090000000013E1C50000000000022A457D13E200FC000000030AD3577F0000000A10D100FE0B4D43FA00000009108010FB08C000F811FC24F9000000010000000A00000009000000020000000413E1C4FC0AD3577F0000000910D100FE000000090000000400000003128A40F900000009000000010000000200000004000000030F34D0FA045489FD0000000A0000000A00000002135D44F9045489F71386AD000CFD9BFB0F350CFA00000002045489FD00000005138670FC0CFD9BFF000000050F34D0FE0000000900000004000000030F34D0FA0000000A000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0000000A00000004138670FC0CFD9BFF0000000A0F34D0FE0000000900000004000000030000000A00000001"
theorem small_5097549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097549_left_root small_5097549_left_fuel small_5097549_left_count small_5097549_left_encoded = true := by
  decide +kernel
theorem small_5097549_left_covered : CoveredBy scale carrier boxes small_5097549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097549_left_root small_5097549_left_fuel small_5097549_left_count small_5097549_left_encoded small_5097549_left_checked

theorem cover_5097549 : CoveredBy scale carrier boxes root_5097549 := by
  apply coveredBy_split_literal root_5097549 small_5097549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1906.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5097549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1906.covered
#print axioms cover_5097549

def root_5097544 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097544_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097544_right_fuel : Nat := 1
def small_5097544_right_count : Nat := 1
def small_5097544_right_encoded : String := "00000003"
theorem small_5097544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097544_right_root small_5097544_right_fuel small_5097544_right_count small_5097544_right_encoded = true := by
  decide +kernel
theorem small_5097544_right_covered : CoveredBy scale carrier boxes small_5097544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097544_right_root small_5097544_right_fuel small_5097544_right_count small_5097544_right_encoded small_5097544_right_checked

theorem cover_5097544 : CoveredBy scale carrier boxes root_5097544 := by
  apply coveredBy_split_literal root_5097544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5097549 small_5097544_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5097549
  · exact small_5097544_right_covered
#print axioms cover_5097544

def root_5097192 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097192_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097192_left_fuel : Nat := 23
def small_5097192_left_count : Nat := 167
def small_5097192_left_encoded : String := "12073CFC0000000308A912FF12073CFE00000004050000F8135D80F900000001045489F71386AD000CFD9BFB000000050F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A86FA0F878CFB00000002078000F800000006000000080F8750FB000000050000000200000004000000030F34D0FA0CFD9BFD000000060000000A00000002135D44F9045489F70000000513867100000000000CFD9BFB000000050F34D0FA000000080000000200000001120700FE050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD000000080F34D0FC045489FF0000000800000008000000030F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86FA000000080F8750FB0000000500000002000000080F34D0FC045489FF1386ACFE000000040C9A86FA0F878CFB00000002000000080F8750FB078000F8128A7CF900000001022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F000000050000000800000003128A40F9022A45770000000513E1C50000000000000000080000000100000002138670FE0C9A86FA000000080F8750FB078000F8128A7CF900000001022A45770000000813E1C500000000000AD3577D0000000810D100FC022A457F000000080000000800000003000000080000000200000004000000030F34D0FA0CFD9BFD000000080F34D0FC000000080000000300000002135D44F9045489F70000000813867100000000000CFD9BFB0F350CFA000000020CFD9BFD000000080F34D0FC0000000800000003000000080000000100000004"
theorem small_5097192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097192_left_root small_5097192_left_fuel small_5097192_left_count small_5097192_left_encoded = true := by
  decide +kernel
theorem small_5097192_left_covered : CoveredBy scale carrier boxes small_5097192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097192_left_root small_5097192_left_fuel small_5097192_left_count small_5097192_left_encoded small_5097192_left_checked

theorem cover_5097192 : CoveredBy scale carrier boxes root_5097192 := by
  apply coveredBy_split_literal root_5097192 small_5097192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5097544 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5097192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5097544
#print axioms cover_5097192

def root_5097186 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097186_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097186_left_fuel : Nat := 1
def small_5097186_left_count : Nat := 1
def small_5097186_left_encoded : String := "00000002"
theorem small_5097186_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097186_left_root small_5097186_left_fuel small_5097186_left_count small_5097186_left_encoded = true := by
  decide +kernel
theorem small_5097186_left_covered : CoveredBy scale carrier boxes small_5097186_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097186_left_root small_5097186_left_fuel small_5097186_left_count small_5097186_left_encoded small_5097186_left_checked

theorem cover_5097186 : CoveredBy scale carrier boxes root_5097186 := by
  apply coveredBy_split_literal root_5097186 small_5097186_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5097192 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5097186_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5097192
#print axioms cover_5097186

def root_5097185 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097185_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097185_right_fuel : Nat := 13
def small_5097185_right_count : Nat := 41
def small_5097185_right_encoded : String := "120700FA08A912FD12073CFC0000000308A912FF12073CFE000000040000000800000008120700FC08A912FF12073CFE00000004050000F8135D80F900000001045489F71386AD0000000008000000000000000A0000000A120700FE050000F8135D80F900000001045489F7000000081386710000000000045489FB1386ACFA00000002045489FD000000080000000A0000000800000008000000040000000300000002"
theorem small_5097185_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097185_right_root small_5097185_right_fuel small_5097185_right_count small_5097185_right_encoded = true := by
  decide +kernel
theorem small_5097185_right_covered : CoveredBy scale carrier boxes small_5097185_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097185_right_root small_5097185_right_fuel small_5097185_right_count small_5097185_right_encoded small_5097185_right_checked

theorem cover_5097185 : CoveredBy scale carrier boxes root_5097185 := by
  apply coveredBy_split_literal root_5097185 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5097186 small_5097185_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5097186
  · exact small_5097185_right_covered
#print axioms cover_5097185

def root_5097179 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097179_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097179_left_fuel : Nat := 1
def small_5097179_left_count : Nat := 1
def small_5097179_left_encoded : String := "00000000"
theorem small_5097179_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097179_left_root small_5097179_left_fuel small_5097179_left_count small_5097179_left_encoded = true := by
  decide +kernel
theorem small_5097179_left_covered : CoveredBy scale carrier boxes small_5097179_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097179_left_root small_5097179_left_fuel small_5097179_left_count small_5097179_left_encoded small_5097179_left_checked

theorem cover_5097179 : CoveredBy scale carrier boxes root_5097179 := by
  apply coveredBy_split_literal root_5097179 small_5097179_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5097185 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5097179_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5097185
#print axioms cover_5097179

def root_5096779 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096779_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096779_left_fuel : Nat := 24
def small_5096779_left_count : Nat := 191
def small_5096779_left_encoded : String := "12073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF00000005120700FE050000F8135D80F9000000010CFD9BF7000000080F34D10000000000000000080000000800000004120700FC08A912FF12073CFE00000004050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB000000050F34D0FA0000000500000002000000000F34D100000000000CFD9BFB0F350CFA00000002045489FD00000005138670FC0CFD9BFF000000050F34D0FE0000000500000004000000030F34D0FA045489FD00000008138670FC0CFD9BFF00000005000000080000000300000002135D44F90CFD9BF7000000050F34D100000000000CFD9BFB000000050F34D0FA000000080000000200000001120700FE050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA00000002045489FD00000005138670FC045489FF00000005000000080000000300000008000000000F34D100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF0000000500000008138670FC045489FF1386ACFE000000040C9A86FA000000090F8750FB078000F8128A7CF9000000010AD357770000000510D1010000000000000000090000000900000002138670FE0C9A86FA000000080F8750FB078000F8128A7CF9000000010AD357770000000810D101000000000000000008000000080000000200000004000000030F34D0FA0000000800000002135D44F90CFD9BF7000000080F34D100000000000CFD9BFB0F350CFA00000002045489FD000000080000000900000008000000010000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE00000004050000F8000000080000000800000008120700FC08A912FF12073CFE00000004050000F8135D80F9000000010CFD9BF70F350D00045489FB00000008138670FA0000000800000002000000000F34D1000000000000000008135D44F90CFD9BF70F350D00045489FB000000080000000A000000000000000A0000000100000008000000030000000200000000"
theorem small_5096779_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096779_left_root small_5096779_left_fuel small_5096779_left_count small_5096779_left_encoded = true := by
  decide +kernel
theorem small_5096779_left_covered : CoveredBy scale carrier boxes small_5096779_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096779_left_root small_5096779_left_fuel small_5096779_left_count small_5096779_left_encoded small_5096779_left_checked

theorem cover_5096779 : CoveredBy scale carrier boxes root_5096779 := by
  apply coveredBy_split_literal root_5096779 small_5096779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5097179 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5096779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5097179
#print axioms cover_5096779

def root_5096773 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096773_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096773_left_fuel : Nat := 1
def small_5096773_left_count : Nat := 1
def small_5096773_left_encoded : String := "00000004"
theorem small_5096773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096773_left_root small_5096773_left_fuel small_5096773_left_count small_5096773_left_encoded = true := by
  decide +kernel
theorem small_5096773_left_covered : CoveredBy scale carrier boxes small_5096773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096773_left_root small_5096773_left_fuel small_5096773_left_count small_5096773_left_encoded small_5096773_left_checked

theorem cover_5096773 : CoveredBy scale carrier boxes root_5096773 := by
  apply coveredBy_split_literal root_5096773 small_5096773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5096779 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5096773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5096779
#print axioms cover_5096773

def root_5096772 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096772_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096772_right_fuel : Nat := 20
def small_5096772_right_count : Nat := 131
def small_5096772_right_encoded : String := "1151E8FF08A912F712073D0008A912FB00000005120700FA08A912FD00000005120700FC050000F8135D80F900000001050000FE135D80FF000000040CFD9BF70F350D00045489FB00000005138670FA0000000500000002000000000F34D1000000000000000008135D44FF0CFD9BF7000000050F34D100000000000000000800000004135D44F9050000FE135D80FF000000040CFD9BF7000000050000000A135D44FF0CFD9BF7000000050000000A0000000400000001000000030000000200000000120701000000000008A912FB12073CFA0000000208A912FD00000005120700FC050000F8135D80F900000001050000FE135D80FF00000004045489F71386AD000CFD9BFB000000050F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD00000005138670FC0C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002000000030F34D0FA0000000A00000002135D44FF045489F70000000513867100000000000CFD9BFB000000050F34D0FA000000060000000200000004135D44F9050000FE135D80FF00000004045489F7000000050000000A135D44FF045489F70000000513867100000000000CFD9BFB000000050000000A000000040000000100000003120700FA08A912FD00000006120700FC050000F8135D80F900000001000000060000000A000000030000000200000004"
theorem small_5096772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096772_right_root small_5096772_right_fuel small_5096772_right_count small_5096772_right_encoded = true := by
  decide +kernel
theorem small_5096772_right_covered : CoveredBy scale carrier boxes small_5096772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096772_right_root small_5096772_right_fuel small_5096772_right_count small_5096772_right_encoded small_5096772_right_checked

theorem cover_5096772 : CoveredBy scale carrier boxes root_5096772 := by
  apply coveredBy_split_literal root_5096772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5096773 small_5096772_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5096773
  · exact small_5096772_right_covered
#print axioms cover_5096772

def root_5096766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096766_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096766_left_fuel : Nat := 1
def small_5096766_left_count : Nat := 1
def small_5096766_left_encoded : String := "00000003"
theorem small_5096766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096766_left_root small_5096766_left_fuel small_5096766_left_count small_5096766_left_encoded = true := by
  decide +kernel
theorem small_5096766_left_covered : CoveredBy scale carrier boxes small_5096766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096766_left_root small_5096766_left_fuel small_5096766_left_count small_5096766_left_encoded small_5096766_left_checked

theorem cover_5096766 : CoveredBy scale carrier boxes root_5096766 := by
  apply coveredBy_split_literal root_5096766 small_5096766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5096772 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5096766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5096772
#print axioms cover_5096766

def root_5096765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096765_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096765_right_fuel : Nat := 17
def small_5096765_right_count : Nat := 47
def small_5096765_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB000000050000000800000000120701000000000008A912FB12073CFA0000000208A912FF00000005120700FE050000F8135D80F900000001050000FC135D80FD00000003045489F700000008138671000000000000000008135D44FD045489F70000000513867100000000000CFD9BFB0000000500000008000000030000000800000004120700FA00000008000000021151E8FF000000050000000400000003"
theorem small_5096765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096765_right_root small_5096765_right_fuel small_5096765_right_count small_5096765_right_encoded = true := by
  decide +kernel
theorem small_5096765_right_covered : CoveredBy scale carrier boxes small_5096765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096765_right_root small_5096765_right_fuel small_5096765_right_count small_5096765_right_encoded small_5096765_right_checked

theorem cover_5096765 : CoveredBy scale carrier boxes root_5096765 := by
  apply coveredBy_split_literal root_5096765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5096766 small_5096765_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5096766
  · exact small_5096765_right_covered
#print axioms cover_5096765

def root_5096759 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096759_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096759_left_fuel : Nat := 1
def small_5096759_left_count : Nat := 1
def small_5096759_left_encoded : String := "00000002"
theorem small_5096759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096759_left_root small_5096759_left_fuel small_5096759_left_count small_5096759_left_encoded = true := by
  decide +kernel
theorem small_5096759_left_covered : CoveredBy scale carrier boxes small_5096759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096759_left_root small_5096759_left_fuel small_5096759_left_count small_5096759_left_encoded small_5096759_left_checked

theorem cover_5096759 : CoveredBy scale carrier boxes root_5096759 := by
  apply coveredBy_split_literal root_5096759 small_5096759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5096765 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5096759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5096765
#print axioms cover_5096759

def root_5102804 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102804_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102804_right_fuel : Nat := 18
def small_5102804_right_count : Nat := 75
def small_5102804_right_encoded : String := "135D44FB045489F71386AD00045489FD1386ACFC00000003045489FF000000050000000A138670FC045489FF1386ACFE00000004078000F800000006000000060000000600000003000000001386710000000000045489FD1386ACFC00000003045489FF1386ACFE00000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A457713E20100067ECE7D00000005000000060000000013E1C50000000000067ECE7D12EA94FC00000003067ECE7F000000050000000612EA58FC067ECE7F12EA94FE0000000400000006000000060000000313D7B0FB022A45770000000713E1C500000000000000000A00000002128A40F9028000FA00000006000000060000000100000006138670FC045489FF1386ACFE0000000400000006000000060000000300000002"
theorem small_5102804_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102804_right_root small_5102804_right_fuel small_5102804_right_count small_5102804_right_encoded = true := by
  decide +kernel
theorem small_5102804_right_covered : CoveredBy scale carrier boxes small_5102804_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102804_right_root small_5102804_right_fuel small_5102804_right_count small_5102804_right_encoded small_5102804_right_checked

theorem cover_5102804 : CoveredBy scale carrier boxes root_5102804 := by
  apply coveredBy_split_literal root_5102804 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1907.root small_5102804_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1907.covered
  · exact small_5102804_right_covered
#print axioms cover_5102804

def root_5102798 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102798_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102798_left_fuel : Nat := 1
def small_5102798_left_count : Nat := 1
def small_5102798_left_encoded : String := "00000001"
theorem small_5102798_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102798_left_root small_5102798_left_fuel small_5102798_left_count small_5102798_left_encoded = true := by
  decide +kernel
theorem small_5102798_left_covered : CoveredBy scale carrier boxes small_5102798_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102798_left_root small_5102798_left_fuel small_5102798_left_count small_5102798_left_encoded small_5102798_left_checked

theorem cover_5102798 : CoveredBy scale carrier boxes root_5102798 := by
  apply coveredBy_split_literal root_5102798 small_5102798_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5102804 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5102798_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5102804
#print axioms cover_5102798

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126

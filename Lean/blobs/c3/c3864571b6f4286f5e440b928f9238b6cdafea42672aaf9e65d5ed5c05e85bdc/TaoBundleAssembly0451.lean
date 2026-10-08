import TaoBundleChunkBatch0616
import TaoBundleChunkBatch0617
import TaoBundleChunkBatch0618
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451
def root_6546614 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546614_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546614_left_fuel : Nat := 21
def small_6546614_left_count : Nat := 401
def small_6546614_left_encoded : String := "115225050A0000FC115224FD000000030A0000FE1152250908A912F712073D0008A912F912073D0208A91305120700FA08A912FD12073CFC0000000308A91309120700FE0CFD9BF70F350D000000000A000000000F34D10000000000000000080000000400000005000000050000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE0000000500000004000000050000000500000001120701020000000108A91305120700FA00000005000000020000000500000000120701000000000008A912F912073D0208A91305120700FA0000000500000002000000050000000100000005000000041151E9090000000408A912F712073D0008A912F912073D0208A91305120700FA000000050000000200000005000000010000000500000000120701000000000008A912F912073D020000000500000001120701020000000108A91305120700FA000000050000000212073CFA0000000208A912FD12073CFC00000003050000FE00000005135D45090000000400000007120700FC00000007000000031151E8FD0A0000FE1152250908A912F712073D0008A912F912073D0208A91305120700FA08A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000000000A0000000000000008135D44FD0CFD9BF70F350D000000000A0000000000000008000000030000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020000000500000001000000050000000000000005135D44FD0CFD9BF70F350D000CFD9BF90F350D0204548A0500000009000000050000000100000005000000000F34D100000000000CFD9BF90F350D02000000050000000100000005000000030000000212073CFA0000000208A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020000000500000001000000050000000000000005135D44FD0CFD9BF70F350D000CFD9BF90F350D020CFD9C0500000008000000050000000100000005000000000F34D1000000000000000008000000030000000412073CFE00000004050000FC00000005135D44FD0CFD9BF70F350D000CFD9BF90F350D0200000005000000010000000500000000000000050000000300000001120701020000000108A91305120700FA0000000A0000000212073CFA0000000208A91309120700FE00000005000000040000000500000000120701000000000008A912F912073D0208A91305120700FA08A91309120700FE0000000800000004000000050000000212073CFA0000000208A91309120700FE00000005000000040000000500000001120701020000000108A91305120700FA08A913090000000A000000050000000212073CFA0000000208A91309120700FE000000050000000400000005000000041151E9090000000408A912F712073D0008A912F912073D0208A91305120700FA050000FC135D80FD00000003050000FE00000005135D45090000000400000005135D44FD050000FE135D81090CFD9BF70F350D0000000005000000000000000500000004135D4509000000040CFD9BF70000000A00000007000000030000000212073CFA00000002050000FC135D80FD00000003050000FE00000005135D45090000000400000005135D44FD050000FE135D81090CFD9BF70F350D0000000005000000000000000500000004135D4509000000040CFD9BF70F350D000CFD9BF90000000900000005000000000F34D100000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050000000A000000050000000300000001120701020000000108A91305120700FA0000000A0000000212073CFA00000002050000FC00000005135D44FD050000FE000000050000000A0000000300000000120701000000000008A912F912073D0208A91305120700FA000000070000000212073CFA00000002050000FC00000005135D44FD050000FE00000005135D450900000004045489F71386AD000CFD9BF90F350D0200000005000000010F34D102000000010000000700000000000000070000000300000001120701020000000108A913050000000712073CFA00000002050000FC135D80FD00000003050000FE00000005135D45090000000400000007135D44FD050000FE00000005135D450900000004045489F70000000A00000007000000030000000300000002"
theorem small_6546614_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546614_left_root small_6546614_left_fuel small_6546614_left_count small_6546614_left_encoded = true := by
  decide +kernel
theorem small_6546614_left_covered : CoveredBy scale carrier boxes small_6546614_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546614_left_root small_6546614_left_fuel small_6546614_left_count small_6546614_left_encoded small_6546614_left_checked

theorem cover_6546614 : CoveredBy scale carrier boxes root_6546614 := by
  apply coveredBy_split_literal root_6546614 small_6546614_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2465.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6546614_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2465.covered
#print axioms cover_6546614

def root_6546608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546608_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546608_left_fuel : Nat := 1
def small_6546608_left_count : Nat := 1
def small_6546608_left_encoded : String := "00000001"
theorem small_6546608_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546608_left_root small_6546608_left_fuel small_6546608_left_count small_6546608_left_encoded = true := by
  decide +kernel
theorem small_6546608_left_covered : CoveredBy scale carrier boxes small_6546608_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546608_left_root small_6546608_left_fuel small_6546608_left_count small_6546608_left_encoded small_6546608_left_checked

theorem cover_6546608 : CoveredBy scale carrier boxes root_6546608 := by
  apply coveredBy_split_literal root_6546608 small_6546608_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6546614 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6546608_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6546614
#print axioms cover_6546608

def root_6546178 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546178_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546178_left_fuel : Nat := 21
def small_6546178_left_count : Nat := 201
def small_6546178_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A912F712073D0008A91305120700FA08A912FD12073CFC0000000308A91309120700FE000000080000000412073CFE000000040500010200000008135D80F9000000010CFD9BF70F350D0004548A0500000008000000050000000000000005000000080000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE0500010200000008135D80F9000000010CFD9BF7000000080000000500000004000000050000000500000000120701000000000008A91305120700FA000000080000000200000005000000041151E90900000004000000051151E8FD0A0000FE1152250908A912F712073D0008A91305120700FA08A91309120700FE000000080000000412073CFE000000040500010200000008135D80F900000001050000FC135D80FD000000030CFD9BF70F350D00000000090000000000000005135D44FD0CFD9BF70000000900000005000000030000000212073CFA0000000208A91309120700FE00000008000000040000000500000000120701000000000008A913050000000812073CFA0000000200000008000000041151E9090000000408A912F712073D0008A91305120700FA0500010200000005135D80F900000001050000FC00000005135D44FD050000FE0000000500000006000000030000000212073CFA000000020500010200000005135D80F9000000010000000500000000120701000000000008A91305120700FA00000005000000020000000500000003000000021151E905000000020A0000FC115224FD000000030A0000FE000000051151E90900000004000000051151E8FD0A0000FE1152250908A912F712073D0008A91309120700FE000000080000000412073CFE000000040500010200000005135D80F9000000010000000500000000120701000000000000000008000000041151E9090000000408A912F712073D000500010200000005135D80F900000001050000FA00000005135D450500000002000000090000000012070100000000000500010200000005135D80F900000001050000FA00000005000000080000000300000001"
theorem small_6546178_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546178_left_root small_6546178_left_fuel small_6546178_left_count small_6546178_left_encoded = true := by
  decide +kernel
theorem small_6546178_left_covered : CoveredBy scale carrier boxes small_6546178_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546178_left_root small_6546178_left_fuel small_6546178_left_count small_6546178_left_encoded small_6546178_left_checked

theorem cover_6546178 : CoveredBy scale carrier boxes root_6546178 := by
  apply coveredBy_split_literal root_6546178 small_6546178_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6546608 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6546178_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6546608
#print axioms cover_6546178

def root_6546172 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546172_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546172_left_fuel : Nat := 1
def small_6546172_left_count : Nat := 1
def small_6546172_left_encoded : String := "00000000"
theorem small_6546172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546172_left_root small_6546172_left_fuel small_6546172_left_count small_6546172_left_encoded = true := by
  decide +kernel
theorem small_6546172_left_covered : CoveredBy scale carrier boxes small_6546172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546172_left_root small_6546172_left_fuel small_6546172_left_count small_6546172_left_encoded small_6546172_left_checked

theorem cover_6546172 : CoveredBy scale carrier boxes root_6546172 := by
  apply coveredBy_split_literal root_6546172 small_6546172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6546178 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6546172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6546178
#print axioms cover_6546172

def root_6545394 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6545394_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6545394_left_fuel : Nat := 23
def small_6545394_left_count : Nat := 361
def small_6545394_left_encoded : String := "1151E8F70A0001021151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A91305120700FA08A912FD12073CFC0000000308A91309120700FE050001000000000A000000080000000412073CFE0000000405000100135D44F70000000900000000135D80F70000000005000102135D44F90000000800000001135D80F90000000104548A05138670FA000000090000000200000009120700FC08A91309120700FE000000090000000412073CFE0000000405000100135D44F7000000090000000000000008000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE05000100135D44F70000000900000000135D80F70000000005000102135D44F90000000900000001135D80F9000000010CFD9C0500000008000000090000000412073CFE000000040500010000000009135D80F70000000000000005120700FC08A91309120700FE050001000000000A135D80F7000000000500010200000009000000050000000412073CFE000000040000000500000003000000041151E9090000000408A91305120700FA08A912FD12073CFC00000003000000050000000500000002000000051151E8FD0A0000FE1152250908A91305120700FA08A91309120700FE0000000900000004000000090000000212073CFA0000000208A91309120700FE000000090000000400000009000000041151E909000000040000000900000003000000021151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC000000030000000500000005000000041151E90900000004000000051151E8FD0A0000FE000000091151E90900000004000000050000000300000001115224F9000000010A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A91305120700FA08A912FD12073CFC0000000308A913090000000A12073CFE00000004050001000000000A135D80F7000000000CFD9BF90000000A00000005120700FC08A913090000000A00000005000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE050001000000000A135D80F7000000000CFD9BF90F350D020CFD9C050000000A00000005000000010000000500000004000000050000000500000001120701020000000108A91305120700FA08A912FD0000000A000000050000000200000005000000041151E90900000004000000051151E8FD0A0000FE1152250908A912F912073D0208A91305120700FA08A913090000000A12073CFE000000040000000A0000000212073CFA0000000208A91309120700FE050001000000000A135D80F700000000050000FC135D80FD000000030CFD9BF90F350D02000000090000000100000005135D44FD0CFD9BF9000000090000000500000003000000040000000500000001120701020000000108A913050000000A0000000A000000041151E9090000000408A912F912073D0208A91305120700FA0000000A0000000212073CFA000000020500010000000005135D80F700000000000000050000000112070102000000010000000A00000003000000021151E905000000020A0000FC115224FD000000030A0000FE000000051151E90900000004000000051151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE0500010000000005135D80F700000000050000FA00000005135D450500000002000000050000000412073CFE000000040500010000000005135D80F7000000000000000500000001120701020000000108A91309120700FE000000050000000400000005000000041151E9090000000408A912F912073D020500010000000005135D80F700000000050000FA00000005135D450500000002000000090000000112070102000000010500010000000005135D80F700000000050000FA00000005135D4505000000020000000A0000000300000000"
theorem small_6545394_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6545394_left_root small_6545394_left_fuel small_6545394_left_count small_6545394_left_encoded = true := by
  decide +kernel
theorem small_6545394_left_covered : CoveredBy scale carrier boxes small_6545394_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6545394_left_root small_6545394_left_fuel small_6545394_left_count small_6545394_left_encoded small_6545394_left_checked

theorem cover_6545394 : CoveredBy scale carrier boxes root_6545394 := by
  apply coveredBy_split_literal root_6545394 small_6545394_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6546172 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6545394_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6546172
#print axioms cover_6545394

def root_6542726 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6542726 : CoveredBy scale carrier boxes root_6542726 := by
  apply coveredBy_split_literal root_6542726 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2464.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6545394 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2464.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6545394
#print axioms cover_6542726

def root_6550462 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6550462 : CoveredBy scale carrier boxes root_6550462 := by
  apply coveredBy_split_literal root_6550462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2466.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2467.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2466.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2467.covered
#print axioms cover_6550462

def root_6550457 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6550457_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6550457_right_fuel : Nat := 1
def small_6550457_right_count : Nat := 1
def small_6550457_right_encoded : String := "00000000"
theorem small_6550457_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6550457_right_root small_6550457_right_fuel small_6550457_right_count small_6550457_right_encoded = true := by
  decide +kernel
theorem small_6550457_right_covered : CoveredBy scale carrier boxes small_6550457_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6550457_right_root small_6550457_right_fuel small_6550457_right_count small_6550457_right_encoded small_6550457_right_checked

theorem cover_6550457 : CoveredBy scale carrier boxes root_6550457 := by
  apply coveredBy_split_literal root_6550457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6550462 small_6550457_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6550462
  · exact small_6550457_right_covered
#print axioms cover_6550457

def root_6554808 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554808_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554808_right_fuel : Nat := 15
def small_6554808_right_count : Nat := 71
def small_6554808_right_encoded : String := "1151E8FD0A0001081151E8FF08A912F712073D0008A912F912073D020000000A00000001120701020000000108A913050000000A0000000600000000120701000000000008A912F912073D0208A913050000000A00000006000000010000000600000004115224FF0000000408A912F712073D0008A912F912073D0208A91305120700FA0000000A000000020000000A00000001120701020000000108A91305120700FA08A912FF12073D08050000FC135D80FD000000030CFD9BF70000000A0000000A135D44FD0000000A00000003000000040000000A0000000212073CFA0000000208A912FF12073D080000000A000000040000000A00000000120701000000000008A912F90000000A12070102000000010000000A00000003"
theorem small_6554808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554808_right_root small_6554808_right_fuel small_6554808_right_count small_6554808_right_encoded = true := by
  decide +kernel
theorem small_6554808_right_covered : CoveredBy scale carrier boxes small_6554808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554808_right_root small_6554808_right_fuel small_6554808_right_count small_6554808_right_encoded small_6554808_right_checked

theorem cover_6554808 : CoveredBy scale carrier boxes root_6554808 := by
  apply coveredBy_split_literal root_6554808 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2469.root small_6554808_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2469.covered
  · exact small_6554808_right_covered
#print axioms cover_6554808

def root_6554803 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554803_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554803_right_fuel : Nat := 1
def small_6554803_right_count : Nat := 1
def small_6554803_right_encoded : String := "00000002"
theorem small_6554803_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554803_right_root small_6554803_right_fuel small_6554803_right_count small_6554803_right_encoded = true := by
  decide +kernel
theorem small_6554803_right_covered : CoveredBy scale carrier boxes small_6554803_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554803_right_root small_6554803_right_fuel small_6554803_right_count small_6554803_right_encoded small_6554803_right_checked

theorem cover_6554803 : CoveredBy scale carrier boxes root_6554803 := by
  apply coveredBy_split_literal root_6554803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6554808 small_6554803_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6554808
  · exact small_6554803_right_covered
#print axioms cover_6554803

def root_6554802 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554802_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554802_right_fuel : Nat := 15
def small_6554802_right_count : Nat := 99
def small_6554802_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A912F712073D0008A912F90000000A12070102000000010000000A00000000120701000000000008A912F912073D020000000A000000010000000600000004115224FF0000000408A912F712073D0008A912F912073D0208A912FD12073CFC0000000308A912FF0000000A1207010800000004050000FA0000000A00000009120700FC08A912FF0000000A1207010800000004000000080000000300000001120701020000000108A912FD0000000A120700FC0000000A0000000300000000120701000000000008A912F912073D0208A912FD12073CFC000000030000000A0000000A000000010000000A1151E8FD0A0001081151E8FF08A912F712073D0008A912F912073D02050000FA0000000A0000000700000001000000060000000012070100000000000000000600000004115224FF0000000408A912F70000000A120701000000000008A912F912073D0208A912FF00000009120701080000000400000009000000010000000900000003"
theorem small_6554802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554802_right_root small_6554802_right_fuel small_6554802_right_count small_6554802_right_encoded = true := by
  decide +kernel
theorem small_6554802_right_covered : CoveredBy scale carrier boxes small_6554802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554802_right_root small_6554802_right_fuel small_6554802_right_count small_6554802_right_encoded small_6554802_right_checked

theorem cover_6554802 : CoveredBy scale carrier boxes root_6554802 := by
  apply coveredBy_split_literal root_6554802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6554803 small_6554802_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6554803
  · exact small_6554802_right_covered
#print axioms cover_6554802

def root_6554796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554796_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554796_left_fuel : Nat := 1
def small_6554796_left_count : Nat := 1
def small_6554796_left_encoded : String := "00000001"
theorem small_6554796_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554796_left_root small_6554796_left_fuel small_6554796_left_count small_6554796_left_encoded = true := by
  decide +kernel
theorem small_6554796_left_covered : CoveredBy scale carrier boxes small_6554796_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554796_left_root small_6554796_left_fuel small_6554796_left_count small_6554796_left_encoded small_6554796_left_checked

theorem cover_6554796 : CoveredBy scale carrier boxes root_6554796 := by
  apply coveredBy_split_literal root_6554796 small_6554796_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6554802 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6554796_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6554802
#print axioms cover_6554796

def root_6553676 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6553676 : CoveredBy scale carrier boxes root_6553676 := by
  apply coveredBy_split_literal root_6553676 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2468.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6554796 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2468.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6554796
#print axioms cover_6553676

def root_6553670 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6553670_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6553670_left_fuel : Nat := 1
def small_6553670_left_count : Nat := 1
def small_6553670_left_encoded : String := "00000000"
theorem small_6553670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6553670_left_root small_6553670_left_fuel small_6553670_left_count small_6553670_left_encoded = true := by
  decide +kernel
theorem small_6553670_left_covered : CoveredBy scale carrier boxes small_6553670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6553670_left_root small_6553670_left_fuel small_6553670_left_count small_6553670_left_encoded small_6553670_left_checked

theorem cover_6553670 : CoveredBy scale carrier boxes root_6553670 := by
  apply coveredBy_split_literal root_6553670 small_6553670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6553676 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6553670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6553676
#print axioms cover_6553670

def root_6550456 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6550456 : CoveredBy scale carrier boxes root_6550456 := by
  apply coveredBy_split_literal root_6550456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6550457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6553670 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6550457
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6553670
#print axioms cover_6550456

def root_6561005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6561005 : CoveredBy scale carrier boxes root_6561005 := by
  apply coveredBy_split_literal root_6561005 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2471.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2472.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2471.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2472.covered
#print axioms cover_6561005

def root_6561000 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6561000_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6561000_right_fuel : Nat := 1
def small_6561000_right_count : Nat := 1
def small_6561000_right_encoded : String := "00000001"
theorem small_6561000_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6561000_right_root small_6561000_right_fuel small_6561000_right_count small_6561000_right_encoded = true := by
  decide +kernel
theorem small_6561000_right_covered : CoveredBy scale carrier boxes small_6561000_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6561000_right_root small_6561000_right_fuel small_6561000_right_count small_6561000_right_encoded small_6561000_right_checked

theorem cover_6561000 : CoveredBy scale carrier boxes root_6561000 := by
  apply coveredBy_split_literal root_6561000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.root_6561005 small_6561000_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451.cover_6561005
  · exact small_6561000_right_covered
#print axioms cover_6561000

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0451

import TaoBundleAssembly0334
import TaoBundleAssembly0337
import TaoBundleChunkBatch0440
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338
def root_4693079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4693079_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4693079_left_fuel : Nat := 24
def small_4693079_left_count : Nat := 355
def small_4693079_left_encoded : String := "120700F608A91303120701020000000108A91305120700FA08A912FD12073D0608A91309120701080000000404548A01000000051386ACF60000000004548A03000000051386AD02000000050000000112073D0804548A01138670F604548A03000000050000000600000000000000070000000400000003120701060000000308A913090000000A12073D0804548A01138670F604548A03138671020000000104548A05138670FA045489FD000000050000000A000000020000000600000006000000001386ACF60000000004548A03138671020000000104548A05138670FA045489FD000000070000000A000000021386ACFA00000002045489FD00000006000000061386AD0204548A05138670FA045489FD000000060000000A000000020000000600000001000000040000000212073CFA0000000208A912FD12073D0608A91309120701080000000404548A01000000061386ACF60000000004548A0313867102000000010CFD9C0500000006000000061386AD020CFD9C050000000600000006000000010000000600000003120701060000000308A91309120701080000000404548A01000000060000000A12073D08000000060000000412073D0208A91305120700FA08A912FD12073D0608A91309120701080000000404548A01138670F60CFD9C03000000050F350D020000000500000001000000001386ACF6000000000CFD9C030F34D1020000000104548A05000000051386ACFA000000020CFD9BFD000000050000000A0F350D0204548A05000000051386ACFA000000020CFD9BFD000000050000000A0000000112073D0804548A01138670F60CFD9C030F34D10200000001000000060F350D0204548A05000000050000000600000001000000001386ACF6000000000CFD9C030F34D10200000001000000060F350D0204548A05138670FA0CFD9BFD0000000500000006000000021386ACFA000000020CFD9BFD0F350D060CFD9C0900000005000000060000000300000006000000010000000400000003120701060000000308A9130912070108000000040000000A12073D0804548A01138670F60CFD9C030F34D102000000010000000600000006000000001386ACF6000000000CFD9C030F34D10200000001000000060F350D020000000600000001000000040000000212073CFA0000000208A912FD12073D0608A91309120701080000000404548A01138670F60CFD9C030F34D102000000010CFD9C0500000006000000060F350D020CFD9C050F34D0FA0CFD9BFD0F350D06000000050000000300000006000000020F350CFA000000020CFD9BFD0F350D0600000006000000030000000600000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9BFD0F350D0604548A0900000005000000060000000300000006000000020F350CFA000000020CFD9BFD0F350D060000000600000003000000060F350D020CFD9C050F34D0FA0CFD9BFD0F350D0604548A09000000051386AD080C9A8702000000050000000600000004000000030F34D106000000030000000A000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040C9A87020F875103000000010C9A86FA0000000A0F87510500000002000000060F878D03000000060000000100000006000000030F34D1060000000304548A090000000A000000060000000112073D0804548A01138670F60CFD9C030000000600000006000000001386ACF6000000000CFD9C030F34D10200000001000000060F350D020CFD9C050F34D0FA0CFD9BFD0F350D06000000060000000300000006000000020F350CFA0000000200000006000000010000000400000003120701060000000308A91309120701080000000404548A01000000061386ACF6000000000CFD9C030F34D10200000001000000060000000A000000060000000100000000"
theorem small_4693079_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4693079_left_root small_4693079_left_fuel small_4693079_left_count small_4693079_left_encoded = true := by
  decide +kernel
theorem small_4693079_left_covered : CoveredBy scale carrier boxes small_4693079_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4693079_left_root small_4693079_left_fuel small_4693079_left_count small_4693079_left_encoded small_4693079_left_checked

theorem cover_4693079 : CoveredBy scale carrier boxes root_4693079 := by
  apply coveredBy_split_literal root_4693079 small_4693079_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0337.root_4693827 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4693079_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0337.cover_4693827
#print axioms cover_4693079

def root_4693074 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4693074_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4693074_right_fuel : Nat := 1
def small_4693074_right_count : Nat := 1
def small_4693074_right_encoded : String := "00000004"
theorem small_4693074_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4693074_right_root small_4693074_right_fuel small_4693074_right_count small_4693074_right_encoded = true := by
  decide +kernel
theorem small_4693074_right_covered : CoveredBy scale carrier boxes small_4693074_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4693074_right_root small_4693074_right_fuel small_4693074_right_count small_4693074_right_encoded small_4693074_right_checked

theorem cover_4693074 : CoveredBy scale carrier boxes root_4693074 := by
  apply coveredBy_split_literal root_4693074 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4693079 small_4693074_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4693079
  · exact small_4693074_right_covered
#print axioms cover_4693074

def root_4692910 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4692910_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4692910_left_fuel : Nat := 18
def small_4692910_left_count : Nat := 75
def small_4692910_left_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A91305120700FA08A912FD0000000600000006000000020000000612073D0208A913050000000600000006000000010000000012073CF60000000008A91303120701020000000108A91305120700FA000000070000000212073CFA000000020000000612073D0208A91305120700FA08A912FD000000071207010600000003000000060000000212073CFA0000000208A912FD12073D0605000108135D4509000000040CFD9C010000000600000007135D81090CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C030F34D10200000001000000060F350D020CFD9C050F34D0FA00000007000000020F350CFA00000002000000060000000100000004000000030000000600000001"
theorem small_4692910_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4692910_left_root small_4692910_left_fuel small_4692910_left_count small_4692910_left_encoded = true := by
  decide +kernel
theorem small_4692910_left_covered : CoveredBy scale carrier boxes small_4692910_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4692910_left_root small_4692910_left_fuel small_4692910_left_count small_4692910_left_encoded small_4692910_left_checked

theorem cover_4692910 : CoveredBy scale carrier boxes root_4692910 := by
  apply coveredBy_split_literal root_4692910 small_4692910_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4693074 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4692910_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4693074
#print axioms cover_4692910

def root_4692904 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4692904_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4692904_left_fuel : Nat := 1
def small_4692904_left_count : Nat := 1
def small_4692904_left_encoded : String := "00000003"
theorem small_4692904_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4692904_left_root small_4692904_left_fuel small_4692904_left_count small_4692904_left_encoded = true := by
  decide +kernel
theorem small_4692904_left_covered : CoveredBy scale carrier boxes small_4692904_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4692904_left_root small_4692904_left_fuel small_4692904_left_count small_4692904_left_encoded small_4692904_left_checked

theorem cover_4692904 : CoveredBy scale carrier boxes root_4692904 := by
  apply coveredBy_split_literal root_4692904 small_4692904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4692910 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4692904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4692910
#print axioms cover_4692904

def root_4676000 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4676000 : CoveredBy scale carrier boxes root_4676000 := by
  apply coveredBy_split_literal root_4676000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0337.root_4676001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4692904 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0337.cover_4676001
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4692904
#print axioms cover_4676000

def root_4675995 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4675995_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4675995_right_fuel : Nat := 1
def small_4675995_right_count : Nat := 1
def small_4675995_right_encoded : String := "00000002"
theorem small_4675995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4675995_right_root small_4675995_right_fuel small_4675995_right_count small_4675995_right_encoded = true := by
  decide +kernel
theorem small_4675995_right_covered : CoveredBy scale carrier boxes small_4675995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4675995_right_root small_4675995_right_fuel small_4675995_right_count small_4675995_right_encoded small_4675995_right_checked

theorem cover_4675995 : CoveredBy scale carrier boxes root_4675995 := by
  apply coveredBy_split_literal root_4675995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4676000 small_4675995_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4676000
  · exact small_4675995_right_covered
#print axioms cover_4675995

def root_4700419 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700419_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700419_right_fuel : Nat := 12
def small_4700419_right_count : Nat := 59
def small_4700419_right_encoded : String := "135D45050000000205000106135D44FD0CFD9C010F34D0F60CFD9C03000000060F350D020000000900000001000000000F350CF6000000000CFD9C030F34D1020000000104548A09138671080000000400000006000000060F350D0204548A09138671080000000400000009000000090000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030000000600000006000000000F350CF6000000000CFD9C030F34D1020000000104548A09138671080000000400000006000000060F350D0204548A0913867108000000040C9A86F6000000090F87510100000000000000090000000900000001"
theorem small_4700419_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700419_right_root small_4700419_right_fuel small_4700419_right_count small_4700419_right_encoded = true := by
  decide +kernel
theorem small_4700419_right_covered : CoveredBy scale carrier boxes small_4700419_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700419_right_root small_4700419_right_fuel small_4700419_right_count small_4700419_right_encoded small_4700419_right_checked

theorem cover_4700419 : CoveredBy scale carrier boxes root_4700419 := by
  apply coveredBy_split_literal root_4700419 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1757.root small_4700419_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1757.covered
  · exact small_4700419_right_covered
#print axioms cover_4700419

def root_4700413 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700413_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700413_left_fuel : Nat := 1
def small_4700413_left_count : Nat := 1
def small_4700413_left_encoded : String := "00000004"
theorem small_4700413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700413_left_root small_4700413_left_fuel small_4700413_left_count small_4700413_left_encoded = true := by
  decide +kernel
theorem small_4700413_left_covered : CoveredBy scale carrier boxes small_4700413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700413_left_root small_4700413_left_fuel small_4700413_left_count small_4700413_left_encoded small_4700413_left_checked

theorem cover_4700413 : CoveredBy scale carrier boxes root_4700413 := by
  apply coveredBy_split_literal root_4700413 small_4700413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700419 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4700413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700419
#print axioms cover_4700413

def root_4700412 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700412_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700412_right_fuel : Nat := 16
def small_4700412_right_count : Nat := 91
def small_4700412_right_encoded : String := "12073D08050000FA135D810505000106135D44FD0CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C030F34D10200000001000000060F350D020CFD9C090F34D108000000040C9A86F60F878D0100000006000000000000000A0000000A0000000100000003135D80FD000000030CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C030F34D10200000001000000060F350D020CFD9C090F34D108000000040C9A86F60F878D0100000006000000000F875101000000000C9A87020F87510300000001000000090F878D0300000006000000010F350D0800000006000000040000000100000002135D45050000000205000106135D44FD0CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C03000000060000000A00000003135D80FD000000030CFD9C01000000060F350CF6000000000CFD9C03000000060F350D020CFD9C090F34D1080000000400000006000000060000000100000004"
theorem small_4700412_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700412_right_root small_4700412_right_fuel small_4700412_right_count small_4700412_right_encoded = true := by
  decide +kernel
theorem small_4700412_right_covered : CoveredBy scale carrier boxes small_4700412_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700412_right_root small_4700412_right_fuel small_4700412_right_count small_4700412_right_encoded small_4700412_right_checked

theorem cover_4700412 : CoveredBy scale carrier boxes root_4700412 := by
  apply coveredBy_split_literal root_4700412 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700413 small_4700412_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700413
  · exact small_4700412_right_covered
#print axioms cover_4700412

def root_4700407 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700407_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700407_right_fuel : Nat := 1
def small_4700407_right_count : Nat := 1
def small_4700407_right_encoded : String := "00000001"
theorem small_4700407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700407_right_root small_4700407_right_fuel small_4700407_right_count small_4700407_right_encoded = true := by
  decide +kernel
theorem small_4700407_right_covered : CoveredBy scale carrier boxes small_4700407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700407_right_root small_4700407_right_fuel small_4700407_right_count small_4700407_right_encoded small_4700407_right_checked

theorem cover_4700407 : CoveredBy scale carrier boxes root_4700407 := by
  apply coveredBy_split_literal root_4700407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700412 small_4700407_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700412
  · exact small_4700407_right_covered
#print axioms cover_4700407

def root_4700283 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700283_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700283_left_fuel : Nat := 18
def small_4700283_left_count : Nat := 59
def small_4700283_left_encoded : String := "120701020000000108A913091207010800000004050000FA135D810505000106135D44FD0CFD9C01000000060F350CF60000000004548A03000000061386AD0204548A0913867108000000040C9A86F6000000060F87510100000000078000FA0000000800000006000000060000000100000003135D80FD000000030CFD9C01000000060F350CF60000000004548A031386710200000001000000061386AD0204548A0913867108000000040C9A86F6000000060F87510100000000078000FA128A7D05000000060000000200000006000000060000000100000002135D4505000000020000000600000006"
theorem small_4700283_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700283_left_root small_4700283_left_fuel small_4700283_left_count small_4700283_left_encoded = true := by
  decide +kernel
theorem small_4700283_left_covered : CoveredBy scale carrier boxes small_4700283_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700283_left_root small_4700283_left_fuel small_4700283_left_count small_4700283_left_encoded small_4700283_left_checked

theorem cover_4700283 : CoveredBy scale carrier boxes root_4700283 := by
  apply coveredBy_split_literal root_4700283 small_4700283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700407 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4700283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700407
#print axioms cover_4700283

def root_4700277 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700277_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700277_left_fuel : Nat := 1
def small_4700277_left_count : Nat := 1
def small_4700277_left_encoded : String := "00000000"
theorem small_4700277_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700277_left_root small_4700277_left_fuel small_4700277_left_count small_4700277_left_encoded = true := by
  decide +kernel
theorem small_4700277_left_covered : CoveredBy scale carrier boxes small_4700277_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700277_left_root small_4700277_left_fuel small_4700277_left_count small_4700277_left_encoded small_4700277_left_checked

theorem cover_4700277 : CoveredBy scale carrier boxes root_4700277 := by
  apply coveredBy_split_literal root_4700277 small_4700277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700283 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4700277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700283
#print axioms cover_4700277

def root_4700197 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700197_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700197_left_fuel : Nat := 15
def small_4700197_left_count : Nat := 39
def small_4700197_left_encoded : String := "120700F608A9130312070102000000010000000612073D0208A913091207010800000004050000FA135D810505000106135D44FD04548A01000000061386ACF6000000000CFD9C03000000060F350D0204548A0900000005000000060000000100000003135D80FD0000000304548A01000000061386ACF6000000000CFD9C0300000006000000060000000200000006000000060000000100000000"
theorem small_4700197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700197_left_root small_4700197_left_fuel small_4700197_left_count small_4700197_left_encoded = true := by
  decide +kernel
theorem small_4700197_left_covered : CoveredBy scale carrier boxes small_4700197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700197_left_root small_4700197_left_fuel small_4700197_left_count small_4700197_left_encoded small_4700197_left_checked

theorem cover_4700197 : CoveredBy scale carrier boxes root_4700197 := by
  apply coveredBy_split_literal root_4700197 small_4700197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700277 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4700197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700277
#print axioms cover_4700197

def root_4700192 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700192_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700192_right_fuel : Nat := 1
def small_4700192_right_count : Nat := 1
def small_4700192_right_encoded : String := "00000004"
theorem small_4700192_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700192_right_root small_4700192_right_fuel small_4700192_right_count small_4700192_right_encoded = true := by
  decide +kernel
theorem small_4700192_right_covered : CoveredBy scale carrier boxes small_4700192_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700192_right_root small_4700192_right_fuel small_4700192_right_count small_4700192_right_encoded small_4700192_right_checked

theorem cover_4700192 : CoveredBy scale carrier boxes root_4700192 := by
  apply coveredBy_split_literal root_4700192 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700197 small_4700192_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700197
  · exact small_4700192_right_covered
#print axioms cover_4700192

def root_4700128 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700128_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700128_left_fuel : Nat := 10
def small_4700128_left_count : Nat := 31
def small_4700128_left_encoded : String := "1151E9090000000408A91301120700F608A913030000000612073D02050000FA000000060000000A000000010000000012073CF60000000008A913030000000612073D02050000FA135D810505000106000000070000000600000002135D45050000000205000106135D44FD00000007000000030000000600000001"
theorem small_4700128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700128_left_root small_4700128_left_fuel small_4700128_left_count small_4700128_left_encoded = true := by
  decide +kernel
theorem small_4700128_left_covered : CoveredBy scale carrier boxes small_4700128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700128_left_root small_4700128_left_fuel small_4700128_left_count small_4700128_left_encoded small_4700128_left_checked

theorem cover_4700128 : CoveredBy scale carrier boxes root_4700128 := by
  apply coveredBy_split_literal root_4700128 small_4700128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700192 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4700128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700192
#print axioms cover_4700128

def root_4700123 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700123_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700123_right_fuel : Nat := 1
def small_4700123_right_count : Nat := 1
def small_4700123_right_encoded : String := "00000003"
theorem small_4700123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700123_right_root small_4700123_right_fuel small_4700123_right_count small_4700123_right_encoded = true := by
  decide +kernel
theorem small_4700123_right_covered : CoveredBy scale carrier boxes small_4700123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700123_right_root small_4700123_right_fuel small_4700123_right_count small_4700123_right_encoded small_4700123_right_checked

theorem cover_4700123 : CoveredBy scale carrier boxes root_4700123 := by
  apply coveredBy_split_literal root_4700123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700128 small_4700123_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700128
  · exact small_4700123_right_covered
#print axioms cover_4700123

def root_4700122 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700122_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700122_right_fuel : Nat := 33
def small_4700122_right_count : Nat := 395
def small_4700122_right_encoded : String := "115224FD000000030A0001081151E9090000000408A91301120700F6000000060000000012073CF60000000008A9130300000006000000061152250908A91301120700F608A9130312070102000000010000000612073D0208A912FD12073D0608A913091207010800000004050000FA135D810504548A01000000061386ACF6000000000CFD9C03000000060F350D020CFD9BFD0F350D06000000060000000300000006000000010000000200000006000000060000000300000006000000010000000012073CF60000000008A91303120701020000000108A912FD12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D0F600000006000000000F350CF60000000004548A0313867102000000010CFD9BFD0F350D060000000600000003000000061386AD020CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000060F87510100000000000000050000000600000003000000060000000100000002000000060000000600000003120701060000000308A91309000000060000000612073D0208A912FD12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D0F60CFD9C030F34D10200000001000000060F350D020CFD9BFD0F350D0604548A0913867108000000040C9A87020F875103000000010C9A87060F8750FD078000FA128A7D050AD3578100000006000000090000000200000006000000030F878CFD00000003000000060F878D03000000060000000100000006000000030F34D106000000030000000600000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A87060000000600000006000000000F875101000000000C9A87060F8750FD078000FA128A7D050AD3578310D10102000000010000000500000005000000020000000500000003000000051386AD080000000600000004000000030F34D10600000003000000050F350D020CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A87020F875103000000010C9A87060F8750FD078000FA128A7D05022A458900000007000000070000000200000007000000030F878CFD00000003000000070F878D030C9A87060F8750FD078000FA128A7D05022A458913E1C508000000040DE7C9F60000000A00000007000000060000000200000006000000030F878CFD00000003078000FA000000070000000500000001000000000F875101000000000C9A87020F875103000000010C9A870600000007000000050F878D030C9A87060F8750FD078000FA128A7D05022A458913E1C50800000004000000050000000500000002000000050000000300000005000000011386AD080C9A86F60F878D010C9A87020F875103000000010C9A87060F8750FD00000009000000030F878CFD00000003000000050F878D030000000600000001000000000F875101000000000C9A87020F87510300000001000000050000000500000004000000030F34D1060000000304548A09138671080000000400000005000000050000000100000002135D4505000000020CFD9C010F34D0F60CFD9C03000000060F350D020CFD9BFD0F350D0600000006000000030000000600000001000000000F350CF6000000000CFD9C030F34D10200000001000000050F350D020CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A8702000000070000000500000000000000050000000500000003000000050000000112073D08050000FA135D81050CFD9C010F34D0F60CFD9C030000000600000006000000000F350CF6000000000CFD9C030F34D10200000001000000060F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D0100000006000000000F875101000000000000000500000006000000030F34D10600000003000000050000000100000002135D4505000000020CFD9C01000000060F350CF6000000000CFD9C03000000060F350D020CFD9BFD0F350D06000000060000000300000005000000010000000400000003120701060000000308A913091207010800000004050000FA135D81050CFD9C010F34D0F600000006000000000F350CF600000000000000050000000200000005000000060000000100000004"
theorem small_4700122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700122_right_root small_4700122_right_fuel small_4700122_right_count small_4700122_right_encoded = true := by
  decide +kernel
theorem small_4700122_right_covered : CoveredBy scale carrier boxes small_4700122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700122_right_root small_4700122_right_fuel small_4700122_right_count small_4700122_right_encoded small_4700122_right_checked

theorem cover_4700122 : CoveredBy scale carrier boxes root_4700122 := by
  apply coveredBy_split_literal root_4700122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700123 small_4700122_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700123
  · exact small_4700122_right_covered
#print axioms cover_4700122

def root_4700116 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700116_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700116_left_fuel : Nat := 1
def small_4700116_left_count : Nat := 1
def small_4700116_left_encoded : String := "00000002"
theorem small_4700116_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700116_left_root small_4700116_left_fuel small_4700116_left_count small_4700116_left_encoded = true := by
  decide +kernel
theorem small_4700116_left_covered : CoveredBy scale carrier boxes small_4700116_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700116_left_root small_4700116_left_fuel small_4700116_left_count small_4700116_left_encoded small_4700116_left_checked

theorem cover_4700116 : CoveredBy scale carrier boxes root_4700116 := by
  apply coveredBy_split_literal root_4700116 small_4700116_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700122 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4700116_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700122
#print axioms cover_4700116

def root_4675994 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4675994 : CoveredBy scale carrier boxes root_4675994 := by
  apply coveredBy_split_literal root_4675994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4675995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4700116 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4675995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4700116
#print axioms cover_4675994

def root_4675989 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4675989_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4675989_right_fuel : Nat := 1
def small_4675989_right_count : Nat := 1
def small_4675989_right_encoded : String := "00000001"
theorem small_4675989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4675989_right_root small_4675989_right_fuel small_4675989_right_count small_4675989_right_encoded = true := by
  decide +kernel
theorem small_4675989_right_covered : CoveredBy scale carrier boxes small_4675989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4675989_right_root small_4675989_right_fuel small_4675989_right_count small_4675989_right_encoded small_4675989_right_checked

theorem cover_4675989 : CoveredBy scale carrier boxes root_4675989 := by
  apply coveredBy_split_literal root_4675989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4675994 small_4675989_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4675994
  · exact small_4675989_right_covered
#print axioms cover_4675989

def root_4666993 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4666993 : CoveredBy scale carrier boxes root_4666993 := by
  apply coveredBy_split_literal root_4666993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0334.root_4666994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4675989 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0334.cover_4666994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4675989
#print axioms cover_4666993

def root_4666988 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4666988_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4666988_right_fuel : Nat := 1
def small_4666988_right_count : Nat := 1
def small_4666988_right_encoded : String := "00000000"
theorem small_4666988_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4666988_right_root small_4666988_right_fuel small_4666988_right_count small_4666988_right_encoded = true := by
  decide +kernel
theorem small_4666988_right_covered : CoveredBy scale carrier boxes small_4666988_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4666988_right_root small_4666988_right_fuel small_4666988_right_count small_4666988_right_encoded small_4666988_right_checked

theorem cover_4666988 : CoveredBy scale carrier boxes root_4666988 := by
  apply coveredBy_split_literal root_4666988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4666993 small_4666988_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4666993
  · exact small_4666988_right_covered
#print axioms cover_4666988

def root_4704684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4704684 : CoveredBy scale carrier boxes root_4704684 := by
  apply coveredBy_split_literal root_4704684 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1758.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1759.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1758.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1759.covered
#print axioms cover_4704684

def root_4704679 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704679_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704679_right_fuel : Nat := 1
def small_4704679_right_count : Nat := 1
def small_4704679_right_encoded : String := "00000002"
theorem small_4704679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704679_right_root small_4704679_right_fuel small_4704679_right_count small_4704679_right_encoded = true := by
  decide +kernel
theorem small_4704679_right_covered : CoveredBy scale carrier boxes small_4704679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704679_right_root small_4704679_right_fuel small_4704679_right_count small_4704679_right_encoded small_4704679_right_checked

theorem cover_4704679 : CoveredBy scale carrier boxes root_4704679 := by
  apply coveredBy_split_literal root_4704679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4704684 small_4704679_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4704684
  · exact small_4704679_right_covered
#print axioms cover_4704679

def root_4704678 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704678_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704678_right_fuel : Nat := 20
def small_4704678_right_count : Nat := 139
def small_4704678_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E90900000004000000051152250908A913091207010800000004050000F6135D81010500010200000009135D8103050000FA135D810505000106135D44FD04548A091386710800000004000000090000000900000003135D80FD0000000304548A091386710800000004078000F600000009128A410100000000000000081386AD08078000F600000009128A410100000000000000080000000400000002000000090000000100000000135D45010000000005000102135D450300000001050000FA135D8105000000080000000200000008135D8103050000FA135D810505000106135D44FD0000000A00000003135D80FD0000000304548A090000000800000005000000020000000A0000000112073D08050000F6135D8101050001020000000A135D8103050000FA135D8105050001060000000A0000000A000000020000000A00000001000000000000000A000000040000000400000003115224FD000000030A0001081151E90900000004000000051152250908A912FD12073D0608A913091207010800000004050000F6135D81010500010200000008135D8103050000FA135D81050CFD9BFD0F350D0604548A090000000700000005000000030000000500000002000000050000000100000000135D4501000000000000000512073D08050000F6135D81010500010200000008000000050000000000000005000000040000000312070106000000030000000500000004"
theorem small_4704678_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704678_right_root small_4704678_right_fuel small_4704678_right_count small_4704678_right_encoded = true := by
  decide +kernel
theorem small_4704678_right_covered : CoveredBy scale carrier boxes small_4704678_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704678_right_root small_4704678_right_fuel small_4704678_right_count small_4704678_right_encoded small_4704678_right_checked

theorem cover_4704678 : CoveredBy scale carrier boxes root_4704678 := by
  apply coveredBy_split_literal root_4704678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4704679 small_4704678_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4704679
  · exact small_4704678_right_covered
#print axioms cover_4704678

def root_4704672 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704672_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704672_left_fuel : Nat := 1
def small_4704672_left_count : Nat := 1
def small_4704672_left_encoded : String := "00000001"
theorem small_4704672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704672_left_root small_4704672_left_fuel small_4704672_left_count small_4704672_left_encoded = true := by
  decide +kernel
theorem small_4704672_left_covered : CoveredBy scale carrier boxes small_4704672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704672_left_root small_4704672_left_fuel small_4704672_left_count small_4704672_left_encoded small_4704672_left_checked

theorem cover_4704672 : CoveredBy scale carrier boxes root_4704672 := by
  apply coveredBy_split_literal root_4704672 small_4704672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4704678 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4704672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4704678
#print axioms cover_4704672

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338

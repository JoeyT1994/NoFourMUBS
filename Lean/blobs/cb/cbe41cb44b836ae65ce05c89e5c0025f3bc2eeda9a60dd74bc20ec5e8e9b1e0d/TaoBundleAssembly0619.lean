import TaoBundleAssembly0614
import TaoBundleAssembly0616
import TaoBundleAssembly0618
import TaoBundleChunkBatch0846
import TaoBundleChunkBatch0847
import TaoBundleChunkBatch0850
import TaoBundleChunkBatch0851
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619
def root_9046891 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046891_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046891_right_fuel : Nat := 28
def small_9046891_right_count : Nat := 497
def small_9046891_right_encoded : String := "12073CFC0000000308A9130912070108000000040CFD9C010F34D1000000000004548A03138670F80CFD9C050F34D104000000020CFD9C070F34D0FC04548A091386710800000004000000060000000600000003000000060F350D040CFD9C070F34D0FC04548A0913867108000000040C9A8704000000090F878D0500000009000000021386AD080C9A8704000000090F878D05000000060000000200000004000000030000000900000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9C070F34D0FC04548A0913867108000000040AD3578110D1010000000000067ECE8312EA58F80AD357850000000610D13D0400000009000000020000000112EA94F8000000010AD3578510D10104000000020000000610D13D040AD3578710D100FC022A4589000000090000000500000003000000050000000210D13D00067ECE830000000612EA94F8000000010AD357850000000600000005000000001386AD080AD3578110D1010000000000067ECE8300000006000000050000000600000004000000030F350CFC00000003000000060F350D040CFD9C070F34D0FC04548A0913867108000000040C9A87040F875105000000020AD357810000000910D13D0000000009000000000F878D050AD3578110D10100000000000000000910D13D00067ECE8312EA58F80AD3578710D100FC022A458900000009000000050000000300000005000000010000000500000000000000021386AD080C9A87040F875105000000020AD3578100000008000000050F878D050AD3578110D101000000000000000005000000050000000200000004000000030F350CFC0000000304548A090000000900000005000000020F350D0004548A03138670F80CFD9C050F34D104000000020CFD9C070F34D0FC0000000600000003000000060F350D040CFD9C070F34D0FC04548A0913867108000000040C9A87000F875101000000000C9A87040F87510500000002022A458313E1C4F80AD3578710D100FC022A4589000000070000000600000003000000060000000113E200F8000000010AD3578710D100FC022A458913E1C508000000040B4D440010801101000000000000000A10804D010B4D44040000000700000007000000000000000500000003000000050F878D0500000006000000020F878D010C9A87040F87510500000002022A45830000000913E200F8000000010AD3578710D100FC022A4589000000090000000700000003000000090F878D05022A45830000000613E200F8000000010AD3578710D100FC022A458913E1C508000000040DE7CA00000000060E601501000000090000000000000006000000030000000600000002000000001386AD080C9A8700000000060F878D010C9A87040F87510500000002022A45830000000600000005000000060000000000000004000000030F350CFC0000000304548A0913867108000000040C9A8700000000060F878D0100000009000000000000000600000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9C070F34D0FC04548A0913867108000000040C9A8700000000060F878D01067ECE830000000612EA94F80000000100000006000000000000000600000003000000060F350D040CFD9C070F34D0FC04548A0913867108000000040C9A87000F875101000000000C9A87040F87510500000002000000050F878D05067ECE8312EA58F80AD3578710D100FC0000000600000003000000050000000100000005000000020F878D010C9A87040F87510500000002067ECE8312EA58F80AD3578710D100FC022A458913E1C508000000040DE7CA000E5FD90100000000000000050000000500000005000000030000000500000001000000050F878D05067ECE8312EA58F80AD3578710D100FC022A458913E1C508000000040DE7CA000E5FD901000000000DE7CA040E5FD9050000000200000005000000050E6015010DE7CA040E5FD90500000002000000050000000500000000000000050000000300000005000000010000000500000002000000001386AD080C9A87000F87510100000000000000050000000500000004000000030F350CFC0000000300000005000000020000000012073D080CFD9C010F34D1000000000004548A03138670F80CFD9C050F34D104000000020CFD9C070F34D0FC0CFD9C09000000060000000600000003000000060F350D040CFD9C070F34D0FC0CFD9C090F34D108000000040C9A870400000009000000060F350D080C9A87040F875105000000020C9A870800000009000000050F878D05000000060000000200000004000000030F350CFC000000030CFD9C09000000090000000500000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9C070F34D0FC0CFD9C090F34D10800000004000000060F350D080C9A87080F87510900000004000000050000000500000004000000030F350CFC00000003000000050F350D040CFD9C070F34D0FC0CFD9C090F34D108000000040C9A87040F875105000000020000000500000005000000050000000300000005000000020F350D0004548A03138670F80CFD9C05000000060F350D040CFD9C070F34D0FC0CFD9C090F34D108000000040000000600000005000000030000000500000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9C070F34D0FC0CFD9C0900000006000000050000000300000005000000050000000000000004"
theorem small_9046891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046891_right_root small_9046891_right_fuel small_9046891_right_count small_9046891_right_encoded = true := by
  decide +kernel
theorem small_9046891_right_covered : CoveredBy scale carrier boxes small_9046891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046891_right_root small_9046891_right_fuel small_9046891_right_count small_9046891_right_encoded small_9046891_right_checked

theorem cover_9046891 : CoveredBy scale carrier boxes root_9046891 := by
  apply coveredBy_split_literal root_9046891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9046892 small_9046891_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9046892
  · exact small_9046891_right_covered
#print axioms cover_9046891

def root_9046886 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046886_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046886_right_fuel : Nat := 1
def small_9046886_right_count : Nat := 1
def small_9046886_right_encoded : String := "00000002"
theorem small_9046886_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046886_right_root small_9046886_right_fuel small_9046886_right_count small_9046886_right_encoded = true := by
  decide +kernel
theorem small_9046886_right_covered : CoveredBy scale carrier boxes small_9046886_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046886_right_root small_9046886_right_fuel small_9046886_right_count small_9046886_right_encoded small_9046886_right_checked

theorem cover_9046886 : CoveredBy scale carrier boxes root_9046886 := by
  apply coveredBy_split_literal root_9046886 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9046891 small_9046886_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9046891
  · exact small_9046886_right_covered
#print axioms cover_9046886

def root_9046554 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046554_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046554_left_fuel : Nat := 19
def small_9046554_left_count : Nat := 159
def small_9046554_left_encoded : String := "120701040000000208A91307120700FC08A9130912070108000000040CFD9C010F34D1000000000004548A03138670F804548A050000000A1386AD0404548A070000000A0000000A00000002000000011386ACF80000000104548A050000000A1386AD0404548A07138670FC0000000A000000031386ACFC0000000304548A0913867108000000040AD357810000000A10D13D000000000A0000000000000006000000020F350D0004548A03138670F804548A051386710400000002000000061386AD0404548A07138670FC04548A0913867108000000040C9A8700000000060F878D01022A4583000000060000000A0000000000000006000000030000000600000002000000011386ACF80000000104548A05138671040000000204548A0700000007000000061386AD0404548A07138670FC04548A09000000071386AD080000000700000004000000031386ACFC0000000304548A0913867108000000040C9A8700000000060F878D01000000060000000000000006000000020000000012073D080CFD9C010F34D100000000000000000A0F350D0004548A03000000061386ACF80000000104548A05000000061386AD0404548A07138670FC0CFD9C090F34D10800000004000000060000000600000003000000060000000200000000000000040000000312073CFC0000000308A9130912070108000000040CFD9C010F34D1000000000004548A03000000061386ACF80000000104548A0500000006000000060F350D0004548A0300000006000000060000000012073D080CFD9C010F34D1000000000004548A03000000061386ACF80000000104548A05000000061386AD040CFD9C070000000600000006000000020000000600000004"
theorem small_9046554_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046554_left_root small_9046554_left_fuel small_9046554_left_count small_9046554_left_encoded = true := by
  decide +kernel
theorem small_9046554_left_covered : CoveredBy scale carrier boxes small_9046554_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046554_left_root small_9046554_left_fuel small_9046554_left_count small_9046554_left_encoded small_9046554_left_checked

theorem cover_9046554 : CoveredBy scale carrier boxes root_9046554 := by
  apply coveredBy_split_literal root_9046554 small_9046554_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9046886 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9046554_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9046886
#print axioms cover_9046554

def root_9046549 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046549_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046549_right_fuel : Nat := 1
def small_9046549_right_count : Nat := 1
def small_9046549_right_encoded : String := "00000001"
theorem small_9046549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046549_right_root small_9046549_right_fuel small_9046549_right_count small_9046549_right_encoded = true := by
  decide +kernel
theorem small_9046549_right_covered : CoveredBy scale carrier boxes small_9046549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046549_right_root small_9046549_right_fuel small_9046549_right_count small_9046549_right_encoded small_9046549_right_checked

theorem cover_9046549 : CoveredBy scale carrier boxes root_9046549 := by
  apply coveredBy_split_literal root_9046549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9046554 small_9046549_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9046554
  · exact small_9046549_right_covered
#print axioms cover_9046549

def root_9046548 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9046548 : CoveredBy scale carrier boxes root_9046548 := by
  apply coveredBy_split_literal root_9046548 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9046549 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3397.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9046549
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3397.covered
#print axioms cover_9046548

def root_9046543 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046543_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046543_right_fuel : Nat := 1
def small_9046543_right_count : Nat := 1
def small_9046543_right_encoded : String := "00000000"
theorem small_9046543_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046543_right_root small_9046543_right_fuel small_9046543_right_count small_9046543_right_encoded = true := by
  decide +kernel
theorem small_9046543_right_covered : CoveredBy scale carrier boxes small_9046543_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046543_right_root small_9046543_right_fuel small_9046543_right_count small_9046543_right_encoded small_9046543_right_checked

theorem cover_9046543 : CoveredBy scale carrier boxes root_9046543 := by
  apply coveredBy_split_literal root_9046543 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9046548 small_9046543_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9046548
  · exact small_9046543_right_covered
#print axioms cover_9046543

def root_9045239 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9045239 : CoveredBy scale carrier boxes root_9045239 := by
  apply coveredBy_split_literal root_9045239 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3386.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9046543 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3386.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9046543
#print axioms cover_9045239

def root_9045234 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9045234_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9045234_right_fuel : Nat := 1
def small_9045234_right_count : Nat := 1
def small_9045234_right_encoded : String := "00000004"
theorem small_9045234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9045234_right_root small_9045234_right_fuel small_9045234_right_count small_9045234_right_encoded = true := by
  decide +kernel
theorem small_9045234_right_covered : CoveredBy scale carrier boxes small_9045234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9045234_right_root small_9045234_right_fuel small_9045234_right_count small_9045234_right_encoded small_9045234_right_checked

theorem cover_9045234 : CoveredBy scale carrier boxes root_9045234 := by
  apply coveredBy_split_literal root_9045234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9045239 small_9045234_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9045239
  · exact small_9045234_right_covered
#print axioms cover_9045234

def root_9044132 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9044132 : CoveredBy scale carrier boxes root_9044132 := by
  apply coveredBy_split_literal root_9044132 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3385.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9045234 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3385.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9045234
#print axioms cover_9044132

def root_9044127 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9044127_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9044127_right_fuel : Nat := 1
def small_9044127_right_count : Nat := 1
def small_9044127_right_encoded : String := "00000003"
theorem small_9044127_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9044127_right_root small_9044127_right_fuel small_9044127_right_count small_9044127_right_encoded = true := by
  decide +kernel
theorem small_9044127_right_covered : CoveredBy scale carrier boxes small_9044127_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9044127_right_root small_9044127_right_fuel small_9044127_right_count small_9044127_right_encoded small_9044127_right_checked

theorem cover_9044127 : CoveredBy scale carrier boxes root_9044127 := by
  apply coveredBy_split_literal root_9044127 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9044132 small_9044127_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9044132
  · exact small_9044127_right_covered
#print axioms cover_9044127

def root_9044126 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9044126_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9044126_right_fuel : Nat := 20
def small_9044126_right_count : Nat := 161
def small_9044126_right_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120701000000000008A91303120700F808A913051207010400000002050000FC000000090000000612073D04050000FC135D810705000108135D45090000000404548A0113867100000000000000000500000005000000050000000300000005000000020000000112073CF80000000108A91305000000090000000512073D0008A91303120700F808A9130500000006000000050000000100000005000000001152250908A91301120701000000000008A91303120700F808A91305120701040000000208A91309000000060000000612073D0408A9130912070108000000040000000912073D08050000FC135D810704548A01138671000000000004548A03138670F80CFD9C05000000060F350D040000000600000002000000011386ACF800000001000000051386AD0004548A0300000006000000050000000000000003135D4507000000030000000500000004000000020000000112073CF80000000108A91305120701040000000208A913091207010800000004000000050000000512073D0408A91309120701080000000400000005000000050000000212073D0008A91303120700F808A9130512070104000000020000000612073D0408A913091207010800000004050000FC135D81070CFD9C010F34D10000000000000000090F350D0004548A0300000006000000050000000000000003135D4507000000030000000512073D08050000FC000000060000000500000004000000020000000112073CF80000000108A91305120701040000000208A913091207010800000004000000050000000512073D0408A9130912070108000000040000000500000005000000020000000000000004"
theorem small_9044126_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9044126_right_root small_9044126_right_fuel small_9044126_right_count small_9044126_right_encoded = true := by
  decide +kernel
theorem small_9044126_right_covered : CoveredBy scale carrier boxes small_9044126_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9044126_right_root small_9044126_right_fuel small_9044126_right_count small_9044126_right_encoded small_9044126_right_checked

theorem cover_9044126 : CoveredBy scale carrier boxes root_9044126 := by
  apply coveredBy_split_literal root_9044126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9044127 small_9044126_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9044127
  · exact small_9044126_right_covered
#print axioms cover_9044126

def root_9044121 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9044121_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9044121_right_fuel : Nat := 1
def small_9044121_right_count : Nat := 1
def small_9044121_right_encoded : String := "00000002"
theorem small_9044121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9044121_right_root small_9044121_right_fuel small_9044121_right_count small_9044121_right_encoded = true := by
  decide +kernel
theorem small_9044121_right_covered : CoveredBy scale carrier boxes small_9044121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9044121_right_root small_9044121_right_fuel small_9044121_right_count small_9044121_right_encoded small_9044121_right_checked

theorem cover_9044121 : CoveredBy scale carrier boxes root_9044121 := by
  apply coveredBy_split_literal root_9044121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9044126 small_9044121_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9044126
  · exact small_9044121_right_covered
#print axioms cover_9044121

def root_9041475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9041475 : CoveredBy scale carrier boxes root_9041475 := by
  apply coveredBy_split_literal root_9041475 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3384.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9044121 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3384.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9044121
#print axioms cover_9041475

def root_9041470 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9041470_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9041470_right_fuel : Nat := 1
def small_9041470_right_count : Nat := 1
def small_9041470_right_encoded : String := "00000001"
theorem small_9041470_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9041470_right_root small_9041470_right_fuel small_9041470_right_count small_9041470_right_encoded = true := by
  decide +kernel
theorem small_9041470_right_covered : CoveredBy scale carrier boxes small_9041470_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9041470_right_root small_9041470_right_fuel small_9041470_right_count small_9041470_right_encoded small_9041470_right_checked

theorem cover_9041470 : CoveredBy scale carrier boxes root_9041470 := by
  apply coveredBy_split_literal root_9041470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9041475 small_9041470_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9041475
  · exact small_9041470_right_covered
#print axioms cover_9041470

def root_9041469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9041469_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9041469_right_fuel : Nat := 23
def small_9041469_right_count : Nat := 207
def small_9041469_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E90900000004000000051152250908A91301120701000000000008A91307000000080000000812073D0008A91307120700FC08A913091207010800000004050000F800000008000000050000000500000003000000050000000000000004000000031151E9070000000300000005115225050A0000FC115225070A0001081151E9090000000408A91301120701000000000008A91305120701040000000208A91307120700FC050000F80000000700000008000000030000000512073D0408A9130700000008000000050000000212073D0008A91305120701040000000208A91307120700FC050000F8135D810305000108135D4509000000040CFD9C010F34D100000000000000000500000005000000050000000100000005000000030000000500000005000000001152250908A91301120701000000000008A91305120701040000000208A91307120700FC08A9130900000007000000080000000312073CFC0000000308A913091207010800000004000000050000000512073D0408A913070000000812073CFC0000000308A91309120701080000000400000005000000050000000212073D0008A91305120701040000000208A91307120700FC08A9130912070108000000040000000712073D08050000F8135D81030CFD9C010F34D10000000000000000080F350D0004548A05138671040000000204548A070000000700000005000000050000000000000001135D45030000000100000005000000040000000312073CFC0000000308A913091207010800000004000000050000000512073D0408A91307120700FC08A913091207010800000004050000F8135D81030CFD9C010F34D10000000000000000080F350D000CFD9C050F34D1040000000200000005000000050000000000000001135D4503000000010000000512073D08050000F80000000800000005000000040000000312073CFC0000000308A9130912070108000000040000000500000005000000020000000000000004000000031151E907000000030A0001081151E90900000004000000051152250908A91301120701000000000000000005000000050000000400000002"
theorem small_9041469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9041469_right_root small_9041469_right_fuel small_9041469_right_count small_9041469_right_encoded = true := by
  decide +kernel
theorem small_9041469_right_covered : CoveredBy scale carrier boxes small_9041469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9041469_right_root small_9041469_right_fuel small_9041469_right_count small_9041469_right_encoded small_9041469_right_checked

theorem cover_9041469 : CoveredBy scale carrier boxes root_9041469 := by
  apply coveredBy_split_literal root_9041469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9041470 small_9041469_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9041470
  · exact small_9041469_right_covered
#print axioms cover_9041469

def root_9041464 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9041464_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9041464_right_fuel : Nat := 1
def small_9041464_right_count : Nat := 1
def small_9041464_right_encoded : String := "00000000"
theorem small_9041464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9041464_right_root small_9041464_right_fuel small_9041464_right_count small_9041464_right_encoded = true := by
  decide +kernel
theorem small_9041464_right_covered : CoveredBy scale carrier boxes small_9041464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9041464_right_root small_9041464_right_fuel small_9041464_right_count small_9041464_right_encoded small_9041464_right_checked

theorem cover_9041464 : CoveredBy scale carrier boxes root_9041464 := by
  apply coveredBy_split_literal root_9041464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9041469 small_9041464_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9041469
  · exact small_9041464_right_covered
#print axioms cover_9041464

def root_9037010 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9037010 : CoveredBy scale carrier boxes root_9037010 := by
  apply coveredBy_split_literal root_9037010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0616.root_9037011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9041464 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0616.cover_9037011
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9041464
#print axioms cover_9037010

def root_8984468 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8984468 : CoveredBy scale carrier boxes root_8984468 := by
  apply coveredBy_split_literal root_8984468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0616.root_8984469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9037010 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0616.cover_8984469
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9037010
#print axioms cover_8984468

def root_8978392 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8978392 : CoveredBy scale carrier boxes root_8978392 := by
  apply coveredBy_split_literal root_8978392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8978393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_8984468 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8978393
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_8984468
#print axioms cover_8978392

def root_8928760 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8928760 : CoveredBy scale carrier boxes root_8928760 := by
  apply coveredBy_split_literal root_8928760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8928761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_8978392 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8928761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_8978392
#print axioms cover_8928760

def root_9076515 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076515 : CoveredBy scale carrier boxes root_9076515 := by
  apply coveredBy_split_literal root_9076515 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3398.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3399.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3398.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3399.covered
#print axioms cover_9076515

def root_9076509 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9076509_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9076509_left_fuel : Nat := 1
def small_9076509_left_count : Nat := 1
def small_9076509_left_encoded : String := "00000000"
theorem small_9076509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9076509_left_root small_9076509_left_fuel small_9076509_left_count small_9076509_left_encoded = true := by
  decide +kernel
theorem small_9076509_left_covered : CoveredBy scale carrier boxes small_9076509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9076509_left_root small_9076509_left_fuel small_9076509_left_count small_9076509_left_encoded small_9076509_left_checked

theorem cover_9076509 : CoveredBy scale carrier boxes root_9076509 := by
  apply coveredBy_split_literal root_9076509 small_9076509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9076515 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9076509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9076515
#print axioms cover_9076509

def root_9076508 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076508 : CoveredBy scale carrier boxes root_9076508 := by
  apply coveredBy_split_literal root_9076508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9076509 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3400.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9076509
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3400.covered
#print axioms cover_9076508

def root_9086409 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9086409 : CoveredBy scale carrier boxes root_9086409 := by
  apply coveredBy_split_literal root_9086409 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3402.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3403.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3402.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3403.covered
#print axioms cover_9086409

def root_9086403 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9086403_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9086403_left_fuel : Nat := 1
def small_9086403_left_count : Nat := 1
def small_9086403_left_encoded : String := "00000001"
theorem small_9086403_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9086403_left_root small_9086403_left_fuel small_9086403_left_count small_9086403_left_encoded = true := by
  decide +kernel
theorem small_9086403_left_covered : CoveredBy scale carrier boxes small_9086403_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9086403_left_root small_9086403_left_fuel small_9086403_left_count small_9086403_left_encoded small_9086403_left_checked

theorem cover_9086403 : CoveredBy scale carrier boxes root_9086403 := by
  apply coveredBy_split_literal root_9086403 small_9086403_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9086409 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9086403_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9086409
#print axioms cover_9086403

def root_9085551 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085551_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085551_left_fuel : Nat := 23
def small_9085551_left_count : Nat := 399
def small_9085551_left_encoded : String := "120700F808A91305120701040000000208A912FD12073D0608A91309120700FE0500010000000005135D810100000005000000000000000412073CFE0000000405000100135D45010000000004548A03138670F804548A0513867104000000020CFD9BFD000000050F34D10600000003000000061386AD040CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C09000000080000000600000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C09000000050F350CFE0000000400000009000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C090000000500000009000000030F34D106000000030CFD9C090F34D0FE00000008000000040000000600000002135D810104548A03138670F804548A0513867104000000020CFD9BFD0F350D0600000005000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C09000000050F350CFE0000000400000007000000030F34D106000000030CFD9C09000000070000000700000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F8750FD00000005000000030F878CFD0000000300000008000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F8750FD0C9A86FE0000000900000007000000030F878CFD000000030C9A86FE0F878D090780010000000009000000070000000400000007000000030F34D106000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE0000000800000007000000020000000000000003120701060000000308A91309120700FE000000080000000412073CFE0000000405000100135D45010000000004548A0300000006000000080000000812073D0408A912FD12073D0608A91309120700FE05000100135D45010000000004548A03000000051386ACF8000000010CFD9C05000000050F350D040CFD9BFD000000050F34D1060000000304548A09000000051386ACFE000000040000000700000002135D810104548A03138670F80CFD9C05000000050F350D040000000500000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000050F34D1060000000304548A0900000005000000080F350D040CFD9BFD0F350D0600000005000000030000000700000002000000000000000412073CFE0000000405000100135D45010000000004548A03138670F80CFD9C050F34D104000000020CFD9BFD000000090F34D10600000003000000090F350D040CFD9BFD000000090000000700000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE000000050000000400000009000000030F34D106000000030CFD9C090F34D0FE028001000000000913D7ED01067ECE8300000007000000080000000000000004000000090F350D040CFD9BFD0F350D060CFD9C090F34D0FE000000090000000400000009000000030F34D106000000030CFD9C09000000070000000700000002135D810104548A03138670F80CFD9C050F34D104000000020CFD9BFD0F350D060CFD9C090000000700000007000000030000000700000007000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A87060F8750FD00000005000000030F878CFD0000000300000007000000040F350CFE0000000400000007000000030F34D106000000030CFD9C0900000007000000070F350D040CFD9BFD0F350D060CFD9C0900000007000000070000000300000007000000020000000000000003120701060000000308A91309120700FE05000100135D45010000000004548A03138670F800000008000000011386ACF8000000010CFD9C05000000080F350D040000000700000002135D810104548A03000000071386ACF8000000010CFD9C050000000800000007000000000000000412073CFE0000000405000100135D45010000000004548A03000000071386ACF8000000010CFD9C050F34D10400000002045489FD1386AD060CFD9C090000000700000006000000030000000600000007000000070000000200000001"
theorem small_9085551_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9085551_left_root small_9085551_left_fuel small_9085551_left_count small_9085551_left_encoded = true := by
  decide +kernel
theorem small_9085551_left_covered : CoveredBy scale carrier boxes small_9085551_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9085551_left_root small_9085551_left_fuel small_9085551_left_count small_9085551_left_encoded small_9085551_left_checked

theorem cover_9085551 : CoveredBy scale carrier boxes root_9085551 := by
  apply coveredBy_split_literal root_9085551 small_9085551_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9086403 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9085551_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9086403
#print axioms cover_9085551

def root_9085546 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085546_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085546_right_fuel : Nat := 1
def small_9085546_right_count : Nat := 1
def small_9085546_right_encoded : String := "00000004"
theorem small_9085546_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9085546_right_root small_9085546_right_fuel small_9085546_right_count small_9085546_right_encoded = true := by
  decide +kernel
theorem small_9085546_right_covered : CoveredBy scale carrier boxes small_9085546_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9085546_right_root small_9085546_right_fuel small_9085546_right_count small_9085546_right_encoded small_9085546_right_checked

theorem cover_9085546 : CoveredBy scale carrier boxes root_9085546 := by
  apply coveredBy_split_literal root_9085546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9085551 small_9085546_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9085551
  · exact small_9085546_right_covered
#print axioms cover_9085546

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619

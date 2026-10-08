import TaoBundleAssembly0419
import TaoBundleAssembly0420
import TaoBundleChunkBatch0571
import TaoBundleChunkBatch0572
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421
def root_6060281 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6060281_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6060281_left_fuel : Nat := 32
def small_6060281_left_count : Nat := 285
def small_6060281_left_encoded : String := "138670F804548A05138670FA00000006000000021386ACFA00000002078000FC128A7D07078000FE128A7D09022A457713E20100022A458313E1C4F8067ECE8500000005000000090000000113E200F800000001067ECE8512EA58FA08C000FC11FC250708C000FE11FC25090000000500000004000000050000000311FBE90700000003000000090000000212EA94FA0000000208C000FC11FC250708C000FE000000090000000800000003000000090000000013E1C50000000000022A458313E1C4F8067ECE850000000612EA94FA0000000208C000FC00000007000000090000000113E200F800000001067ECE8512EA58FA08C000FC11FC250708C000FE11FC25090115233713F89500033F67C30000000513BC30F8000000010569AC4500000005134110FA00000002096000FC11AABD07096000FE000000090000000800000003000000090000000013F8590000000000033F67C30000000613BC30F8000000010569AC4500000006134110FA00000002096000FC11AABD07096000FE11AABD09008A92170000000913FDF9000000000003C9F8E3000000060000008C0000000411AA810900000004000000060000000311AA810700000003000000060000000411FBE90900000004000000060000000311FBE90700000003000000060000000212EA94FA0000000208C000FC11FC250708C000FE11FC25090115233713F89500033F67C30000000913BC30F8000000010793F0C5128220FA0000000900000002000000080000000013F8590000000000033F67C313BBF4F80793F0C5128220FA0000000700000002000000070000000113BC30F8000000010793F0C5128220FA096000FC11AABD07096000FE11AABD09008A92170000000813FDF9000000000003C9F8E30000000713A36CF8000000010000000800000004000000070000000311AA810700000003096000FE0000000911AA810900000004000000090000000212825CFA00000002096000FC00000008000000080000000411FBE90900000004011523370000000813F8590000000000033F67C30000000713BC30F8000000010793F0C5128220FA0000000700000002000000070000000311FBE9070000000308C000FE11FC2509011523370000000913F8590000000000033F67C30000000913BC30F8000000010793F0C500000009000000090000000411FBE909000000040115233713F89500033F67C30000000613BC30F800000001000000090000000013F8590000000000033F67C30000000613BC30F8000000010000000600000004128A410900000004022A457713E20100022A45830000000613E200F800000001067ECE8500000006000000080000000013E1C50000000000022A45830000000613E200F800000001067ECE850000000612EA94FA0000000208C000FC000000070000000600000003128A410700000003078000FE128A7D09022A45770000000913E1C50000000000022A45830000000613E200F800000001067ECE850000000612EA94FA00000002064000FC12FFAD0708C000FE00000009000000060000000300000006000000040000000600000001"
theorem small_6060281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6060281_left_root small_6060281_left_fuel small_6060281_left_count small_6060281_left_encoded = true := by
  decide +kernel
theorem small_6060281_left_covered : CoveredBy scale carrier boxes small_6060281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6060281_left_root small_6060281_left_fuel small_6060281_left_count small_6060281_left_encoded small_6060281_left_checked

theorem cover_6060281 : CoveredBy scale carrier boxes root_6060281 := by
  apply coveredBy_split_literal root_6060281 small_6060281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0420.root_6060879 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6060281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0420.cover_6060879
#print axioms cover_6060281

def root_6060275 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6060275_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6060275_left_fuel : Nat := 1
def small_6060275_left_count : Nat := 1
def small_6060275_left_encoded : String := "00000000"
theorem small_6060275_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6060275_left_root small_6060275_left_fuel small_6060275_left_count small_6060275_left_encoded = true := by
  decide +kernel
theorem small_6060275_left_covered : CoveredBy scale carrier boxes small_6060275_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6060275_left_root small_6060275_left_fuel small_6060275_left_count small_6060275_left_encoded small_6060275_left_checked

theorem cover_6060275 : CoveredBy scale carrier boxes root_6060275 := by
  apply coveredBy_split_literal root_6060275 small_6060275_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6060281 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6060275_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6060281
#print axioms cover_6060275

def root_6059761 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059761_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059761_left_fuel : Nat := 23
def small_6059761_left_count : Nat := 249
def small_6059761_left_encoded : String := "1386AD0004548A03138670F804548A05000000051386ACFA00000002078000FC128A7D07078000FE128A7D09067ECE770000000512EA590000000000022A45830000000513E200F800000001067ECE85000000050000000800000004128A410900000004067ECE770000000512EA590000000000022A45830000000513E200F800000001067ECE85000000050000000800000003128A410700000003078000FE00000009128A41090000000400000006000000011386ACF80000000104548A05138670FA078000FC128A7D07078000FE128A7D09067ECE770000000512EA590000000000067ECE83000000050000000A000000040000000A00000003128A410700000003078000FE128A7D09067ECE770000000512EA590000000000067ECE83000000050000000700000004128A41090000000400000006000000021386ACFA00000002078000FC128A7D07078000FE128A7D09067ECE7712EA9500067ECE8312EA58F8067ECE8500000005000000080000000112EA94F800000001067ECE8500000007000000080000000012EA590000000000067ECE8312EA58F8067ECE8512EA58FA08C000FC11FC250708C000FE11FC25090000000500000004000000050000000311FBE9070000000308C000FE000000090000000A0000000212EA94FA0000000208C000FC0000000811FBE90700000003000000090000000112EA94F800000001067ECE8512EA58FA08C000FC11FC25070000000A00000003000000070000000212EA94FA0000000208C000FC0000000811FBE9070000000308C000FE000000070000000800000004128A410900000004067ECE7712EA9500067ECE83000000080000000A0000000012EA590000000000067ECE8312EA58F8067ECE850000000A000000080000000112EA94F800000001067ECE850000000A0000000800000003128A410700000003078000FE128A7D09067ECE7712EA9500067ECE8300000009000000070000000012EA590000000000067ECE8312EA58F8067ECE8500000009000000090000000112EA94F800000001067ECE850000000712EA94FA000000020000000700000004128A410900000004067ECE7712EA9500067ECE830000000912EA94F800000001067ECE850000000A12EA94FA00000002064000FC00000008000000070000000012EA590000000000067ECE8312EA58F8067ECE8500000006000000090000000112EA94F800000001067ECE8512EA58FA0000000A0000000212EA94FA00000002064000FC12FFAD07064000FE12FFAD090569AC37000000091340D500000000000793F0C3000000080000000700000004000000080000000312FF710700000003064000FE0000000712FF7109000000040000000600000000"
theorem small_6059761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059761_left_root small_6059761_left_fuel small_6059761_left_count small_6059761_left_encoded = true := by
  decide +kernel
theorem small_6059761_left_covered : CoveredBy scale carrier boxes small_6059761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059761_left_root small_6059761_left_fuel small_6059761_left_count small_6059761_left_encoded small_6059761_left_checked

theorem cover_6059761 : CoveredBy scale carrier boxes root_6059761 := by
  apply coveredBy_split_literal root_6059761 small_6059761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6060275 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6059761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6060275
#print axioms cover_6059761

def root_6059756 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059756_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059756_right_fuel : Nat := 1
def small_6059756_right_count : Nat := 1
def small_6059756_right_encoded : String := "00000004"
theorem small_6059756_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059756_right_root small_6059756_right_fuel small_6059756_right_count small_6059756_right_encoded = true := by
  decide +kernel
theorem small_6059756_right_covered : CoveredBy scale carrier boxes small_6059756_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059756_right_root small_6059756_right_fuel small_6059756_right_count small_6059756_right_encoded small_6059756_right_checked

theorem cover_6059756 : CoveredBy scale carrier boxes root_6059756 := by
  apply coveredBy_split_literal root_6059756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059761 small_6059756_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059761
  · exact small_6059756_right_covered
#print axioms cover_6059756

def root_6059755 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059755_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059755_right_fuel : Nat := 20
def small_6059755_right_count : Nat := 125
def small_6059755_right_encoded : String := "135D450900000004045489F71386AD0004548A03138670F800000006000000011386ACF80000000104548A050000000A1386ACFA00000002078000FC128A7D07028000FE13D7ED09067ECE770000000A12EA590000000000067ECE83000000080000000A000000040000000800000003128A410700000003028000FE13D7ED09067ECE770000000A12EA590000000000067ECE83000000060000000A000000040000000600000000138671000000000004548A03000000061386ACF80000000104548A05000000061386ACFA00000002078000FC128A7D07028000FE13D7ED09022A457713E20100067ECE8312EA58F8067ECE8500000006000000080000000112EA94F800000001067ECE850000000A000000080000000013E1C50000000000067ECE8312EA58F8067ECE8500000006000000070000000112EA94F800000001067ECE8512EA58FA0000000A0000000212EA94FA0000000208C000FC0000000811FBE90700000003000000080000000413D7B10900000004022A45770000000A13E1C50000000000067ECE830000000612EA94F800000001067ECE85000000060000000700000003128A410700000003028000FE13D7ED09022A457713E20100067ECE830000000612EA94F800000001067ECE850000000612EA94FA000000020000000600000000000000060000000400000006"
theorem small_6059755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059755_right_root small_6059755_right_fuel small_6059755_right_count small_6059755_right_encoded = true := by
  decide +kernel
theorem small_6059755_right_covered : CoveredBy scale carrier boxes small_6059755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059755_right_root small_6059755_right_fuel small_6059755_right_count small_6059755_right_encoded small_6059755_right_checked

theorem cover_6059755 : CoveredBy scale carrier boxes root_6059755 := by
  apply coveredBy_split_literal root_6059755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059756 small_6059755_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059756
  · exact small_6059755_right_covered
#print axioms cover_6059755

def root_6059750 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059750_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059750_right_fuel : Nat := 1
def small_6059750_right_count : Nat := 1
def small_6059750_right_encoded : String := "00000003"
theorem small_6059750_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059750_right_root small_6059750_right_fuel small_6059750_right_count small_6059750_right_encoded = true := by
  decide +kernel
theorem small_6059750_right_covered : CoveredBy scale carrier boxes small_6059750_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059750_right_root small_6059750_right_fuel small_6059750_right_count small_6059750_right_encoded small_6059750_right_checked

theorem cover_6059750 : CoveredBy scale carrier boxes root_6059750 := by
  apply coveredBy_split_literal root_6059750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059755 small_6059750_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059755
  · exact small_6059750_right_covered
#print axioms cover_6059750

def root_6059749 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059749_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059749_right_fuel : Nat := 21
def small_6059749_right_count : Nat := 123
def small_6059749_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD0004548A03138670F800000006000000011386ACF80000000104548A05138670FA00000006000000021386ACFA00000002028000FC13D7ED07078000FE128A7D09067ECE770000000912EA590000000000067ECE83000000090000000700000004128A410900000004067ECE770000000912EA590000000000067ECE830000000612EA94F800000001067ECE8500000006000000090000000313D7B10700000003078000FE00000009128A4109000000040000000600000000138671000000000004548A03000000061386ACF80000000104548A05000000061386ACFA00000002028000FC13D7ED07078000FE128A7D09022A457713E20100067ECE8300000009000000070000000013E1C50000000000067ECE8312EA58F8067ECE8500000006000000090000000112EA94F800000001067ECE850000000712EA94FA0000000203C000FC000000070000000700000004128A410900000004022A457713E20100067ECE830000000612EA94F800000001067ECE850000000612EA94FA000000020000000600000000000000060000000313D7B10700000003078000FE128A7D09022A45770000000913E1C50000000000067ECE830000000600000007000000040000000600000004135D45090000000400000006"
theorem small_6059749_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059749_right_root small_6059749_right_fuel small_6059749_right_count small_6059749_right_encoded = true := by
  decide +kernel
theorem small_6059749_right_covered : CoveredBy scale carrier boxes small_6059749_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059749_right_root small_6059749_right_fuel small_6059749_right_count small_6059749_right_encoded small_6059749_right_checked

theorem cover_6059749 : CoveredBy scale carrier boxes root_6059749 := by
  apply coveredBy_split_literal root_6059749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059750 small_6059749_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059750
  · exact small_6059749_right_covered
#print axioms cover_6059749

def root_6059744 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059744_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059744_right_fuel : Nat := 1
def small_6059744_right_count : Nat := 1
def small_6059744_right_encoded : String := "00000002"
theorem small_6059744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059744_right_root small_6059744_right_fuel small_6059744_right_count small_6059744_right_encoded = true := by
  decide +kernel
theorem small_6059744_right_covered : CoveredBy scale carrier boxes small_6059744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059744_right_root small_6059744_right_fuel small_6059744_right_count small_6059744_right_encoded small_6059744_right_checked

theorem cover_6059744 : CoveredBy scale carrier boxes root_6059744 := by
  apply coveredBy_split_literal root_6059744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059749 small_6059744_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059749
  · exact small_6059744_right_covered
#print axioms cover_6059744

def root_6059743 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6059743 : CoveredBy scale carrier boxes root_6059743 := by
  apply coveredBy_split_literal root_6059743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059744 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2282.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059744
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2282.covered
#print axioms cover_6059743

def root_6059738 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059738_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059738_right_fuel : Nat := 1
def small_6059738_right_count : Nat := 1
def small_6059738_right_encoded : String := "00000001"
theorem small_6059738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059738_right_root small_6059738_right_fuel small_6059738_right_count small_6059738_right_encoded = true := by
  decide +kernel
theorem small_6059738_right_covered : CoveredBy scale carrier boxes small_6059738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059738_right_root small_6059738_right_fuel small_6059738_right_count small_6059738_right_encoded small_6059738_right_checked

theorem cover_6059738 : CoveredBy scale carrier boxes root_6059738 := by
  apply coveredBy_split_literal root_6059738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059743 small_6059738_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059743
  · exact small_6059738_right_covered
#print axioms cover_6059738

def root_6059737 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6059737 : CoveredBy scale carrier boxes root_6059737 := by
  apply coveredBy_split_literal root_6059737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059738 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2283.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059738
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2283.covered
#print axioms cover_6059737

def root_6059731 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059731_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059731_left_fuel : Nat := 1
def small_6059731_left_count : Nat := 1
def small_6059731_left_encoded : String := "00000000"
theorem small_6059731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059731_left_root small_6059731_left_fuel small_6059731_left_count small_6059731_left_encoded = true := by
  decide +kernel
theorem small_6059731_left_covered : CoveredBy scale carrier boxes small_6059731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059731_left_root small_6059731_left_fuel small_6059731_left_count small_6059731_left_encoded small_6059731_left_checked

theorem cover_6059731 : CoveredBy scale carrier boxes root_6059731 := by
  apply coveredBy_split_literal root_6059731 small_6059731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059737 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6059731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059737
#print axioms cover_6059731

def root_6058767 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058767_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058767_left_fuel : Nat := 24
def small_6058767_left_count : Nat := 463
def small_6058767_left_encoded : String := "12073D0008A91303120700F808A91305120700FA050000FC135D8107050000FE135D81090CFD9BF70F350D0004548A03000000091386ACF80000000104548A05000000051386ACFA000000020C9A87000000000700000009000000000F34D1000000000004548A03138670F804548A050000000500000009000000011386ACF80000000104548A05138670FA0000000A000000021386ACFA00000002078000FC128A7D07078000FE128A7D090AD357770000000910D1010000000000067ECE830000000500000007000000040000000A00000003128A410700000003078000FE00000009128A4109000000040AD357770000000910D10100000000000000000900000004135D4509000000040CFD9BF70000000A0F34D1000000000004548A03000000050000000A00000003135D450700000003050000FE135D81090CFD9BF7000000090F34D1000000000004548A03000000051386ACF80000000104548A05000000050000000900000004135D4509000000040CFD9BF700000005000000060000000212073CFA00000002050000FC135D8107050000FE135D81090CFD9BF7000000080F34D1000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA078000FC00000008128A410700000003078000FE00000008000000080000000200000008000000040000000800000003135D450700000003050000FE135D81090CFD9BF7000000090F34D1000000000004548A03000000091386ACF8000000010CFD9C050F34D0FA00000009000000020000000900000004135D4509000000040CFD9BF70F350D0000000008000000000F34D1000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA028000FC000000080000000900000002000000080000000112073CF80000000108A91305120700FA050000FC135D8107050000FE135D81090CFD9BF7000000070F34D100000000000CFD9C030F34D0F804548A05000000071386ACFA00000002078000FC128A7D07000000070000000300000007000000010000000700000004135D4509000000040CFD9BF70000000A0F34D100000000000CFD9C030F34D0F80000000A000000010000000A00000003135D450700000003050000FE00000007135D4509000000040CFD9BF70F350D0000000007000000000F34D100000000000CFD9C030F34D0F804548A05000000061386ACFA00000002028000FC0000000A13D7B10700000003028000FE000000070000000600000001000000070000000212073CFA00000002050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F800000008000000010F350CF80000000100000007000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA078000FC128A7D07078000FE000000070000000800000003128A410700000003078000FE00000007128A4109000000040AD3577700000007000000070000000200000008000000010F350CF8000000010CFD9C05000000070F350CFA000000020C9A86F8000000080000000700000004135D4509000000040CFD9BF70F350D000CFD9C03000000080F350CF8000000010CFD9C050F34D0FA000000070000000200000008000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA078000FC00000008128A410700000003028000FE00000008000000080000000200000008000000010F350CF8000000010CFD9C050F34D0FA0C9A86F80F878D03078000FC00000008128A410700000003028000FE0000000700000008000000010F8751030000000100000007000000020000000500000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F80CFD9C0500000007000000090000000100000007000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA028000FC0000000700000007000000020F350CFA000000020C9A86FA0F878D05028000FC13D7ED07000000080000000300000007000000020F8751050000000200000008000000010F350CF8000000010CFD9C05000000070000000500000004135D4509000000040CFD9BF70F350D000CFD9C030F34D0F80CFD9C050F34D0FA0C9A8700000000070F878CF700000000028000FC00000008000000070000000200000008000000010F350CF8000000010CFD9C05000000070F350CFA0000000200000007000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA028000FC13D7ED07028000FE13D7ED090AD3577710D13D00000000070000000010D10100000000000AD3578300000008000000070000000413D7B109000000040AD3577700000008000000080000000313D7B10700000003028000FE13D7ED090AD3577700000007000000070000000413D7B109000000040AD3577710D13D000AD3578300000008000000070000000010D10100000000000AD3578310D100F8000000060000000110D13CF80000000100000007000000020F350CFA0000000200000008000000010F350CF8000000010CFD9C050F34D0FA00000007000000020000000500000000"
theorem small_6058767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6058767_left_root small_6058767_left_fuel small_6058767_left_count small_6058767_left_encoded = true := by
  decide +kernel
theorem small_6058767_left_covered : CoveredBy scale carrier boxes small_6058767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6058767_left_root small_6058767_left_fuel small_6058767_left_count small_6058767_left_encoded small_6058767_left_checked

theorem cover_6058767 : CoveredBy scale carrier boxes root_6058767 := by
  apply coveredBy_split_literal root_6058767 small_6058767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6059731 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6058767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6059731
#print axioms cover_6058767

def root_6058761 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058761_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058761_left_fuel : Nat := 1
def small_6058761_left_count : Nat := 1
def small_6058761_left_encoded : String := "00000004"
theorem small_6058761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6058761_left_root small_6058761_left_fuel small_6058761_left_count small_6058761_left_encoded = true := by
  decide +kernel
theorem small_6058761_left_covered : CoveredBy scale carrier boxes small_6058761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6058761_left_root small_6058761_left_fuel small_6058761_left_count small_6058761_left_encoded small_6058761_left_checked

theorem cover_6058761 : CoveredBy scale carrier boxes root_6058761 := by
  apply coveredBy_split_literal root_6058761 small_6058761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6058767 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6058761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6058767
#print axioms cover_6058761

def root_6052989 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6052989 : CoveredBy scale carrier boxes root_6052989 := by
  apply coveredBy_split_literal root_6052989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0419.root_6052990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6058761 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0419.cover_6052990
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6058761
#print axioms cover_6052989

def root_6052983 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6052983_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6052983_left_fuel : Nat := 1
def small_6052983_left_count : Nat := 1
def small_6052983_left_encoded : String := "00000003"
theorem small_6052983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6052983_left_root small_6052983_left_fuel small_6052983_left_count small_6052983_left_encoded = true := by
  decide +kernel
theorem small_6052983_left_covered : CoveredBy scale carrier boxes small_6052983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6052983_left_root small_6052983_left_fuel small_6052983_left_count small_6052983_left_encoded small_6052983_left_checked

theorem cover_6052983 : CoveredBy scale carrier boxes root_6052983 := by
  apply coveredBy_split_literal root_6052983 small_6052983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6052989 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6052983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6052989
#print axioms cover_6052983

def root_6038757 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6038757 : CoveredBy scale carrier boxes root_6038757 := by
  apply coveredBy_split_literal root_6038757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0419.root_6038758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6052983 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0419.cover_6038758
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6052983
#print axioms cover_6038757

def root_6038752 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038752_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038752_right_fuel : Nat := 1
def small_6038752_right_count : Nat := 1
def small_6038752_right_encoded : String := "00000002"
theorem small_6038752_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6038752_right_root small_6038752_right_fuel small_6038752_right_count small_6038752_right_encoded = true := by
  decide +kernel
theorem small_6038752_right_covered : CoveredBy scale carrier boxes small_6038752_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6038752_right_root small_6038752_right_fuel small_6038752_right_count small_6038752_right_encoded small_6038752_right_checked

theorem cover_6038752 : CoveredBy scale carrier boxes root_6038752 := by
  apply coveredBy_split_literal root_6038752 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6038757 small_6038752_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6038757
  · exact small_6038752_right_covered
#print axioms cover_6038752

def root_6038751 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6038751 : CoveredBy scale carrier boxes root_6038751 := by
  apply coveredBy_split_literal root_6038751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6038752 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2284.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6038752
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2284.covered
#print axioms cover_6038751

def root_6038746 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038746_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038746_right_fuel : Nat := 1
def small_6038746_right_count : Nat := 1
def small_6038746_right_encoded : String := "00000001"
theorem small_6038746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6038746_right_root small_6038746_right_fuel small_6038746_right_count small_6038746_right_encoded = true := by
  decide +kernel
theorem small_6038746_right_covered : CoveredBy scale carrier boxes small_6038746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6038746_right_root small_6038746_right_fuel small_6038746_right_count small_6038746_right_encoded small_6038746_right_checked

theorem cover_6038746 : CoveredBy scale carrier boxes root_6038746 := by
  apply coveredBy_split_literal root_6038746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6038751 small_6038746_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6038751
  · exact small_6038746_right_covered
#print axioms cover_6038746

def root_6038745 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6038745 : CoveredBy scale carrier boxes root_6038745 := by
  apply coveredBy_split_literal root_6038745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6038746 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2285.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6038746
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2285.covered
#print axioms cover_6038745

def root_6038739 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038739_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038739_left_fuel : Nat := 1
def small_6038739_left_count : Nat := 1
def small_6038739_left_encoded : String := "00000000"
theorem small_6038739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6038739_left_root small_6038739_left_fuel small_6038739_left_count small_6038739_left_encoded = true := by
  decide +kernel
theorem small_6038739_left_covered : CoveredBy scale carrier boxes small_6038739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6038739_left_root small_6038739_left_fuel small_6038739_left_count small_6038739_left_encoded small_6038739_left_checked

theorem cover_6038739 : CoveredBy scale carrier boxes root_6038739 := by
  apply coveredBy_split_literal root_6038739 small_6038739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.root_6038745 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6038739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421.cover_6038745
#print axioms cover_6038739

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0421

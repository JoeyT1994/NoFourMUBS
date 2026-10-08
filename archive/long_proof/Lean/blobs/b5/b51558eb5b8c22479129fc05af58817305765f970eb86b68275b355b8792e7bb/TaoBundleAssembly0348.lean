import TaoBundleAssembly0346
import TaoBundleAssembly0347
import TaoBundleChunkBatch0457
import TaoBundleChunkBatch0459
import TaoBundleChunkBatch0460
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348
def root_4895225 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895225_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895225_right_fuel : Nat := 25
def small_4895225_right_count : Nat := 431
def small_4895225_right_encoded : String := "1386AD0404548A07138670FC0CFD9C090F34D108000000040C9A87020F87510300000001067ECE8112EA58F6067ECE8512EA590400000002022A458700000006000000070000000700000000000000060F878D03067ECE8112EA58F6067ECE8512EA590400000002022A458713E1C4FC0AD357890000000610D13D080DE7CA020000000900000008000000040000000313E200FC000000030AD357890000000710D13D080DE7CA02000000070E60150300000008000000010000000412EA9504022A45870000000800000007000000020000000012EA94F600000000067ECE8512EA590400000002022A45870000000613E200FC000000030AD357890000000610D13D080000000A000000040000000A000000010F350D080C9A87020F875103000000010C9A87080F87510900000004067ECE8112EA58F6067ECE8512EA590400000002022A458713E1C4FC0B4D4402000000090000000A0000000313E200FC000000030B4D440210801103000000010B4D440810801109000000040569AC411340D4F60569AC45000000080000000900000000000000090000000910804D030B4D44080000000A10804D090569AC411340D4F60000000A000000000000000A000000040000000112EA9504022A45870000000A13E200FC000000030B4D440210801103000000010000000A0000000A000000020000000012EA94F600000000067ECE8512EA590400000002022A4587000000090000000A0000000A0F878D09067ECE8112EA58F6067ECE8512EA590400000002022A45870000000913E200FC000000030B4D440210801103000000010000000910804D030DE7CA080E5FD909000000040569AC411340D4F60569AC4500000009000000090000000000000009000000090000000112EA9504022A45870000000913E200FC000000030B4D44020000000710804D030DE7CA080000000A0000000700000001000000020000000012EA94F600000000067ECE8512EA590400000002022A45870000000913E200FC000000030B4D44020000000910804D030DE7CA080000000A000000090000000112EA9504022A45870000000913E200FC000000030B4D4402000000090000000500000002000000040F878D030C9A87080000000A0F878D09067ECE8112EA58F6067ECE8512EA590400000002022A45870000000A13E200FC000000030DE7CA020E5FD903000000010DE7CA080000000A0E6015090569AC411340D4F60569AC451340D50400000002033F67C7000000090000000700000007000000000000000A000000040E6015030000000A000000010000000A000000000000000A000000040000000100000004000000031386ACFC000000030CFD9C090F34D108000000040C9A8702000000070F878D03067ECE810000000712EA94F600000000067ECE8512EA590400000002067ECE8712EA58FC0AD357890000000710D13D080DE7CA02000000070E601503000000070000000100000004000000030000000700000007000000010F350D080C9A87020F875103000000010C9A87080F87510900000004067ECE8112EA58F6067ECE8512EA590400000002067ECE8712EA58FC0B4D440210801103000000010000000510804D030B4D4408108011090000000400000005000000050000000100000003000000050000000500000000000000050F878D09067ECE8112EA58F6067ECE8512EA590400000002067ECE8712EA58FC0B4D44020000000710804D0300000007000000010000000300000005000000070000000012EA94F600000000067ECE8512EA5904000000020000000500000005000000040F878D030C9A87080F87510900000004067ECE8112EA58F6067ECE8512EA590400000002067ECE8712EA58FC0DE7CA020E5FD903000000010B4D44080000000A000000050000000A000000030000000512EA9504067ECE870000000A00000005000000020000000012EA94F600000000067ECE8512EA59040000000200000005000000050F878D09067ECE8112EA58F6067ECE8512EA590400000002067ECE8712EA58FC0DE7CA020E5FD903000000010DE7CA080E5FD909000000040569AC411340D4F60569AC451340D50400000002000000070000000500000000000000050E60150900000007000000040E6015030DE7CA080000000A0E6015090569AC41000000070000000A00000004000000010000000312EA94FC000000030DE7CA02000000070000000512EA9504067ECE8712EA58FC0DE7CA02000000070000000A0000000300000005000000020000000012EA94F600000000067ECE8512EA590400000002067ECE8712EA58FC0DE7CA020E5FD90300000001000000050000000500000003000000050000000500000004000000010000000400000002"
theorem small_4895225_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4895225_right_root small_4895225_right_fuel small_4895225_right_count small_4895225_right_encoded = true := by
  decide +kernel
theorem small_4895225_right_covered : CoveredBy scale carrier boxes small_4895225_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4895225_right_root small_4895225_right_fuel small_4895225_right_count small_4895225_right_encoded small_4895225_right_checked

theorem cover_4895225 : CoveredBy scale carrier boxes root_4895225 := by
  apply coveredBy_split_literal root_4895225 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0347.root_4895226 small_4895225_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0347.cover_4895226
  · exact small_4895225_right_covered
#print axioms cover_4895225

def root_4895220 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895220_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895220_right_fuel : Nat := 1
def small_4895220_right_count : Nat := 1
def small_4895220_right_encoded : String := "00000001"
theorem small_4895220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4895220_right_root small_4895220_right_fuel small_4895220_right_count small_4895220_right_encoded = true := by
  decide +kernel
theorem small_4895220_right_covered : CoveredBy scale carrier boxes small_4895220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4895220_right_root small_4895220_right_fuel small_4895220_right_count small_4895220_right_encoded small_4895220_right_checked

theorem cover_4895220 : CoveredBy scale carrier boxes root_4895220 := by
  apply coveredBy_split_literal root_4895220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4895225 small_4895220_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4895225
  · exact small_4895220_right_covered
#print axioms cover_4895220

def root_4893610 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4893610 : CoveredBy scale carrier boxes root_4893610 := by
  apply coveredBy_split_literal root_4893610 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1833.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4895220 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1833.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4895220
#print axioms cover_4893610

def root_4893604 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4893604_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4893604_left_fuel : Nat := 1
def small_4893604_left_count : Nat := 1
def small_4893604_left_encoded : String := "00000000"
theorem small_4893604_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4893604_left_root small_4893604_left_fuel small_4893604_left_count small_4893604_left_encoded = true := by
  decide +kernel
theorem small_4893604_left_covered : CoveredBy scale carrier boxes small_4893604_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4893604_left_root small_4893604_left_fuel small_4893604_left_count small_4893604_left_encoded small_4893604_left_checked

theorem cover_4893604 : CoveredBy scale carrier boxes root_4893604 := by
  apply coveredBy_split_literal root_4893604 small_4893604_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4893610 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4893604_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4893610
#print axioms cover_4893604

def root_4881998 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4881998 : CoveredBy scale carrier boxes root_4881998 := by
  apply coveredBy_split_literal root_4881998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4881999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4893604 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4881999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4893604
#print axioms cover_4881998

def root_4881993 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881993_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881993_right_fuel : Nat := 1
def small_4881993_right_count : Nat := 1
def small_4881993_right_encoded : String := "00000004"
theorem small_4881993_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881993_right_root small_4881993_right_fuel small_4881993_right_count small_4881993_right_encoded = true := by
  decide +kernel
theorem small_4881993_right_covered : CoveredBy scale carrier boxes small_4881993_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881993_right_root small_4881993_right_fuel small_4881993_right_count small_4881993_right_encoded small_4881993_right_checked

theorem cover_4881993 : CoveredBy scale carrier boxes root_4881993 := by
  apply coveredBy_split_literal root_4881993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881998 small_4881993_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881998
  · exact small_4881993_right_covered
#print axioms cover_4881993

def root_4881821 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881821_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881821_left_fuel : Nat := 15
def small_4881821_left_count : Nat := 83
def small_4881821_left_encoded : String := "120701080000000404548A01138670F60CFD9C030F34D1020000000104548A05138671040000000204548A070000000800000007000000080F350D0204548A05138671040000000204548A07138670FC04548A09000000071386AD080C9A8702000000070F878D03022A45810000000700000008000000010000000400000003000000070000000700000001000000001386ACF6000000000CFD9C030F34D1020000000104548A05138671040000000204548A07138670FC00000008000000031386ACFC0000000304548A09000000071386AD08067ECE81000000080000000800000004000000080F350D0204548A05138671040000000204548A07000000061386ACFC0000000304548A09000000061386AD080C9A8702000000070F878D030000000700000001000000041386AD0404548A07138670FC0000000600000003000000070000000200000001"
theorem small_4881821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881821_left_root small_4881821_left_fuel small_4881821_left_count small_4881821_left_encoded = true := by
  decide +kernel
theorem small_4881821_left_covered : CoveredBy scale carrier boxes small_4881821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881821_left_root small_4881821_left_fuel small_4881821_left_count small_4881821_left_encoded small_4881821_left_checked

theorem cover_4881821 : CoveredBy scale carrier boxes root_4881821 := by
  apply coveredBy_split_literal root_4881821 small_4881821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881993 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4881821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881993
#print axioms cover_4881821

def root_4881816 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881816_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881816_right_fuel : Nat := 1
def small_4881816_right_count : Nat := 1
def small_4881816_right_encoded : String := "00000003"
theorem small_4881816_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881816_right_root small_4881816_right_fuel small_4881816_right_count small_4881816_right_encoded = true := by
  decide +kernel
theorem small_4881816_right_covered : CoveredBy scale carrier boxes small_4881816_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881816_right_root small_4881816_right_fuel small_4881816_right_count small_4881816_right_encoded small_4881816_right_checked

theorem cover_4881816 : CoveredBy scale carrier boxes root_4881816 := by
  apply coveredBy_split_literal root_4881816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881821 small_4881816_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881821
  · exact small_4881816_right_covered
#print axioms cover_4881816

def root_4881815 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881815_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881815_right_fuel : Nat := 28
def small_4881815_right_count : Nat := 445
def small_4881815_right_encoded : String := "12073CFC0000000308A91309120701080000000404548A01000000071386ACF6000000000CFD9C030F34D1020000000104548A05138671040000000200000007000000070F350D02000000070000000112073D0804548A01138670F60CFD9C030F34D1020000000104548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D10800000004000000070F350D080C9A8708000000090F878D09000000090000000400000004000000030F350CFC00000003000000091386AD040CFD9C070F34D0FC0CFD9C090F34D10800000004000000070F350D080C9A8708000000090F878D09000000070000000400000004000000030F350CFC0000000300000007000000020F350D0204548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D10800000004000000070F350D080C9A87020F875103000000010C9A87080F87510900000004022A458113E1C4F6022A458513E1C504000000020AD3578710D100FC000000060000000300000006000000070000000013E200F600000000022A458513E1C504000000020AD3578710D100FC0B4D440210801103000000010000000810804D030B4D44080000000600000006000000010000000300000005000000050F878D0900000007000000040F878D030C9A87080F87510900000004022A45810000000913E200F600000000022A458500000009000000090F878D09022A45810000000713E200F600000000022A458513E1C504000000020AD3578710D100FC0DE7CA02000000070E6015030000000900000001000000030000000700000007000000040000000100000004000000030F350CFC000000030CFD9C09000000070F350D080C9A8702000000070F878D030000000900000001000000041386AD040CFD9C070F34D0FC0CFD9C09000000070F350D080C9A8702000000070F878D030C9A87080F87510900000004022A4581000000070000000500000007000000010000000400000003000000070000000200000001000000001386ACF6000000000CFD9C030F34D1020000000104548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D10800000004067ECE8112EA58F60AD3578310D1010200000001022A458513E1C504000000020AD3578710D100FC0AD35789000000070000000700000003000000070000000710D13D0200000007000000010000000012EA94F6000000000AD3578310D1010200000001022A458513E1C504000000020AD3578710D100FC0AD357890000000700000005000000030000000513E201040AD3578710D100FC0000000800000003000000050000000210D13D02022A458513E1C504000000020AD3578710D100FC0AD357890000000700000005000000030000000500000005000000010F350D080C9A87080F87510900000004067ECE810000000912EA94F600000000000000090F878D09067ECE8112EA58F60AD357830000000910D13D02022A45850000000900000005000000010000000012EA94F6000000000AD3578310D101020000000100000009000000050000000400000004000000030F350CFC000000030CFD9C090F34D1080000000400000005000000051386AD040CFD9C070F34D0FC0CFD9C090F34D10800000004067ECE810000000712EA94F6000000000AD3578310D101020000000100000005000000050F350D080C9A87080F87510900000004067ECE8100000009000000050F878D09067ECE8112EA58F60AD35783000000090000000500000000000000050000000400000004000000030F350CFC000000030CFD9C090000000700000005000000020F350D0204548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D108000000040C9A8702000000070F878D03067ECE810000000712EA94F60000000000000007000000010F350D080C9A87020F875103000000010C9A87080F87510900000004000000050F878D09067ECE8112EA58F6022A458513E1C5040000000200000007000000050000000000000005000000040F878D030C9A87080F87510900000004067ECE8112EA58F6022A458513E1C504000000020AD3578710D100FC0DE7CA020E5FD90300000001000000050000000500000003000000050000000500000000000000050F878D09067ECE8112EA58F6022A458513E1C504000000020AD3578710D100FC0DE7CA020E5FD903000000010DE7CA080E5FD9090000000400000005000000050E6015030DE7CA080E5FD909000000040000000500000005000000010000000300000005000000050000000000000005000000040000000100000004000000030F350CFC000000030CFD9C090F34D1080000000400000005000000051386AD040CFD9C070F34D0FC0CFD9C090F34D10800000004000000070F350D080C9A87020F87510300000001000000050000000500000004000000030F350CFC0000000300000005000000020000000100000004"
theorem small_4881815_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881815_right_root small_4881815_right_fuel small_4881815_right_count small_4881815_right_encoded = true := by
  decide +kernel
theorem small_4881815_right_covered : CoveredBy scale carrier boxes small_4881815_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881815_right_root small_4881815_right_fuel small_4881815_right_count small_4881815_right_encoded small_4881815_right_checked

theorem cover_4881815 : CoveredBy scale carrier boxes root_4881815 := by
  apply coveredBy_split_literal root_4881815 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881816 small_4881815_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881816
  · exact small_4881815_right_covered
#print axioms cover_4881815

def root_4881809 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881809_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881809_left_fuel : Nat := 1
def small_4881809_left_count : Nat := 1
def small_4881809_left_encoded : String := "00000002"
theorem small_4881809_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881809_left_root small_4881809_left_fuel small_4881809_left_count small_4881809_left_encoded = true := by
  decide +kernel
theorem small_4881809_left_covered : CoveredBy scale carrier boxes small_4881809_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881809_left_root small_4881809_left_fuel small_4881809_left_count small_4881809_left_encoded small_4881809_left_checked

theorem cover_4881809 : CoveredBy scale carrier boxes root_4881809 := by
  apply coveredBy_split_literal root_4881809 small_4881809_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881815 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4881809_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881815
#print axioms cover_4881809

def root_4881808 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4881808 : CoveredBy scale carrier boxes root_4881808 := by
  apply coveredBy_split_literal root_4881808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881809 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1837.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881809
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1837.covered
#print axioms cover_4881808

def root_4881803 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881803_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881803_right_fuel : Nat := 1
def small_4881803_right_count : Nat := 1
def small_4881803_right_encoded : String := "00000001"
theorem small_4881803_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881803_right_root small_4881803_right_fuel small_4881803_right_count small_4881803_right_encoded = true := by
  decide +kernel
theorem small_4881803_right_covered : CoveredBy scale carrier boxes small_4881803_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881803_right_root small_4881803_right_fuel small_4881803_right_count small_4881803_right_encoded small_4881803_right_checked

theorem cover_4881803 : CoveredBy scale carrier boxes root_4881803 := by
  apply coveredBy_split_literal root_4881803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881808 small_4881803_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881808
  · exact small_4881803_right_covered
#print axioms cover_4881803

def root_4881021 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881021_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881021_left_fuel : Nat := 23
def small_4881021_left_count : Nat := 361
def small_4881021_left_encoded : String := "120701020000000108A91305120701040000000208A91307120700FC08A9130912070108000000040000000812073D0804548A01138670F604548A03138671020000000104548A05138671040000000204548A07138670FC0000000800000003000000091386AD0404548A070000000800000008000000021386AD0204548A05138671040000000204548A07138670FC0CFD9C090F34D10800000004000000080F350D080C9A87080000000A0F878D09022A458100000008000000080000000400000004000000031386ACFC000000030CFD9C090F34D10800000004000000080F350D0800000009000000041386AD0404548A07138670FC0CFD9C09000000080F350D080000000A00000004000000031386ACFC000000030CFD9C09000000080F350D0800000009000000040000000200000001000000001386ACF60000000004548A03138671020000000104548A0513867104000000020000000A0000000A1386AD0204548A05138671040000000204548A07138670FC0CFD9C090000000A0F350D080000000A00000004000000031386ACFC000000030CFD9C090F34D10800000004067ECE8100000008000000080F350D080C9A87080000000A0F878D090000000A00000004000000041386AD0404548A070000000A0000000A0000000200000001000000040000000312073CFC0000000308A91309120701080000000404548A01138670F600000007000000001386ACF60000000004548A031386710200000001000000081386AD0204548A0513867104000000020CFD9C070000000700000007000000070000000112073D0804548A01138670F604548A03000000091386AD0204548A05000000090000000900000001000000001386ACF60000000004548A031386710200000001000000091386AD0204548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D10800000004067ECE810000000912EA94F600000000067ECE830000000812EA9502022A45850000000900000008000000010F350D08000000090000000400000003000000091386AD040CFD9C070F34D0FC0CFD9C090F34D10800000004000000080F350D080000000900000004000000030000000900000002000000010000000412073D0408A91307120700FC08A9130912070108000000040000000812073D0804548A01138670F604548A03000000081386AD020CFD9C050F34D1040000000204548A07000000081386ACFC000000030CFD9C09000000080F350D0800000008000000040000000800000001000000001386ACF60000000004548A030000000A1386AD020CFD9C050F34D104000000020000000A0F350D0404548A07000000081386ACFC000000030CFD9C09000000080000000A0000000200000001000000040000000312073CFC0000000308A91309120701080000000404548A01138670F600000008000000001386ACF60000000004548A03000000081386AD020CFD9C050F34D1040000000200000007000000080000000112073D0804548A01138670F604548A0313867102000000010CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC000000080000000300000009000000021386AD020CFD9C050F34D104000000020CFD9C070F34D0FC0000000900000003000000090F350D040CFD9C070F34D0FC0CFD9C09000000080F350D080000000900000004000000030F350CFC000000030CFD9C09000000070F350D0800000009000000040000000200000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC000000080000000300000009000000021386AD020CFD9C050F34D104000000020CFD9C070F34D0FC0CFD9C09000000090F350D08000000090000000400000003000000090F350D040CFD9C070F34D0FC0CFD9C09000000090F350D080000000900000004000000030000000900000002000000010000000400000002"
theorem small_4881021_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881021_left_root small_4881021_left_fuel small_4881021_left_count small_4881021_left_encoded = true := by
  decide +kernel
theorem small_4881021_left_covered : CoveredBy scale carrier boxes small_4881021_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881021_left_root small_4881021_left_fuel small_4881021_left_count small_4881021_left_encoded small_4881021_left_checked

theorem cover_4881021 : CoveredBy scale carrier boxes root_4881021 := by
  apply coveredBy_split_literal root_4881021 small_4881021_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881803 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4881021_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881803
#print axioms cover_4881021

def root_4881016 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881016_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881016_right_fuel : Nat := 1
def small_4881016_right_count : Nat := 1
def small_4881016_right_encoded : String := "00000000"
theorem small_4881016_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881016_right_root small_4881016_right_fuel small_4881016_right_count small_4881016_right_encoded = true := by
  decide +kernel
theorem small_4881016_right_covered : CoveredBy scale carrier boxes small_4881016_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881016_right_root small_4881016_right_fuel small_4881016_right_count small_4881016_right_encoded small_4881016_right_checked

theorem cover_4881016 : CoveredBy scale carrier boxes root_4881016 := by
  apply coveredBy_split_literal root_4881016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881021 small_4881016_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881021
  · exact small_4881016_right_covered
#print axioms cover_4881016

def root_4881015 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4881015 : CoveredBy scale carrier boxes root_4881015 := by
  apply coveredBy_split_literal root_4881015 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881016 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1838.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881016
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1838.covered
#print axioms cover_4881015

def root_4881010 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881010_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881010_right_fuel : Nat := 1
def small_4881010_right_count : Nat := 1
def small_4881010_right_encoded : String := "00000004"
theorem small_4881010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881010_right_root small_4881010_right_fuel small_4881010_right_count small_4881010_right_encoded = true := by
  decide +kernel
theorem small_4881010_right_covered : CoveredBy scale carrier boxes small_4881010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881010_right_root small_4881010_right_fuel small_4881010_right_count small_4881010_right_encoded small_4881010_right_checked

theorem cover_4881010 : CoveredBy scale carrier boxes root_4881010 := by
  apply coveredBy_split_literal root_4881010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881015 small_4881010_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881015
  · exact small_4881010_right_covered
#print axioms cover_4881010

def root_4878730 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4878730 : CoveredBy scale carrier boxes root_4878730 := by
  apply coveredBy_split_literal root_4878730 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1827.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4881010 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1827.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4881010
#print axioms cover_4878730

def root_4878725 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4878725_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4878725_right_fuel : Nat := 1
def small_4878725_right_count : Nat := 1
def small_4878725_right_encoded : String := "00000003"
theorem small_4878725_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4878725_right_root small_4878725_right_fuel small_4878725_right_count small_4878725_right_encoded = true := by
  decide +kernel
theorem small_4878725_right_covered : CoveredBy scale carrier boxes small_4878725_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4878725_right_root small_4878725_right_fuel small_4878725_right_count small_4878725_right_encoded small_4878725_right_checked

theorem cover_4878725 : CoveredBy scale carrier boxes root_4878725 := by
  apply coveredBy_split_literal root_4878725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.root_4878730 small_4878725_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348.cover_4878730
  · exact small_4878725_right_covered
#print axioms cover_4878725

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0348

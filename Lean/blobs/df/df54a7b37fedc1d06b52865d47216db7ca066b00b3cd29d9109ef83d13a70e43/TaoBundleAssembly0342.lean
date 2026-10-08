import TaoBundleAssembly0339
import TaoBundleAssembly0340
import TaoBundleAssembly0341
import TaoBundleChunkBatch0445
import TaoBundleChunkBatch0448
import TaoBundleChunkBatch0449
import TaoBundleChunkBatch0450
import TaoBundleChunkBatch0451
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342
def root_4770798 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4770798_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4770798_left_fuel : Nat := 28
def small_4770798_left_count : Nat := 261
def small_4770798_left_encoded : String := "1386AD0404548A07138670FC0CFD9C090F34D108000000040C9A87020F87510300000001067ECE810000000A000000060F878D03067ECE8112EA58F6067ECE7B0000000512EA590400000002022A45870000000513E200FC000000030AD357890000000510D13D0800000005000000040000000012EA94F600000000067ECE7B0000000600000006000000010F350D080C9A87020F875103000000010C9A87080F87510900000004000000070F878D09067ECE8112EA58F6000000050000000012EA94F600000000067ECE7B0000000712EA590400000002022A45870000000600000008000000040000000700000004000000031386ACFC000000030CFD9C090F34D108000000040C9A87020F875103000000010000000A0F878D03067ECE810000000A12EA94F600000000067ECE7B0000000A12EA590400000002067ECE8712EA58FC0AD357890000000610D13D080DE7CA02000000060E6015030793F0C1128220F60569AC3B0000000A1340D504000000020569AC47000000060000000A00000000000000060000000100000004000000030000000A000000010F350D080C9A87020F875103000000010C9A87080F87510900000004000000080F878D09067ECE810000000A12EA94F600000000067ECE7B0000000812EA590400000002067ECE8712EA58FC0B4D44020000000800000008000000030000000A000000040F878D030C9A87080F87510900000004067ECE8112EA58F6067ECE7B0000000712EA590400000002067ECE870000000712EA94FC000000030DE7CA02000000080000000700000000000000070F878D09067ECE8112EA58F6067ECE7B12EA95040000000A0000000212EA590400000002067ECE8712EA58FC0DE7CA020E5FD903000000010000000A0E6015030DE7CA08000000070E6015090569AC41000000050000000700000004000000010000000312EA94FC000000030DE7CA020000000A0E6015030DE7CA080E5FD909000000040569AC4100000008000000070000000A000000010000000012EA94F600000000067ECE7B12EA9504067ECE870000000712EA94FC000000030DE7CA020000000A000000070000000212EA590400000002067ECE8712EA58FC0DE7CA020E5FD903000000010DE7CA08000000070E6015090793F0C1000000080000000700000004000000070000000312EA94FC000000030DE7CA020E5FD903000000010DE7CA080E5FD90900000004000000080000000A0E6015030DE7CA080E5FD90900000004000000070E6015090793F0C1128220F60569AC3B0000000A1340D504000000020793F0C7000000070000000A0000000012825CF6000000000569AC3B000000071340D504000000020793F0C70000000712825CFC000000030DAED8830E962502000000010000000700000008000000040000000100000004000000010000000400000002"
theorem small_4770798_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4770798_left_root small_4770798_left_fuel small_4770798_left_count small_4770798_left_encoded = true := by
  decide +kernel
theorem small_4770798_left_covered : CoveredBy scale carrier boxes small_4770798_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4770798_left_root small_4770798_left_fuel small_4770798_left_count small_4770798_left_encoded small_4770798_left_checked

theorem cover_4770798 : CoveredBy scale carrier boxes root_4770798 := by
  apply coveredBy_split_literal root_4770798 small_4770798_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0341.root_4771340 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4770798_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0341.cover_4771340
#print axioms cover_4770798

def root_4770793 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4770793_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4770793_right_fuel : Nat := 1
def small_4770793_right_count : Nat := 1
def small_4770793_right_encoded : String := "00000001"
theorem small_4770793_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4770793_right_root small_4770793_right_fuel small_4770793_right_count small_4770793_right_encoded = true := by
  decide +kernel
theorem small_4770793_right_covered : CoveredBy scale carrier boxes small_4770793_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4770793_right_root small_4770793_right_fuel small_4770793_right_count small_4770793_right_encoded small_4770793_right_checked

theorem cover_4770793 : CoveredBy scale carrier boxes root_4770793 := by
  apply coveredBy_split_literal root_4770793 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4770798 small_4770793_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4770798
  · exact small_4770793_right_covered
#print axioms cover_4770793

def root_4761241 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4761241 : CoveredBy scale carrier boxes root_4761241 := by
  apply coveredBy_split_literal root_4761241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4761242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4770793 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4761242
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4770793
#print axioms cover_4761241

def root_4761235 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4761235_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4761235_left_fuel : Nat := 1
def small_4761235_left_count : Nat := 1
def small_4761235_left_encoded : String := "00000000"
theorem small_4761235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4761235_left_root small_4761235_left_fuel small_4761235_left_count small_4761235_left_encoded = true := by
  decide +kernel
theorem small_4761235_left_covered : CoveredBy scale carrier boxes small_4761235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4761235_left_root small_4761235_left_fuel small_4761235_left_count small_4761235_left_encoded small_4761235_left_checked

theorem cover_4761235 : CoveredBy scale carrier boxes root_4761235 := by
  apply coveredBy_split_literal root_4761235 small_4761235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4761241 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4761235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4761241
#print axioms cover_4761235

def root_4758273 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4758273 : CoveredBy scale carrier boxes root_4758273 := by
  apply coveredBy_split_literal root_4758273 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1779.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4761235 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1779.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4761235
#print axioms cover_4758273

def root_4758268 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4758268_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4758268_right_fuel : Nat := 1
def small_4758268_right_count : Nat := 1
def small_4758268_right_encoded : String := "00000004"
theorem small_4758268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4758268_right_root small_4758268_right_fuel small_4758268_right_count small_4758268_right_encoded = true := by
  decide +kernel
theorem small_4758268_right_covered : CoveredBy scale carrier boxes small_4758268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4758268_right_root small_4758268_right_fuel small_4758268_right_count small_4758268_right_encoded small_4758268_right_checked

theorem cover_4758268 : CoveredBy scale carrier boxes root_4758268 := by
  apply coveredBy_split_literal root_4758268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4758273 small_4758268_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4758273
  · exact small_4758268_right_covered
#print axioms cover_4758268

def root_4757764 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757764_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757764_left_fuel : Nat := 23
def small_4757764_left_count : Nat := 243
def small_4757764_left_encoded : String := "120701080000000404548A01138670F60CFD9C030F34D10200000001045489FB1386AD0404548A07000000050000000A00000002138671040000000204548A07138670FC04548A09000000051386AD08022A4581000000050000000800000004000000031386ACFC0000000304548A09000000081386AD08022A458113E1C4F60AD35783000000080000000A0000000013E200F6000000000AD357830000000810D13D02022A457B0000000A0000000700000001000000040F350D02045489FB0000000A138671040000000204548A07138670FC04548A09000000051386AD080C9A8702000000050F878D03000000050000000100000004000000030000000A00000001000000001386ACF6000000000CFD9C030F34D10200000001045489FB1386AD0404548A07138670FC04548A09000000051386AD08067ECE81000000050000000600000004000000031386ACFC0000000304548A091386710800000004067ECE8112EA58F60AD35783000000050000000600000000000000061386AD08067ECE8112EA58F60AD3578310D1010200000001067ECE7B12EA9504000000050000000212EA590400000002067ECE87000000080000000810D13D020000000A000000010000000012EA94F6000000000AD3578310D1010200000001067ECE7B12EA9504067ECE870000000612EA94FC00000003067ECE890000000612EA95080793F0C10000000A00000006000000040000000212EA590400000002067ECE870000000612EA94FC00000003067ECE890000000612EA9508000000080000000410D13D02067ECE7B0000000A00000006000000010000000400000002138671040000000204548A07138670FC04548A09000000061386AD08067ECE8112EA58F60AD357830000000810D13D020000000600000001000000000000000600000004000000031386ACFC0000000304548A09000000081386AD08067ECE8112EA58F60AD357830000000810D13D02022A457B13E20104067ECE8712EA58FC00000008000000030000000A0000000200000008000000010000000012EA94F6000000000AD3578310D10102000000010000000810D13D02022A457B13E20104067ECE870000000612EA94FC00000003000000060000000213E1C50400000002067ECE87000000060000000700000001000000040F350D02045489FB1386AD0404548A07000000060000000A00000002138671040000000204548A07000000061386ACFC0000000304548A09000000061386AD080C9A8702000000060F878D03067ECE8112EA58F6022A457B0000000A13E1C50400000002000000070000000000000006000000010000000400000001"
theorem small_4757764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4757764_left_root small_4757764_left_fuel small_4757764_left_count small_4757764_left_encoded = true := by
  decide +kernel
theorem small_4757764_left_covered : CoveredBy scale carrier boxes small_4757764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4757764_left_root small_4757764_left_fuel small_4757764_left_count small_4757764_left_encoded small_4757764_left_checked

theorem cover_4757764 : CoveredBy scale carrier boxes root_4757764 := by
  apply coveredBy_split_literal root_4757764 small_4757764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4758268 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4757764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4758268
#print axioms cover_4757764

def root_4757759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757759_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757759_right_fuel : Nat := 1
def small_4757759_right_count : Nat := 1
def small_4757759_right_encoded : String := "00000003"
theorem small_4757759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4757759_right_root small_4757759_right_fuel small_4757759_right_count small_4757759_right_encoded = true := by
  decide +kernel
theorem small_4757759_right_covered : CoveredBy scale carrier boxes small_4757759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4757759_right_root small_4757759_right_fuel small_4757759_right_count small_4757759_right_encoded small_4757759_right_checked

theorem cover_4757759 : CoveredBy scale carrier boxes root_4757759 := by
  apply coveredBy_split_literal root_4757759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4757764 small_4757759_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4757764
  · exact small_4757759_right_covered
#print axioms cover_4757759

def root_4757758 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4757758 : CoveredBy scale carrier boxes root_4757758 := by
  apply coveredBy_split_literal root_4757758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4757759 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1789.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4757759
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1789.covered
#print axioms cover_4757758

def root_4757752 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757752_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757752_left_fuel : Nat := 1
def small_4757752_left_count : Nat := 1
def small_4757752_left_encoded : String := "00000002"
theorem small_4757752_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4757752_left_root small_4757752_left_fuel small_4757752_left_count small_4757752_left_encoded = true := by
  decide +kernel
theorem small_4757752_left_covered : CoveredBy scale carrier boxes small_4757752_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4757752_left_root small_4757752_left_fuel small_4757752_left_count small_4757752_left_encoded small_4757752_left_checked

theorem cover_4757752 : CoveredBy scale carrier boxes root_4757752 := by
  apply coveredBy_split_literal root_4757752 small_4757752_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4757758 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4757752_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4757758
#print axioms cover_4757752

def root_4757240 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757240_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757240_left_fuel : Nat := 24
def small_4757240_left_count : Nat := 243
def small_4757240_left_encoded : String := "12073D0408A91307120700FC08A91309120701080000000404548A010000000A1386ACF6000000000CFD9C030F34D102000000010CFD9BFB000000050F34D1040000000204548A07000000050000000A0000000A12073D0804548A01138670F60CFD9C030F34D102000000010CFD9BFB000000050F34D1040000000204548A07000000051386ACFC000000030CFD9C09000000050F350D0800000005000000040F350D020CFD9BFB000000050F34D1040000000204548A07000000050000000A00000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9BFB000000070F34D1040000000204548A07000000071386ACFC000000030CFD9C090F34D10800000004067ECE8112EA58F60AD35783000000050000000A0000000012EA94F6000000000AD3578310D10102000000010000000710D13D020AD3577B0000000710D1010400000002067ECE87000000070000000A00000001000000070F350D020CFD9BFB0F350D0404548A07000000050000000A000000020F34D1040000000204548A07138670FC0CFD9C090000000500000007000000031386ACFC000000030CFD9C090F34D108000000040000000A0F350D080C9A87020F8751030000000100000008000000070000000400000001000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0804548A01138670F60CFD9C030F34D102000000010CFD9BFB0000000A0F34D104000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000A0F350D080000000900000004000000030000000A0000000A000000001386ACF6000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D108000000040000000A00000007000000030000000A000000020F34D104000000020CFD9C070F34D0FC0CFD9C090F34D10800000004067ECE810000000A12EA94F6000000000AD3578310D10102000000010AD3577B0000000A10D10104000000020AD3578710D100FC0000000A00000003000000090000000A0F350D080C9A8708000000090F878D09067ECE810000000912EA94F6000000000AD357830000000910D13D020AD3577B0000000700000009000000010000000400000004000000030F350CFC000000030CFD9C090F34D108000000040000000A0F350D0800000009000000040F350D020CFD9BFB0000000A0F34D104000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000A0F350D080C9A87020000000A0F878D030C9A87080F87510900000004000000080000000A0000000100000004000000030000000A000000010000000400000002"
theorem small_4757240_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4757240_left_root small_4757240_left_fuel small_4757240_left_count small_4757240_left_encoded = true := by
  decide +kernel
theorem small_4757240_left_covered : CoveredBy scale carrier boxes small_4757240_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4757240_left_root small_4757240_left_fuel small_4757240_left_count small_4757240_left_encoded small_4757240_left_checked

theorem cover_4757240 : CoveredBy scale carrier boxes root_4757240 := by
  apply coveredBy_split_literal root_4757240 small_4757240_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4757752 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4757240_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4757752
#print axioms cover_4757240

def root_4757235 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757235_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4757235_right_fuel : Nat := 1
def small_4757235_right_count : Nat := 1
def small_4757235_right_encoded : String := "00000001"
theorem small_4757235_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4757235_right_root small_4757235_right_fuel small_4757235_right_count small_4757235_right_encoded = true := by
  decide +kernel
theorem small_4757235_right_covered : CoveredBy scale carrier boxes small_4757235_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4757235_right_root small_4757235_right_fuel small_4757235_right_count small_4757235_right_encoded small_4757235_right_checked

theorem cover_4757235 : CoveredBy scale carrier boxes root_4757235 := by
  apply coveredBy_split_literal root_4757235 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4757240 small_4757235_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4757240
  · exact small_4757235_right_covered
#print axioms cover_4757235

def root_4755635 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4755635 : CoveredBy scale carrier boxes root_4755635 := by
  apply coveredBy_split_literal root_4755635 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1778.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4757235 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1778.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4757235
#print axioms cover_4755635

def root_4755630 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4755630_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4755630_right_fuel : Nat := 1
def small_4755630_right_count : Nat := 1
def small_4755630_right_encoded : String := "00000000"
theorem small_4755630_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4755630_right_root small_4755630_right_fuel small_4755630_right_count small_4755630_right_encoded = true := by
  decide +kernel
theorem small_4755630_right_covered : CoveredBy scale carrier boxes small_4755630_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4755630_right_root small_4755630_right_fuel small_4755630_right_count small_4755630_right_encoded small_4755630_right_checked

theorem cover_4755630 : CoveredBy scale carrier boxes root_4755630 := by
  apply coveredBy_split_literal root_4755630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4755635 small_4755630_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4755635
  · exact small_4755630_right_covered
#print axioms cover_4755630

def root_4787912 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4787912 : CoveredBy scale carrier boxes root_4787912 := by
  apply coveredBy_split_literal root_4787912 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1790.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1791.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1790.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1791.covered
#print axioms cover_4787912

def root_4787906 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4787906_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4787906_left_fuel : Nat := 1
def small_4787906_left_count : Nat := 1
def small_4787906_left_encoded : String := "00000001"
theorem small_4787906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4787906_left_root small_4787906_left_fuel small_4787906_left_count small_4787906_left_encoded = true := by
  decide +kernel
theorem small_4787906_left_covered : CoveredBy scale carrier boxes small_4787906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4787906_left_root small_4787906_left_fuel small_4787906_left_count small_4787906_left_encoded small_4787906_left_checked

theorem cover_4787906 : CoveredBy scale carrier boxes root_4787906 := by
  apply coveredBy_split_literal root_4787906 small_4787906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4787912 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4787906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4787912
#print axioms cover_4787906

def root_4797724 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4797724_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4797724_left_fuel : Nat := 27
def small_4797724_left_count : Nat := 341
def small_4797724_left_encoded : String := "12070108000000040CFD9C010F34D0F60CFD9C030F34D10200000001045489FB1386AD040CFD9C070F34D0FC04548A0913867108000000040AD3578110D100F60AD35783000000060000000600000000000000061386AD080AD3578110D100F60AD3578310D1010200000001067ECE7B12EA95040AD3578710D100FC067ECE890000000612EA950809BE3541117740F609BE354300000006000000060000000000000006000000040000000310D13CFC00000003067ECE8912EA5908000000040000000612EA950809BE35410000000A11777CF60000000009BE354311774102000000010793F0BB00000009000000090000000A000000040000000212EA5904000000020AD3578710D100FC067ECE890000000612EA950809BE3541117740F609BE354300000006000000060000000000000006000000040000000310D13CFC00000003067ECE890000000712EA950809BE3541117740F609BE35430000000811777D0200000007000000010000000011777CF600000000000000050000000410D13D02067ECE7B0000000A12EA5904000000020AD35787000000060000000A000000010000000010D13CF6000000000AD3578310D1010200000001067ECE7B12EA95040AD357870000000610D13CFC00000003067ECE890000000612EA950800000006000000040000000212EA5904000000020AD357870000000610D13CFC000000030000000510D13D02067ECE7B00000006000000060000000100000004000000030F350CFC0000000304548A0913867108000000040C9A86FC00000007000000071386AD080C9A86FC0F878D070AD3578110D100F60AD3578310D1010200000001067ECE7B12EA95040000000A000000020000000710D13D020000000A000000010000000010D13CF6000000000AD3578310D10102000000010000000500000005000000030F8751070000000300000005000000040000000213867104000000020CFD9C070F34D0FC04548A091386710800000004000000061386AD080AD3578110D100F60AD3578310D1010200000001022A457B13E201040AD3578710D100FC000000080000000310D13CFC00000003000000070000000213E1C504000000020000000810D13D02022A457B13E201040AD3578700000006000000070000000200000007000000010000000010D13CF6000000000AD3578310D1010200000001022A457B13E201040AD357870000000600000005000000020000000510D13D02022A457B00000006000000050000000100000004000000030F350CFC00000003000000070F350D02045489FB1386AD040CFD9C070F34D0FC04548A09000000061386AD080C9A8702000000060F878D030AD357810000000A000000060000000100000004000000030F350CFC0000000304548A09000000071386AD080C9A87020000000A0F878D030C9A86FC0000000A0F875107000000030000000500000001000000040000000213867104000000020CFD9C070F34D0FC04548A09000000061386AD080C9A8702000000060F878D030AD3578100000007000000060000000100000004000000030000000700000001000000000F350CF6000000000CFD9C030F34D10200000001045489FB1386AD040CFD9C070F34D0FC04548A09000000061386AD080C9A86F60F878D010AD357830000000600000006000000000000000600000004000000030F350CFC0000000304548A09138671080000000400000005000000050000000213867104000000020CFD9C070F34D0FC0000000600000003000000050F350D02045489FB1386AD040CFD9C07000000060F350CFC0000000304548A0900000006000000050000000213867104000000020CFD9C07000000060F350CFC000000030000000500000001"
theorem small_4797724_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4797724_left_root small_4797724_left_fuel small_4797724_left_count small_4797724_left_encoded = true := by
  decide +kernel
theorem small_4797724_left_covered : CoveredBy scale carrier boxes small_4797724_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4797724_left_root small_4797724_left_fuel small_4797724_left_count small_4797724_left_encoded small_4797724_left_checked

theorem cover_4797724 : CoveredBy scale carrier boxes root_4797724 := by
  apply coveredBy_split_literal root_4797724 small_4797724_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1794.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4797724_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1794.covered
#print axioms cover_4797724

def root_4797718 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4797718_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4797718_left_fuel : Nat := 1
def small_4797718_left_count : Nat := 1
def small_4797718_left_encoded : String := "00000003"
theorem small_4797718_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4797718_left_root small_4797718_left_fuel small_4797718_left_count small_4797718_left_encoded = true := by
  decide +kernel
theorem small_4797718_left_covered : CoveredBy scale carrier boxes small_4797718_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4797718_left_root small_4797718_left_fuel small_4797718_left_count small_4797718_left_encoded small_4797718_left_checked

theorem cover_4797718 : CoveredBy scale carrier boxes root_4797718 := by
  apply coveredBy_split_literal root_4797718 small_4797718_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4797724 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4797718_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4797724
#print axioms cover_4797718

def root_4794710 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4794710 : CoveredBy scale carrier boxes root_4794710 := by
  apply coveredBy_split_literal root_4794710 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1793.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4797718 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1793.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4797718
#print axioms cover_4794710

def root_4794704 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4794704_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4794704_left_fuel : Nat := 1
def small_4794704_left_count : Nat := 1
def small_4794704_left_encoded : String := "00000002"
theorem small_4794704_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4794704_left_root small_4794704_left_fuel small_4794704_left_count small_4794704_left_encoded = true := by
  decide +kernel
theorem small_4794704_left_covered : CoveredBy scale carrier boxes small_4794704_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4794704_left_root small_4794704_left_fuel small_4794704_left_count small_4794704_left_encoded small_4794704_left_checked

theorem cover_4794704 : CoveredBy scale carrier boxes root_4794704 := by
  apply coveredBy_split_literal root_4794704 small_4794704_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4794710 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4794704_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4794710
#print axioms cover_4794704

def root_4792454 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4792454 : CoveredBy scale carrier boxes root_4792454 := by
  apply coveredBy_split_literal root_4792454 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1792.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4794704 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1792.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4794704
#print axioms cover_4792454

def root_4792449 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4792449_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4792449_right_fuel : Nat := 1
def small_4792449_right_count : Nat := 1
def small_4792449_right_encoded : String := "00000001"
theorem small_4792449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4792449_right_root small_4792449_right_fuel small_4792449_right_count small_4792449_right_encoded = true := by
  decide +kernel
theorem small_4792449_right_covered : CoveredBy scale carrier boxes small_4792449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4792449_right_root small_4792449_right_fuel small_4792449_right_count small_4792449_right_encoded small_4792449_right_checked

theorem cover_4792449 : CoveredBy scale carrier boxes root_4792449 := by
  apply coveredBy_split_literal root_4792449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4792454 small_4792449_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4792454
  · exact small_4792449_right_covered
#print axioms cover_4792449

def root_4787905 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4787905 : CoveredBy scale carrier boxes root_4787905 := by
  apply coveredBy_split_literal root_4787905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4787906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4792449 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4787906
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4792449
#print axioms cover_4787905

def root_4787899 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4787899_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4787899_left_fuel : Nat := 1
def small_4787899_left_count : Nat := 1
def small_4787899_left_encoded : String := "00000000"
theorem small_4787899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4787899_left_root small_4787899_left_fuel small_4787899_left_count small_4787899_left_encoded = true := by
  decide +kernel
theorem small_4787899_left_covered : CoveredBy scale carrier boxes small_4787899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4787899_left_root small_4787899_left_fuel small_4787899_left_count small_4787899_left_encoded small_4787899_left_checked

theorem cover_4787899 : CoveredBy scale carrier boxes root_4787899 := by
  apply coveredBy_split_literal root_4787899 small_4787899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4787905 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4787899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4787905
#print axioms cover_4787899

def root_4755629 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4755629 : CoveredBy scale carrier boxes root_4755629 := by
  apply coveredBy_split_literal root_4755629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4755630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4787899 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4755630
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4787899
#print axioms cover_4755629

def root_4755624 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4755624_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4755624_right_fuel : Nat := 1
def small_4755624_right_count : Nat := 1
def small_4755624_right_encoded : String := "00000004"
theorem small_4755624_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4755624_right_root small_4755624_right_fuel small_4755624_right_count small_4755624_right_encoded = true := by
  decide +kernel
theorem small_4755624_right_covered : CoveredBy scale carrier boxes small_4755624_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4755624_right_root small_4755624_right_fuel small_4755624_right_count small_4755624_right_encoded small_4755624_right_checked

theorem cover_4755624 : CoveredBy scale carrier boxes root_4755624 := by
  apply coveredBy_split_literal root_4755624 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4755629 small_4755624_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4755629
  · exact small_4755624_right_covered
#print axioms cover_4755624

def root_4754034 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4754034 : CoveredBy scale carrier boxes root_4754034 := by
  apply coveredBy_split_literal root_4754034 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1777.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4755624 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1777.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4755624
#print axioms cover_4754034

def root_4754029 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4754029_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4754029_right_fuel : Nat := 1
def small_4754029_right_count : Nat := 1
def small_4754029_right_encoded : String := "00000003"
theorem small_4754029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4754029_right_root small_4754029_right_fuel small_4754029_right_count small_4754029_right_encoded = true := by
  decide +kernel
theorem small_4754029_right_covered : CoveredBy scale carrier boxes small_4754029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4754029_right_root small_4754029_right_fuel small_4754029_right_count small_4754029_right_encoded small_4754029_right_checked

theorem cover_4754029 : CoveredBy scale carrier boxes root_4754029 := by
  apply coveredBy_split_literal root_4754029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4754034 small_4754029_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4754034
  · exact small_4754029_right_covered
#print axioms cover_4754029

def root_4754028 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4754028 : CoveredBy scale carrier boxes root_4754028 := by
  apply coveredBy_split_literal root_4754028 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4754029 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1795.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4754029
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1795.covered
#print axioms cover_4754028

def root_4754022 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4754022_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4754022_left_fuel : Nat := 1
def small_4754022_left_count : Nat := 1
def small_4754022_left_encoded : String := "00000002"
theorem small_4754022_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4754022_left_root small_4754022_left_fuel small_4754022_left_count small_4754022_left_encoded = true := by
  decide +kernel
theorem small_4754022_left_covered : CoveredBy scale carrier boxes small_4754022_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4754022_left_root small_4754022_left_fuel small_4754022_left_count small_4754022_left_encoded small_4754022_left_checked

theorem cover_4754022 : CoveredBy scale carrier boxes root_4754022 := by
  apply coveredBy_split_literal root_4754022 small_4754022_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4754028 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4754022_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4754028
#print axioms cover_4754022

def root_4753472 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4753472_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4753472_left_fuel : Nat := 27
def small_4753472_left_count : Nat := 257
def small_4753472_left_encoded : String := "1151E8FB0A0000FC115225070A0001081151E9090000000408A91301120700F60000000700000000000000071152250908A91301120700F608A91303120701020000000108A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040000000A0000000912073D0208A91307120700FC00000005000000030000000A000000010000000012073CF60000000008A91303120701020000000108A91307120700FC000000070000000312073CFC0000000308A91309120701080000000405000104135D44FB0CFD9C010F34D0F600000005000000000F350CF60000000004548A031386710200000001000000071386AD020CFD9C07000000060000000A0000000100000002135D80FB000000020CFD9C010F34D0F604548A0313867102000000010CFD9C070F34D0FC00000005000000030000000A0000000A000000000F350CF60000000004548A0313867102000000010CFD9C07000000070F350CFC0000000304548A0913867108000000040C9A86F60F878D010C9A86FC0000000A00000009000000000F875101000000000C9A86FC0000000600000006000000071386AD020CFD9C070F34D0FC00000006000000030F350CFC0000000304548A0913867108000000040000000A1386AD080C9A86F6000000070F8751010000000000000007000000040000000112073D08000000070000000412073D0208A91307120700FC08A91309120701080000000400000006000000070000000312073CFC0000000308A9130912070108000000040000000A12073D0805000104135D44FB0CFD9C010000000A0000000700000002135D80FB000000020CFD9C010F34D0F60CFD9C030F34D102000000010CFD9C07000000070000000A0000000A000000000F350CF6000000000CFD9C030F34D10200000001000000070F350D020CFD9C07000000080000000A00000001000000040000000100000004000000031151E907000000030A0001081151E90900000004000000091152250908A91301120700F608A91303000000090000000A0000000012073CF60000000008A91303120701020000000108A91309120701080000000405000104135D44FB050000FC0000000A0000000900000002135D80FB00000002050000FC135D81070CFD9C01000000090F350CF60000000004548A03000000090000000A00000003000000090000000912073D0208A9130912070108000000040000000A12073D0805000104135D44FB050000FC0000000A0000000900000002135D80FB00000002050000FC135D81070CFD9C010000000A0F350CF6000000000CFD9C030F34D10200000001000000090000000A00000003135D4507000000030CFD9C01000000090F350CF6000000000CFD9C03000000090000000A00000004000000010000000400000002"
theorem small_4753472_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4753472_left_root small_4753472_left_fuel small_4753472_left_count small_4753472_left_encoded = true := by
  decide +kernel
theorem small_4753472_left_covered : CoveredBy scale carrier boxes small_4753472_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4753472_left_root small_4753472_left_fuel small_4753472_left_count small_4753472_left_encoded small_4753472_left_checked

theorem cover_4753472 : CoveredBy scale carrier boxes root_4753472 := by
  apply coveredBy_split_literal root_4753472 small_4753472_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4754022 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4753472_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4754022
#print axioms cover_4753472

def root_4753467 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4753467_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4753467_right_fuel : Nat := 1
def small_4753467_right_count : Nat := 1
def small_4753467_right_encoded : String := "00000001"
theorem small_4753467_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4753467_right_root small_4753467_right_fuel small_4753467_right_count small_4753467_right_encoded = true := by
  decide +kernel
theorem small_4753467_right_covered : CoveredBy scale carrier boxes small_4753467_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4753467_right_root small_4753467_right_fuel small_4753467_right_count small_4753467_right_encoded small_4753467_right_checked

theorem cover_4753467 : CoveredBy scale carrier boxes root_4753467 := by
  apply coveredBy_split_literal root_4753467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4753472 small_4753467_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4753472
  · exact small_4753467_right_covered
#print axioms cover_4753467

def root_4749959 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4749959 : CoveredBy scale carrier boxes root_4749959 := by
  apply coveredBy_split_literal root_4749959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4749960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4753467 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4749960
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4753467
#print axioms cover_4749959

def root_4749954 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4749954_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4749954_right_fuel : Nat := 1
def small_4749954_right_count : Nat := 1
def small_4749954_right_encoded : String := "00000000"
theorem small_4749954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4749954_right_root small_4749954_right_fuel small_4749954_right_count small_4749954_right_encoded = true := by
  decide +kernel
theorem small_4749954_right_covered : CoveredBy scale carrier boxes small_4749954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4749954_right_root small_4749954_right_fuel small_4749954_right_count small_4749954_right_encoded small_4749954_right_checked

theorem cover_4749954 : CoveredBy scale carrier boxes root_4749954 := by
  apply coveredBy_split_literal root_4749954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4749959 small_4749954_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4749959
  · exact small_4749954_right_covered
#print axioms cover_4749954

def root_4749953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4749953 : CoveredBy scale carrier boxes root_4749953 := by
  apply coveredBy_split_literal root_4749953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4749954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1796.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4749954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1796.covered
#print axioms cover_4749953

def root_4744989 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4744989 : CoveredBy scale carrier boxes root_4744989 := by
  apply coveredBy_split_literal root_4744989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4744990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4749953 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4744990
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4749953
#print axioms cover_4744989

def root_4739727 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4739727 : CoveredBy scale carrier boxes root_4739727 := by
  apply coveredBy_split_literal root_4739727 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4739728 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4744989 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4739728
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4744989
#print axioms cover_4739727

def root_4731073 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4731073 : CoveredBy scale carrier boxes root_4731073 := by
  apply coveredBy_split_literal root_4731073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4731074 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4739727 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4731074
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4739727
#print axioms cover_4731073

def root_4808352 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4808352 : CoveredBy scale carrier boxes root_4808352 := by
  apply coveredBy_split_literal root_4808352 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1798.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1799.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1798.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1799.covered
#print axioms cover_4808352

def root_4808351 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4808351 : CoveredBy scale carrier boxes root_4808351 := by
  apply coveredBy_split_literal root_4808351 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4808352 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1800.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4808352
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1800.covered
#print axioms cover_4808351

def root_4805481 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4805481 : CoveredBy scale carrier boxes root_4805481 := by
  apply coveredBy_split_literal root_4805481 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1797.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4808351 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1797.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4808351
#print axioms cover_4805481

def root_4818399 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4818399 : CoveredBy scale carrier boxes root_4818399 := by
  apply coveredBy_split_literal root_4818399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1802.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1803.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1802.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1803.covered
#print axioms cover_4818399

def root_4818394 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4818394_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4818394_right_fuel : Nat := 1
def small_4818394_right_count : Nat := 1
def small_4818394_right_encoded : String := "00000000"
theorem small_4818394_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4818394_right_root small_4818394_right_fuel small_4818394_right_count small_4818394_right_encoded = true := by
  decide +kernel
theorem small_4818394_right_covered : CoveredBy scale carrier boxes small_4818394_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4818394_right_root small_4818394_right_fuel small_4818394_right_count small_4818394_right_encoded small_4818394_right_checked

theorem cover_4818394 : CoveredBy scale carrier boxes root_4818394 := by
  apply coveredBy_split_literal root_4818394 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.root_4818399 small_4818394_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342.cover_4818399
  · exact small_4818394_right_covered
#print axioms cover_4818394

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0342

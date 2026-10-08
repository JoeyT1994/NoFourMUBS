import TaoBundleAssembly0093
import TaoBundleChunkBatch0355
import TaoBundleChunkBatch0356
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094
def root_3753502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3753502_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3753502_left_fuel : Nat := 23
def small_3753502_left_count : Nat := 459
def small_3753502_left_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A91301120700F6000000090000000012073CF60000000008A912FF12073D08050000F800000009135D45030000000105000104135D4505000000020000000900000009000000040000000900000003115224FD000000030A0001081151E8FF08A91301120700F608A912FD000000051207010600000003050000F800000005135D4503000000010000000A0000000012073CF60000000008A912FD12073D06050000F8135D81030500010400000005135D81050500010800000005135D80FF000000040CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BFD0F350D0600000005000000030F34D10600000003000000080000000200000001135D45030000000105000104135D45050000000205000108135D44FF0000000500000004135D80FF000000040CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BFD0000000600000008135D810505000108135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BFD000000060F34D106000000030000000800000004135D80FF000000040CFD9C010F34D0F60CFD9BFD000000050F34D1060000000300000008000000000F350CF6000000000CFD9BFD0F350D060C9A86F60F878D010C9A870600000005000000080000000000000006000000030F34D106000000030000000800000002000000031207010600000003050000F8135D810305000104135D45050000000205000108135D44FF0CFD9C01000000050000000A00000004135D80FF000000040CFD9C01000000080000000A135D810505000108135D44FF0CFD9C010F34D0F600000005000000000F350CF600000000045489FD1386AD060C9A86F60F878D010000000500000000000000080000000313867106000000030000000A00000004135D80FF000000040CFD9C010F34D0F6045489FD0000000813867106000000030000000A000000000F350CF600000000045489FD0000000813867106000000030C9A86F60000000A000000080000000200000001135D450300000001050001040000000A135D810505000108135D44FF0CFD9C010F34D0F60000000A000000000000000A00000004135D80FF000000040CFD9C010F34D0F60000000A000000000000000A0000000200000004115224FF0000000408A91301120700F608A912FD12073D0608A912FF12073D08050000F8135D810305000104000000050000000900000001135D45030000000105000104135D45050000000204548A01138670F60CFD9BFD000000050F34D106000000030CFD9BFF0000000500000008000000001386ACF6000000000CFD9BFD000000090F34D1060000000300000008135D810504548A01138670F60CFD9BFD000000090F34D10600000003000000090000000000000009000000020000000412070108000000040000000900000003120701060000000308A912FF12073D08050000F8135D810305000104135D45050000000204548A010000000800000008135D810504548A01138670F6045489FD0000000800000008000000001386ACF600000000045489FD000000081386710600000003000000080000000200000001135D45030000000105000104135D45050000000204548A010000000800000008135D810504548A01138670F6045489FD0000000800000008000000001386ACF600000000045489FD000000080000000800000002000000041207010800000004000000080000000012073CF60000000008A912FD12073D0608A912FF12073D08050000F8135D810305000104135D4505000000020CFD9C010F34D0F60CFD9BFD000000090F34D1060000000300000008000000000F350CF60000000000000007135D81050CFD9C010F34D0F60000000900000000000000090000000200000001135D45030000000105000104135D4505000000020CFD9C010F34D0F60CFD9BFD000000090F34D1060000000300000008000000000F350CF6000000000CFD9BFD0F350D060CFD9BFF00000007000000070000000300000007135D81050CFD9C010F34D0F60CFD9BFD000000090F34D106000000030CFD9BFF0F350D08000000080000000400000008000000000F350CF6000000000CFD9BFD000000090F34D1060000000300000008000000020000000412070108000000040000000900000003120701060000000308A912FF12073D08050000F8135D810305000104135D4505000000020CFD9C01000000080F350CF60000000000000008135D81050CFD9C010F34D0F6045489FD00000008138671060000000300000008000000000F350CF600000000045489FD000000081386710600000003000000080000000200000001135D45030000000105000104135D4505000000020CFD9C010000000800000008135D81050CFD9C010F34D0F6045489FD0000000800000008000000000F350CF600000000045489FD00000008000000080000000200000004120701080000000400000008"
theorem small_3753502_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3753502_left_root small_3753502_left_fuel small_3753502_left_count small_3753502_left_encoded = true := by
  decide +kernel
theorem small_3753502_left_covered : CoveredBy scale carrier boxes small_3753502_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3753502_left_root small_3753502_left_fuel small_3753502_left_count small_3753502_left_encoded small_3753502_left_checked

theorem cover_3753502 : CoveredBy scale carrier boxes root_3753502 := by
  apply coveredBy_split_literal root_3753502 small_3753502_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0093.root_3754490 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3753502_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0093.cover_3754490
#print axioms cover_3753502

def root_3753496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3753496_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3753496_left_fuel : Nat := 1
def small_3753496_left_count : Nat := 1
def small_3753496_left_encoded : String := "00000001"
theorem small_3753496_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3753496_left_root small_3753496_left_fuel small_3753496_left_count small_3753496_left_encoded = true := by
  decide +kernel
theorem small_3753496_left_covered : CoveredBy scale carrier boxes small_3753496_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3753496_left_root small_3753496_left_fuel small_3753496_left_count small_3753496_left_encoded small_3753496_left_checked

theorem cover_3753496 : CoveredBy scale carrier boxes root_3753496 := by
  apply coveredBy_split_literal root_3753496 small_3753496_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3753502 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3753496_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3753502
#print axioms cover_3753496

def root_3748118 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3748118 : CoveredBy scale carrier boxes root_3748118 := by
  apply coveredBy_split_literal root_3748118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0093.root_3748119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3753496 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0093.cover_3748119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3753496
#print axioms cover_3748118

def root_3748113 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3748113_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3748113_right_fuel : Nat := 1
def small_3748113_right_count : Nat := 1
def small_3748113_right_encoded : String := "00000000"
theorem small_3748113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3748113_right_root small_3748113_right_fuel small_3748113_right_count small_3748113_right_encoded = true := by
  decide +kernel
theorem small_3748113_right_covered : CoveredBy scale carrier boxes small_3748113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3748113_right_root small_3748113_right_fuel small_3748113_right_count small_3748113_right_encoded small_3748113_right_checked

theorem cover_3748113 : CoveredBy scale carrier boxes root_3748113 := by
  apply coveredBy_split_literal root_3748113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3748118 small_3748113_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3748118
  · exact small_3748113_right_covered
#print axioms cover_3748113

def root_3763352 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763352_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763352_left_fuel : Nat := 15
def small_3763352_left_count : Nat := 85
def small_3763352_left_encoded : String := "12073D06050000F6135D810105000108135D44FF0CFD9C030F34D0F800000005000000010F350CF8000000010CFD9C050F34D104000000020000000A0F350D040CFD9BFD000000050F34D106000000030C9A86F8000000050F87510300000001000000060000000200000004135D80FF000000040CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9C050F34D104000000020000000A0F350D040CFD9BFD000000090F34D106000000030C9A86F80000000A0F875103000000010C9A870400000006000000090000000200000000135D45010000000005000108135D44FF0CFD9C030F34D0F80CFD9C050000000600000006000000010F350CF8000000010CFD9C050F34D104000000020000000A0000000600000004135D80FF000000040CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9C050000000A0F350D04000000060000000200000003"
theorem small_3763352_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763352_left_root small_3763352_left_fuel small_3763352_left_count small_3763352_left_encoded = true := by
  decide +kernel
theorem small_3763352_left_covered : CoveredBy scale carrier boxes small_3763352_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763352_left_root small_3763352_left_fuel small_3763352_left_count small_3763352_left_encoded small_3763352_left_checked

theorem cover_3763352 : CoveredBy scale carrier boxes root_3763352 := by
  apply coveredBy_split_literal root_3763352 small_3763352_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1418.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3763352_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1418.covered
#print axioms cover_3763352

def root_3763347 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763347_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763347_right_fuel : Nat := 1
def small_3763347_right_count : Nat := 1
def small_3763347_right_encoded : String := "00000002"
theorem small_3763347_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763347_right_root small_3763347_right_fuel small_3763347_right_count small_3763347_right_encoded = true := by
  decide +kernel
theorem small_3763347_right_covered : CoveredBy scale carrier boxes small_3763347_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763347_right_root small_3763347_right_fuel small_3763347_right_count small_3763347_right_encoded small_3763347_right_checked

theorem cover_3763347 : CoveredBy scale carrier boxes root_3763347 := by
  apply coveredBy_split_literal root_3763347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763352 small_3763347_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763352
  · exact small_3763347_right_covered
#print axioms cover_3763347

def root_3763291 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763291_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763291_left_fuel : Nat := 11
def small_3763291_left_count : Nat := 27
def small_3763291_left_encoded : String := "120701040000000208A912FD0000000A1207010600000003050000F6135D810105000108135D44FF0CFD9C030000000A0F350CF8000000010000000A00000004135D80FF000000040CFD9C030000000A0F350CF80000000104548A050000000A0000000A000000000000000A"
theorem small_3763291_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763291_left_root small_3763291_left_fuel small_3763291_left_count small_3763291_left_encoded = true := by
  decide +kernel
theorem small_3763291_left_covered : CoveredBy scale carrier boxes small_3763291_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763291_left_root small_3763291_left_fuel small_3763291_left_count small_3763291_left_encoded small_3763291_left_checked

theorem cover_3763291 : CoveredBy scale carrier boxes root_3763291 := by
  apply coveredBy_split_literal root_3763291 small_3763291_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763347 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3763291_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763347
#print axioms cover_3763291

def root_3763285 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763285_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763285_left_fuel : Nat := 1
def small_3763285_left_count : Nat := 1
def small_3763285_left_encoded : String := "00000001"
theorem small_3763285_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763285_left_root small_3763285_left_fuel small_3763285_left_count small_3763285_left_encoded = true := by
  decide +kernel
theorem small_3763285_left_covered : CoveredBy scale carrier boxes small_3763285_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763285_left_root small_3763285_left_fuel small_3763285_left_count small_3763285_left_encoded small_3763285_left_checked

theorem cover_3763285 : CoveredBy scale carrier boxes root_3763285 := by
  apply coveredBy_split_literal root_3763285 small_3763285_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763291 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3763285_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763291
#print axioms cover_3763285

def root_3763207 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763207_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763207_left_fuel : Nat := 11
def small_3763207_left_count : Nat := 37
def small_3763207_left_encoded : String := "120700F808A9130512070104000000020000000A12073D0408A912FD12073D06050000F600000005135D45010000000005000108000000050000000A000000031207010600000003050000F6135D81010500010800000005135D80FF000000040000000A00000000135D45010000000005000108135D44FF04548A030000000A0000000A000000040000000A0000000200000001"
theorem small_3763207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763207_left_root small_3763207_left_fuel small_3763207_left_count small_3763207_left_encoded = true := by
  decide +kernel
theorem small_3763207_left_covered : CoveredBy scale carrier boxes small_3763207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763207_left_root small_3763207_left_fuel small_3763207_left_count small_3763207_left_encoded small_3763207_left_checked

theorem cover_3763207 : CoveredBy scale carrier boxes root_3763207 := by
  apply coveredBy_split_literal root_3763207 small_3763207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763285 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3763207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763285
#print axioms cover_3763207

def root_3763202 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763202_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763202_right_fuel : Nat := 1
def small_3763202_right_count : Nat := 1
def small_3763202_right_encoded : String := "00000004"
theorem small_3763202_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763202_right_root small_3763202_right_fuel small_3763202_right_count small_3763202_right_encoded = true := by
  decide +kernel
theorem small_3763202_right_covered : CoveredBy scale carrier boxes small_3763202_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763202_right_root small_3763202_right_fuel small_3763202_right_count small_3763202_right_encoded small_3763202_right_checked

theorem cover_3763202 : CoveredBy scale carrier boxes root_3763202 := by
  apply coveredBy_split_literal root_3763202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763207 small_3763202_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763207
  · exact small_3763202_right_covered
#print axioms cover_3763202

def root_3763201 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763201_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763201_right_fuel : Nat := 28
def small_3763201_right_count : Nat := 251
def small_3763201_right_encoded : String := "115224FF0000000408A91303120700F808A9130512070104000000020000000A12073D0408A912FD0000000A120701060000000308A912FF12073D080000000A000000040000000A000000020000000112073CF80000000108A91305120701040000000208A912FD12073D060000000A00000003120701060000000308A912FF12073D08050000F6135D81010CFD9C030F34D0F80000000A000000010F350CF80000000104548A051386710400000002045489FD0000000913867106000000030CFD9BFF0F350D080000000A000000040000000A1386AD04045489FD0000000913867106000000030CFD9BFF0F350D080000000A000000040000000A0000000200000000135D4501000000000000000A000000041207010800000004050000F6000000090000000512073D0408A912FD12073D0608A912FF12073D08050000F6135D81010CFD9C030F34D0F800000009000000010000000900000000135D4501000000000000000A000000040000000A00000003120701060000000308A912FF12073D08050000F6135D81010CFD9C030F34D0F80CFD9C050F34D104000000020000000A0F350D04045489FD0000000913867106000000030CFD9BFF0F350D080C9A87040F875105000000020C9A870800000007000000070000000A000000040000000A00000002000000010F350CF8000000010CFD9C050F34D10400000002045489FD0000000913867106000000030CFD9BFF0F350D080C9A86F80F878D030000000A000000010F875103000000010C9A87080F8750FF078000F6000000090000000A0000000400000009000000040F34D10800000004000000050F350D04045489FD1386AD060CFD9BFF0F350D080C9A86F8000000090F875103000000010000000800000004000000090000000313867106000000030CFD9BFF0F350D080C9A86F80F878D030C9A87040F875105000000020C9A870800000007000000070F878D050C9A87080F8750FF078000F6000000090000000A000000040000000900000002000000010F875103000000010C9A87040F87510500000002000000080F878D050C9A87080F8750FF078000F600000009128A41010000000000000005000000040000000900000002000000040F34D10800000004000000070000000200000000135D4501000000000CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9C050F34D104000000020000000A0F350D04045489FD1386AD060CFD9BFF0F350D080000000A00000004000000070000000313867106000000030CFD9BFF0F350D080C9A86F80F878D030000000A000000010F8751030000000100000005000000040000000700000002000000041207010800000004050000F6000000090000000700000002"
theorem small_3763201_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763201_right_root small_3763201_right_fuel small_3763201_right_count small_3763201_right_encoded = true := by
  decide +kernel
theorem small_3763201_right_covered : CoveredBy scale carrier boxes small_3763201_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763201_right_root small_3763201_right_fuel small_3763201_right_count small_3763201_right_encoded small_3763201_right_checked

theorem cover_3763201 : CoveredBy scale carrier boxes root_3763201 := by
  apply coveredBy_split_literal root_3763201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763202 small_3763201_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763202
  · exact small_3763201_right_covered
#print axioms cover_3763201

def root_3763195 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763195_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763195_left_fuel : Nat := 1
def small_3763195_left_count : Nat := 1
def small_3763195_left_encoded : String := "00000003"
theorem small_3763195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763195_left_root small_3763195_left_fuel small_3763195_left_count small_3763195_left_encoded = true := by
  decide +kernel
theorem small_3763195_left_covered : CoveredBy scale carrier boxes small_3763195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763195_left_root small_3763195_left_fuel small_3763195_left_count small_3763195_left_encoded small_3763195_left_checked

theorem cover_3763195 : CoveredBy scale carrier boxes root_3763195 := by
  apply coveredBy_split_literal root_3763195 small_3763195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763201 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3763195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763201
#print axioms cover_3763195

def root_3763139 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763139_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763139_left_fuel : Nat := 9
def small_3763139_left_count : Nat := 27
def small_3763139_left_encoded : String := "1151E8FD0A0001081151E8FF08A91303120700F8000000050000000112073CF80000000108A913050000000A12073D04050000F6000000050000000A0000000200000004115224FF0000000408A913030000000A12073CF80000000108A913050000000A0000000900000003"
theorem small_3763139_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763139_left_root small_3763139_left_fuel small_3763139_left_count small_3763139_left_encoded = true := by
  decide +kernel
theorem small_3763139_left_covered : CoveredBy scale carrier boxes small_3763139_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763139_left_root small_3763139_left_fuel small_3763139_left_count small_3763139_left_encoded small_3763139_left_checked

theorem cover_3763139 : CoveredBy scale carrier boxes root_3763139 := by
  apply coveredBy_split_literal root_3763139 small_3763139_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763195 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3763139_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763195
#print axioms cover_3763139

def root_3763134 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763134_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3763134_right_fuel : Nat := 1
def small_3763134_right_count : Nat := 1
def small_3763134_right_encoded : String := "00000002"
theorem small_3763134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3763134_right_root small_3763134_right_fuel small_3763134_right_count small_3763134_right_encoded = true := by
  decide +kernel
theorem small_3763134_right_covered : CoveredBy scale carrier boxes small_3763134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3763134_right_root small_3763134_right_fuel small_3763134_right_count small_3763134_right_encoded small_3763134_right_checked

theorem cover_3763134 : CoveredBy scale carrier boxes root_3763134 := by
  apply coveredBy_split_literal root_3763134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763139 small_3763134_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763139
  · exact small_3763134_right_covered
#print axioms cover_3763134

def root_3762684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3762684_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3762684_left_fuel : Nat := 27
def small_3762684_left_count : Nat := 213
def small_3762684_left_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E8FF00000005000000040000000700000003115224FD000000030A0001081151E8FF08A91303120700F808A912FD000000051207010600000003050000F600000005135D450100000000000000060000000112073CF80000000108A912FD12073D06050000F6135D81010500010400000005135D81050500010800000005135D80FF000000040CFD9C030000000600000006000000020000000000000006000000031207010600000003050000F6135D810105000104135D45050000000205000108135D44FF0000000600000004135D80FF000000040CFD9C030000000600000006135D810505000108135D44FF0CFD9C030F34D0F800000005000000010F350CF800000001045489FD0000000613867106000000030C9A86F8000000060F875103000000010000000600000004135D80FF000000040CFD9C030F34D0F800000006000000010F350CF800000001045489FD0000000613867106000000030C9A86F80F878D0300000006000000010F87510300000001078000F6128A7D010780010400000006128A7D050780010800000006000000060000000200000000000000060000000200000000135D4501000000000500010400000006135D810505000108135D44FF0000000600000004135D80FF000000040CFD9C0300000006000000060000000200000004115224FF0000000408A91303120700F808A912FD12073D060000000700000003120701060000000308A912FF12073D08050000F6135D81010500010400000007135D81050000000700000002000000000000000700000004000000070000000112073CF80000000108A912FD12073D0608A912FF12073D08050000F6135D81010500010400000007135D81050CFD9C030000000700000009000000020000000000000007000000040000000700000003120701060000000308A912FF12073D08050000F6135D81010500010400000007135D81050CFD9C030F34D0F8045489FD0000000700000007000000010F350CF800000001045489FD0000000813867106000000030CFD9BFF0F350D080000000700000004000000070000000200000000135D4501000000000500010400000007135D81050CFD9C03000000070F350CF80000000100000007000000020000000400000007"
theorem small_3762684_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3762684_left_root small_3762684_left_fuel small_3762684_left_count small_3762684_left_encoded = true := by
  decide +kernel
theorem small_3762684_left_covered : CoveredBy scale carrier boxes small_3762684_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3762684_left_root small_3762684_left_fuel small_3762684_left_count small_3762684_left_encoded small_3762684_left_checked

theorem cover_3762684 : CoveredBy scale carrier boxes root_3762684 := by
  apply coveredBy_split_literal root_3762684 small_3762684_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3763134 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3762684_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3763134
#print axioms cover_3762684

def root_3762679 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3762679_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3762679_right_fuel : Nat := 1
def small_3762679_right_count : Nat := 1
def small_3762679_right_encoded : String := "00000001"
theorem small_3762679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3762679_right_root small_3762679_right_fuel small_3762679_right_count small_3762679_right_encoded = true := by
  decide +kernel
theorem small_3762679_right_covered : CoveredBy scale carrier boxes small_3762679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3762679_right_root small_3762679_right_fuel small_3762679_right_count small_3762679_right_encoded small_3762679_right_checked

theorem cover_3762679 : CoveredBy scale carrier boxes root_3762679 := by
  apply coveredBy_split_literal root_3762679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3762684 small_3762679_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3762684
  · exact small_3762679_right_covered
#print axioms cover_3762679

def root_3772054 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3772054_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3772054_left_fuel : Nat := 19
def small_3772054_left_count : Nat := 179
def small_3772054_left_encoded : String := "13E201060DE7CA040E5FD9050000000208C000F611FC250108C000F811FC250303C00108000000060000000600000001000000080000000011FBE9010000000008C000F800000006000000080E60150508C000F611FC250108C000F811FC250303C0010813A510FF033F67BD13BC31060DAED8850E962504000000020000000A000000060000000313BBF506000000030DAED8850E96250400000002096000F611AABD01096000F80000000511AA81030000000100000007000000000000000A0E966104096000F611AABD01096000F80000000511AA8103000000010320010800000005000000060000000000000006000000020000000413A54CFF00000004033F67BD13BC31060DAED8850E962504000000020000000A0E96610400000006000000020000000313BBF506000000030DAED8850E96250400000002096000F611AABD01096000F80000000A11AA81030000000100000008000000000000000A0E966104096000F611AABD01000000080000000000000006000000020000000111FBE9030000000103C0010813A510FF033F67BD0000000813BBF506000000030DAED8850E96250400000002096000F611AABD01000000070000000011AA810100000000082000F81246990303200108000000070000000800000001000000080E96610400000008000000020000000413A54CFF00000004000000080000000011FBE9010000000008C000F811FC250303C0010813A510FF033F67BD0000000613BBF50600000003000000060000000413A54CFF00000004033F67BD0000000613BBF506000000030DAED88500000006000000060000000111FBE9030000000103C0010813A510FF033F67BD0000000613BBF506000000030DAED8850E96250400000002082000F612469901082000F80000000612465D03000000010000000800000000000000060E96610400000006000000020000000413A54CFF00000004000000080000000200000003"
theorem small_3772054_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3772054_left_root small_3772054_left_fuel small_3772054_left_count small_3772054_left_encoded = true := by
  decide +kernel
theorem small_3772054_left_covered : CoveredBy scale carrier boxes small_3772054_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3772054_left_root small_3772054_left_fuel small_3772054_left_count small_3772054_left_encoded small_3772054_left_checked

theorem cover_3772054 : CoveredBy scale carrier boxes root_3772054 := by
  apply coveredBy_split_literal root_3772054 small_3772054_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1420.root coord3 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_3772054_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1420.covered
#print axioms cover_3772054

def root_3772048 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3772048_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3772048_left_fuel : Nat := 1
def small_3772048_left_count : Nat := 1
def small_3772048_left_encoded : String := "00000004"
theorem small_3772048_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3772048_left_root small_3772048_left_fuel small_3772048_left_count small_3772048_left_encoded = true := by
  decide +kernel
theorem small_3772048_left_covered : CoveredBy scale carrier boxes small_3772048_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3772048_left_root small_3772048_left_fuel small_3772048_left_count small_3772048_left_encoded small_3772048_left_checked

theorem cover_3772048 : CoveredBy scale carrier boxes root_3772048 := by
  apply coveredBy_split_literal root_3772048 small_3772048_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3772054 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_3772048_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3772054
#print axioms cover_3772048

def root_3771432 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771432_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771432_left_fuel : Nat := 20
def small_3771432_left_count : Nat := 291
def small_3771432_left_encoded : String := "13D7B0FF022A457D13E201060DE7CA040E5FD9050000000208C000F611FC250108C000F811FC2503000000050000000111FBE903000000010140010813F5D8FF000000060000000413F614FF00000004033F67BD0000000613BBF506000000030D412884000000060EFA4D0500000006000000020000000011FBE90100000000000000060E60150508C000F611FC250108C000F811FC2503014001080000000513F614FF00000004033F67BD0000000513BBF506000000030DAED885000000050E96610400000005000000020000000111FBE903000000010140010813F5D8FF000000070000000413F614FF00000004033F67BD13BC31060DAED8850E96250400000002000000070E96610400000006000000020000000313BBF506000000030DAED8850E96250400000002000000070E966104096000F60000000711AA810100000000082000F80000000612465D030000000100000006000000020000000011FBE9010000000008C000F811FC25030140010800000006000000060000000111FBE903000000010140010813F5D8FF033F67BD00000006000000090000000413F614FF00000004033F67BD0000000613BBF506000000030DAED8850E96250400000002082000F612469901082000F8000000060000000900000000000000060E9661040000000600000002000000020000000313E1C506000000030DE7CA040E5FD9050000000208C000F611FC250108C000F811FC25030140010813F5D8FF0115233D00000005000000090000000413F614FF000000040115233D13F895060D412884000000050EFA4D05096000F60000000500000006000000020000000313F85906000000030D412884000000090EFA4D0500000009000000020000000111FBE90300000001014001080000000913F614FF000000040115233D13F895060D412884000000090EFA4D05000000090000000200000003000000090000000011FBE9010000000008C000F811FC2503014001080000000913F614FF000000040115233D000000060000000900000001000000090E60150508C000F611FC250108C000F811FC25030140010813F5D8FF0115233D00000005000000090000000413F614FF000000040115233D13F895060DAED8850E96250400000002096000F60000000511AA810100000000096000F800000005000000090E966104096000F60000000511AA810100000000096000F80000000500000009000000020000000313F85906000000030DAED8850E96250400000002096000F600000007000000090E966104096000F611AABD01000000090000000000000009000000020000000111FBE90300000001014001080000000913F614FF000000040115233D13F895060DAED8850E96250400000002000000070E966104096000F611AABD010000000700000000000000090000000200000003000000090000000011FBE9010000000008C000F811FC2503014001080000000913F614FF000000040115233D13F895060DAED8850E96250400000002082000F612469901096000F80000000A0000000900000000000000090E9661040000000600000002000000030000000900000001000000090000000200000004"
theorem small_3771432_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771432_left_root small_3771432_left_fuel small_3771432_left_count small_3771432_left_encoded = true := by
  decide +kernel
theorem small_3771432_left_covered : CoveredBy scale carrier boxes small_3771432_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771432_left_root small_3771432_left_fuel small_3771432_left_count small_3771432_left_encoded small_3771432_left_checked

theorem cover_3771432 : CoveredBy scale carrier boxes root_3771432 := by
  apply coveredBy_split_literal root_3771432 small_3771432_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3772048 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_3771432_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3772048
#print axioms cover_3771432

def root_3771427 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771427_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771427_right_fuel : Nat := 1
def small_3771427_right_count : Nat := 1
def small_3771427_right_encoded : String := "00000001"
theorem small_3771427_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771427_right_root small_3771427_right_fuel small_3771427_right_count small_3771427_right_encoded = true := by
  decide +kernel
theorem small_3771427_right_covered : CoveredBy scale carrier boxes small_3771427_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771427_right_root small_3771427_right_fuel small_3771427_right_count small_3771427_right_encoded small_3771427_right_checked

theorem cover_3771427 : CoveredBy scale carrier boxes root_3771427 := by
  apply coveredBy_split_literal root_3771427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771432 small_3771427_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771432
  · exact small_3771427_right_covered
#print axioms cover_3771427

def root_3771426 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771426_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771426_right_fuel : Nat := 20
def small_3771426_right_count : Nat := 147
def small_3771426_right_encoded : String := "128A4103000000010280010813D7B0FF022A457D13E201060DE7CA040E5FD9050000000208C000F611FC25010000000800000000000000080E60150508C000F611FC2501064000F812FFAD03014001080000000713F614FF00000004033F67BD0000000813BBF506000000030DAED885000000070E96610400000008000000020000000112FF7103000000010140010800000007000000080000000011FBE90100000000064000F812FFAD03014001080000000913F614FF00000004033F67BD00000008000000090000000112FF710300000001014001080000000900000008000000020000000313E1C506000000030DE7CA04000000090E60150508C000F611FC2501000000090000000000000009000000020000000413D7ECFF00000004022A457D13E201060DE7CA04000000080E60150508C000F611FC2501000000080000000000000008000000020000000313E1C506000000030DE7CA040E5FD9050000000208C000F60000000A11FBE90100000000064000F812FFAD0303C00108000000090000000500000001000000050E60150508C000F611FC2501064000F812FFAD0303C0010813A510FF0115233D13F895060DAED8850E96250400000002096000F611AABD010000000700000000000000090E966104000000080000000200000003000000090000000413A54CFF000000040115233D0000000813F8590600000003000000050000000112FF7103000000010000000A0000000011FBE90100000000064000F812FFAD0303C0010813A510FF000000090000000400000005000000010000000500000002"
theorem small_3771426_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771426_right_root small_3771426_right_fuel small_3771426_right_count small_3771426_right_encoded = true := by
  decide +kernel
theorem small_3771426_right_covered : CoveredBy scale carrier boxes small_3771426_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771426_right_root small_3771426_right_fuel small_3771426_right_count small_3771426_right_encoded small_3771426_right_checked

theorem cover_3771426 : CoveredBy scale carrier boxes root_3771426 := by
  apply coveredBy_split_literal root_3771426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771427 small_3771426_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771427
  · exact small_3771426_right_covered
#print axioms cover_3771426

def root_3771421 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771421_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771421_right_fuel : Nat := 1
def small_3771421_right_count : Nat := 1
def small_3771421_right_encoded : String := "00000000"
theorem small_3771421_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771421_right_root small_3771421_right_fuel small_3771421_right_count small_3771421_right_encoded = true := by
  decide +kernel
theorem small_3771421_right_covered : CoveredBy scale carrier boxes small_3771421_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771421_right_root small_3771421_right_fuel small_3771421_right_count small_3771421_right_encoded small_3771421_right_checked

theorem cover_3771421 : CoveredBy scale carrier boxes root_3771421 := by
  apply coveredBy_split_literal root_3771421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771426 small_3771421_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771426
  · exact small_3771421_right_covered
#print axioms cover_3771421

def root_3771420 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771420_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771420_right_fuel : Nat := 18
def small_3771420_right_count : Nat := 163
def small_3771420_right_encoded : String := "128A410100000000078000F8128A7D030280010813D7B0FF022A457D13E201060DE7CA04000000060E601505064000F612FFAD0108C000F80000000611FBE90300000001000000060000000000000006000000020000000313E1C506000000030DE7CA04000000090E601505064000F612FFAD0108C000F811FC25030000000900000001000000090000000000000009000000020000000413D7ECFF00000004022A457D13E201060DE7CA04000000060E601505064000F612FFAD0108C000F80000000611FBE9030000000103C0010800000006000000060000000000000006000000020000000313E1C506000000030DE7CA040E5FD90500000002064000F612FFAD0108C000F80000000611FBE9030000000103C00108000000060000000500000000000000060E601505064000F612FFAD0108C000F811FC250303C0010813A510FF0115233D00000006000000090000000413A54CFF000000040115233D0000000613F8590600000003000000050000000111FBE9030000000103C0010813A510FF0000000900000004000000050000000012FF71010000000008C000F811FC250303C00108000000060000000500000001000000050000000200000001128A4103000000010280010813D7B0FF022A457D13E201060DE7CA040E5FD90500000002000000060E601505064000F612FFAD01064000F812FFAD03014001080000000613F614FF00000004033F67BD0000000600000009000000010000000900000000000000090000000200000003000000090000000413D7ECFF00000004022A457D13E201060DE7CA04000000080E601505064000F612FFAD01000000080000000000000005000000020000000313E1C506000000030DE7CA040E5FD905000000020000000500000005"
theorem small_3771420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771420_right_root small_3771420_right_fuel small_3771420_right_count small_3771420_right_encoded = true := by
  decide +kernel
theorem small_3771420_right_covered : CoveredBy scale carrier boxes small_3771420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771420_right_root small_3771420_right_fuel small_3771420_right_count small_3771420_right_encoded small_3771420_right_checked

theorem cover_3771420 : CoveredBy scale carrier boxes root_3771420 := by
  apply coveredBy_split_literal root_3771420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771421 small_3771420_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771421
  · exact small_3771420_right_covered
#print axioms cover_3771420

def root_3771415 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771415_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771415_right_fuel : Nat := 1
def small_3771415_right_count : Nat := 1
def small_3771415_right_encoded : String := "00000002"
theorem small_3771415_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771415_right_root small_3771415_right_fuel small_3771415_right_count small_3771415_right_encoded = true := by
  decide +kernel
theorem small_3771415_right_covered : CoveredBy scale carrier boxes small_3771415_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771415_right_root small_3771415_right_fuel small_3771415_right_count small_3771415_right_encoded small_3771415_right_checked

theorem cover_3771415 : CoveredBy scale carrier boxes root_3771415 := by
  apply coveredBy_split_literal root_3771415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771420 small_3771415_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771420
  · exact small_3771415_right_covered
#print axioms cover_3771415

def root_3771237 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771237_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771237_left_fuel : Nat := 19
def small_3771237_left_count : Nat := 85
def small_3771237_left_encoded : String := "0F87510500000002078000F6128A7D01078000F8128A7D030280010813D7B0FF022A457D0000000613E1C506000000030B4D44040000000A10804D0508C000F60000000A11FBE9010000000008C000F80000000600000009000000020000000413D7ECFF00000004022A457D0000000813E1C506000000030B4D440410801105000000020000000A10804D0508C000F611FC250108C000F811FC250303C0010813A510FF000000060000000413A54CFF000000040115233D000000060000000A000000010000000A0000000011FBE9010000000008C000F80000000611FBE90300000001000000080000000200000001128A4103000000010280010813D7B0FF0000000A000000040000000800000000128A410100000000078000F8128A7D0302800108000000060000000600000001128A4103000000010280010813D7B0FF022A457D00000006000000090000000400000008"
theorem small_3771237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771237_left_root small_3771237_left_fuel small_3771237_left_count small_3771237_left_encoded = true := by
  decide +kernel
theorem small_3771237_left_covered : CoveredBy scale carrier boxes small_3771237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771237_left_root small_3771237_left_fuel small_3771237_left_count small_3771237_left_encoded small_3771237_left_checked

theorem cover_3771237 : CoveredBy scale carrier boxes root_3771237 := by
  apply coveredBy_split_literal root_3771237 small_3771237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771415 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3771237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771415
#print axioms cover_3771237

def root_3771231 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771231_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771231_left_fuel : Nat := 1
def small_3771231_left_count : Nat := 1
def small_3771231_left_encoded : String := "00000003"
theorem small_3771231_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771231_left_root small_3771231_left_fuel small_3771231_left_count small_3771231_left_encoded = true := by
  decide +kernel
theorem small_3771231_left_covered : CoveredBy scale carrier boxes small_3771231_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771231_left_root small_3771231_left_fuel small_3771231_left_count small_3771231_left_encoded small_3771231_left_checked

theorem cover_3771231 : CoveredBy scale carrier boxes root_3771231 := by
  apply coveredBy_split_literal root_3771231 small_3771231_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771237 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3771231_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771237
#print axioms cover_3771231

def root_3771021 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771021_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771021_left_fuel : Nat := 19
def small_3771021_left_count : Nat := 101
def small_3771021_left_encoded : String := "1386AD060C9A87040F87510500000002078000F6128A7D01078000F8000000060000000800000000000000060F878D05078000F6128A7D01078000F8128A7D030280010813D7B0FF067ECE7D0000000612EA5906000000030DE7CA040E5FD90500000002000000060E60150508C000F611FC2501000000050000000000000006000000020000000413D7ECFF00000004067ECE7D0000000812EA5906000000030DE7CA04000000080E60150508C000F611FC250108C000F811FC250303C00108000000050000000600000001000000080000000011FBE9010000000008C000F800000006000000080000000200000001128A4103000000010280010813D7B0FF067ECE7D0000000812EA5906000000030DE7CA04000000080E60150508C000F611FC250100000008000000000000000800000002000000040000000800000000128A410100000000078000F8128A7D0302800108000000060000000600000001128A4103000000010280010813D7B0FF067ECE7D0000000612EA5906000000030000000600000004000000080000000200000003"
theorem small_3771021_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771021_left_root small_3771021_left_fuel small_3771021_left_count small_3771021_left_encoded = true := by
  decide +kernel
theorem small_3771021_left_covered : CoveredBy scale carrier boxes small_3771021_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771021_left_root small_3771021_left_fuel small_3771021_left_count small_3771021_left_encoded small_3771021_left_checked

theorem cover_3771021 : CoveredBy scale carrier boxes root_3771021 := by
  apply coveredBy_split_literal root_3771021 small_3771021_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771231 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3771021_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771231
#print axioms cover_3771021

def root_3771016 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771016_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3771016_right_fuel : Nat := 1
def small_3771016_right_count : Nat := 1
def small_3771016_right_encoded : String := "00000002"
theorem small_3771016_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3771016_right_root small_3771016_right_fuel small_3771016_right_count small_3771016_right_encoded = true := by
  decide +kernel
theorem small_3771016_right_covered : CoveredBy scale carrier boxes small_3771016_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3771016_right_root small_3771016_right_fuel small_3771016_right_count small_3771016_right_encoded small_3771016_right_checked

theorem cover_3771016 : CoveredBy scale carrier boxes root_3771016 := by
  apply coveredBy_split_literal root_3771016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771021 small_3771016_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771021
  · exact small_3771016_right_covered
#print axioms cover_3771016

def root_3768604 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3768604 : CoveredBy scale carrier boxes root_3768604 := by
  apply coveredBy_split_literal root_3768604 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1419.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3771016 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1419.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3771016
#print axioms cover_3768604

def root_3768599 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768599_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768599_right_fuel : Nat := 1
def small_3768599_right_count : Nat := 1
def small_3768599_right_encoded : String := "00000004"
theorem small_3768599_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768599_right_root small_3768599_right_fuel small_3768599_right_count small_3768599_right_encoded = true := by
  decide +kernel
theorem small_3768599_right_covered : CoveredBy scale carrier boxes small_3768599_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768599_right_root small_3768599_right_fuel small_3768599_right_count small_3768599_right_encoded small_3768599_right_checked

theorem cover_3768599 : CoveredBy scale carrier boxes root_3768599 := by
  apply coveredBy_split_literal root_3768599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768604 small_3768599_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768604
  · exact small_3768599_right_covered
#print axioms cover_3768599

def root_3768598 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3768598 : CoveredBy scale carrier boxes root_3768598 := by
  apply coveredBy_split_literal root_3768598 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768599 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1421.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768599
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1421.covered
#print axioms cover_3768598

def root_3768593 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768593_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768593_right_fuel : Nat := 1
def small_3768593_right_count : Nat := 1
def small_3768593_right_encoded : String := "00000001"
theorem small_3768593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768593_right_root small_3768593_right_fuel small_3768593_right_count small_3768593_right_encoded = true := by
  decide +kernel
theorem small_3768593_right_covered : CoveredBy scale carrier boxes small_3768593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768593_right_root small_3768593_right_fuel small_3768593_right_count small_3768593_right_encoded small_3768593_right_checked

theorem cover_3768593 : CoveredBy scale carrier boxes root_3768593 := by
  apply coveredBy_split_literal root_3768593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768598 small_3768593_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768598
  · exact small_3768593_right_covered
#print axioms cover_3768593

def root_3768592 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768592_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768592_right_fuel : Nat := 19
def small_3768592_right_count : Nat := 209
def small_3768592_right_encoded : String := "135D45030000000105000108135D44FF0CFD9C050F34D10400000002045489FD1386AD06078000F6128A7D01028000F813D7ED030280010813D7B0FF0AD357850000000710D13D04067ECE7D0000000712EA59060000000300000007000000020000000413D7ECFF000000040AD3578510D1010400000002067ECE7D0000000712EA59060000000300000007000000080000000113D7B1030000000102800108000000070000000800000000128A410100000000028000F813D7ED030280010813D7B0FF0AD3578510D1010400000002067ECE7D0000000712EA5906000000030000000710D13D04067ECE7D0000000812EA590600000003064000F60000000800000008000000020000000413D7ECFF000000040AD3578510D1010400000002067ECE7D0000000800000005000000080000000113D7B103000000010280010813D7B0FF0AD3578510D101040000000200000007000000080000000400000005000000031386710600000003078000F6128A7D01028000F813D7ED030280010813D7B0FF0AD357850000000710D13D04022A457D0000000700000009000000020000000413D7ECFF000000040AD3578510D1010400000002022A457D000000070000000510D13D04022A457D13E2010608C000F600000008000000050000000300000005000000020000000113D7B103000000010280010813D7B0FF0AD357850000000710D13D040000000900000002000000040000000500000000128A410100000000028000F813D7ED030280010813D7B0FF0AD3578510D10104000000020000000510D13D040000000900000002000000040000000500000001000000050F350D04045489FD0000000813867106000000030C9A87040F875105000000020000000A0F878D05078000F6128A7D01028000F813D7ED030280010813D7B0FF022A457D00000008000000090000000413D7ECFF00000004022A457D000000080000000A000000010000000A00000000128A410100000000028000F813D7ED030280010800000009000000050000000100000005000000020000000200000004135D80FF000000040CFD9C050F34D10400000002045489FD000000081386710600000003000000050F350D04045489FD0000000813867106000000030000000800000002"
theorem small_3768592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768592_right_root small_3768592_right_fuel small_3768592_right_count small_3768592_right_encoded = true := by
  decide +kernel
theorem small_3768592_right_covered : CoveredBy scale carrier boxes small_3768592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768592_right_root small_3768592_right_fuel small_3768592_right_count small_3768592_right_encoded small_3768592_right_checked

theorem cover_3768592 : CoveredBy scale carrier boxes root_3768592 := by
  apply coveredBy_split_literal root_3768592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768593 small_3768592_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768593
  · exact small_3768592_right_covered
#print axioms cover_3768592

def root_3768587 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768587_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768587_right_fuel : Nat := 1
def small_3768587_right_count : Nat := 1
def small_3768587_right_encoded : String := "00000000"
theorem small_3768587_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768587_right_root small_3768587_right_fuel small_3768587_right_count small_3768587_right_encoded = true := by
  decide +kernel
theorem small_3768587_right_covered : CoveredBy scale carrier boxes small_3768587_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768587_right_root small_3768587_right_fuel small_3768587_right_count small_3768587_right_encoded small_3768587_right_checked

theorem cover_3768587 : CoveredBy scale carrier boxes root_3768587 := by
  apply coveredBy_split_literal root_3768587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768592 small_3768587_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768592
  · exact small_3768587_right_covered
#print axioms cover_3768587

def root_3768586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768586_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768586_right_fuel : Nat := 21
def small_3768586_right_count : Nat := 213
def small_3768586_right_encoded : String := "135D450100000000050000F8135D810305000108135D44FF0CFD9C050F34D10400000002045489FD1386AD06028000F613D7ED01078000F80000000A128A4103000000010280010813D7B0FF0AD357850000000A10D13D0400000006000000020000000413D7ECFF000000040AD357850000000A10D13D040000000A00000002000000000000000A000000031386710600000003028000F613D7ED01078000F8128A7D030000000A00000001128A4103000000010280010813D7B0FF0AD3578510D10104000000020000000510D13D04000000090000000200000004000000050000000013D7B10100000000078000F80000000A000000050F350D04045489FD1386AD060C9A8704000000060F878D05028000F613D7ED01078000F800000006128A410300000001000000060000000000000006000000020000000313867106000000030C9A87040F87510500000002028000F613D7ED01078000F800000006128A4103000000010000000600000000000000060F878D05028000F613D7ED01078000F8128A7D030280010813D7B0FF022A457D00000006000000090000000413D7ECFF00000004022A457D0000000613E1C506000000030DE7CA04000000060000000500000001128A4103000000010280010800000009000000050000000013D7B10100000000078000F80000000600000005000000020000000200000004135D80FF000000040CFD9C050F34D10400000002045489FD1386AD060000000A000000031386710600000003000000050F350D04045489FD1386AD060C9A8704000000080F878D05028000F60000000800000008000000020000000313867106000000030C9A87040F87510500000002028000F60000000700000005000000050000000200000001135D45030000000105000108135D44FF0CFD9C050F34D10400000002045489FD1386AD06028000F613D7ED01028000F813D7ED030280010813D7B0FF0AD3578510D1010400000002067ECE7D0000000A0000000510D13D04067ECE7D00000006000000050000000200000004000000050000000100000005000000000000000500000003000000050F350D04045489FD0000000813867106000000030C9A870400000009000000050000000200000004135D80FF000000040CFD9C050F34D104000000020000000500000005"
theorem small_3768586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768586_right_root small_3768586_right_fuel small_3768586_right_count small_3768586_right_encoded = true := by
  decide +kernel
theorem small_3768586_right_covered : CoveredBy scale carrier boxes small_3768586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768586_right_root small_3768586_right_fuel small_3768586_right_count small_3768586_right_encoded small_3768586_right_checked

theorem cover_3768586 : CoveredBy scale carrier boxes root_3768586 := by
  apply coveredBy_split_literal root_3768586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768587 small_3768586_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768587
  · exact small_3768586_right_covered
#print axioms cover_3768586

def root_3768580 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768580_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768580_left_fuel : Nat := 1
def small_3768580_left_count : Nat := 1
def small_3768580_left_encoded : String := "00000003"
theorem small_3768580_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768580_left_root small_3768580_left_fuel small_3768580_left_count small_3768580_left_encoded = true := by
  decide +kernel
theorem small_3768580_left_covered : CoveredBy scale carrier boxes small_3768580_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768580_left_root small_3768580_left_fuel small_3768580_left_count small_3768580_left_encoded small_3768580_left_checked

theorem cover_3768580 : CoveredBy scale carrier boxes root_3768580 := by
  apply coveredBy_split_literal root_3768580 small_3768580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768586 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3768580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768586
#print axioms cover_3768580

def root_3768190 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768190_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768190_left_fuel : Nat := 20
def small_3768190_left_count : Nat := 181
def small_3768190_left_encoded : String := "12073D06050000F6135D8101050000F8135D810305000108135D44FF0CFD9C050F34D104000000020CFD9BFD0F350D060000000A000000030F34D10600000003078000F6128A7D01078000F80000000A128A4103000000010280010813D7B0FF0AD357850000000A10D13D040000000800000002000000040000000800000000128A410100000000078000F80000000A128A4103000000010000000A0F350D040CFD9BFD000000060F34D106000000030C9A8704000000060F878D05078000F6128A7D01078000F800000006000000080000000000000006000000020000000200000004135D80FF000000040CFD9C050F34D104000000020CFD9BFD000000090F34D10600000003078000F6128A7D010000000A000000000000000A0F350D040CFD9BFD0F350D060C9A87040000000600000009000000030F34D10600000003000000080000000200000001135D45030000000105000108135D44FF0CFD9C050F34D104000000020CFD9BFD0F350D060C9A87060F8750FD000000080000000300000008000000030F34D10600000003078000F600000008000000080F350D040CFD9BFD000000080F34D10600000003000000080000000200000004135D80FF000000040CFD9C050F34D104000000020CFD9BFD000000080F34D10600000003000000080F350D040CFD9BFD000000080F34D10600000003000000080000000200000000135D450100000000050000F8135D810305000108135D44FF0CFD9C050F34D104000000020CFD9BFD000000060000000A0000000600000004135D80FF000000040CFD9C050F34D104000000020000000A0F350D040CFD9BFD000000060F34D10600000003000000060000000200000001135D45030000000105000108135D44FF0CFD9C050F34D104000000020CFD9BFD000000080F34D10600000003000000080F350D04000000060000000200000004135D80FF000000040CFD9C05000000080F350D04000000080000000200000003"
theorem small_3768190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768190_left_root small_3768190_left_fuel small_3768190_left_count small_3768190_left_encoded = true := by
  decide +kernel
theorem small_3768190_left_covered : CoveredBy scale carrier boxes small_3768190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768190_left_root small_3768190_left_fuel small_3768190_left_count small_3768190_left_encoded small_3768190_left_checked

theorem cover_3768190 : CoveredBy scale carrier boxes root_3768190 := by
  apply coveredBy_split_literal root_3768190 small_3768190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768580 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3768190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768580
#print axioms cover_3768190

def root_3768185 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768185_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3768185_right_fuel : Nat := 1
def small_3768185_right_count : Nat := 1
def small_3768185_right_encoded : String := "00000002"
theorem small_3768185_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3768185_right_root small_3768185_right_fuel small_3768185_right_count small_3768185_right_encoded = true := by
  decide +kernel
theorem small_3768185_right_covered : CoveredBy scale carrier boxes small_3768185_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3768185_right_root small_3768185_right_fuel small_3768185_right_count small_3768185_right_encoded small_3768185_right_checked

theorem cover_3768185 : CoveredBy scale carrier boxes root_3768185 := by
  apply coveredBy_split_literal root_3768185 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768190 small_3768185_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768190
  · exact small_3768185_right_covered
#print axioms cover_3768185

def root_3767607 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767607_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767607_left_fuel : Nat := 24
def small_3767607_left_count : Nat := 277
def small_3767607_left_encoded : String := "120701040000000208A912FD12073D06050000F6135D8101050000F80000000A135D45030000000105000108135D44FF04548A050000000A1386AD040CFD9BFD0F350D060000000A000000030F34D10600000003078000F6000000070000000A0000000200000004135D80FF0000000404548A0513867104000000020000000A1386AD040CFD9BFD000000080F34D10600000003000000080000000200000000135D450100000000050000F80000000A135D45030000000105000108135D44FF04548A050000000A1386AD040CFD9BFD0000000A0000000A00000002000000040000000A000000031207010600000003050000F6135D8101050000F8135D810305000108135D44FF04548A051386710400000002045489FD000000071386710600000003078000F6000000070000000A1386AD04045489FD0000000A1386710600000003078000F6128A7D01078000F8128A7D030000000A00000001128A4103000000010000000700000000128A410100000000078000F80000000A0000000A0000000200000004135D80FF0000000404548A051386710400000002045489FD0000000A1386710600000003078000F6128A7D01078000F80000000A128A410300000001078001080000000700000005000000000000000A1386AD04045489FD1386AD06078000F6128A7D010000000A000000000000000A000000031386710600000003078000F6128A7D01078000F8128A7D03078001080000000A128A7CFF000000040000000A00000001128A41030000000107800108128A40FF067ECE8512EA590400000002022A457D000000070000000512EA9504022A457D13E201060000000A000000030000000500000002000000040000000500000000128A410100000000078000F80000000A000000050000000200000001135D45030000000105000108135D44FF04548A051386710400000002000000071386AD04045489FD1386AD06078000F600000007128A410100000000028000F80000000A13D7B10300000001028001080000000700000005000000031386710600000003078000F600000007128A410100000000028000F813D7ED0302800108000000070000000500000001000000050000000200000004135D80FF0000000404548A051386710400000002045489FD1386AD06078000F6128A7D0100000007000000000000000500000003000000051386AD04045489FD1386AD06078000F6128A7D01028000F813D7ED0307800108128A40FF067ECE850000000712EA9504000000080000000200000004000000050000000100000005000000000000000500000003000000050000000200000000135D450100000000050000F8135D8103050001080000000A135D80FF0000000404548A050000000A0000000A00000001135D45030000000105000108135D44FF04548A0513867104000000020000000A1386AD04045489FD1386AD06028000F613D7ED01028000F80000000A0000000500000000000000050000000300000005000000020000000400000005"
theorem small_3767607_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767607_left_root small_3767607_left_fuel small_3767607_left_count small_3767607_left_encoded = true := by
  decide +kernel
theorem small_3767607_left_covered : CoveredBy scale carrier boxes small_3767607_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767607_left_root small_3767607_left_fuel small_3767607_left_count small_3767607_left_encoded small_3767607_left_checked

theorem cover_3767607 : CoveredBy scale carrier boxes root_3767607 := by
  apply coveredBy_split_literal root_3767607 small_3767607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3768185 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3767607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3768185
#print axioms cover_3767607

def root_3767602 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767602_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767602_right_fuel : Nat := 1
def small_3767602_right_count : Nat := 1
def small_3767602_right_encoded : String := "00000004"
theorem small_3767602_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767602_right_root small_3767602_right_fuel small_3767602_right_count small_3767602_right_encoded = true := by
  decide +kernel
theorem small_3767602_right_covered : CoveredBy scale carrier boxes small_3767602_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767602_right_root small_3767602_right_fuel small_3767602_right_count small_3767602_right_encoded small_3767602_right_checked

theorem cover_3767602 : CoveredBy scale carrier boxes root_3767602 := by
  apply coveredBy_split_literal root_3767602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767607 small_3767602_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767607
  · exact small_3767602_right_covered
#print axioms cover_3767602

def root_3767601 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767601_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767601_right_fuel : Nat := 20
def small_3767601_right_count : Nat := 179
def small_3767601_right_encoded : String := "115224FF0000000408A91305120701040000000208A912FD12073D0608A912FF12073D08050000F6135D8101050000F800000009135D45030000000104548A05000000080000000900000000135D4501000000000000000A000000040000000A00000003120701060000000308A912FF12073D08050000F6135D8101050000F8135D810304548A051386710400000002045489FD1386AD060CFD9BFF0F350D080000000A000000040000000500000003000000051386AD04045489FD1386AD060CFD9BFF0F350D080C9A87080000000A00000005000000040000000500000003000000050000000200000001000000050000000000000005000000040000000512073D0408A912FD12073D0608A912FF12073D08050000F6135D8101050000F8135D81030CFD9C050F34D10400000002000000090000000900000001135D4503000000010CFD9C050F34D104000000020CFD9BFD000000080F34D10600000003000000080F350D040CFD9BFD000000080F34D10600000003000000080000000200000000135D450100000000050000F8135D81030CFD9C050F34D104000000020000000A0F350D04000000080000000200000001135D450300000001000000080000000412070108000000040000000800000003120701060000000308A912FF12073D08050000F6135D8101050000F8135D81030CFD9C050F34D10400000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF0000000800000004000000050000000400000008000000031386710600000003000000050F350D04045489FD0000000813867106000000030CFD9BFF0F350D080000000800000004000000050000000200000001135D4503000000010CFD9C050F34D10400000002000000050000000500000000135D450100000000050000F8135D81030CFD9C050F34D10400000002000000050000000500000001000000050000000412070108000000040000000500000002"
theorem small_3767601_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767601_right_root small_3767601_right_fuel small_3767601_right_count small_3767601_right_encoded = true := by
  decide +kernel
theorem small_3767601_right_covered : CoveredBy scale carrier boxes small_3767601_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767601_right_root small_3767601_right_fuel small_3767601_right_count small_3767601_right_encoded small_3767601_right_checked

theorem cover_3767601 : CoveredBy scale carrier boxes root_3767601 := by
  apply coveredBy_split_literal root_3767601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767602 small_3767601_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767602
  · exact small_3767601_right_covered
#print axioms cover_3767601

def root_3767595 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767595_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767595_left_fuel : Nat := 1
def small_3767595_left_count : Nat := 1
def small_3767595_left_encoded : String := "00000003"
theorem small_3767595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767595_left_root small_3767595_left_fuel small_3767595_left_count small_3767595_left_encoded = true := by
  decide +kernel
theorem small_3767595_left_covered : CoveredBy scale carrier boxes small_3767595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767595_left_root small_3767595_left_fuel small_3767595_left_count small_3767595_left_encoded small_3767595_left_checked

theorem cover_3767595 : CoveredBy scale carrier boxes root_3767595 := by
  apply coveredBy_split_literal root_3767595 small_3767595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767601 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3767595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767601
#print axioms cover_3767595

def root_3767465 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767465_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767465_left_fuel : Nat := 15
def small_3767465_left_count : Nat := 61
def small_3767465_left_encoded : String := "1151E8FD0A0001081151E8FF08A9130512070104000000020000000A12073D04050000F6135D8101050000F8135D81030500010600000005135D80FD0000000305000108000000050000000900000001135D450300000001050001060000000A135D80FD0000000305000108135D44FF0000000600000004135D80FF000000040CFD9C050000000A0000000600000000135D450100000000050000F800000006135D450300000001000000060000000200000004115224FF0000000408A9130512070104000000020000000912073D0408A912FF12073D08050000F6000000090000000A00000004000000090000000200000003"
theorem small_3767465_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767465_left_root small_3767465_left_fuel small_3767465_left_count small_3767465_left_encoded = true := by
  decide +kernel
theorem small_3767465_left_covered : CoveredBy scale carrier boxes small_3767465_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767465_left_root small_3767465_left_fuel small_3767465_left_count small_3767465_left_encoded small_3767465_left_checked

theorem cover_3767465 : CoveredBy scale carrier boxes root_3767465 := by
  apply coveredBy_split_literal root_3767465 small_3767465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767595 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3767465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767595
#print axioms cover_3767465

def root_3767460 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767460_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767460_right_fuel : Nat := 1
def small_3767460_right_count : Nat := 1
def small_3767460_right_encoded : String := "00000002"
theorem small_3767460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767460_right_root small_3767460_right_fuel small_3767460_right_count small_3767460_right_encoded = true := by
  decide +kernel
theorem small_3767460_right_covered : CoveredBy scale carrier boxes small_3767460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767460_right_root small_3767460_right_fuel small_3767460_right_count small_3767460_right_encoded small_3767460_right_checked

theorem cover_3767460 : CoveredBy scale carrier boxes root_3767460 := by
  apply coveredBy_split_literal root_3767460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767465 small_3767460_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767465
  · exact small_3767460_right_covered
#print axioms cover_3767460

def root_3767166 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767166_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767166_left_fuel : Nat := 20
def small_3767166_left_count : Nat := 141
def small_3767166_left_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912FF12073D08050000F6135D8101050000F800000007135D45030000000105000104000000060000000700000000000000060000000412070108000000040000000700000003115224FD000000030A0001081151E8FF08A912FD12073D06050000F6135D8101050000F8135D81030500010400000006135D81050500010800000006000000060000000200000001135D4503000000010500010400000006135D8105050001080000000800000008000000020000000000000006000000031207010600000003050000F6135D8101050000F8135D81030500010400000008135D810505000108135D44FF045489FD000000061386710600000003078000F60000000A128A4101000000000000000600000004135D80FF00000004000000080000000200000001135D4503000000010500010400000008135D8105000000080000000200000000135D450100000000050000F8135D81030500010400000006135D810505000108000000060000000800000002000000010000000800000004115224FF0000000408A912FD12073D0608A912FF12073D08050000F6135D8101050000F800000007135D4503000000010500010400000007135D810500000008000000020000000000000007000000040000000800000003120701060000000308A912FF12073D08050000F6135D8101050000F8000000080000000700000000000000070000000400000007"
theorem small_3767166_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767166_left_root small_3767166_left_fuel small_3767166_left_count small_3767166_left_encoded = true := by
  decide +kernel
theorem small_3767166_left_covered : CoveredBy scale carrier boxes small_3767166_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767166_left_root small_3767166_left_fuel small_3767166_left_count small_3767166_left_encoded small_3767166_left_checked

theorem cover_3767166 : CoveredBy scale carrier boxes root_3767166 := by
  apply coveredBy_split_literal root_3767166 small_3767166_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767460 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3767166_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767460
#print axioms cover_3767166

def root_3767160 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767160_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3767160_left_fuel : Nat := 1
def small_3767160_left_count : Nat := 1
def small_3767160_left_encoded : String := "00000001"
theorem small_3767160_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3767160_left_root small_3767160_left_fuel small_3767160_left_count small_3767160_left_encoded = true := by
  decide +kernel
theorem small_3767160_left_covered : CoveredBy scale carrier boxes small_3767160_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3767160_left_root small_3767160_left_fuel small_3767160_left_count small_3767160_left_encoded small_3767160_left_checked

theorem cover_3767160 : CoveredBy scale carrier boxes root_3767160 := by
  apply coveredBy_split_literal root_3767160 small_3767160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767166 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3767160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767166
#print axioms cover_3767160

def root_3762678 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3762678 : CoveredBy scale carrier boxes root_3762678 := by
  apply coveredBy_split_literal root_3762678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3762679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3767160 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3762679
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3767160
#print axioms cover_3762678

def root_3762672 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3762672_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3762672_left_fuel : Nat := 1
def small_3762672_left_count : Nat := 1
def small_3762672_left_encoded : String := "00000000"
theorem small_3762672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3762672_left_root small_3762672_left_fuel small_3762672_left_count small_3762672_left_encoded = true := by
  decide +kernel
theorem small_3762672_left_covered : CoveredBy scale carrier boxes small_3762672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3762672_left_root small_3762672_left_fuel small_3762672_left_count small_3762672_left_encoded small_3762672_left_checked

theorem cover_3762672 : CoveredBy scale carrier boxes root_3762672 := by
  apply coveredBy_split_literal root_3762672 small_3762672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3762678 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3762672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3762678
#print axioms cover_3762672

def root_3748112 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3748112 : CoveredBy scale carrier boxes root_3748112 := by
  apply coveredBy_split_literal root_3748112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3748113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3762672 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3748113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3762672
#print axioms cover_3748112

def root_3748111 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3748111_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3748111_right_fuel : Nat := 21
def small_3748111_right_count : Nat := 365
def small_3748111_right_encoded : String := "0A0000F6115225010A0000F8115225030A0001041151E905000000020A0001061151E8FD0A0001081151E90900000004000000090000000900000003115224FD000000030A0001081151E9090000000408A9130100000009000000091152250908A91301120700F608A9130300000009000000090000000012073CF60000000008A91303120700F8000000070000000112073CF80000000108A912FD0000000912070106000000030000000800000004115225050A0001061151E8FD0A0001081151E90900000004000000090000000900000003115224FD000000030A0001081151E9090000000408A91301120700F608A9130300000009000000090000000012073CF60000000008A91303120700F8000000090000000112073CF80000000108A91305120701040000000200000006000000091152250908A91301120700F608A91303120700F8000000090000000112073CF80000000108A91305120701040000000200000009000000090000000012073CF60000000008A91303120700F808A91305120701040000000200000009000000090000000112073CF80000000108A9130512070104000000020000000912073D0408A912FD00000009120701060000000308A9130912070108000000040000000900000009000000020000000400000002000000011151E903000000010A0001041151E905000000020A0001061151E8FD0A0001081151E90900000004000000090000000900000003115224FD000000030A0001081151E90900000004000000081152250908A91301120700F608A912FD000000091207010600000003000000080000000012073CF60000000008A912FD12073D0608A9130900000008000000090000000312070106000000030000000800000004115225050A0001061151E8FD0A0001081151E90900000004000000080000000900000003115224FD000000030A0001081151E9090000000408A91301120700F6000000060000000012073CF60000000008A9130500000006000000061152250908A91301120700F608A9130512070104000000020000000612073D0408A912FD0000000900000006000000020000000012073CF60000000008A91305120701040000000208A912FD00000008120701060000000308A91309000000060000000612073D0408A912FD00000009120701060000000300000008000000020000000400000002000000001151E901000000000A0000F8115225030A0001041151E905000000020A0001061151E8FD0A0001081151E90900000004000000080000000900000003115224FD000000030A0001081151E909000000040000000A1152250908A91303120700F8000000070000000112073CF80000000108A912FD000000080000000700000004115225050A0001061151E8FD0A0001081151E90900000004000000090000000900000003115224FD000000030A0001081151E9090000000408A91303120700F808A91305120701040000000200000009000000090000000112073CF80000000108A91305120701040000000208A912FD000000090000000612073D040000000A000000021152250908A91303120700F808A91305120701040000000208A912FD000000090000000712073D0400000007000000020000000112073CF80000000108A91305120701040000000208A912FD0000000912070106000000030000000A12073D0408A912FD0000000912070106000000030000000A000000020000000400000002000000011151E903000000010A0001041151E905000000020A0001061151E8FD0000000A00000003115224FD000000030A0001081151E909000000040000000500000008115225050A0001061151E8FD0A0001080000000A0000000800000003115224FD000000030A0001081151E909000000040000000A1152250908A91305120701040000000208A912FD0000000912070106000000030000000512073D0408A912FD00000008120701060000000300000005000000020000000400000002"
theorem small_3748111_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3748111_right_root small_3748111_right_fuel small_3748111_right_count small_3748111_right_encoded = true := by
  decide +kernel
theorem small_3748111_right_covered : CoveredBy scale carrier boxes small_3748111_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3748111_right_root small_3748111_right_fuel small_3748111_right_count small_3748111_right_encoded small_3748111_right_checked

theorem cover_3748111 : CoveredBy scale carrier boxes root_3748111 := by
  apply coveredBy_split_literal root_3748111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3748112 small_3748111_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3748112
  · exact small_3748111_right_covered
#print axioms cover_3748111

def root_3704605 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704605 : CoveredBy scale carrier boxes root_3704605 := by
  apply coveredBy_split_literal root_3704605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0093.root_3704606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3748111 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0093.cover_3704606
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3748111
#print axioms cover_3704605

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094

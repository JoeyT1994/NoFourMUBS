import TaoBundleAssembly0267
import TaoBundleAssembly0268
import TaoBundleChunkBatch0355
import TaoBundleChunkBatch0356
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269
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
  apply coveredBy_split_literal root_3771021 small_3771021_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0268.root_3771231 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3771021_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0268.cover_3771231
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
  apply coveredBy_split_literal root_3771016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3771021 small_3771016_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3771021
  · exact small_3771016_right_covered
#print axioms cover_3771016

def root_3768604 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3768604 : CoveredBy scale carrier boxes root_3768604 := by
  apply coveredBy_split_literal root_3768604 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1419.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3771016 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1419.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3771016
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
  apply coveredBy_split_literal root_3768599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768604 small_3768599_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768604
  · exact small_3768599_right_covered
#print axioms cover_3768599

def root_3768598 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3768598 : CoveredBy scale carrier boxes root_3768598 := by
  apply coveredBy_split_literal root_3768598 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768599 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1421.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768599
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
  apply coveredBy_split_literal root_3768593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768598 small_3768593_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768598
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
  apply coveredBy_split_literal root_3768592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768593 small_3768592_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768593
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
  apply coveredBy_split_literal root_3768587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768592 small_3768587_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768592
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
  apply coveredBy_split_literal root_3768586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768587 small_3768586_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768587
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
  apply coveredBy_split_literal root_3768580 small_3768580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768586 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3768580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768586
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
  apply coveredBy_split_literal root_3768190 small_3768190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768580 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3768190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768580
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
  apply coveredBy_split_literal root_3768185 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768190 small_3768185_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768190
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
  apply coveredBy_split_literal root_3767607 small_3767607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3768185 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3767607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3768185
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
  apply coveredBy_split_literal root_3767602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767607 small_3767602_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767607
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
  apply coveredBy_split_literal root_3767601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767602 small_3767601_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767602
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
  apply coveredBy_split_literal root_3767595 small_3767595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767601 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3767595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767601
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
  apply coveredBy_split_literal root_3767465 small_3767465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767595 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3767465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767595
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
  apply coveredBy_split_literal root_3767460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767465 small_3767460_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767465
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
  apply coveredBy_split_literal root_3767166 small_3767166_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767460 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3767166_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767460
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
  apply coveredBy_split_literal root_3767160 small_3767160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767166 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3767160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767166
#print axioms cover_3767160

def root_3762678 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3762678 : CoveredBy scale carrier boxes root_3762678 := by
  apply coveredBy_split_literal root_3762678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0268.root_3762679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3767160 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0268.cover_3762679
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3767160
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
  apply coveredBy_split_literal root_3762672 small_3762672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3762678 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3762672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3762678
#print axioms cover_3762672

def root_3748112 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3748112 : CoveredBy scale carrier boxes root_3748112 := by
  apply coveredBy_split_literal root_3748112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0267.root_3748113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.root_3762672 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0267.cover_3748113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269.cover_3762672
#print axioms cover_3748112

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0269

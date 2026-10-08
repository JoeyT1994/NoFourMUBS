import TaoBundleAssembly0437
import TaoBundleAssembly0440
import TaoBundleAssembly0441
import TaoBundleChunkBatch0596
import TaoBundleChunkBatch0598
import TaoBundleChunkBatch0599
import TaoBundleChunkBatch0600
import TaoBundleChunkBatch0601
import TaoBundleChunkBatch0602
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442
def root_6371600 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371600_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371600_right_fuel : Nat := 32
def small_6371600_right_count : Nat := 247
def small_6371600_right_encoded : String := "0F34D1000000000004548A0513867104000000020CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03078000FE128A7D090AD3577710D13D00022A458513E1C504000000020B4D4406108010FD08C000F811FC25030000000A0000000111FBE9030000000108C000FE0000000611FBE90900000004000000070000000310804CFD0000000308C000F811FC250308C000FE11FC25090BE879B71011AD000115234513F85904000000020BF3E58600000007100928FD00000003096000F80000000711AA81030000000100000006000000060000000010117100000000000000000700000004000000070000000111FBE9030000000108C000FE11FC25090BE879B700000006101171000000000000000006000000040000000513E201040B4D44060000000710804CFD0000000308C000F80000000711FBE9030000000108C000FE0000000600000005000000020000000010D1010000000000022A458513E1C504000000020B4D44060000000710804CFD00000003000000070000000700000004128A4109000000040AD35777000000070000000700000001128A410300000001078000FE128A7D090AD3577710D13D00022A458513E1C504000000020B4D4406108010FD064000F80000000600000005000000030000000513E201040B4D44060000000600000005000000020000000010D1010000000000000000050000000400000005000000030F878CFD00000003078000F8128A7D03078000FE128A7D090AD3577710D13D00022A458513E1C504000000020DE7CA060E5FD8FD08C000F811FC250308C000FE11FC25090BE879B71011AD000115234513F85904000000020D4128860EFA10FD096000F811AABD03000000070000000111AA810300000001096000FE11AABD09000000060000000400000005000000030EFA4CFD00000003096000F811AABD03000000070000000100000005000000070000000010117100000000000000000500000004000000050000000100000005000000030000000513E201040DE7CA060E5FD8FD08C000F811FC25030000000700000001000000050000000300000005000000020000000010D10100000000000000000500000004000000050000000100000005000000030F34D10600000003000000051386AD040CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03078000FE128A7D0900000007000000040000000700000001128A410300000001078000FE128A7D09000000060000000400000005000000030F878CFD00000003078000F8128A7D03078000FE128A7D090AD35777000000070000000700000004000000050000000100000005000000030F34D106000000030000000500000002"
theorem small_6371600_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371600_right_root small_6371600_right_fuel small_6371600_right_count small_6371600_right_encoded = true := by
  decide +kernel
theorem small_6371600_right_covered : CoveredBy scale carrier boxes small_6371600_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371600_right_root small_6371600_right_fuel small_6371600_right_count small_6371600_right_encoded small_6371600_right_checked

theorem cover_6371600 : CoveredBy scale carrier boxes root_6371600 := by
  apply coveredBy_split_literal root_6371600 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0441.root_6371601 small_6371600_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0441.cover_6371601
  · exact small_6371600_right_covered
#print axioms cover_6371600

def root_6371595 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371595_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371595_right_fuel : Nat := 1
def small_6371595_right_count : Nat := 1
def small_6371595_right_encoded : String := "00000004"
theorem small_6371595_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371595_right_root small_6371595_right_fuel small_6371595_right_count small_6371595_right_encoded = true := by
  decide +kernel
theorem small_6371595_right_covered : CoveredBy scale carrier boxes small_6371595_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371595_right_root small_6371595_right_fuel small_6371595_right_count small_6371595_right_encoded small_6371595_right_checked

theorem cover_6371595 : CoveredBy scale carrier boxes root_6371595 := by
  apply coveredBy_split_literal root_6371595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371600 small_6371595_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371600
  · exact small_6371595_right_covered
#print axioms cover_6371595

def root_6371594 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371594_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371594_right_fuel : Nat := 20
def small_6371594_right_count : Nat := 135
def small_6371594_right_encoded : String := "135D4509000000040CFD9BF70F350D0004548A0513867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F8128A7D03028000FE13D7ED09022A458513E1C504000000020B4D44000000000810804CF7000000000000000800000008000000040000000800000001128A410300000001028000FE13D7ED09022A458513E1C504000000020B4D44000000000810804CF70000000000000008000000080000000400000005000000030F878CFD00000003078000F8128A7D03028000FE13D7ED09022A458513E1C504000000020B4D4400108010F7000000090000000010804CF700000000000000050000000900000004000000050000000100000005000000000F878CF7000000000C9A87060F8750FD078000F8128A7D03028000FE13D7ED09022A458513E1C504000000020DE7CA000E5FD8F700000007000000000000000700000007000000040000000500000001000000050000000300000005000000030F34D10600000003000000051386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F8128A7D03000000070000000100000008000000030F878CFD00000003078000F800000009128A41030000000100000005000000000F878CF7000000000C9A8706000000070F878CFD0000000300000005000000030F34D106000000030000000500000002000000000F34D1000000000004548A0513867104000000020000000500000005"
theorem small_6371594_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371594_right_root small_6371594_right_fuel small_6371594_right_count small_6371594_right_encoded = true := by
  decide +kernel
theorem small_6371594_right_covered : CoveredBy scale carrier boxes small_6371594_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371594_right_root small_6371594_right_fuel small_6371594_right_count small_6371594_right_encoded small_6371594_right_checked

theorem cover_6371594 : CoveredBy scale carrier boxes root_6371594 := by
  apply coveredBy_split_literal root_6371594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371595 small_6371594_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371595
  · exact small_6371594_right_covered
#print axioms cover_6371594

def root_6371589 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371589_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371589_right_fuel : Nat := 1
def small_6371589_right_count : Nat := 1
def small_6371589_right_encoded : String := "00000001"
theorem small_6371589_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371589_right_root small_6371589_right_fuel small_6371589_right_count small_6371589_right_encoded = true := by
  decide +kernel
theorem small_6371589_right_covered : CoveredBy scale carrier boxes small_6371589_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371589_right_root small_6371589_right_fuel small_6371589_right_count small_6371589_right_encoded small_6371589_right_checked

theorem cover_6371589 : CoveredBy scale carrier boxes root_6371589 := by
  apply coveredBy_split_literal root_6371589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371594 small_6371589_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371594
  · exact small_6371589_right_covered
#print axioms cover_6371589

def root_6371588 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371588_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371588_right_fuel : Nat := 24
def small_6371588_right_count : Nat := 177
def small_6371588_right_encoded : String := "135D450300000001050000FE135D81090CFD9BF70F350D0004548A0513867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F813D7ED03078000FE128A7D09022A458513E1C504000000020B4D44000000000810804CF700000000000000080000000800000004128A410900000004022A458513E1C504000000020B4D44000000000810804CF70000000000000008000000080000000113D7B10300000001078000FE128A7D09000000080000000400000005000000030F878CFD00000003028000F813D7ED03078000FE128A7D09022A458513E1C504000000020B4D44000000000A10804CF700000000000000050000000A00000004000000050000000100000005000000000F878CF7000000000C9A87060F8750FD028000F813D7ED03078000FE128A7D09022A458513E1C504000000020DE7CA000E5FD8F70B4D44060000000610804CFD0000000300000005000000000E6014F7000000000000000500000006000000040000000500000001000000050000000300000005000000030F34D10600000003000000051386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F813D7ED03078000FE00000006000000080000000100000008000000030000000A000000000F878CF7000000000C9A87060F8750FD028000F813D7ED03078000FE00000006128A41090000000400000005000000010000000A000000030000000A000000030F34D106000000030000000500000002000000000F34D1000000000004548A051386710400000002000000050000000500000004135D4509000000040CFD9BF70F350D0004548A051386710400000002000000051386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F8000000080000000500000003000000050000000000000005000000030000000500000002000000000F34D1000000000000000005"
theorem small_6371588_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371588_right_root small_6371588_right_fuel small_6371588_right_count small_6371588_right_encoded = true := by
  decide +kernel
theorem small_6371588_right_covered : CoveredBy scale carrier boxes small_6371588_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371588_right_root small_6371588_right_fuel small_6371588_right_count small_6371588_right_encoded small_6371588_right_checked

theorem cover_6371588 : CoveredBy scale carrier boxes root_6371588 := by
  apply coveredBy_split_literal root_6371588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371589 small_6371588_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371589
  · exact small_6371588_right_covered
#print axioms cover_6371588

def root_6371583 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371583_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371583_right_fuel : Nat := 1
def small_6371583_right_count : Nat := 1
def small_6371583_right_encoded : String := "00000003"
theorem small_6371583_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371583_right_root small_6371583_right_fuel small_6371583_right_count small_6371583_right_encoded = true := by
  decide +kernel
theorem small_6371583_right_covered : CoveredBy scale carrier boxes small_6371583_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371583_right_root small_6371583_right_fuel small_6371583_right_count small_6371583_right_encoded small_6371583_right_checked

theorem cover_6371583 : CoveredBy scale carrier boxes root_6371583 := by
  apply coveredBy_split_literal root_6371583 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371588 small_6371583_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371588
  · exact small_6371583_right_covered
#print axioms cover_6371583

def root_6371582 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371582_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371582_right_fuel : Nat := 18
def small_6371582_right_count : Nat := 45
def small_6371582_right_encoded : String := "1207010600000003050000F8135D8103050000FE135D81090CFD9BF70F350D0004548A051386710400000002045489FD1386AD060C9A87000F8750F7078000F8128A7D03078000FE128A7D090000000A00000004000000050000000100000005000000000000000500000003000000051386AD04045489FD1386AD060C9A87000000000A00000005000000030000000500000002000000000F34D100000000000000000500000004000000050000000100000005"
theorem small_6371582_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371582_right_root small_6371582_right_fuel small_6371582_right_count small_6371582_right_encoded = true := by
  decide +kernel
theorem small_6371582_right_covered : CoveredBy scale carrier boxes small_6371582_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371582_right_root small_6371582_right_fuel small_6371582_right_count small_6371582_right_encoded small_6371582_right_checked

theorem cover_6371582 : CoveredBy scale carrier boxes root_6371582 := by
  apply coveredBy_split_literal root_6371582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371583 small_6371582_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371583
  · exact small_6371582_right_covered
#print axioms cover_6371582

def root_6371576 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371576_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371576_left_fuel : Nat := 1
def small_6371576_left_count : Nat := 1
def small_6371576_left_encoded : String := "00000002"
theorem small_6371576_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371576_left_root small_6371576_left_fuel small_6371576_left_count small_6371576_left_encoded = true := by
  decide +kernel
theorem small_6371576_left_covered : CoveredBy scale carrier boxes small_6371576_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371576_left_root small_6371576_left_fuel small_6371576_left_count small_6371576_left_encoded small_6371576_left_checked

theorem cover_6371576 : CoveredBy scale carrier boxes root_6371576 := by
  apply coveredBy_split_literal root_6371576 small_6371576_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371582 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6371576_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371582
#print axioms cover_6371576

def root_6371575 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371575_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371575_right_fuel : Nat := 20
def small_6371575_right_count : Nat := 197
def small_6371575_right_encoded : String := "12073D0408A912FD12073D06050000F8135D8103050000FE135D81090CFD9BF70F350D000CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F80000000800000008000000030F878CFD00000003078000F8000000090000000A000000000F878CF7000000000C9A87060F8750FD078000F800000007128A41030000000100000006000000030F878CFD00000003078000F8128A7D0300000007000000010000000A000000030F34D106000000030000000A0F350D040CFD9BFD0F350D060C9A87000000000A00000007000000030F34D106000000030000000A00000002000000000F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350D060000000700000003000000070F350D04000000070000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000F8750F7000000070000000000000007000000030F34D106000000030C9A87000F8750F70000000900000000000000050F350D040CFD9BFD000000070000000700000002000000000F34D100000000000000000700000001135D450300000001050000FE135D81090CFD9BF70F350D000CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000000000A0000000A000000030000000A0000000A000000000F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350D060C9A87060F8750FD00000006000000030000000500000003000000050F350D04000000070000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A870600000007000000050000000000000005000000030F34D10600000003000000050F350D040000000700000002000000000F34D1000000000000000007000000031207010600000003050000F8135D8103050000FE135D81090CFD9BF70F350D000000000A000000000000000A00000004135D4509000000040CFD9BF70F350D000CFD9C050F34D1040000000200000005000000050000000000000005000000010000000A00000002"
theorem small_6371575_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371575_right_root small_6371575_right_fuel small_6371575_right_count small_6371575_right_encoded = true := by
  decide +kernel
theorem small_6371575_right_covered : CoveredBy scale carrier boxes small_6371575_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371575_right_root small_6371575_right_fuel small_6371575_right_count small_6371575_right_encoded small_6371575_right_checked

theorem cover_6371575 : CoveredBy scale carrier boxes root_6371575 := by
  apply coveredBy_split_literal root_6371575 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371576 small_6371575_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371576
  · exact small_6371575_right_covered
#print axioms cover_6371575

def root_6371570 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371570_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371570_right_fuel : Nat := 1
def small_6371570_right_count : Nat := 1
def small_6371570_right_encoded : String := "00000000"
theorem small_6371570_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371570_right_root small_6371570_right_fuel small_6371570_right_count small_6371570_right_encoded = true := by
  decide +kernel
theorem small_6371570_right_covered : CoveredBy scale carrier boxes small_6371570_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371570_right_root small_6371570_right_fuel small_6371570_right_count small_6371570_right_encoded small_6371570_right_checked

theorem cover_6371570 : CoveredBy scale carrier boxes root_6371570 := by
  apply coveredBy_split_literal root_6371570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371575 small_6371570_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371575
  · exact small_6371570_right_covered
#print axioms cover_6371570

def root_6371569 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371569_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371569_right_fuel : Nat := 22
def small_6371569_right_count : Nat := 85
def small_6371569_right_encoded : String := "120701000000000008A91305120701040000000208A912FD12073D06050000F8135D8103050000FE135D8109045489F71386AD0004548A0513867104000000020CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03078000FE128A7D090000000700000004000000050000000100000005000000030000000500000003000000051386AD040CFD9BFD0F350D060C9A870600000007000000050000000300000005000000020000000013867100000000000000000500000004000000050000000100000005000000030000000512073D0408A912FD12073D06050000F8135D8103050000FE135D8109045489F70000000700000007000000040000000700000001135D450300000001050000FE135D8109045489F71386AD000CFD9C050F34D104000000020000000500000005000000000000000500000004000000050000000312070106000000030000000500000002"
theorem small_6371569_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371569_right_root small_6371569_right_fuel small_6371569_right_count small_6371569_right_encoded = true := by
  decide +kernel
theorem small_6371569_right_covered : CoveredBy scale carrier boxes small_6371569_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371569_right_root small_6371569_right_fuel small_6371569_right_count small_6371569_right_encoded small_6371569_right_checked

theorem cover_6371569 : CoveredBy scale carrier boxes root_6371569 := by
  apply coveredBy_split_literal root_6371569 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371570 small_6371569_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371570
  · exact small_6371569_right_covered
#print axioms cover_6371569

def root_6371563 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371563_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6371563_left_fuel : Nat := 1
def small_6371563_left_count : Nat := 1
def small_6371563_left_encoded : String := "00000004"
theorem small_6371563_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6371563_left_root small_6371563_left_fuel small_6371563_left_count small_6371563_left_encoded = true := by
  decide +kernel
theorem small_6371563_left_covered : CoveredBy scale carrier boxes small_6371563_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6371563_left_root small_6371563_left_fuel small_6371563_left_count small_6371563_left_encoded small_6371563_left_checked

theorem cover_6371563 : CoveredBy scale carrier boxes root_6371563 := by
  apply coveredBy_split_literal root_6371563 small_6371563_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371569 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6371563_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371569
#print axioms cover_6371563

def root_6366293 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6366293 : CoveredBy scale carrier boxes root_6366293 := by
  apply coveredBy_split_literal root_6366293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6371563 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366294
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6371563
#print axioms cover_6366293

def root_6366287 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366287_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366287_left_fuel : Nat := 1
def small_6366287_left_count : Nat := 1
def small_6366287_left_encoded : String := "00000003"
theorem small_6366287_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366287_left_root small_6366287_left_fuel small_6366287_left_count small_6366287_left_encoded = true := by
  decide +kernel
theorem small_6366287_left_covered : CoveredBy scale carrier boxes small_6366287_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366287_left_root small_6366287_left_fuel small_6366287_left_count small_6366287_left_encoded small_6366287_left_checked

theorem cover_6366287 : CoveredBy scale carrier boxes root_6366287 := by
  apply coveredBy_split_literal root_6366287 small_6366287_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6366293 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6366287_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6366293
#print axioms cover_6366287

def root_6364425 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6364425 : CoveredBy scale carrier boxes root_6364425 := by
  apply coveredBy_split_literal root_6364425 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2392.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6366287 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2392.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6366287
#print axioms cover_6364425

def root_6364420 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6364420_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6364420_right_fuel : Nat := 1
def small_6364420_right_count : Nat := 1
def small_6364420_right_encoded : String := "00000002"
theorem small_6364420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6364420_right_root small_6364420_right_fuel small_6364420_right_count small_6364420_right_encoded = true := by
  decide +kernel
theorem small_6364420_right_covered : CoveredBy scale carrier boxes small_6364420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6364420_right_root small_6364420_right_fuel small_6364420_right_count small_6364420_right_encoded small_6364420_right_checked

theorem cover_6364420 : CoveredBy scale carrier boxes root_6364420 := by
  apply coveredBy_split_literal root_6364420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6364425 small_6364420_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6364425
  · exact small_6364420_right_covered
#print axioms cover_6364420

def root_6364258 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6364258_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6364258_left_fuel : Nat := 17
def small_6364258_left_count : Nat := 77
def small_6364258_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE000000061151E9090000000408A912F712073D00050000F800000006000000060000000012070100000000000000000600000003115224FD000000030A0000FE1152250908A912F712073D0008A912FD12073D0608A913090000000612073CFE00000004050000F8135D8103050001040000000A135D81050CFD9BF70000000A0000000A00000002000000010000000A000000030000000A00000000120701000000000008A912FD0000000612070106000000030000000A000000041151E9090000000408A912F712073D0008A912FD12073D06050000F8135D81030500010400000007135D8105050000FE000000070000000700000002000000010000000A0000000312070106000000030000000A00000000120701000000000000000007"
theorem small_6364258_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6364258_left_root small_6364258_left_fuel small_6364258_left_count small_6364258_left_encoded = true := by
  decide +kernel
theorem small_6364258_left_covered : CoveredBy scale carrier boxes small_6364258_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6364258_left_root small_6364258_left_fuel small_6364258_left_count small_6364258_left_encoded small_6364258_left_checked

theorem cover_6364258 : CoveredBy scale carrier boxes root_6364258 := by
  apply coveredBy_split_literal root_6364258 small_6364258_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6364420 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6364258_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6364420
#print axioms cover_6364258

def root_6364252 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6364252_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6364252_left_fuel : Nat := 1
def small_6364252_left_count : Nat := 1
def small_6364252_left_encoded : String := "00000001"
theorem small_6364252_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6364252_left_root small_6364252_left_fuel small_6364252_left_count small_6364252_left_encoded = true := by
  decide +kernel
theorem small_6364252_left_covered : CoveredBy scale carrier boxes small_6364252_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6364252_left_root small_6364252_left_fuel small_6364252_left_count small_6364252_left_encoded small_6364252_left_checked

theorem cover_6364252 : CoveredBy scale carrier boxes root_6364252 := by
  apply coveredBy_split_literal root_6364252 small_6364252_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6364258 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6364252_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6364258
#print axioms cover_6364252

def root_6337514 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6337514 : CoveredBy scale carrier boxes root_6337514 := by
  apply coveredBy_split_literal root_6337514 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6337515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6364252 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6337515
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6364252
#print axioms cover_6337514

def root_6337508 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337508_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337508_left_fuel : Nat := 1
def small_6337508_left_count : Nat := 1
def small_6337508_left_encoded : String := "00000000"
theorem small_6337508_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6337508_left_root small_6337508_left_fuel small_6337508_left_count small_6337508_left_encoded = true := by
  decide +kernel
theorem small_6337508_left_covered : CoveredBy scale carrier boxes small_6337508_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6337508_left_root small_6337508_left_fuel small_6337508_left_count small_6337508_left_encoded small_6337508_left_checked

theorem cover_6337508 : CoveredBy scale carrier boxes root_6337508 := by
  apply coveredBy_split_literal root_6337508 small_6337508_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6337514 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6337508_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6337514
#print axioms cover_6337508

def root_6333994 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6333994 : CoveredBy scale carrier boxes root_6333994 := by
  apply coveredBy_split_literal root_6333994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6333995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6337508 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6333995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6337508
#print axioms cover_6333994

def root_6331462 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6331462 : CoveredBy scale carrier boxes root_6331462 := by
  apply coveredBy_split_literal root_6331462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2382.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6333994 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2382.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6333994
#print axioms cover_6331462

def root_6378614 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6378614_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6378614_right_fuel : Nat := 25
def small_6378614_right_count : Nat := 427
def small_6378614_right_encoded : String := "115224F7000000000A0000F8115225030A0001041151E905000000020A0001061151E8FD0A00010800000006115224FF0000000408A912F712073D0008A91303120700F80000000600000001000000060000000012070100000000000000000600000003115224FD000000030A0001081151E8FF08A912F712073D0008A913030000000A000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91303120700F8000000080000000112073CF80000000108A912FD12073D0608A912FF12073D080000000600000004120701080000000405000104135D4505000000020CFD9BF70F350D000CFD9C030F34D0F8000000080000000100000006000000000F34D1000000000000000006135D81050CFD9BF70F350D000CFD9C03000000080F350CF8000000010CFD9BFD0000000A0000000800000000000000080000000200000003120701060000000308A912FF0000000812070108000000040000000800000000120701000000000008A913030000000812073CF80000000108A912FD0000000A00000008115225050A0001061151E8FD0A0001081151E8FF08A912F712073D0008A91303120700F80000000600000001000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91303120700F808A913050000000812073D0400000008000000020000000112073CF80000000108A913050000000812073D0408A912FF12073D080000000600000004120701080000000405000106135D44FD0CFD9BF70F350D0000000008000000000000000800000003000000080000000200000000120701000000000008A91303120700F800000008000000010000000800000003115224FD000000030A0001081151E8FF08A912F712073D0008A91303120700F808A91305120701040000000208A912FD12073D0605000108135D44FF0CFD9BF70F350D0000000008000000000000000A00000004135D80FF000000040CFD9BF7000000080F34D1000000000000000005000000031207010600000003050001080000000A0000000512073D0408A912FD0000000A12070106000000030000000A000000020000000112073CF80000000108A91305120701040000000208A912FD12073D0605000108135D44FF0CFD9BF7000000080000000A0000000400000008000000031207010600000003050001080000000A0000000512073D0408A912FD0000000812070106000000030000000A0000000200000000120701000000000008A91303120700F808A91305120701040000000208A912FD0000000A000000090000000A0000000112073CF80000000108A91305120701040000000208A912FD0000000A000000090000000A00000004115224FF0000000408A912F712073D0008A91303120700F808A91305120701040000000208A912FD12073D0608A912FF00000008000000080000000312070106000000030000000512073D0408A912FD00000008120701060000000308A912FF0000000800000008000000020000000112073CF80000000108A9130512070104000000020000000512073D0408A912FD12073D060000000800000003000000080000000200000000120701000000000008A91303120700F808A9130512070104000000020000000512073D0408A912FD12073D0608A912FF000000080000000800000003120701060000000300000005000000020000000112073CF8000000010000000500000002000000011151E903000000010A0001041151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A912FD12073D0608A912FF000000061207010800000004050000F8135D810305000104135D4505000000020000000600000005000000010000000500000003120701060000000308A912FF0000000812070108000000040000000500000000120701000000000008A912FD00000006120701060000000300000005115225050A0001061151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A91305120701040000000208A912FF000000080000000812073D0408A912FF000000061207010800000004050000F8135D810305000106135D44FD00000006000000030000000500000001000000050000000200000000120701000000000008A91305000000080000000600000003115224FD000000030A0001081151E8FF08A912F712073D000000000800000000120701000000000008A9130512070104000000020000000500000006000000040000000500000002"
theorem small_6378614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6378614_right_root small_6378614_right_fuel small_6378614_right_count small_6378614_right_encoded = true := by
  decide +kernel
theorem small_6378614_right_covered : CoveredBy scale carrier boxes small_6378614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6378614_right_root small_6378614_right_fuel small_6378614_right_count small_6378614_right_encoded small_6378614_right_checked

theorem cover_6378614 : CoveredBy scale carrier boxes root_6378614 := by
  apply coveredBy_split_literal root_6378614 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2396.root small_6378614_right_root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2396.covered
  · exact small_6378614_right_covered
#print axioms cover_6378614

def root_6381955 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6381955 : CoveredBy scale carrier boxes root_6381955 := by
  apply coveredBy_split_literal root_6381955 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2397.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2398.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2397.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2398.covered
#print axioms cover_6381955

def root_6378613 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6378613 : CoveredBy scale carrier boxes root_6378613 := by
  apply coveredBy_split_literal root_6378613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6378614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6381955 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6378614
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6381955
#print axioms cover_6378613

def root_6331461 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6331461 : CoveredBy scale carrier boxes root_6331461 := by
  apply coveredBy_split_literal root_6331461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6331462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6378613 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6331462
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6378613
#print axioms cover_6331461

def root_6388038 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6388038 : CoveredBy scale carrier boxes root_6388038 := by
  apply coveredBy_split_literal root_6388038 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2399.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2400.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2399.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2400.covered
#print axioms cover_6388038

def root_6392495 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6392495 : CoveredBy scale carrier boxes root_6392495 := by
  apply coveredBy_split_literal root_6392495 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2401.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2402.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2401.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2402.covered
#print axioms cover_6392495

def root_6392489 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392489_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392489_left_fuel : Nat := 1
def small_6392489_left_count : Nat := 1
def small_6392489_left_encoded : String := "00000003"
theorem small_6392489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6392489_left_root small_6392489_left_fuel small_6392489_left_count small_6392489_left_encoded = true := by
  decide +kernel
theorem small_6392489_left_covered : CoveredBy scale carrier boxes small_6392489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6392489_left_root small_6392489_left_fuel small_6392489_left_count small_6392489_left_encoded small_6392489_left_checked

theorem cover_6392489 : CoveredBy scale carrier boxes root_6392489 := by
  apply coveredBy_split_literal root_6392489 small_6392489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6392495 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6392489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6392495
#print axioms cover_6392489

def root_6405325 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6405325 : CoveredBy scale carrier boxes root_6405325 := by
  apply coveredBy_split_literal root_6405325 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2407.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2408.root coord3 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2407.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2408.covered
#print axioms cover_6405325

def root_6405319 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6405319_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6405319_left_fuel : Nat := 1
def small_6405319_left_count : Nat := 1
def small_6405319_left_encoded : String := "00000001"
theorem small_6405319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6405319_left_root small_6405319_left_fuel small_6405319_left_count small_6405319_left_encoded = true := by
  decide +kernel
theorem small_6405319_left_covered : CoveredBy scale carrier boxes small_6405319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6405319_left_root small_6405319_left_fuel small_6405319_left_count small_6405319_left_encoded small_6405319_left_checked

theorem cover_6405319 : CoveredBy scale carrier boxes root_6405319 := by
  apply coveredBy_split_literal root_6405319 small_6405319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6405325 coord1 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_6405319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6405325
#print axioms cover_6405319

def root_6403915 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6403915 : CoveredBy scale carrier boxes root_6403915 := by
  apply coveredBy_split_literal root_6403915 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2406.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6405319 coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2406.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6405319
#print axioms cover_6403915

def root_6403909 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403909_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403909_left_fuel : Nat := 1
def small_6403909_left_count : Nat := 1
def small_6403909_left_encoded : String := "00000002"
theorem small_6403909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6403909_left_root small_6403909_left_fuel small_6403909_left_count small_6403909_left_encoded = true := by
  decide +kernel
theorem small_6403909_left_covered : CoveredBy scale carrier boxes small_6403909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6403909_left_root small_6403909_left_fuel small_6403909_left_count small_6403909_left_encoded small_6403909_left_checked

theorem cover_6403909 : CoveredBy scale carrier boxes root_6403909 := by
  apply coveredBy_split_literal root_6403909 small_6403909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6403915 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6403909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6403915
#print axioms cover_6403909

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442

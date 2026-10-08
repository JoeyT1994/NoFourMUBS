import TaoBundleAssembly0369
import TaoBundleAssembly0372
import TaoBundleChunkBatch0491
import TaoBundleChunkBatch0492
import TaoBundleChunkBatch0495
import TaoBundleChunkBatch0496
import TaoBundleChunkBatch0497
import TaoBundleChunkBatch0499
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373
def root_5284155 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284155_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284155_right_fuel : Nat := 28
def small_5284155_right_count : Nat := 231
def small_5284155_right_encoded : String := "0F34D106000000030C9A86FA0F878CFB00000002078000F8128A7CF90000000107800108128A41090000000400000009128A7D09022A457713E201000AD3577D10D13D060DE7C9FA000000090E5FD8FB00000009000000020000000300000009000000000000000A000000040000000A0F8750FB078000F8128A7CF90000000107800108128A410900000004022A457713E201000AD3577D10D13D060B4D43FA00000009108010FB08C000F80000000911FBE8F90000000900000001000000020000000310D1010600000003000000090000000013E1C500000000000AD3577D10D13D060B4D43FA10804CFB0000000208C000F811FC24F9000000010000000A0000000A108010FB08C000F811FC24F9000000010640010812FF710900000004011523370000000913F85900000000000BE879BD1011AD060AA6A27A0000000A10ED70FB096000F811AABCF90000000105A0010800000009133171090000000A000000040000000A00000002000000030000000A12FFAD090115233713F895000BE879BD1011AD060AA6A27A10EDACFB00000002096000F8000000090000000500000005000000031011710600000003000000090000000013F85900000000000BE879BD1011AD060AA6A27A0000000A10ED70FB0000000500000002000000030000000A0000000411FBE8F90640010812FF71090000000401152337000000090000000A12FFAD0901152337000000050000000A0000000400000001000000020000000310D10106000000030000000A128A7D09022A457713E201000AD3577D10D13D060B4D43FA10804CFB0000000208C000F811FC24F90000000108C0010811FBE90900000004000000090000000500000005000000050000000310D10106000000030B4D43FA10804CFB0000000200000009000000050000000013E1C500000000000AD3577D10D13D060B4D43FA10804CFB0000000208C000F811FC24F9000000010000000A0000000A108010FB08C000F811FC24F90000000108C0010811FBE90900000004011523370000000513F85900000000000BE879BD000000050000000A0000000500000005000000020000000310D10106000000030000000A00000004128A40F907800108128A410900000004022A457713E201000AD3577D10D13D060B4D43FA000000090000000500000003000000090000000013E1C500000000000AD3577D0000000A0000000A128A7D09022A45770000000513E1C500000000000AD3577D000000050000000A000000040000000100000002"
theorem small_5284155_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284155_right_root small_5284155_right_fuel small_5284155_right_count small_5284155_right_encoded = true := by
  decide +kernel
theorem small_5284155_right_covered : CoveredBy scale carrier boxes small_5284155_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284155_right_root small_5284155_right_fuel small_5284155_right_count small_5284155_right_encoded small_5284155_right_checked

theorem cover_5284155 : CoveredBy scale carrier boxes root_5284155 := by
  apply coveredBy_split_literal root_5284155 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1980.root small_5284155_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1980.covered
  · exact small_5284155_right_covered
#print axioms cover_5284155

def root_5284149 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284149_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284149_left_fuel : Nat := 1
def small_5284149_left_count : Nat := 1
def small_5284149_left_encoded : String := "00000002"
theorem small_5284149_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284149_left_root small_5284149_left_fuel small_5284149_left_count small_5284149_left_encoded = true := by
  decide +kernel
theorem small_5284149_left_covered : CoveredBy scale carrier boxes small_5284149_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284149_left_root small_5284149_left_fuel small_5284149_left_count small_5284149_left_encoded small_5284149_left_checked

theorem cover_5284149 : CoveredBy scale carrier boxes root_5284149 := by
  apply coveredBy_split_literal root_5284149 small_5284149_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5284155 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5284149_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5284155
#print axioms cover_5284149

def root_5284148 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284148_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284148_right_fuel : Nat := 15
def small_5284148_right_count : Nat := 69
def small_5284148_right_encoded : String := "0F34D0FA0CFD9BFD0F350D060C9A87060F8750FD078000F8128A7CF90000000107800108128A410900000004022A45770000000913E1C500000000000AD3577B10D13CFA000000020B4D4406000000050000000A00000005128A7D09022A457713E201000AD3577B10D13CFA0000000200000008000000080000000013E1C500000000000AD3577B10D13CFA00000002000000080000000800000004128A40F907800108128A410900000004022A45770000000900000007128A7D09000000080000000400000001000000030F878CFD00000003078000F8128A7CF9000000010780010800000009128A7D09022A4577000000090000000A000000040000000A000000030F34D106000000030000000900000002"
theorem small_5284148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284148_right_root small_5284148_right_fuel small_5284148_right_count small_5284148_right_encoded = true := by
  decide +kernel
theorem small_5284148_right_covered : CoveredBy scale carrier boxes small_5284148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284148_right_root small_5284148_right_fuel small_5284148_right_count small_5284148_right_encoded small_5284148_right_checked

theorem cover_5284148 : CoveredBy scale carrier boxes root_5284148 := by
  apply coveredBy_split_literal root_5284148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5284149 small_5284148_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5284149
  · exact small_5284148_right_covered
#print axioms cover_5284148

def root_5284142 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284142_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284142_left_fuel : Nat := 1
def small_5284142_left_count : Nat := 1
def small_5284142_left_encoded : String := "00000000"
theorem small_5284142_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284142_left_root small_5284142_left_fuel small_5284142_left_count small_5284142_left_encoded = true := by
  decide +kernel
theorem small_5284142_left_covered : CoveredBy scale carrier boxes small_5284142_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284142_left_root small_5284142_left_fuel small_5284142_left_count small_5284142_left_encoded small_5284142_left_checked

theorem cover_5284142 : CoveredBy scale carrier boxes root_5284142 := by
  apply coveredBy_split_literal root_5284142 small_5284142_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5284148 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5284142_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5284148
#print axioms cover_5284142

def root_5283482 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283482_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283482_left_fuel : Nat := 23
def small_5283482_left_count : Nat := 311
def small_5283482_left_encoded : String := "1386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD078000F8128A7CF90000000107800108128A410900000004067ECE770000000912EA5900000000000DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D4406108010FD00000008000000030000000900000002128A7D09067ECE7712EA95000DE7C9FA0E6014FB0000000200000008000000080000000012EA5900000000000DE7C9FA0E6014FB00000002000000080000000800000004128A40F907800108128A410900000004067ECE770000000912EA5900000000000DE7C9FA0E6014FB000000020000000800000008128A7D09067ECE7700000008000000080000000400000001000000030F878CFD00000003078000F8128A7CF9000000010780010800000009128A7D09067ECE770000000912EA5900000000000DE7C9FA0E6014FB00000002000000090E5FD8FB0DE7CA060E5FD8FD08C000F811FC24F90000000108C0010800000008000000080000000800000003000000090000000200000004128A40F90780010800000009128A7D09067ECE770000000912EA5900000000000DE7C9FA000000090E5FD8FB000000050000000200000004000000010F8750FB0C9A87060F8750FD078000F8128A7CF90000000107800108128A410900000004067ECE7712EA95000B4D43FA10804CFB000000020B4D44060000000600000009000000060000000012EA5900000000000B4D43FA10804CFB000000020B4D4406108010FD000000080000000310804CFD0000000308C000F811FC24F90000000106400108000000090000000811FBE8F90000000800000001108010FB0B4D4406108010FD000000080000000310804CFD0000000308C000F80000000A0000000500000002128A7D09067ECE770000000512EA5900000000000B4D43FA10804CFB00000002000000080000000500000004128A40F907800108128A410900000004067ECE770000000512EA5900000000000B4D43FA10804CFB0000000200000008000000050000000500000001000000030F878CFD00000003078000F8128A7CF90000000107800108128A410900000004067ECE770000000912EA5900000000000B4D43FA10804CFB0000000200000009108010FB0DE7CA060E5FD8FD08C000F811FC24F90000000106400108000000060000000500000005000000030000000900000002128A7D09067ECE770000000512EA5900000000000B4D43FA10804CFB000000020DE7CA060E5FD8FD0000000500000003000000050000000500000004128A40F907800108128A410900000004067ECE770000000512EA5900000000000B4D43FA10804CFB000000020000000900000005000000050000000100000002000000030F34D106000000030C9A86FA0F878CFB00000002000000090F8750FB078000F8128A7CF9000000010780010800000009128A7D09067ECE770000000912EA5900000000000AD3577D10D13D060B4D43FA10804CFB0000000200000009000000050000000310D10106000000030000000900000004128A40F907800108000000090000000500000001000000020F34D0FA0CFD9BFD0F350D060C9A87060F8750FD078000F800000009128A40F90780010800000009128A7D09067ECE77000000090000000800000004000000010000000300000009000000030F34D10600000003000000090000000200000000"
theorem small_5283482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5283482_left_root small_5283482_left_fuel small_5283482_left_count small_5283482_left_encoded = true := by
  decide +kernel
theorem small_5283482_left_covered : CoveredBy scale carrier boxes small_5283482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5283482_left_root small_5283482_left_fuel small_5283482_left_count small_5283482_left_encoded small_5283482_left_checked

theorem cover_5283482 : CoveredBy scale carrier boxes root_5283482 := by
  apply coveredBy_split_literal root_5283482 small_5283482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5284142 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5283482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5284142
#print axioms cover_5283482

def root_5283477 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283477_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283477_right_fuel : Nat := 1
def small_5283477_right_count : Nat := 1
def small_5283477_right_encoded : String := "00000004"
theorem small_5283477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5283477_right_root small_5283477_right_fuel small_5283477_right_count small_5283477_right_encoded = true := by
  decide +kernel
theorem small_5283477_right_covered : CoveredBy scale carrier boxes small_5283477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5283477_right_root small_5283477_right_fuel small_5283477_right_count small_5283477_right_encoded small_5283477_right_checked

theorem cover_5283477 : CoveredBy scale carrier boxes root_5283477 := by
  apply coveredBy_split_literal root_5283477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5283482 small_5283477_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5283482
  · exact small_5283477_right_covered
#print axioms cover_5283477

def root_5281465 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5281465 : CoveredBy scale carrier boxes root_5281465 := by
  apply coveredBy_split_literal root_5281465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1979.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5283477 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1979.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5283477
#print axioms cover_5281465

def root_5281459 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281459_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281459_left_fuel : Nat := 1
def small_5281459_left_count : Nat := 1
def small_5281459_left_encoded : String := "00000001"
theorem small_5281459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281459_left_root small_5281459_left_fuel small_5281459_left_count small_5281459_left_encoded = true := by
  decide +kernel
theorem small_5281459_left_covered : CoveredBy scale carrier boxes small_5281459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281459_left_root small_5281459_left_fuel small_5281459_left_count small_5281459_left_encoded small_5281459_left_checked

theorem cover_5281459 : CoveredBy scale carrier boxes root_5281459 := by
  apply coveredBy_split_literal root_5281459 small_5281459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281465 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5281459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281465
#print axioms cover_5281459

def root_5281458 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281458_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281458_right_fuel : Nat := 21
def small_5281458_right_count : Nat := 253
def small_5281458_right_encoded : String := "135D44F905000108135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000060000000900000006000000030F34D10600000003000000090F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD028000F813D7ECF90000000102800108000000070000000700000007000000030F878CFD000000030000000A0F8750FB0C9A87060F8750FD028000F813D7ECF900000001028001080000000613D7ED09022A457700000006000000070000000400000006000000030F878CFD00000003028000F813D7ECF900000001028001080000000613D7ED09022A45770000000613E1C500000000000B4D43FA0000000A00000006000000040000000600000002000000030F34D106000000030000000A0F34D0FA0CFD9BFD0F350D060C9A87060F8750FD028000F800000009000000070000000300000009000000030000000900000002135D8109045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD028000F813D7ECF90000000107800108128A410900000004067ECE7700000006000000080000000813D7B0F907800108000000060000000500000001000000030F878CFD00000003028000F813D7ECF9000000010780010800000009128A7D09000000050000000413D7B0F9078001080000000600000005000000010F8750FB0C9A87060F8750FD00000005000000030000000500000002000000030F34D106000000030C9A86FA0F878CFB00000002000000090F8750FB00000005000000020F34D0FA0CFD9BFD0F350D060C9A87060F8750FD028000F813D7ECF9000000010780010800000009128A7D0900000008000000040000000A0000000300000009000000030F34D1060000000300000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD028000F813D7ECF90000000107800108000000080000000800000007000000030F878CFD000000030000000A0F8750FB0C9A87060F8750FD028000F813D7ECF90000000107800108000000080000000500000005000000030F878CFD00000003028000F813D7ECF90000000107800108128A410900000004022A45770000000513E1C5000000000000000005000000050000000500000002000000030F34D106000000030C9A86FA0000000A0F8750FB028000F813D7ECF900000001078001080000000A0000000500000005000000020F34D0FA0CFD9BFD0000000A0000000A000000020000000400000001"
theorem small_5281458_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281458_right_root small_5281458_right_fuel small_5281458_right_count small_5281458_right_encoded = true := by
  decide +kernel
theorem small_5281458_right_covered : CoveredBy scale carrier boxes small_5281458_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281458_right_root small_5281458_right_fuel small_5281458_right_count small_5281458_right_encoded small_5281458_right_checked

theorem cover_5281458 : CoveredBy scale carrier boxes root_5281458 := by
  apply coveredBy_split_literal root_5281458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281459 small_5281458_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281459
  · exact small_5281458_right_covered
#print axioms cover_5281458

def root_5281453 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281453_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281453_right_fuel : Nat := 1
def small_5281453_right_count : Nat := 1
def small_5281453_right_encoded : String := "00000003"
theorem small_5281453_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281453_right_root small_5281453_right_fuel small_5281453_right_count small_5281453_right_encoded = true := by
  decide +kernel
theorem small_5281453_right_covered : CoveredBy scale carrier boxes small_5281453_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281453_right_root small_5281453_right_fuel small_5281453_right_count small_5281453_right_encoded small_5281453_right_checked

theorem cover_5281453 : CoveredBy scale carrier boxes root_5281453 := by
  apply coveredBy_split_literal root_5281453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281458 small_5281453_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281458
  · exact small_5281453_right_covered
#print axioms cover_5281453

def root_5281452 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281452_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281452_right_fuel : Nat := 19
def small_5281452_right_count : Nat := 63
def small_5281452_right_encoded : String := "1207010600000003050000F8135D80F90000000105000108135D45090000000400000009135D8109045489F70000000913867100000000000CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB000000020000000A0F8750FB078000F8128A7CF90000000107800108128A41090000000400000009128A7D09022A4577000000090000000A000000040000000A000000020000000313867106000000030C9A86FA000000090F8750FB078000F8000000090000000A000000020000000900000004135D44F905000108135D45090000000400000009135D8109045489F70000000913867100000000000000000A0000000400000001"
theorem small_5281452_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281452_right_root small_5281452_right_fuel small_5281452_right_count small_5281452_right_encoded = true := by
  decide +kernel
theorem small_5281452_right_covered : CoveredBy scale carrier boxes small_5281452_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281452_right_root small_5281452_right_fuel small_5281452_right_count small_5281452_right_encoded small_5281452_right_checked

theorem cover_5281452 : CoveredBy scale carrier boxes root_5281452 := by
  apply coveredBy_split_literal root_5281452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281453 small_5281452_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281453
  · exact small_5281452_right_covered
#print axioms cover_5281452

def root_5281446 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281446_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281446_left_fuel : Nat := 1
def small_5281446_left_count : Nat := 1
def small_5281446_left_encoded : String := "00000002"
theorem small_5281446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281446_left_root small_5281446_left_fuel small_5281446_left_count small_5281446_left_encoded = true := by
  decide +kernel
theorem small_5281446_left_covered : CoveredBy scale carrier boxes small_5281446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281446_left_root small_5281446_left_fuel small_5281446_left_count small_5281446_left_encoded small_5281446_left_checked

theorem cover_5281446 : CoveredBy scale carrier boxes root_5281446 := by
  apply coveredBy_split_literal root_5281446 small_5281446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281452 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5281446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281452
#print axioms cover_5281446

def root_5281445 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281445_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281445_right_fuel : Nat := 7
def small_5281445_right_count : Nat := 15
def small_5281445_right_encoded : String := "120700FA08A912FD12073D06050000F800000009135D44F905000108000000090000000A000000010000000312070106000000030000000900000002"
theorem small_5281445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281445_right_root small_5281445_right_fuel small_5281445_right_count small_5281445_right_encoded = true := by
  decide +kernel
theorem small_5281445_right_covered : CoveredBy scale carrier boxes small_5281445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281445_right_root small_5281445_right_fuel small_5281445_right_count small_5281445_right_encoded small_5281445_right_checked

theorem cover_5281445 : CoveredBy scale carrier boxes root_5281445 := by
  apply coveredBy_split_literal root_5281445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281446 small_5281445_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281446
  · exact small_5281445_right_covered
#print axioms cover_5281445

def root_5281439 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281439_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281439_left_fuel : Nat := 1
def small_5281439_left_count : Nat := 1
def small_5281439_left_encoded : String := "00000000"
theorem small_5281439_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281439_left_root small_5281439_left_fuel small_5281439_left_count small_5281439_left_encoded = true := by
  decide +kernel
theorem small_5281439_left_covered : CoveredBy scale carrier boxes small_5281439_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281439_left_root small_5281439_left_fuel small_5281439_left_count small_5281439_left_encoded small_5281439_left_checked

theorem cover_5281439 : CoveredBy scale carrier boxes root_5281439 := by
  apply coveredBy_split_literal root_5281439 small_5281439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281445 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5281439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281445
#print axioms cover_5281439

def root_5281233 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281233_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281233_left_fuel : Nat := 25
def small_5281233_left_count : Nat := 97
def small_5281233_left_encoded : String := "12073D0008A912FB12073CFA0000000208A912FD12073D06050000F8135D80F90000000105000108135D45090000000400000009135D81090CFD9BF7000000090F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD078000F800000009128A40F9000000090000000100000003000000090F8750FB0C9A87060F8750FD078000F8128A7CF9000000010780010800000006128A7D090AD3577700000005000000080000000400000006000000030F878CFD00000003078000F8000000090000000600000002000000030F34D10600000003000000090000000900000004135D44F905000108135D45090000000400000009135D81090CFD9BF7000000090F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000060000000900000006000000030F34D1060000000300000009000000090000000400000001000000031207010600000003000000090000000900000000"
theorem small_5281233_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281233_left_root small_5281233_left_fuel small_5281233_left_count small_5281233_left_encoded = true := by
  decide +kernel
theorem small_5281233_left_covered : CoveredBy scale carrier boxes small_5281233_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281233_left_root small_5281233_left_fuel small_5281233_left_count small_5281233_left_encoded small_5281233_left_checked

theorem cover_5281233 : CoveredBy scale carrier boxes root_5281233 := by
  apply coveredBy_split_literal root_5281233 small_5281233_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281439 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5281233_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281439
#print axioms cover_5281233

def root_5281227 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281227_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281227_left_fuel : Nat := 1
def small_5281227_left_count : Nat := 1
def small_5281227_left_encoded : String := "00000004"
theorem small_5281227_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281227_left_root small_5281227_left_fuel small_5281227_left_count small_5281227_left_encoded = true := by
  decide +kernel
theorem small_5281227_left_covered : CoveredBy scale carrier boxes small_5281227_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281227_left_root small_5281227_left_fuel small_5281227_left_count small_5281227_left_encoded small_5281227_left_checked

theorem cover_5281227 : CoveredBy scale carrier boxes root_5281227 := by
  apply coveredBy_split_literal root_5281227 small_5281227_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281233 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5281227_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281233
#print axioms cover_5281227

def root_5281226 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5281226 : CoveredBy scale carrier boxes root_5281226 := by
  apply coveredBy_split_literal root_5281226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1981.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281227
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1981.covered
#print axioms cover_5281226

def root_5281220 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281220_left_fuel : Nat := 1
def small_5281220_left_count : Nat := 1
def small_5281220_left_encoded : String := "00000003"
theorem small_5281220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281220_left_root small_5281220_left_fuel small_5281220_left_count small_5281220_left_encoded = true := by
  decide +kernel
theorem small_5281220_left_covered : CoveredBy scale carrier boxes small_5281220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281220_left_root small_5281220_left_fuel small_5281220_left_count small_5281220_left_encoded small_5281220_left_checked

theorem cover_5281220 : CoveredBy scale carrier boxes root_5281220 := by
  apply coveredBy_split_literal root_5281220 small_5281220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281226 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5281220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281226
#print axioms cover_5281220

def root_5278068 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5278068 : CoveredBy scale carrier boxes root_5278068 := by
  apply coveredBy_split_literal root_5278068 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1978.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5281220 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1978.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5281220
#print axioms cover_5278068

def root_5278062 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278062_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278062_left_fuel : Nat := 1
def small_5278062_left_count : Nat := 1
def small_5278062_left_encoded : String := "00000002"
theorem small_5278062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5278062_left_root small_5278062_left_fuel small_5278062_left_count small_5278062_left_encoded = true := by
  decide +kernel
theorem small_5278062_left_covered : CoveredBy scale carrier boxes small_5278062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5278062_left_root small_5278062_left_fuel small_5278062_left_count small_5278062_left_encoded small_5278062_left_checked

theorem cover_5278062 : CoveredBy scale carrier boxes root_5278062 := by
  apply coveredBy_split_literal root_5278062 small_5278062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5278068 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5278062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5278068
#print axioms cover_5278062

def root_5291258 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291258_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291258_left_fuel : Nat := 18
def small_5291258_left_count : Nat := 129
def small_5291258_left_encoded : String := "1151E8FD0A0001081151E9090000000408A912F712073D00050000F8135D80F900000001050000FA135D80FB000000020500010600000006135D80FD000000030500010800000006000000060000000600000006000000001207010000000000050000F8135D80F900000001050000FA135D80FB00000002050001060000000A135D80FD0000000305000108135D450900000004045489F70000000613867100000000000000000A135D8109045489F71386AD00078000F80000000A128A40F90000000800000001000000001386710000000000078000F80000000A128A40F90000000800000001000000040000000A135D44F9050000FA135D80FB0000000205000106135D44FD0000000800000003135D80FD0000000305000108135D45090000000400000006135D8109045489F7000000050000000800000004135D44FB05000106000000060000000600000002000000011152250908A912F712073D0008A913090000000512073D08050000F8135D80F900000001050000FA135D80FB0000000205000106000000080000000500000005000000050000000400000000120701000000000008A913090000000512073D08050000F8135D80F900000001050000FA135D80FB000000020500010600000008135D80FD00000003045489F7000000050000000800000008135D44F90000000500000001000000040000000400000003"
theorem small_5291258_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5291258_left_root small_5291258_left_fuel small_5291258_left_count small_5291258_left_encoded = true := by
  decide +kernel
theorem small_5291258_left_covered : CoveredBy scale carrier boxes small_5291258_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5291258_left_root small_5291258_left_fuel small_5291258_left_count small_5291258_left_encoded small_5291258_left_checked

theorem cover_5291258 : CoveredBy scale carrier boxes root_5291258 := by
  apply coveredBy_split_literal root_5291258 small_5291258_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1982.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5291258_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1982.covered
#print axioms cover_5291258

def root_5291253 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291253_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291253_right_fuel : Nat := 1
def small_5291253_right_count : Nat := 1
def small_5291253_right_encoded : String := "00000002"
theorem small_5291253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5291253_right_root small_5291253_right_fuel small_5291253_right_count small_5291253_right_encoded = true := by
  decide +kernel
theorem small_5291253_right_covered : CoveredBy scale carrier boxes small_5291253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5291253_right_root small_5291253_right_fuel small_5291253_right_count small_5291253_right_encoded small_5291253_right_checked

theorem cover_5291253 : CoveredBy scale carrier boxes root_5291253 := by
  apply coveredBy_split_literal root_5291253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5291258 small_5291253_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5291258
  · exact small_5291253_right_covered
#print axioms cover_5291253

def root_5278061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5278061 : CoveredBy scale carrier boxes root_5278061 := by
  apply coveredBy_split_literal root_5278061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5278062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5291253 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5278062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5291253
#print axioms cover_5278061

def root_5278056 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278056_right_fuel : Nat := 1
def small_5278056_right_count : Nat := 1
def small_5278056_right_encoded : String := "00000001"
theorem small_5278056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5278056_right_root small_5278056_right_fuel small_5278056_right_count small_5278056_right_encoded = true := by
  decide +kernel
theorem small_5278056_right_covered : CoveredBy scale carrier boxes small_5278056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5278056_right_root small_5278056_right_fuel small_5278056_right_count small_5278056_right_encoded small_5278056_right_checked

theorem cover_5278056 : CoveredBy scale carrier boxes root_5278056 := by
  apply coveredBy_split_literal root_5278056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5278061 small_5278056_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5278061
  · exact small_5278056_right_covered
#print axioms cover_5278056

def root_5243118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243118 : CoveredBy scale carrier boxes root_5243118 := by
  apply coveredBy_split_literal root_5243118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5243119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5278056 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5243119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5278056
#print axioms cover_5243118

def root_5243112 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243112_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243112_left_fuel : Nat := 1
def small_5243112_left_count : Nat := 1
def small_5243112_left_encoded : String := "00000000"
theorem small_5243112_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243112_left_root small_5243112_left_fuel small_5243112_left_count small_5243112_left_encoded = true := by
  decide +kernel
theorem small_5243112_left_covered : CoveredBy scale carrier boxes small_5243112_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243112_left_root small_5243112_left_fuel small_5243112_left_count small_5243112_left_encoded small_5243112_left_checked

theorem cover_5243112 : CoveredBy scale carrier boxes root_5243112 := by
  apply coveredBy_split_literal root_5243112 small_5243112_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5243118 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5243112_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5243118
#print axioms cover_5243112

def root_5241104 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5241104 : CoveredBy scale carrier boxes root_5241104 := by
  apply coveredBy_split_literal root_5241104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1965.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5243112 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1965.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5243112
#print axioms cover_5241104

def root_5239052 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5239052 : CoveredBy scale carrier boxes root_5239052 := by
  apply coveredBy_split_literal root_5239052 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1964.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5241104 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1964.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5241104
#print axioms cover_5239052

def root_5197646 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197646 : CoveredBy scale carrier boxes root_5197646 := by
  apply coveredBy_split_literal root_5197646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5197647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5239052 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5197647
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5239052
#print axioms cover_5197646

def root_5294556 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294556 : CoveredBy scale carrier boxes root_5294556 := by
  apply coveredBy_split_literal root_5294556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1983.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1984.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1983.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1984.covered
#print axioms cover_5294556

def root_5294550 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294550_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294550_left_fuel : Nat := 1
def small_5294550_left_count : Nat := 1
def small_5294550_left_encoded : String := "00000001"
theorem small_5294550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5294550_left_root small_5294550_left_fuel small_5294550_left_count small_5294550_left_encoded = true := by
  decide +kernel
theorem small_5294550_left_covered : CoveredBy scale carrier boxes small_5294550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5294550_left_root small_5294550_left_fuel small_5294550_left_count small_5294550_left_encoded small_5294550_left_checked

theorem cover_5294550 : CoveredBy scale carrier boxes root_5294550 := by
  apply coveredBy_split_literal root_5294550 small_5294550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5294556 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5294550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5294556
#print axioms cover_5294550

def root_5294549 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294549_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294549_right_fuel : Nat := 12
def small_5294549_right_count : Nat := 59
def small_5294549_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF00000004000000091151E8FF08A912FB000000060000000900000004115225070A0000FE115224FF0000000408A912FB12073CFA0000000208A9130712070106000000030000000700000007000000091151E8FF08A912FB12073CFA0000000208A913070000000500000007120700FA000000090000000200000004000000031151E8FB0A0001061151E9070000000300000006115225070A0000FE115224FF0000000408A9130700000006000000061151E8FF0000000500000004000000030000000200000001"
theorem small_5294549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5294549_right_root small_5294549_right_fuel small_5294549_right_count small_5294549_right_encoded = true := by
  decide +kernel
theorem small_5294549_right_covered : CoveredBy scale carrier boxes small_5294549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5294549_right_root small_5294549_right_fuel small_5294549_right_count small_5294549_right_encoded small_5294549_right_checked

theorem cover_5294549 : CoveredBy scale carrier boxes root_5294549 := by
  apply coveredBy_split_literal root_5294549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5294550 small_5294549_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5294550
  · exact small_5294549_right_covered
#print axioms cover_5294549

def root_5294544 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294544_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294544_right_fuel : Nat := 1
def small_5294544_right_count : Nat := 1
def small_5294544_right_encoded : String := "00000000"
theorem small_5294544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5294544_right_root small_5294544_right_fuel small_5294544_right_count small_5294544_right_encoded = true := by
  decide +kernel
theorem small_5294544_right_covered : CoveredBy scale carrier boxes small_5294544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5294544_right_root small_5294544_right_fuel small_5294544_right_count small_5294544_right_encoded small_5294544_right_checked

theorem cover_5294544 : CoveredBy scale carrier boxes root_5294544 := by
  apply coveredBy_split_literal root_5294544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5294549 small_5294544_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5294549
  · exact small_5294544_right_covered
#print axioms cover_5294544

def root_5299104 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5299104 : CoveredBy scale carrier boxes root_5299104 := by
  apply coveredBy_split_literal root_5299104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1985.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1986.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1985.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1986.covered
#print axioms cover_5299104

def root_5299098 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299098_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299098_left_fuel : Nat := 1
def small_5299098_left_count : Nat := 1
def small_5299098_left_encoded : String := "00000001"
theorem small_5299098_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5299098_left_root small_5299098_left_fuel small_5299098_left_count small_5299098_left_encoded = true := by
  decide +kernel
theorem small_5299098_left_covered : CoveredBy scale carrier boxes small_5299098_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5299098_left_root small_5299098_left_fuel small_5299098_left_count small_5299098_left_encoded small_5299098_left_checked

theorem cover_5299098 : CoveredBy scale carrier boxes root_5299098 := by
  apply coveredBy_split_literal root_5299098 small_5299098_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5299104 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5299098_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5299104
#print axioms cover_5299098

def root_5299097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299097_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299097_right_fuel : Nat := 20
def small_5299097_right_count : Nat := 147
def small_5299097_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F7000000091207010000000000000000091151E8FF08A912F712073D0008A912FB00000009000000090000000012070100000000000000000900000004115225070A0000FE115224FF0000000408A912F712073D0008A912FB12073CFA0000000208A913070000000700000009120700FA000000090000000200000000120701000000000008A912FB0000000A0000000A1151E8FF08A912F712073D0008A912FB12073CFA0000000208A913070000000712073D06050000F8135D80F900000001050000FE00000009135D44FF0CFD9BF7000000090F34D1000000000000000009000000040000000900000003120700FA08A91307120701060000000300000009000000090000000200000000120701000000000008A912FB12073CFA0000000208A913070000000712073D06050000F8135D80F900000001050000FE00000007135D44FF045489F7000000090000000A000000040000000900000003120700FA08A913070000000A000000090000000200000004000000031151E8FB0A0001061151E907000000030A0000FE115224FF00000004000000061151E8FF08A912F70000000612070100000000000000000900000004115225070A0000FE115224FF0000000408A912F712073D0008A9130712070106000000030000000700000007000000001207010000000000000000071151E8FF08A912F712073D0008A913070000000500000007000000000000000700000004000000030000000200000001"
theorem small_5299097_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5299097_right_root small_5299097_right_fuel small_5299097_right_count small_5299097_right_encoded = true := by
  decide +kernel
theorem small_5299097_right_covered : CoveredBy scale carrier boxes small_5299097_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5299097_right_root small_5299097_right_fuel small_5299097_right_count small_5299097_right_encoded small_5299097_right_checked

theorem cover_5299097 : CoveredBy scale carrier boxes root_5299097 := by
  apply coveredBy_split_literal root_5299097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5299098 small_5299097_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5299098
  · exact small_5299097_right_covered
#print axioms cover_5299097

def root_5299091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299091_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299091_left_fuel : Nat := 1
def small_5299091_left_count : Nat := 1
def small_5299091_left_encoded : String := "00000000"
theorem small_5299091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5299091_left_root small_5299091_left_fuel small_5299091_left_count small_5299091_left_encoded = true := by
  decide +kernel
theorem small_5299091_left_covered : CoveredBy scale carrier boxes small_5299091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5299091_left_root small_5299091_left_fuel small_5299091_left_count small_5299091_left_encoded small_5299091_left_checked

theorem cover_5299091 : CoveredBy scale carrier boxes root_5299091 := by
  apply coveredBy_split_literal root_5299091 small_5299091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5299097 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5299091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5299097
#print axioms cover_5299091

def root_5294543 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294543 : CoveredBy scale carrier boxes root_5294543 := by
  apply coveredBy_split_literal root_5294543 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5294544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5299091 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5294544
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5299091
#print axioms cover_5294543

def root_5294542 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294542 : CoveredBy scale carrier boxes root_5294542 := by
  apply coveredBy_split_literal root_5294542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5294543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1987.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5294543
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1987.covered
#print axioms cover_5294542

def root_5317523 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5317523 : CoveredBy scale carrier boxes root_5317523 := by
  apply coveredBy_split_literal root_5317523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1993.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1994.root coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1993.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1994.covered
#print axioms cover_5317523

def root_5317517 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5317517_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5317517_left_fuel : Nat := 1
def small_5317517_left_count : Nat := 1
def small_5317517_left_encoded : String := "00000000"
theorem small_5317517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5317517_left_root small_5317517_left_fuel small_5317517_left_count small_5317517_left_encoded = true := by
  decide +kernel
theorem small_5317517_left_covered : CoveredBy scale carrier boxes small_5317517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5317517_left_root small_5317517_left_fuel small_5317517_left_count small_5317517_left_encoded small_5317517_left_checked

theorem cover_5317517 : CoveredBy scale carrier boxes root_5317517 := by
  apply coveredBy_split_literal root_5317517 small_5317517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5317523 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5317517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5317523
#print axioms cover_5317517

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373

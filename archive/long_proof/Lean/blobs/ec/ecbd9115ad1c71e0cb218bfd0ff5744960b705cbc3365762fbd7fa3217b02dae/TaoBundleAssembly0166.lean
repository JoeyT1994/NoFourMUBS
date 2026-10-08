import TaoBundleAssembly0165
import TaoBundleChunkBatch0649
import TaoBundleChunkBatch0650
import TaoBundleChunkBatch0651
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166
def root_6869484 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6869484_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6869484_right_fuel : Nat := 34
def small_6869484_right_count : Nat := 413
def small_6869484_right_encoded : String := "0F34D100000000000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0F878CFD0000000307800104128A41050000000207800108128A4109000000040AD3577710D13D000B4D4402108010F90DE7C9FC0000000A0E5FD8FD0000000A000000030000000110804CF9000000010DE7C9FC000000090E5FD8FD0640010412FF7105000000020640010800000007000000070000000A000000030000000010D101000000000000000009128A7D090AD3577710D13D000B4D4402108010F90DE7C9FC000000090E5FD8FD06400104000000070000000A000000030000000100000009000000000000000900000004128A7D0507800108128A4109000000040AD357770000000A00000009128A7D090000000900000004000000020F8750FD07800104128A41050000000207800108128A4109000000040AD3577710D13D000B4D4402108010F90B4D43FC0000000A108010FD0000000A000000030000000110804CF9000000010B4D43FC10804CFD000000030640010412FF7105000000020640010812FF7109000000040000000A12FFAD090BE879B71011AD000BF3E5820000000A100928F900000001000000090000000000000007000000040000000A108010FD0640010412FF7105000000020640010812FF7109000000040BE879B70000000A0000000812FFAD090BE879B71011AD000BF3E58200000006100928F9000000010AA6A27C0000000A000000060000000000000006000000040000000A000000030000000010D10100000000000B4D44020000000810804CF9000000010B4D43FC0000000800000008128A7D090AD3577710D13D000B4D4402108010F90B4D43FC10804CFD0000000306400104000000060000000A000000060000000110804CF9000000010B4D43FC10804CFD000000030640010412FF71050000000208C0010811FBE909000000040BE879B71011AD000BF3E582000000060000000700000000000000070000000912FFAD050000000900000002108010FD0640010412FF71050000000208C0010811FBE90900000004000000060000000500000005000000030000000010D10100000000000B4D4402108010F90B4D43FC00000007000000060000000110804CF9000000010000000900000004128A7D0507800108128A4109000000040AD357770000000A10D101000000000000000008128A7D090AD3577710D13D000B4D4402108010F90000000A00000001000000050000000010D101000000000000000005000000040000000200000003000000010F878CF9000000010C9A86FC0F878CFD0000000307800104128A410500000002078001080000000900000009000000090F8750FD07800104128A41050000000207800108128A4109000000040AD3577710D13D000DE7CA020E5FD8F90B4D43FC10804CFD000000030640010412FF7105000000020640010812FF7109000000040BE879B700000009000000090000000900000009108010FD0640010412FF7105000000020640010812FF7109000000040BE879B71011AD000D4128820EFA10F90AA6A27C0000000A10ED70FD0000000A00000003000000010EFA4CF9000000010AA6A27C0000000910ED70FD05A00104133135050000000205A00108133135090000000400000008133171090000000900000004133171050000000A00000002000000030000000010117100000000000D412882000000080000000912FFAD090BE879B71011AD000D4128820EFA10F90AA6A27C0000000910ED70FD05A00104000000060000000500000003000000010EFA4CF9000000010000000900000000000000090000000412FFAD050640010812FF7109000000040BE879B70000000A00000008000000050000000200000003000000010E6014F9000000010B4D43FC00000009108010FD0640010412FF71050000000206400108000000090000000500000005000000030000000010D101000000000000000009128A7D090AD3577710D13D000DE7CA020E5FD8F90B4D43FC00000009000000050000000100000005000000000000000900000004128A7D0507800108128A4109000000040AD3577710D13D000DE7CA020E5FD8F90B4D43FC0000000900000005000000010000000500000000000000090000000500000002000000030F34D0FC0C9A87020F8750F9078001040000000900000009000000010000000900000003000000010F34D102000000010CFD9BFD0F350CFC000000030C9A86FC000000090F8750FD0780010400000009000000050000000300000009"
theorem small_6869484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6869484_right_root small_6869484_right_fuel small_6869484_right_count small_6869484_right_encoded = true := by
  decide +kernel
theorem small_6869484_right_covered : CoveredBy scale carrier boxes small_6869484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6869484_right_root small_6869484_right_fuel small_6869484_right_count small_6869484_right_encoded small_6869484_right_checked

theorem cover_6869484 : CoveredBy scale carrier boxes root_6869484 := by
  apply coveredBy_split_literal root_6869484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0165.root_6869485 small_6869484_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0165.cover_6869485
  · exact small_6869484_right_covered
#print axioms cover_6869484

def root_6869479 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6869479_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6869479_right_fuel : Nat := 1
def small_6869479_right_count : Nat := 1
def small_6869479_right_encoded : String := "00000004"
theorem small_6869479_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6869479_right_root small_6869479_right_fuel small_6869479_right_count small_6869479_right_encoded = true := by
  decide +kernel
theorem small_6869479_right_covered : CoveredBy scale carrier boxes small_6869479_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6869479_right_root small_6869479_right_fuel small_6869479_right_count small_6869479_right_encoded small_6869479_right_checked

theorem cover_6869479 : CoveredBy scale carrier boxes root_6869479 := by
  apply coveredBy_split_literal root_6869479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6869484 small_6869479_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6869484
  · exact small_6869479_right_covered
#print axioms cover_6869479

def root_6864153 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6864153 : CoveredBy scale carrier boxes root_6864153 := by
  apply coveredBy_split_literal root_6864153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0165.root_6864154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6869479 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0165.cover_6864154
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6869479
#print axioms cover_6864153

def root_6864148 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6864148_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6864148_right_fuel : Nat := 1
def small_6864148_right_count : Nat := 1
def small_6864148_right_encoded : String := "00000002"
theorem small_6864148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6864148_right_root small_6864148_right_fuel small_6864148_right_count small_6864148_right_encoded = true := by
  decide +kernel
theorem small_6864148_right_covered : CoveredBy scale carrier boxes small_6864148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6864148_right_root small_6864148_right_fuel small_6864148_right_count small_6864148_right_encoded small_6864148_right_checked

theorem cover_6864148 : CoveredBy scale carrier boxes root_6864148 := by
  apply coveredBy_split_literal root_6864148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6864153 small_6864148_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6864153
  · exact small_6864148_right_covered
#print axioms cover_6864148

def root_6856340 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856340 : CoveredBy scale carrier boxes root_6856340 := by
  apply coveredBy_split_literal root_6856340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0165.root_6856341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6864148 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0165.cover_6856341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6864148
#print axioms cover_6856340

def root_6856334 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856334_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856334_left_fuel : Nat := 1
def small_6856334_left_count : Nat := 1
def small_6856334_left_encoded : String := "00000003"
theorem small_6856334_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856334_left_root small_6856334_left_fuel small_6856334_left_count small_6856334_left_encoded = true := by
  decide +kernel
theorem small_6856334_left_covered : CoveredBy scale carrier boxes small_6856334_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856334_left_root small_6856334_left_fuel small_6856334_left_count small_6856334_left_encoded small_6856334_left_checked

theorem cover_6856334 : CoveredBy scale carrier boxes root_6856334 := by
  apply coveredBy_split_literal root_6856334 small_6856334_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856340 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6856334_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856340
#print axioms cover_6856334

def root_6856333 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856333_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856333_right_fuel : Nat := 17
def small_6856333_right_count : Nat := 155
def small_6856333_right_encoded : String := "120700FC05000104135D45050000000205000108135D4509000000040CFD9BF70F350D0000000005000000000F34D100000000000CFD9BF90F350D0200000005000000010F34D10200000001045489FD00000009138670FC0000000600000003135D81090CFD9BF70F350D000CFD9BF90F350D02045489FD00000005138670FC0000000500000003000000010F34D10200000001045489FD1386ACFC000000030C9A87000F8750F7000000050000000000000009138670FC0C9A87000F8750F700000005000000000F878CF7000000000000000900000003000000000F34D100000000000CFD9BF9000000070000000900000004135D810505000108135D4509000000040CFD9BF70F350D000CFD9BF90F350D02045489FD00000005138670FC0000000500000003000000010F34D1020000000100000006000000000F34D100000000000CFD9BF90F350D02045489FD1386ACFC000000030C9A87020F8750F9000000050000000100000009138670FC0C9A87020F8750F900000005000000010F878CF90000000100000009000000030000000100000009135D81090CFD9BF70F350D000CFD9BF90F350D02045489FD1386ACFC000000030C9A87000F8750F70C9A8702000000050F878CF900000001078001040000000500000009000000000F878CF7000000000C9A87020F8750F90780010400000005000000090000000100000009138670FC0C9A87000F8750F70C9A8702000000050F878CF90000000100000009000000000F878CF7000000000C9A8702000000090000000900000003000000010F34D1020000000100000009000000000F34D1000000000000000009000000040000000200000003"
theorem small_6856333_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856333_right_root small_6856333_right_fuel small_6856333_right_count small_6856333_right_encoded = true := by
  decide +kernel
theorem small_6856333_right_covered : CoveredBy scale carrier boxes small_6856333_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856333_right_root small_6856333_right_fuel small_6856333_right_count small_6856333_right_encoded small_6856333_right_checked

theorem cover_6856333 : CoveredBy scale carrier boxes root_6856333 := by
  apply coveredBy_split_literal root_6856333 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856334 small_6856333_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856334
  · exact small_6856333_right_covered
#print axioms cover_6856333

def root_6856328 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856328_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856328_right_fuel : Nat := 1
def small_6856328_right_count : Nat := 1
def small_6856328_right_encoded : String := "00000001"
theorem small_6856328_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856328_right_root small_6856328_right_fuel small_6856328_right_count small_6856328_right_encoded = true := by
  decide +kernel
theorem small_6856328_right_covered : CoveredBy scale carrier boxes small_6856328_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856328_right_root small_6856328_right_fuel small_6856328_right_count small_6856328_right_encoded small_6856328_right_checked

theorem cover_6856328 : CoveredBy scale carrier boxes root_6856328 := by
  apply coveredBy_split_literal root_6856328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856333 small_6856328_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856333
  · exact small_6856328_right_covered
#print axioms cover_6856328

def root_6856327 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856327_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856327_right_fuel : Nat := 21
def small_6856327_right_count : Nat := 167
def small_6856327_right_encoded : String := "120701020000000108A912FD12073CFC0000000305000104135D45050000000205000108135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000F8750F70C9A86FC000000060000000A000000000F878CF7000000000C9A86FC000000060F8750FD028001040000000600000006000000030F34D0FC00000006000000030000000113867102000000010CFD9BFD0000000600000006000000000F34D10000000000045489F91386AD020CFD9BFD000000090F34D0FC00000006000000030000000100000009135D81090CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000000000A0F878CF7000000000C9A86FC000000090000000A0000000A00000001138671020000000100000009000000000F34D100000000000000000900000004135D810505000108135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000F8750F700000006000000000F878CF7000000000C9A86FC000000060F8750FD078001040000000600000006000000030F34D0FC000000060000000300000001138671020000000100000006000000000F34D1000000000000000009135D81090CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000F8750F70C9A86FC000000090F8750FD078001040000000A128A7D050780010800000009000000050000000200000003000000000F878CF700000000000000090F34D0FC000000090000000300000001138671020000000100000009000000000F34D10000000000000000090000000400000002120700FC05000104135D45050000000205000108135D4509000000040CFD9BF7000000060000000900000009135D8105000000090000000200000003"
theorem small_6856327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856327_right_root small_6856327_right_fuel small_6856327_right_count small_6856327_right_encoded = true := by
  decide +kernel
theorem small_6856327_right_covered : CoveredBy scale carrier boxes small_6856327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856327_right_root small_6856327_right_fuel small_6856327_right_count small_6856327_right_encoded small_6856327_right_checked

theorem cover_6856327 : CoveredBy scale carrier boxes root_6856327 := by
  apply coveredBy_split_literal root_6856327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856328 small_6856327_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856328
  · exact small_6856327_right_covered
#print axioms cover_6856327

def root_6856322 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856322_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856322_right_fuel : Nat := 1
def small_6856322_right_count : Nat := 1
def small_6856322_right_encoded : String := "00000000"
theorem small_6856322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856322_right_root small_6856322_right_fuel small_6856322_right_count small_6856322_right_encoded = true := by
  decide +kernel
theorem small_6856322_right_covered : CoveredBy scale carrier boxes small_6856322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856322_right_root small_6856322_right_fuel small_6856322_right_count small_6856322_right_encoded small_6856322_right_checked

theorem cover_6856322 : CoveredBy scale carrier boxes root_6856322 := by
  apply coveredBy_split_literal root_6856322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856327 small_6856322_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856327
  · exact small_6856322_right_covered
#print axioms cover_6856322

def root_6856321 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856321_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856321_right_fuel : Nat := 23
def small_6856321_right_count : Nat := 185
def small_6856321_right_encoded : String := "120701000000000008A912F912073D0208A912FD12073CFC0000000305000104135D45050000000205000108135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0000000700000008000000010F878CF9000000010C9A86FC000000070F8750FD028001040000000700000008000000030F34D0FC0000000700000003000000010F34D102000000010CFD9BFD000000090F34D0FC00000007000000030000000013867100000000000CFD9BF90F350D020CFD9BFD00000007000000070000000100000009135D8109045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F900000007000000010F878CF9000000010C9A86FC000000070F8750FD028001040000000700000009000000030F34D0FC0000000700000003000000010F34D10200000001000000090000000013867100000000000CFD9BF9000000070000000900000004135D810505000108135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A8702000000080F878CF9000000010C9A86FC000000080000000800000008000000010F34D10200000001000000090000000013867100000000000CFD9BF90000000900000009135D8109045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC000000090F8750FD07800104128A410500000002078001080000000800000007128A7D05000000080000000200000003000000010F878CF900000001000000090F34D0FC0000000900000003000000010F34D1020000000100000009000000001386710000000000000000090000000400000002120700FC05000104135D45050000000205000108135D450900000004045489F71386AD0000000007000000000000000700000007135D810500000009000000020000000300000001120701020000000108A912FD00000009120700FC0000000900000003"
theorem small_6856321_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856321_right_root small_6856321_right_fuel small_6856321_right_count small_6856321_right_encoded = true := by
  decide +kernel
theorem small_6856321_right_covered : CoveredBy scale carrier boxes small_6856321_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856321_right_root small_6856321_right_fuel small_6856321_right_count small_6856321_right_encoded small_6856321_right_checked

theorem cover_6856321 : CoveredBy scale carrier boxes root_6856321 := by
  apply coveredBy_split_literal root_6856321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856322 small_6856321_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856322
  · exact small_6856321_right_covered
#print axioms cover_6856321

def root_6856315 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856315_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856315_left_fuel : Nat := 1
def small_6856315_left_count : Nat := 1
def small_6856315_left_encoded : String := "00000004"
theorem small_6856315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856315_left_root small_6856315_left_fuel small_6856315_left_count small_6856315_left_encoded = true := by
  decide +kernel
theorem small_6856315_left_covered : CoveredBy scale carrier boxes small_6856315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856315_left_root small_6856315_left_fuel small_6856315_left_count small_6856315_left_encoded small_6856315_left_checked

theorem cover_6856315 : CoveredBy scale carrier boxes root_6856315 := by
  apply coveredBy_split_literal root_6856315 small_6856315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856321 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6856315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856321
#print axioms cover_6856315

def root_6856314 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856314 : CoveredBy scale carrier boxes root_6856314 := by
  apply coveredBy_split_literal root_6856314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856315 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2594.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856315
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2594.covered
#print axioms cover_6856314

def root_6856308 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856308_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856308_left_fuel : Nat := 1
def small_6856308_left_count : Nat := 1
def small_6856308_left_encoded : String := "00000003"
theorem small_6856308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856308_left_root small_6856308_left_fuel small_6856308_left_count small_6856308_left_encoded = true := by
  decide +kernel
theorem small_6856308_left_covered : CoveredBy scale carrier boxes small_6856308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856308_left_root small_6856308_left_fuel small_6856308_left_count small_6856308_left_encoded small_6856308_left_checked

theorem cover_6856308 : CoveredBy scale carrier boxes root_6856308 := by
  apply coveredBy_split_literal root_6856308 small_6856308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856314 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6856308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856314
#print axioms cover_6856308

def root_6890092 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890092_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890092_left_fuel : Nat := 19
def small_6890092_left_count : Nat := 131
def small_6890092_left_encoded : String := "13D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D020DE7CA00000000050E6014F700000000014001040000000513F6150508C000FC0000000511FBE8FD014001080000000513F615090BE879B91011AD0200000009000000010000000A0000000400000003000000020000000110D10102000000010DE7CA000000000A0E6014F7000000000000000A13D7ED090AD3577910D13D020DE7CA000E5FD8F70000000A000000000E6014F700000000014001040000000A13F6150508C000FC11FC24FD0000000303C0010813A51109000000040BE879B91011AD020DAED8770000000A0000000A000000010000000A0000000A11FBE8FD03C0010813A51109000000040BE879B91011AD020000000A000000010000000A0000000A00000003000000020000000110D10102000000010000000A00000004128A40FD0280010813D7B109000000040AD3577910D13D020DE7CA00000000090E6014F700000000014001040000000913F61505064000FC12FFACFD00000003014001080000000913F615090BE879B9000000090000000A0000000400000009000000020000000110D10102000000010000000A13D7ED090AD3577910D13D020DE7CA000000000A0E6014F700000000014001040000000A13F61505064000FC12FFACFD000000030000000A0000000A00000002000000010000000A0000000400000003"
theorem small_6890092_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6890092_left_root small_6890092_left_fuel small_6890092_left_count small_6890092_left_encoded = true := by
  decide +kernel
theorem small_6890092_left_covered : CoveredBy scale carrier boxes small_6890092_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6890092_left_root small_6890092_left_fuel small_6890092_left_count small_6890092_left_encoded small_6890092_left_checked

theorem cover_6890092 : CoveredBy scale carrier boxes root_6890092 := by
  apply coveredBy_split_literal root_6890092 small_6890092_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2596.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_6890092_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2596.covered
#print axioms cover_6890092

def root_6890086 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890086_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890086_left_fuel : Nat := 1
def small_6890086_left_count : Nat := 1
def small_6890086_left_encoded : String := "00000000"
theorem small_6890086_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6890086_left_root small_6890086_left_fuel small_6890086_left_count small_6890086_left_encoded = true := by
  decide +kernel
theorem small_6890086_left_covered : CoveredBy scale carrier boxes small_6890086_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6890086_left_root small_6890086_left_fuel small_6890086_left_count small_6890086_left_encoded small_6890086_left_checked

theorem cover_6890086 : CoveredBy scale carrier boxes root_6890086 := by
  apply coveredBy_split_literal root_6890086 small_6890086_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6890092 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6890086_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6890092
#print axioms cover_6890086

def root_6889888 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889888_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889888_left_fuel : Nat := 22
def small_6889888_left_count : Nat := 93
def small_6889888_left_encoded : String := "0F8750F70280010413D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577900000009000000050000000A0000000A13D7ED05078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D020B4D4400108010F7000000090000000010804CF70000000003C001040000000513A54D0508C000FC0000000500000009000000020000000110D10102000000010000000613D7ED090AD3577910D13D020B4D4400108010F70000000A0000000010804CF70000000003C001040000000A13A54D0508C000FC11FC24FD0000000303C0010813A51109000000040BE879B91011AD020BF3E58000000005100928F7000000000000000A00000001000000060000000A0000000A00000002000000010000000A00000004128A40FD0280010813D7B109000000040AD357790000000910D10102000000010000000A13D7ED090AD3577910D13D0200000009000000010000000A00000004000000030000000200000000"
theorem small_6889888_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6889888_left_root small_6889888_left_fuel small_6889888_left_count small_6889888_left_encoded = true := by
  decide +kernel
theorem small_6889888_left_covered : CoveredBy scale carrier boxes small_6889888_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6889888_left_root small_6889888_left_fuel small_6889888_left_count small_6889888_left_encoded small_6889888_left_checked

theorem cover_6889888 : CoveredBy scale carrier boxes root_6889888 := by
  apply coveredBy_split_literal root_6889888 small_6889888_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6890086 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6889888_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6890086
#print axioms cover_6889888

def root_6889882 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889882_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889882_left_fuel : Nat := 1
def small_6889882_left_count : Nat := 1
def small_6889882_left_encoded : String := "00000001"
theorem small_6889882_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6889882_left_root small_6889882_left_fuel small_6889882_left_count small_6889882_left_encoded = true := by
  decide +kernel
theorem small_6889882_left_covered : CoveredBy scale carrier boxes small_6889882_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6889882_left_root small_6889882_left_fuel small_6889882_left_count small_6889882_left_encoded small_6889882_left_checked

theorem cover_6889882 : CoveredBy scale carrier boxes root_6889882 := by
  apply coveredBy_split_literal root_6889882 small_6889882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6889888 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6889882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6889888
#print axioms cover_6889882

def root_6887430 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887430 : CoveredBy scale carrier boxes root_6887430 := by
  apply coveredBy_split_literal root_6887430 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2595.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6889882 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2595.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6889882
#print axioms cover_6887430

def root_6887425 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887425_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887425_right_fuel : Nat := 1
def small_6887425_right_count : Nat := 1
def small_6887425_right_encoded : String := "00000000"
theorem small_6887425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887425_right_root small_6887425_right_fuel small_6887425_right_count small_6887425_right_encoded = true := by
  decide +kernel
theorem small_6887425_right_covered : CoveredBy scale carrier boxes small_6887425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887425_right_root small_6887425_right_fuel small_6887425_right_count small_6887425_right_encoded small_6887425_right_checked

theorem cover_6887425 : CoveredBy scale carrier boxes root_6887425 := by
  apply coveredBy_split_literal root_6887425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887430 small_6887425_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887430
  · exact small_6887425_right_covered
#print axioms cover_6887425

def root_6893664 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893664_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893664_left_fuel : Nat := 27
def small_6893664_left_count : Nat := 411
def small_6893664_left_encoded : String := "13D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577710D13D000DE7CA02000000050E6014F900000001014001040000000513F6150508C000FC0000000511FBE8FD014001080000000513F615090BE879B71011AD000000000900000000000000080000000400000003000000020000000010D10100000000000DE7CA02000000080E6014F9000000010000000813D7ED090AD3577710D13D000DE7CA020E5FD8F90140010413F5D9050000000208C000FC0000000511FBE8FD03C0010800000005000000070000000313F6150508C000FC11FC24FD0000000303C00108000000050000000711FBE8FD03C0010813A51109000000040BE879B7000000090000000813A54D090BE879B71011AD000000000900000000101171000000000000000007000000040000000300000002000000010E6014F9000000010140010413F5D9050000000208C000FC11FC24FD000000030000000711FBE8FD03C0010813A51109000000040BE879B71011AD000DAED879000000070E9625020000000100000007000000000000000713A54D090BE879B71011AD00000000070000000000000007000000040000000313F6150508C000FC11FC24FD0000000303C0010813A51109000000040BE879B71011AD000DAED879000000070E9625020000000100000007000000000000000713A54D090BE879B71011AD000DAED879000000070E962502000000010000000700000000000000070000000411FBE8FD03C0010813A51109000000040BE879B71011AD000DAED8790E96610200000009000000010E9625020000000101E0010413E9590500000002082000FC000000070000000913E99505082000FC124698FD0000000303200108000000070000000712465CFD032001080000000913C145090C730AD700000009000000070000000400000003000000020000000010117100000000000000000713A54D090BE879B71011AD000DAED8790E96610201E001040000000713E99505082000FC0000000712465CFD0460010800000009000000070000000300000002000000010E9625020000000101E0010413E9590500000002082000FC000000070000000A13E99505082000FC124698FD000000030000000712465CFD046001081383DD09000000040C730AD70000000A000000070000000A0000000300000002000000001011710000000000000000070000000400000003000000020000000010D10100000000000DE7CA020E5FD8F900000007000000010000000700000004128A40FD0280010813D7B109000000040AD3577710D13D000DE7CA02000000090E6014F900000001014001040000000913F61505064000FC12FFACFD00000003014001080000000813F615090BE879B700000009000000080000000400000009000000020000000010D10100000000000000000813D7ED090AD3577710D13D000DE7CA020E5FD8F900000009000000010E6014F9000000010140010413F5D90500000002064000FC12FFACFD0000000303C0010813A51109000000040BE879B70000000910117100000000000000000713A54D090BE879B71011AD000000000900000000101171000000000000000007000000040000000913F61505064000FC12FFACFD0000000303C0010813A51109000000040BE879B70000000910117100000000000DAED8790E96610200000008000000010E9625020000000101E00104000000070000000813A54D090BE879B71011AD000DAED879000000090E9625020000000101E001040000000A13E9950506E000FC12C820FD0000000304600108000000090000000A00000009000000020000000010117100000000000DAED8790E96610201E001040000000713E9950506E000FC000000070000000600000002000000010E9625020000000101E001040000000713E9950506E000FC0000000700000005000000020000000412FF70FD03C001080000000913A54D090BE879B70000000910117100000000000DAED879000000060E96250200000001000000050000000400000003000000020000000010D10100000000000DE7CA020E5FD8F90140010413F5D90500000002064000FC000000070000000800000008000000010E6014F9000000010140010413F5D90500000002064000FC0000000712FF70FD03C0010800000008000000070000000313F61505064000FC12FFACFD0000000303C00108000000080000000712FF70FD03C00108000000080000000500000003000000020000000400000003"
theorem small_6893664_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893664_left_root small_6893664_left_fuel small_6893664_left_count small_6893664_left_encoded = true := by
  decide +kernel
theorem small_6893664_left_covered : CoveredBy scale carrier boxes small_6893664_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893664_left_root small_6893664_left_fuel small_6893664_left_count small_6893664_left_encoded small_6893664_left_checked

theorem cover_6893664 : CoveredBy scale carrier boxes root_6893664 := by
  apply coveredBy_split_literal root_6893664 small_6893664_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2597.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_6893664_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2597.covered
#print axioms cover_6893664

def root_6893658 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893658_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893658_left_fuel : Nat := 1
def small_6893658_left_count : Nat := 1
def small_6893658_left_encoded : String := "00000001"
theorem small_6893658_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893658_left_root small_6893658_left_fuel small_6893658_left_count small_6893658_left_encoded = true := by
  decide +kernel
theorem small_6893658_left_covered : CoveredBy scale carrier boxes small_6893658_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893658_left_root small_6893658_left_fuel small_6893658_left_count small_6893658_left_encoded small_6893658_left_checked

theorem cover_6893658 : CoveredBy scale carrier boxes root_6893658 := by
  apply coveredBy_split_literal root_6893658 small_6893658_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6893664 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6893658_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6893664
#print axioms cover_6893658

def root_6893424 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893424_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893424_left_fuel : Nat := 22
def small_6893424_left_count : Nat := 109
def small_6893424_left_encoded : String := "0F8750F90280010413D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD35777000000090000000513D7ED090AD3577710D13D000B4D4402108010F9000000090000000110804CF900000001014001040000000513F6150508C000FC0000000500000009000000020000000010D10100000000000000000700000004128A40FD028001080000000913D7ED090AD357770000000910D101000000000000000008000000040000000313D7ED05078000FC128A7CFD00000003028001080000000813D7ED090AD3577710D13D000B4D4402108010F9000000080000000110804CF90000000103C0010413A511050000000208C000FC11FC24FD0000000303C001080000000513A54D090BE879B71011AD000BF3E58200000005100928F9000000010000000800000000000000070000000411FBE8FD03C001080000000813A54D0900000008000000040000000313A54D0508C000FC11FC24FD00000003000000080000000800000002000000000000000800000004128A40FD028001080000000813D7ED090AD3577710D13D0000000009000000000000000800000004000000030000000200000001"
theorem small_6893424_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893424_left_root small_6893424_left_fuel small_6893424_left_count small_6893424_left_encoded = true := by
  decide +kernel
theorem small_6893424_left_covered : CoveredBy scale carrier boxes small_6893424_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893424_left_root small_6893424_left_fuel small_6893424_left_count small_6893424_left_encoded small_6893424_left_checked

theorem cover_6893424 : CoveredBy scale carrier boxes root_6893424 := by
  apply coveredBy_split_literal root_6893424 small_6893424_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6893658 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6893424_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6893658
#print axioms cover_6893424

def root_6893419 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893419_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893419_right_fuel : Nat := 1
def small_6893419_right_count : Nat := 1
def small_6893419_right_encoded : String := "00000001"
theorem small_6893419_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893419_right_root small_6893419_right_fuel small_6893419_right_count small_6893419_right_encoded = true := by
  decide +kernel
theorem small_6893419_right_covered : CoveredBy scale carrier boxes small_6893419_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893419_right_root small_6893419_right_fuel small_6893419_right_count small_6893419_right_encoded small_6893419_right_checked

theorem cover_6893419 : CoveredBy scale carrier boxes root_6893419 := by
  apply coveredBy_split_literal root_6893419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6893424 small_6893419_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6893424
  · exact small_6893419_right_covered
#print axioms cover_6893419

def root_6897110 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6897110 : CoveredBy scale carrier boxes root_6897110 := by
  apply coveredBy_split_literal root_6897110 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2598.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2599.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2598.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2599.covered
#print axioms cover_6897110

def root_6897104 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6897104_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6897104_left_fuel : Nat := 1
def small_6897104_left_count : Nat := 1
def small_6897104_left_encoded : String := "00000001"
theorem small_6897104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6897104_left_root small_6897104_left_fuel small_6897104_left_count small_6897104_left_encoded = true := by
  decide +kernel
theorem small_6897104_left_covered : CoveredBy scale carrier boxes small_6897104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6897104_left_root small_6897104_left_fuel small_6897104_left_count small_6897104_left_encoded small_6897104_left_checked

theorem cover_6897104 : CoveredBy scale carrier boxes root_6897104 := by
  apply coveredBy_split_literal root_6897104 small_6897104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6897110 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6897104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6897110
#print axioms cover_6897104

def root_6893418 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6893418 : CoveredBy scale carrier boxes root_6893418 := by
  apply coveredBy_split_literal root_6893418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6893419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6897104 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6893419
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6897104
#print axioms cover_6893418

def root_6893412 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893412_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893412_left_fuel : Nat := 1
def small_6893412_left_count : Nat := 1
def small_6893412_left_encoded : String := "00000000"
theorem small_6893412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893412_left_root small_6893412_left_fuel small_6893412_left_count small_6893412_left_encoded = true := by
  decide +kernel
theorem small_6893412_left_covered : CoveredBy scale carrier boxes small_6893412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893412_left_root small_6893412_left_fuel small_6893412_left_count small_6893412_left_encoded small_6893412_left_checked

theorem cover_6893412 : CoveredBy scale carrier boxes root_6893412 := by
  apply coveredBy_split_literal root_6893412 small_6893412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6893418 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6893412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6893418
#print axioms cover_6893412

def root_6887424 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887424 : CoveredBy scale carrier boxes root_6887424 := by
  apply coveredBy_split_literal root_6887424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6893412 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887425
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6893412
#print axioms cover_6887424

def root_6887418 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887418_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887418_left_fuel : Nat := 1
def small_6887418_left_count : Nat := 1
def small_6887418_left_encoded : String := "00000004"
theorem small_6887418_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887418_left_root small_6887418_left_fuel small_6887418_left_count small_6887418_left_encoded = true := by
  decide +kernel
theorem small_6887418_left_covered : CoveredBy scale carrier boxes small_6887418_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887418_left_root small_6887418_left_fuel small_6887418_left_count small_6887418_left_encoded small_6887418_left_checked

theorem cover_6887418 : CoveredBy scale carrier boxes root_6887418 := by
  apply coveredBy_split_literal root_6887418 small_6887418_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887424 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_6887418_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887424
#print axioms cover_6887418

def root_6901446 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6901446 : CoveredBy scale carrier boxes root_6901446 := by
  apply coveredBy_split_literal root_6901446 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2600.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2601.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2600.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2601.covered
#print axioms cover_6901446

def root_6901441 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6901441_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6901441_right_fuel : Nat := 1
def small_6901441_right_count : Nat := 1
def small_6901441_right_encoded : String := "00000004"
theorem small_6901441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6901441_right_root small_6901441_right_fuel small_6901441_right_count small_6901441_right_encoded = true := by
  decide +kernel
theorem small_6901441_right_covered : CoveredBy scale carrier boxes small_6901441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6901441_right_root small_6901441_right_fuel small_6901441_right_count small_6901441_right_encoded small_6901441_right_checked

theorem cover_6901441 : CoveredBy scale carrier boxes root_6901441 := by
  apply coveredBy_split_literal root_6901441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6901446 small_6901441_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6901446
  · exact small_6901441_right_covered
#print axioms cover_6901441

def root_6887417 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887417 : CoveredBy scale carrier boxes root_6887417 := by
  apply coveredBy_split_literal root_6887417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6901441 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887418
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6901441
#print axioms cover_6887417

def root_6887411 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887411_left_fuel : Nat := 1
def small_6887411_left_count : Nat := 1
def small_6887411_left_encoded : String := "00000003"
theorem small_6887411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887411_left_root small_6887411_left_fuel small_6887411_left_count small_6887411_left_encoded = true := by
  decide +kernel
theorem small_6887411_left_covered : CoveredBy scale carrier boxes small_6887411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887411_left_root small_6887411_left_fuel small_6887411_left_count small_6887411_left_encoded small_6887411_left_checked

theorem cover_6887411 : CoveredBy scale carrier boxes root_6887411 := by
  apply coveredBy_split_literal root_6887411 small_6887411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887417 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6887411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887417
#print axioms cover_6887411

def root_6887410 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887410_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887410_right_fuel : Nat := 28
def small_6887410_right_count : Nat := 427
def small_6887410_right_encoded : String := "135D44FD05000108135D4509000000040CFD9BF70F350D000CFD9BF9000000090F34D102000000010C9A87000F8750F700000009000000000F878CF7000000000280010413D7B10500000002028000FC13D7ECFD000000030280010813D7B109000000040000000913D7ED090AD35779000000090000000A000000040000000913D7ED05028000FC13D7ECFD000000030280010813D7B109000000040AD357790000000910D10102000000010DE7CA000E5FD8F700000007000000000E6014F70000000003C0010413A51105000000020000000A0000000513D7ED090AD3577910D13D020DE7CA000E5FD8F70000000900000000000000050000000110D1010200000001000000050000000413D7B0FD0280010800000009000000050000000300000002000000000F34D100000000000CFD9BF90F350D020C9A87020F8750F900000009000000010F878CF9000000010280010413D7B10500000002028000FC13D7ECFD000000030280010813D7B109000000040000000913D7ED090AD357770000000910D10100000000000DE7CA020E5FD8F900000006000000010E6014F9000000010140010413F5D9050000000203C000FC13A54CFD0000000303C0010800000008000000050000000500000005000000040000000913D7ED05028000FC13D7ECFD000000030280010813D7B109000000040AD35777000000090000000813D7ED090AD3577710D13D000DE7CA020E5FD8F90000000900000001000000050000000010D1010000000000000000050000000413D7B0FD0280010800000009000000050000000300000002000000010F34D102000000010280010413D7B10500000002028000FC13D7ECFD000000030280010813D7B109000000040AD3577710D13D000AD3577910D13D02014001040000000913F6150503C000FC13A54CFD00000003014001080000000913F615090BE879B70000000910117100000000000BE879B9000000091011710200000001000000050000000400000009000000020000000110D1010200000001014001040000000A13F6150503C000FC13A54CFD000000030140010813F5D909000000040BE879B70000000A0000000A0000000500000005000000020000000010D10100000000000AD3577910D13D020140010413F5D9050000000203C000FC13A54CFD00000003014001080000000813F6150909BE353711777D000BE879B9000000080000000800000000000000080000000413A510FD0140010800000008000000050000000313F6150503C000FC0000000800000005000000020000000110D10102000000010140010413F5D9050000000203C000FC13A54CFD000000030140010813F5D9090000000409BE353711777D000000000A000000000000000800000005000000050000000513D7ED090AD3577710D13D000AD3577910D13D020140010413F5D9050000000203C000FC13A54CFD0000000303C0010813A51109000000040BE879B7000000090000000A0000000500000005000000050000000110D1010200000001000000050000000010D1010000000000000000050000000413D7B0FD0280010813D7B109000000040AD3577710D13D000AD357790000000910D1010200000001000000050000000010D101000000000000000005000000050000000313D7ED05028000FC13D7ECFD000000030280010813D7B109000000040AD3577710D13D000AD3577910D13D0203C0010413A511050000000203C000FC13A54CFD000000030140010813F5D909000000040BE879B700000009000000080000000500000005000000050000000110D1010200000001000000050000000010D101000000000000000005000000050000000500000002135D81090CFD9BF70F350D000CFD9BF90F350D020C9A87000F8750F700000009000000000F878CF7000000000C9A87020F8750F900000009000000010F878CF9000000010280010413D7B10500000002028000FC13D7ECFD000000030780010800000009000000060000000613D7ED05028000FC13D7ECFD0000000307800108128A4109000000040DE7CA000000000900000005000000050000000500000002000000010F34D102000000010C9A87000F8750F70000000A000000000F878CF700000000028001040000000A00000005000000000F34D100000000000CFD9BF90F350D020C9A87020F8750F9028001040000000600000006000000010F878CF9000000010280010413D7B10500000002028000FC13D7ECFD0000000307800108128A4109000000040AD3577710D13D000DE7CA0200000006000000050000000000000006000000050000000500000005000000010F34D10200000001000000050000000400000003"
theorem small_6887410_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887410_right_root small_6887410_right_fuel small_6887410_right_count small_6887410_right_encoded = true := by
  decide +kernel
theorem small_6887410_right_covered : CoveredBy scale carrier boxes small_6887410_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887410_right_root small_6887410_right_fuel small_6887410_right_count small_6887410_right_encoded small_6887410_right_checked

theorem cover_6887410 : CoveredBy scale carrier boxes root_6887410 := by
  apply coveredBy_split_literal root_6887410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887411 small_6887410_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887411
  · exact small_6887410_right_covered
#print axioms cover_6887410

def root_6887404 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887404_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887404_left_fuel : Nat := 1
def small_6887404_left_count : Nat := 1
def small_6887404_left_encoded : String := "00000002"
theorem small_6887404_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887404_left_root small_6887404_left_fuel small_6887404_left_count small_6887404_left_encoded = true := by
  decide +kernel
theorem small_6887404_left_covered : CoveredBy scale carrier boxes small_6887404_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887404_left_root small_6887404_left_fuel small_6887404_left_count small_6887404_left_encoded small_6887404_left_checked

theorem cover_6887404 : CoveredBy scale carrier boxes root_6887404 := by
  apply coveredBy_split_literal root_6887404 small_6887404_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887410 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_6887404_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887410
#print axioms cover_6887404

def root_6907604 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6907604 : CoveredBy scale carrier boxes root_6907604 := by
  apply coveredBy_split_literal root_6907604 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2602.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2603.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2602.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2603.covered
#print axioms cover_6907604

def root_6907599 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907599_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907599_right_fuel : Nat := 1
def small_6907599_right_count : Nat := 1
def small_6907599_right_encoded : String := "00000000"
theorem small_6907599_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6907599_right_root small_6907599_right_fuel small_6907599_right_count small_6907599_right_encoded = true := by
  decide +kernel
theorem small_6907599_right_covered : CoveredBy scale carrier boxes small_6907599_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6907599_right_root small_6907599_right_fuel small_6907599_right_count small_6907599_right_encoded small_6907599_right_checked

theorem cover_6907599 : CoveredBy scale carrier boxes root_6907599 := by
  apply coveredBy_split_literal root_6907599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907604 small_6907599_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907604
  · exact small_6907599_right_covered
#print axioms cover_6907599

def root_6907598 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907598_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907598_right_fuel : Nat := 30
def small_6907598_right_count : Nat := 337
def small_6907598_right_encoded : String := "0F34D100000000000CFD9BF90F350D020C9A87020F8750F907800104128A410500000002078000FC128A7CFD00000003028001080000000813D7ED090AD3577710D13D000000000800000000000000080000000400000008128A7D050000000800000002000000010F878CF90000000107800104128A410500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577710D13D0000000008000000000000000813D7ED090AD3577710D13D000DE7CA020E5FD8F90640010412FF71050000000208C000FC11FC24FD0000000303C001080000000813A54D090BE879B71011AD00000000080000000000000008000000040000000812FFAD050000000800000002000000010E6014F9000000010640010412FF71050000000208C000FC11FC24FD0000000303C0010813A51109000000040000000813A54D090BE879B71011AD000DAED8790E96610205A001041331350500000002096000FC11AABCFD000000030000000800000008133171050000000800000002000000010E9625020000000105A001041331350500000002096000FC000000090000000500000005000000001011710000000000000000080000000411FBE8FD03C0010800000008000000050000000312FFAD0508C000FC11FC24FD0000000303C00108000000080000000500000005000000020000000010D10100000000000000000800000004128A40FD028001080000000813D7ED090AD3577710D13D000DE7CA020E5FD8F90640010412FF710500000002064000FC00000008000000050000000500000001000000050000000010D1010000000000000000050000000400000003128A7D05078000FC128A7CFD00000003028001080000000813D7ED090AD3577710D13D000DE7CA020000000800000005000000000000000800000004128A40FD0280010800000008000000050000000300000002000000010F34D1020000000107800104128A410500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577710D13D000AD3577910D13D020640010412FF71050000000208C000FC11FC24FD00000003014001080000000613F615090BE879B71011AD000BE879B9000000080000000600000000000000080000000411FBE8FD014001080000000813F615090BE879B71011AD000BE879B900000008000000080000000000000008000000040000000312FFAD0508C000FC11FC24FD000000030000000800000008000000020000000110D10102000000010640010412FF71050000000200000006000000060000000010D10100000000000AD35779000000080000000813D7ED090AD3577710D13D000AD3577910D13D020640010412FF71050000000208C000FC11FC24FD0000000303C0010813A51109000000040BE879B71011AD000BE879B91011AD0205A001041331350500000002096000FC0000000911AA80FD03200108000000080000000500000003133171050000000900000002000000010000000900000000000000090000000500000005000000050000000110D1010200000001000000050000000010D10100000000000000000500000004128A40FD0280010813D7B109000000040AD3577710D13D000AD3577910D13D020640010412FF710500000002064000FC12FFACFD0000000301400108000000080000000500000005000000050000000110D1010200000001000000050000000010D1010000000000000000050000000500000003128A7D05078000FC128A7CFD000000030280010813D7B109000000040AD3577710D13D000AD3577910D13D02000000080000000110D1010200000001000000050000000000000008000000050000000500000002"
theorem small_6907598_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6907598_right_root small_6907598_right_fuel small_6907598_right_count small_6907598_right_encoded = true := by
  decide +kernel
theorem small_6907598_right_covered : CoveredBy scale carrier boxes small_6907598_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6907598_right_root small_6907598_right_fuel small_6907598_right_count small_6907598_right_encoded small_6907598_right_checked

theorem cover_6907598 : CoveredBy scale carrier boxes root_6907598 := by
  apply coveredBy_split_literal root_6907598 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907599 small_6907598_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907599
  · exact small_6907598_right_covered
#print axioms cover_6907598

def root_6907592 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907592_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907592_left_fuel : Nat := 1
def small_6907592_left_count : Nat := 1
def small_6907592_left_encoded : String := "00000004"
theorem small_6907592_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6907592_left_root small_6907592_left_fuel small_6907592_left_count small_6907592_left_encoded = true := by
  decide +kernel
theorem small_6907592_left_covered : CoveredBy scale carrier boxes small_6907592_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6907592_left_root small_6907592_left_fuel small_6907592_left_count small_6907592_left_encoded small_6907592_left_checked

theorem cover_6907592 : CoveredBy scale carrier boxes root_6907592 := by
  apply coveredBy_split_literal root_6907592 small_6907592_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907598 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_6907592_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907598
#print axioms cover_6907592

def root_6907591 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6907591 : CoveredBy scale carrier boxes root_6907591 := by
  apply coveredBy_split_literal root_6907591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907592 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2604.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2604.covered
#print axioms cover_6907591

def root_6907585 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907585_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907585_left_fuel : Nat := 1
def small_6907585_left_count : Nat := 1
def small_6907585_left_encoded : String := "00000003"
theorem small_6907585_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6907585_left_root small_6907585_left_fuel small_6907585_left_count small_6907585_left_encoded = true := by
  decide +kernel
theorem small_6907585_left_covered : CoveredBy scale carrier boxes small_6907585_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6907585_left_root small_6907585_left_fuel small_6907585_left_count small_6907585_left_encoded small_6907585_left_checked

theorem cover_6907585 : CoveredBy scale carrier boxes root_6907585 := by
  apply coveredBy_split_literal root_6907585 small_6907585_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907591 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6907585_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907591
#print axioms cover_6907585

def root_6907584 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907584_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907584_right_fuel : Nat := 19
def small_6907584_right_count : Nat := 145
def small_6907584_right_encoded : String := "135D44FD05000108135D4509000000040CFD9BF70F350D000CFD9BF90F350D020C9A87000F8750F700000009000000000F878CF7000000000C9A87020F8750F900000009000000010F878CF90000000107800104128A410500000002028000FC13D7ECFD00000003028001080000000913D7ED090DE7CA0000000009000000050000000400000009128A7D05028000FC13D7ECFD000000030280010800000007000000050000000500000002000000010F34D102000000010C9A87000F8750F707800104128A4105000000020000000700000007000000000F878CF70000000007800104128A410500000002028000FC13D7ECFD000000030280010813D7B109000000040AD3577910D13D020DE7CA0000000007000000050000000100000007000000050000000500000005000000000F34D100000000000CFD9BF90F350D020C9A87020F8750F900000008000000010F878CF90000000107800104128A410500000002028000FC13D7ECFD000000030280010800000008000000050000000500000005000000010F34D1020000000100000005135D81090CFD9BF70F350D000CFD9BF90F350D020C9A87000F8750F70C9A87020F8750F900000009000000010F878CF90000000107800104128A410500000002028000FC13D7ECFD000000030780010800000007000000050000000500000005000000000F878CF7000000000C9A87020F8750F90780010400000006000000050000000100000005000000010F34D1020000000100000005000000000F34D10000000000000000050000000400000003"
theorem small_6907584_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6907584_right_root small_6907584_right_fuel small_6907584_right_count small_6907584_right_encoded = true := by
  decide +kernel
theorem small_6907584_right_covered : CoveredBy scale carrier boxes small_6907584_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6907584_right_root small_6907584_right_fuel small_6907584_right_count small_6907584_right_encoded small_6907584_right_checked

theorem cover_6907584 : CoveredBy scale carrier boxes root_6907584 := by
  apply coveredBy_split_literal root_6907584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907585 small_6907584_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907585
  · exact small_6907584_right_covered
#print axioms cover_6907584

def root_6907579 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907579_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6907579_right_fuel : Nat := 1
def small_6907579_right_count : Nat := 1
def small_6907579_right_encoded : String := "00000002"
theorem small_6907579_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6907579_right_root small_6907579_right_fuel small_6907579_right_count small_6907579_right_encoded = true := by
  decide +kernel
theorem small_6907579_right_covered : CoveredBy scale carrier boxes small_6907579_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6907579_right_root small_6907579_right_fuel small_6907579_right_count small_6907579_right_encoded small_6907579_right_checked

theorem cover_6907579 : CoveredBy scale carrier boxes root_6907579 := by
  apply coveredBy_split_literal root_6907579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907584 small_6907579_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907584
  · exact small_6907579_right_covered
#print axioms cover_6907579

def root_6887403 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887403 : CoveredBy scale carrier boxes root_6887403 := by
  apply coveredBy_split_literal root_6887403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6907579 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887404
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6907579
#print axioms cover_6887403

def root_6887398 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887398_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887398_right_fuel : Nat := 1
def small_6887398_right_count : Nat := 1
def small_6887398_right_encoded : String := "00000001"
theorem small_6887398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887398_right_root small_6887398_right_fuel small_6887398_right_count small_6887398_right_encoded = true := by
  decide +kernel
theorem small_6887398_right_covered : CoveredBy scale carrier boxes small_6887398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887398_right_root small_6887398_right_fuel small_6887398_right_count small_6887398_right_encoded small_6887398_right_checked

theorem cover_6887398 : CoveredBy scale carrier boxes root_6887398 := by
  apply coveredBy_split_literal root_6887398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887403 small_6887398_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887403
  · exact small_6887398_right_covered
#print axioms cover_6887398

def root_6887397 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887397_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887397_right_fuel : Nat := 24
def small_6887397_right_count : Nat := 317
def small_6887397_right_encoded : String := "120701020000000105000104135D450500000002050000FC135D80FD0000000305000108135D4509000000040CFD9BF70F350D00045489F91386AD020C9A87000F8750F70000000A000000000F878CF700000000028001040000000A13D7ED05078000FC128A7CFD0000000302800108000000060000000A0000000A00000002000000010000000A000000000F34D10000000000045489F91386AD020280010413D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD35777000000060000000913D7ED090000000900000004128A40FD0280010813D7B109000000040AD3577710D13D000000000A0000000010D1010000000000067ECE7912EA9502014001040000000A0000000900000001000000060000000A0000000313D7ED05078000FC128A7CFD00000003028001080000000900000009128A40FD0280010813D7B109000000040AD3577710D13D00067ECE7912EA950203C00104000000060000000500000001000000060000000010D101000000000000000005000000050000000300000002000000011386710200000001028001040000000900000009135D81090CFD9BF70F350D000000000A000000000F34D10000000000045489F91386AD02028001040000000A00000005000000010000000900000004135D44FD05000108135D4509000000040CFD9BF70F350D00045489F91386AD020C9A87000000000A0F878CF700000000028001040000000A13D7ED05028000FC0000000A0000000500000002000000010000000A000000000F34D10000000000045489F91386AD020280010413D7B10500000002028000FC13D7ECFD000000030280010813D7B109000000040AD357770000000A10D10100000000000000000500000005000000050000000500000001138671020000000100000005135D81090CFD9BF70F350D000000000A000000000F34D10000000000000000050000000400000003135D8105050000FC135D80FD0000000305000108135D4509000000040CFD9BF70F350D00045489F91386AD020C9A87000F8750F707800104128A410500000002078000FC128A7CFD00000003000000060000000A128A7D05078000FC000000060000000700000002000000000F878CF70000000007800104128A410500000002078000FC128A7CFD00000003028001080000000613D7ED09067ECE7912EA95020DE7CA000E5FD8F7000000060000000000000005000000010000000600000004128A40FD0280010813D7B10900000004067ECE7912EA95020000000600000001000000060000000500000003128A7D05078000FC128A7CFD0000000302800108000000060000000500000005000000020000000113867102000000010C9A87000F8750F700000006000000000F878CF700000000078001040000000600000005000000000F34D10000000000045489F91386AD0207800104128A410500000002078000FC0000000900000005000000050000000100000009135D81090CFD9BF70F350D00045489F91386AD020C9A87000F8750F7078001040000000A00000005000000000000000500000001138671020000000100000005000000000F34D100000000000000000500000004135D44FD05000108135D4509000000040CFD9BF70F350D00045489F91386AD020C9A87000F8750F700000007000000000000000500000001138671020000000100000005000000000F34D1000000000000000005000000050000000300000002"
theorem small_6887397_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887397_right_root small_6887397_right_fuel small_6887397_right_count small_6887397_right_encoded = true := by
  decide +kernel
theorem small_6887397_right_covered : CoveredBy scale carrier boxes small_6887397_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887397_right_root small_6887397_right_fuel small_6887397_right_count small_6887397_right_encoded small_6887397_right_checked

theorem cover_6887397 : CoveredBy scale carrier boxes root_6887397 := by
  apply coveredBy_split_literal root_6887397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887398 small_6887397_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887398
  · exact small_6887397_right_covered
#print axioms cover_6887397

def root_6887392 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887392_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887392_right_fuel : Nat := 1
def small_6887392_right_count : Nat := 1
def small_6887392_right_encoded : String := "00000000"
theorem small_6887392_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887392_right_root small_6887392_right_fuel small_6887392_right_count small_6887392_right_encoded = true := by
  decide +kernel
theorem small_6887392_right_covered : CoveredBy scale carrier boxes small_6887392_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887392_right_root small_6887392_right_fuel small_6887392_right_count small_6887392_right_encoded small_6887392_right_checked

theorem cover_6887392 : CoveredBy scale carrier boxes root_6887392 := by
  apply coveredBy_split_literal root_6887392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887397 small_6887392_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887397
  · exact small_6887392_right_covered
#print axioms cover_6887392

def root_6887391 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887391_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887391_right_fuel : Nat := 26
def small_6887391_right_count : Nat := 379
def small_6887391_right_encoded : String := "120701000000000008A912F912073D0205000104135D450500000002050000FC135D80FD0000000305000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000008000000010F878CF9000000010280010413D7B10500000002078000FC128A7CFD0000000300000007128A40FD028001080000000813D7ED0900000008000000040000000313D7ED05078000FC000000080000000800000002000000010F34D102000000010280010413D7B10500000002078000FC128A7CFD000000030280010813D7B10900000004067ECE7712EA95000AD357790000000700000009000000000000000700000007128A40FD0280010813D7B10900000004067ECE7712EA95000AD3577910D13D02000000080000000110D1010200000001014001040000000700000008000000000000000813D7ED09067ECE7712EA95000AD3577910D13D020140010400000007000000050000000110D1010200000001000000050000000000000007000000040000000313D7ED05078000FC128A7CFD00000003028001080000000900000009128A40FD02800108000000080000000500000003000000020000000013867100000000000CFD9BF90F350D0200000008000000010F34D10200000001028001040000000700000008135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F90280010413D7B10500000002078000FC00000007128A40FD07800108128A41090000000400000006000000060000000313D7ED05078000FC128A7CFD00000003078001080000000800000007128A40FD0780010800000008000000050000000300000002000000010F878CF9000000010280010413D7B10500000002078000FC00000007128A40FD07800108128A410900000004067ECE7712EA9500000000070000000000000007000000050000000313D7ED05078000FC128A7CFD0000000307800108128A410900000004067ECE7712EA95000DE7CA020E5FD8F90000000700000001000000050000000000000007000000050000000500000002000000010F34D102000000010280010413D7B10500000002078000FC0000000900000005000000050000000013867100000000000CFD9BF90F350D020C9A87020F8750F900000007000000010F878CF900000001028001040000000700000005000000010F34D102000000010000000500000004135D44FD05000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A8702000000080F878CF9000000010280010413D7B10500000002028000FC000000080000000800000008000000010F34D102000000010280010413D7B10500000002028000FC13D7ECFD000000030280010813D7B10900000004067ECE7712EA95000AD357790000000810D10102000000010000000500000000000000080000000500000005000000050000000013867100000000000CFD9BF90000000800000008135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F9000000060000000100000005000000010F34D1020000000100000005000000001386710000000000000000050000000400000003135D8105050000FC135D80FD0000000305000108135D450900000004045489F71386AD000CFD9BF90F350D0200000008000000010F34D1020000000107800104128A410500000002078000FC00000009000000050000000500000000138671000000000000000008135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F907800104128A410500000002078000FC128A7CFD0000000307800108000000080000000500000005000000050000000100000005000000010F34D10200000001000000050000000013867100000000000000000500000004135D44FD05000108135D450900000004045489F71386AD000CFD9BF90F350D0200000008000000010F34D1020000000100000005000000000000000800000005000000030000000200000001120701020000000105000104135D450500000002050000FC135D80FD0000000305000108135D450900000004045489F70000000900000009000000050000000500000005"
theorem small_6887391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887391_right_root small_6887391_right_fuel small_6887391_right_count small_6887391_right_encoded = true := by
  decide +kernel
theorem small_6887391_right_covered : CoveredBy scale carrier boxes small_6887391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887391_right_root small_6887391_right_fuel small_6887391_right_count small_6887391_right_encoded small_6887391_right_checked

theorem cover_6887391 : CoveredBy scale carrier boxes root_6887391 := by
  apply coveredBy_split_literal root_6887391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887392 small_6887391_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887392
  · exact small_6887391_right_covered
#print axioms cover_6887391

def root_6887385 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887385_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887385_left_fuel : Nat := 1
def small_6887385_left_count : Nat := 1
def small_6887385_left_encoded : String := "00000004"
theorem small_6887385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887385_left_root small_6887385_left_fuel small_6887385_left_count small_6887385_left_encoded = true := by
  decide +kernel
theorem small_6887385_left_covered : CoveredBy scale carrier boxes small_6887385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887385_left_root small_6887385_left_fuel small_6887385_left_count small_6887385_left_encoded small_6887385_left_checked

theorem cover_6887385 : CoveredBy scale carrier boxes root_6887385 := by
  apply coveredBy_split_literal root_6887385 small_6887385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887391 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6887385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887391
#print axioms cover_6887385

def root_6887384 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887384_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887384_right_fuel : Nat := 30
def small_6887384_right_count : Nat := 369
def small_6887384_right_encoded : String := "1152250908A912F712073D0008A912F912073D0208A91309120701080000000405000104135D450500000002050000FC135D80FD000000030CFD9BF7000000050000000A000000050000000512073D0805000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090F34D108000000040C9A8700000000080F878CF7000000000C9A87020F8750F90000000500000001000000050F350D080C9A87000F8750F70C9A87020F8750F90C9A87080F8751090000000402800104000000060000000600000006000000010F878CF9000000010C9A87080F87510900000004028001040000000813D7ED05078000FC00000008000000060000000200000008000000000F878CF7000000000C9A87020F8750F90C9A87080F875109000000040280010400000006000000060F878D090000000600000004000000010F878CF9000000010C9A87080F875109000000040280010413D7B10500000002078000FC128A7CFD000000030000000A0000000A13D7ED05078000FC128A7CFD000000030DE7CA000E5FD8F700000008000000000000000500000005000000020F878D09028001040000000A000000050000000400000004000000010F34D102000000010CFD9C090000000A0F350D080C9A87000000000A0F878CF7000000000C9A87080F87510900000004028001040000000A000000050000000500000004000000000F34D100000000000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87020F8750F90C9A87080F875109000000040280010413D7B10500000002078000FC128A7CFD00000003000000060000000613D7ED05078000FC128A7CFD000000030000000600000005000000020F878D0902800104000000060000000500000004000000010F878CF9000000010C9A87080F875109000000040280010413D7B10500000002078000FC128A7CFD000000030AD3577710D13D000DE7CA020E5FD8F90000000600000001000000050000000010D10100000000000000000500000005000000050000000500000004000000010F34D1020000000100000005135D44FD0CFD9BF70F350D000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87000F8750F70C9A87020000000600000006000000000F878CF7000000000C9A87020F8750F900000006000000010000000500000004000000010F34D1020000000100000005000000000F34D100000000000000000500000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87000F8750F70C9A87020F8750F90C9A87080F875109000000040780010400000006128A7D05000000050000000200000005000000010F878CF9000000010C9A87080F8751090000000407800104128A410500000002078000FC00000008000000050000000500000005000000000F878CF7000000000C9A87020F8750F90C9A87080F8751090000000407800104000000060000000500000005000000010000000500000004000000010F34D1020000000100000005000000000F34D100000000000000000500000005000000020000000400000001120701020000000108A9130912070108000000040000000512073D0805000104135D450500000002050000FC135D80FD000000030CFD9BF70000000A0000000A00000005000000050000000400000000120701000000000008A912F912073D0208A9130912070108000000040000000512073D0805000104135D450500000002050000FC135D80FD00000003045489F71386AD000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87020F8750F90C9A87080F8751090000000402800104000000060000000500000005000000010000000500000004000000010F34D1020000000100000005000000001386710000000000000000050000000500000005000000040000000112070102000000010000000500000004"
theorem small_6887384_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887384_right_root small_6887384_right_fuel small_6887384_right_count small_6887384_right_encoded = true := by
  decide +kernel
theorem small_6887384_right_covered : CoveredBy scale carrier boxes small_6887384_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887384_right_root small_6887384_right_fuel small_6887384_right_count small_6887384_right_encoded small_6887384_right_checked

theorem cover_6887384 : CoveredBy scale carrier boxes root_6887384 := by
  apply coveredBy_split_literal root_6887384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887385 small_6887384_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887385
  · exact small_6887384_right_covered
#print axioms cover_6887384

def root_6887379 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887379_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887379_right_fuel : Nat := 1
def small_6887379_right_count : Nat := 1
def small_6887379_right_encoded : String := "00000003"
theorem small_6887379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887379_right_root small_6887379_right_fuel small_6887379_right_count small_6887379_right_encoded = true := by
  decide +kernel
theorem small_6887379_right_covered : CoveredBy scale carrier boxes small_6887379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887379_right_root small_6887379_right_fuel small_6887379_right_count small_6887379_right_encoded small_6887379_right_checked

theorem cover_6887379 : CoveredBy scale carrier boxes root_6887379 := by
  apply coveredBy_split_literal root_6887379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887384 small_6887379_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887384
  · exact small_6887379_right_covered
#print axioms cover_6887379

def root_6856307 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856307 : CoveredBy scale carrier boxes root_6856307 := by
  apply coveredBy_split_literal root_6856307 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856308 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6887379 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856308
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6887379
#print axioms cover_6856307

def root_6856301 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856301_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856301_left_fuel : Nat := 1
def small_6856301_left_count : Nat := 1
def small_6856301_left_encoded : String := "00000002"
theorem small_6856301_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856301_left_root small_6856301_left_fuel small_6856301_left_count small_6856301_left_encoded = true := by
  decide +kernel
theorem small_6856301_left_covered : CoveredBy scale carrier boxes small_6856301_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856301_left_root small_6856301_left_fuel small_6856301_left_count small_6856301_left_encoded small_6856301_left_checked

theorem cover_6856301 : CoveredBy scale carrier boxes root_6856301 := by
  apply coveredBy_split_literal root_6856301 small_6856301_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856307 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6856301_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856307
#print axioms cover_6856301

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166

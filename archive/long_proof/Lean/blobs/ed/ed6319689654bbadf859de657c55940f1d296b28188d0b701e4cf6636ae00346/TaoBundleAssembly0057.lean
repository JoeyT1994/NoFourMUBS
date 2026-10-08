import TaoBundleAssembly0056
import TaoBundleChunkBatch0224
import TaoBundleChunkBatch0225
import TaoBundleChunkBatch0226
import TaoBundleChunkBatch0227
import TaoBundleChunkBatch0228
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057
def root_2343198 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343198_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343198_right_fuel : Nat := 17
def small_2343198_right_count : Nat := 197
def small_2343198_right_encoded : String := "135D44FF04548A0313867102000000010CFD9BFD0F350D060C9A87060F8750FD00000008000000030F878CFD00000003078000F6128A7CF7000000000280010413D7B10500000002028000FE13D7ECFF00000004022A458300000007000000090000000713D7ED05028000FE13D7ECFF00000004022A458300000008000000090000000500000002128A40F702800104000000070000000500000000000000030F34D10600000003078000F6128A7CF7000000000280010413D7B10500000002028000FE13D7ECFF00000004022A458313E1C502000000010AD3577D10D13D060000000700000003000000070000000A13D7B0FF022A4583000000070000000A0000000413D7ED05028000FE13D7ECFF00000004022A458313E1C502000000010AD3577D0000000510D10106000000030000000513E201020AD3577D10D13D0608C000F600000009000000050000000310D10106000000030000000A000000010000000500000002128A40F70280010413D7B10500000002028000FE13D7ECFF00000004022A45830000000713E201020AD3577D10D13D06000000070000000310D101060000000300000005000000010000000500000005000000001386AD020CFD9BFD0F350D0600000009000000030F34D10600000003078000F6128A7CF7000000000280010413D7B10500000002028000FE13D7ECFF00000004067ECE8312EA5902000000010000000A0000000A13D7B0FF000000090000000413D7ED05028000FE13D7ECFF00000004067ECE8312EA59020000000100000009000000090000000900000002128A40F70280010413D7B10500000002028000FE13D7ECFF00000004067ECE8312EA5902000000010AD3577D10D13D06064000F600000009000000090000000310D10106000000030000000A12EA95020AD3577D0000000910D10106000000030000000A0000000113D7B0FF067ECE8312EA59020000000100000009000000090000000413D7ED05028000FE13D7ECFF00000004067ECE8312EA5902000000010AD3577D0000000510D101060000000300000005000000090000000500000002000000000000000100000004"
theorem small_2343198_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343198_right_root small_2343198_right_fuel small_2343198_right_count small_2343198_right_encoded = true := by
  decide +kernel
theorem small_2343198_right_covered : CoveredBy scale carrier boxes small_2343198_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343198_right_root small_2343198_right_fuel small_2343198_right_count small_2343198_right_encoded small_2343198_right_checked

theorem cover_2343198 : CoveredBy scale carrier boxes root_2343198 := by
  apply coveredBy_split_literal root_2343198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343199 small_2343198_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343199
  · exact small_2343198_right_covered
#print axioms cover_2343198

def root_2343192 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343192_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343192_left_fuel : Nat := 1
def small_2343192_left_count : Nat := 1
def small_2343192_left_encoded : String := "00000002"
theorem small_2343192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343192_left_root small_2343192_left_fuel small_2343192_left_count small_2343192_left_encoded = true := by
  decide +kernel
theorem small_2343192_left_covered : CoveredBy scale carrier boxes small_2343192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343192_left_root small_2343192_left_fuel small_2343192_left_count small_2343192_left_encoded small_2343192_left_checked

theorem cover_2343192 : CoveredBy scale carrier boxes root_2343192 := by
  apply coveredBy_split_literal root_2343192 small_2343192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343198 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2343192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343198
#print axioms cover_2343192

def root_2343191 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2343191 : CoveredBy scale carrier boxes root_2343191 := by
  apply coveredBy_split_literal root_2343191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343192 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0898.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343192
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0898.covered
#print axioms cover_2343191

def root_2343185 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343185_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343185_left_fuel : Nat := 1
def small_2343185_left_count : Nat := 1
def small_2343185_left_encoded : String := "00000000"
theorem small_2343185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343185_left_root small_2343185_left_fuel small_2343185_left_count small_2343185_left_encoded = true := by
  decide +kernel
theorem small_2343185_left_covered : CoveredBy scale carrier boxes small_2343185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343185_left_root small_2343185_left_fuel small_2343185_left_count small_2343185_left_encoded small_2343185_left_checked

theorem cover_2343185 : CoveredBy scale carrier boxes root_2343185 := by
  apply coveredBy_split_literal root_2343185 small_2343185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343191 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2343185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343191
#print axioms cover_2343185

def root_2343184 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343184_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343184_right_fuel : Nat := 21
def small_2343184_right_count : Nat := 231
def small_2343184_right_encoded : String := "135D44F705000104135D450500000002050000FE135D80FF0000000404548A0313867102000000010CFD9BFD0F350D060C9A87060F8750FD028000F613D7ECF70000000002800104000000060000000600000006000000030F878CFD00000003028000F613D7ECF7000000000280010413D7B10500000002078000FE128A7CFF00000004022A458300000007000000060000000713D7ED05078000FE128A7CFF00000004022A458313E1C502000000010DE7CA06000000060000000500000006000000050000000213D7B0F702800104000000070000000500000000000000030F34D10600000003028000F613D7ECF7000000000280010413D7B10500000002078000FE128A7CFF0000000400000008128A40FF022A45830000000713E201020AD3577D10D13D06000000070000000300000008000000010000000413D7ED05078000FE00000008000000050000000213D7B0F70280010413D7B10500000002078000FE000000080000000500000005000000001386AD020CFD9BFD0F350D060C9A8706000000060F878CFD00000003028000F613D7ECF70000000002800104000000060000000600000006000000030F34D10600000003028000F613D7ECF7000000000280010413D7B10500000002078000FE00000008128A40FF067ECE8312EA5902000000010AD3577D10D13D06000000060000000300000008000000080000000413D7ED05078000FE00000008128A40FF067ECE83000000080000000800000004000000020000000800000001135D44FF04548A0313867102000000010CFD9BFD0F350D060C9A87060000000700000005000000030F34D10600000003000000051386AD020CFD9BFD0F350D0600000009000000030F34D10600000003028000F613D7ECF7000000000280010413D7B10500000002028000FE13D7ECFF00000004067ECE8312EA5902000000010AD3577D0000000510D10106000000030000000512EA95020AD3577D0000000610D101060000000300000008000000010000000500000005000000050000000100000004135D8105050000FE135D80FF0000000404548A0313867102000000010CFD9BFD0F350D060C9A87060F8750FD028000F60000000A000000050000000300000005000000030F34D10600000003000000051386AD020CFD9BFD0F350D060C9A8706000000090F878CFD00000003028000F60000000900000009000000030F34D106000000030000000800000001135D44FF04548A030000000500000009000000040000000200000000"
theorem small_2343184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343184_right_root small_2343184_right_fuel small_2343184_right_count small_2343184_right_encoded = true := by
  decide +kernel
theorem small_2343184_right_covered : CoveredBy scale carrier boxes small_2343184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343184_right_root small_2343184_right_fuel small_2343184_right_count small_2343184_right_encoded small_2343184_right_checked

theorem cover_2343184 : CoveredBy scale carrier boxes root_2343184 := by
  apply coveredBy_split_literal root_2343184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343185 small_2343184_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343185
  · exact small_2343184_right_covered
#print axioms cover_2343184

def root_2343179 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343179_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343179_right_fuel : Nat := 1
def small_2343179_right_count : Nat := 1
def small_2343179_right_encoded : String := "00000003"
theorem small_2343179_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343179_right_root small_2343179_right_fuel small_2343179_right_count small_2343179_right_encoded = true := by
  decide +kernel
theorem small_2343179_right_covered : CoveredBy scale carrier boxes small_2343179_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343179_right_root small_2343179_right_fuel small_2343179_right_count small_2343179_right_encoded small_2343179_right_checked

theorem cover_2343179 : CoveredBy scale carrier boxes root_2343179 := by
  apply coveredBy_split_literal root_2343179 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343184 small_2343179_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343184
  · exact small_2343179_right_covered
#print axioms cover_2343179

def root_2343178 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343178_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343178_right_fuel : Nat := 21
def small_2343178_right_count : Nat := 233
def small_2343178_right_encoded : String := "1207010600000003050000F6135D80F70000000005000104135D450500000002050000FE135D80FF0000000404548A031386710200000001045489FD1386AD06078000F6128A7CF700000000028001040000000A13D7ED05078000FE128A7CFF0000000400000008128A40FF0000000A0000000400000002128A40F7028001040000000813D7ED05000000080000000200000000000000031386710600000003078000F60000000A000000081386AD02045489FD000000080000000800000001135D44FF04548A031386710200000001045489FD1386AD06078000F60000000A128A40F7028001040000000A0000000500000000000000030000000A1386AD02045489FD1386AD06078000F60000000A128A40F7028001040000000A13D7ED05028000FE00000008000000050000000200000000000000030000000A0000000100000004135D8105050000FE135D80FF0000000404548A031386710200000001045489FD1386AD06078000F6128A7CF70000000007800104128A410500000002078000FE128A7CFF0000000400000008128A40FF022A458313E1C502000000010000000513E20102067ECE7D00000008000000080000000100000004128A7D05078000FE128A7CFF00000004000000080000000500000002128A40F707800104128A410500000002078000FE00000008000000050000000500000000000000031386710600000003078000F6128A7CF70000000007800104128A410500000002078000FE0000000800000008128A7D05078000FE000000080000000500000002000000081386AD02045489FD1386AD06078000F6128A7CF7000000000000000800000008000000030000000800000001135D44FF04548A031386710200000001000000051386AD02045489FD1386AD06078000F6128A7CF70000000007800104128A410500000002028000FE13D7ECFF00000004067ECE8312EA5902000000010000000500000008000000050000000500000005000000031386710600000003078000F6128A7CF7000000000000000A00000005000000010000000400000002135D44F705000104135D450500000002050000FE00000008135D44FF04548A031386710200000001000000051386AD02045489FD1386AD06028000F613D7ECF7000000000280010413D7B10500000002028000FE0000000800000005000000050000000500000003000000080000000100000004135D8105050000FE135D80FF0000000404548A0313867102000000010000000500000008000000050000000200000000"
theorem small_2343178_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343178_right_root small_2343178_right_fuel small_2343178_right_count small_2343178_right_encoded = true := by
  decide +kernel
theorem small_2343178_right_covered : CoveredBy scale carrier boxes small_2343178_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343178_right_root small_2343178_right_fuel small_2343178_right_count small_2343178_right_encoded small_2343178_right_checked

theorem cover_2343178 : CoveredBy scale carrier boxes root_2343178 := by
  apply coveredBy_split_literal root_2343178 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343179 small_2343178_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343179
  · exact small_2343178_right_covered
#print axioms cover_2343178

def root_2343172 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343172_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343172_left_fuel : Nat := 1
def small_2343172_left_count : Nat := 1
def small_2343172_left_encoded : String := "00000001"
theorem small_2343172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343172_left_root small_2343172_left_fuel small_2343172_left_count small_2343172_left_encoded = true := by
  decide +kernel
theorem small_2343172_left_covered : CoveredBy scale carrier boxes small_2343172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343172_left_root small_2343172_left_fuel small_2343172_left_count small_2343172_left_encoded small_2343172_left_checked

theorem cover_2343172 : CoveredBy scale carrier boxes root_2343172 := by
  apply coveredBy_split_literal root_2343172 small_2343172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343178 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2343172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343178
#print axioms cover_2343172

def root_2343171 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343171_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343171_right_fuel : Nat := 22
def small_2343171_right_count : Nat := 243
def small_2343171_right_encoded : String := "12073D0208A912FD12073D06050000F6135D80F70000000005000104135D450500000002050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFD0F350D060C9A8706000000060F878CFD00000003078000F6128A7CF7000000000280010413D7B10500000002000000060000000900000006000000030F34D10600000003078000F6128A7CF7000000000280010413D7B10500000002078000FE00000005128A40FF0AD3578310D10102000000010000000A000000080000000413D7ED05078000FE00000008128A40FF000000090000000400000002128A40F70280010413D7B10500000002078000FE00000008128A40FF000000080000000400000008000000000F350D020CFD9BFD000000060F34D106000000030000000800000001135D44FF0CFD9C030F34D102000000010CFD9BFD0F350D0600000009000000030F34D10600000003078000F600000009000000090F350D020CFD9BFD0F350D0600000006000000030F34D106000000030C9A87020F8751030000000100000008000000090000000100000004135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFD0F350D0600000009000000030F34D10600000003078000F6128A7CF70000000000000008000000080F350D020CFD9BFD0F350D060C9A87020000000600000006000000030F34D106000000030000000700000001135D44FF0CFD9C030F34D10200000001000000090F350D020CFD9BFD0F350D06000000090000000300000009000000010000000400000002135D44F705000104135D450500000002050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFD000000060F34D106000000030000000800000006135D44FF0CFD9C030F34D10200000001000000090000000900000004135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFD000000090F34D10600000003000000080F350D020CFD9BFD000000060000000800000001135D44FF0CFD9C030000000900000009000000040000000200000000000000031207010600000003050000F6135D80F70000000005000104135D450500000002050000FE00000008135D44FF0CFD9C030F34D10200000001045489FD1386AD06078000F60000000A0000000800000003000000080F350D02000000080000000100000004135D8105050000FE00000008135D44FF0CFD9C030F34D10200000001045489FD0000000900000008000000080000000400000002135D44F705000104135D450500000002050000FE00000008135D44FF0CFD9C03000000080000000800000004000000080000000000000001"
theorem small_2343171_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343171_right_root small_2343171_right_fuel small_2343171_right_count small_2343171_right_encoded = true := by
  decide +kernel
theorem small_2343171_right_covered : CoveredBy scale carrier boxes small_2343171_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343171_right_root small_2343171_right_fuel small_2343171_right_count small_2343171_right_encoded small_2343171_right_checked

theorem cover_2343171 : CoveredBy scale carrier boxes root_2343171 := by
  apply coveredBy_split_literal root_2343171 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343172 small_2343171_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343172
  · exact small_2343171_right_covered
#print axioms cover_2343171

def root_2343166 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343166_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343166_right_fuel : Nat := 1
def small_2343166_right_count : Nat := 1
def small_2343166_right_encoded : String := "00000004"
theorem small_2343166_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343166_right_root small_2343166_right_fuel small_2343166_right_count small_2343166_right_encoded = true := by
  decide +kernel
theorem small_2343166_right_covered : CoveredBy scale carrier boxes small_2343166_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343166_right_root small_2343166_right_fuel small_2343166_right_count small_2343166_right_encoded small_2343166_right_checked

theorem cover_2343166 : CoveredBy scale carrier boxes root_2343166 := by
  apply coveredBy_split_literal root_2343166 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343171 small_2343166_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343171
  · exact small_2343166_right_covered
#print axioms cover_2343166

def root_2340036 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2340036 : CoveredBy scale carrier boxes root_2340036 := by
  apply coveredBy_split_literal root_2340036 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0895.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2343166 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0895.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2343166
#print axioms cover_2340036

def root_2340030 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2340030_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2340030_left_fuel : Nat := 1
def small_2340030_left_count : Nat := 1
def small_2340030_left_encoded : String := "00000003"
theorem small_2340030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2340030_left_root small_2340030_left_fuel small_2340030_left_count small_2340030_left_encoded = true := by
  decide +kernel
theorem small_2340030_left_covered : CoveredBy scale carrier boxes small_2340030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2340030_left_root small_2340030_left_fuel small_2340030_left_count small_2340030_left_encoded small_2340030_left_checked

theorem cover_2340030 : CoveredBy scale carrier boxes root_2340030 := by
  apply coveredBy_split_literal root_2340030 small_2340030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2340036 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2340030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2340036
#print axioms cover_2340030

def root_2339592 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339592_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339592_left_fuel : Nat := 23
def small_2339592_left_count : Nat := 205
def small_2339592_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120701020000000108A912FF12073CFE00000004050000F6135D80F70000000005000104135D45050000000205000106135D44FD0000000600000003135D80FD0000000304548A0313867102000000010CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF00000006000000040F34D0FE00000005000000041386AD020CFD9BFF000000060000000500000001135D810505000106135D44FD04548A030000000A0000000600000003135D80FD0000000304548A0313867102000000010CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000060F8750FF078000F6128A7CF70000000007800104000000060000000600000006000000040F34D0FE00000006000000041386AD020CFD9BFF000000060F34D0FE00000006000000040000000100000002135D44F705000104135D45050000000200000006135D81050500010600000006135D80FD0000000304548A0313867102000000010CFD9BFF0000000600000006000000060000000200000000120700FE050000F600000005135D44F700000006000000000000000412073D0208A912FF12073CFE00000004050000F6135D80F7000000000500010400000005135D81050500010600000005135D80FD000000030CFD9C030F34D1020000000100000006000000060000000200000006120700FE0000000500000004000000011151E8FF08A913031207010200000001050000F6135D80F70000000005000104135D4505000000020500010600000009135D80FD00000003050000FE135D80FF0000000404548A031386710200000001078000F600000008128A40F7000000060000000000000006135D44FF0000000900000004135D81050500010600000009135D80FD00000003050000FE000000090000000900000002135D44F705000104135D4505000000020500010600000006135D80FD00000003050000FE0000000600000009000000090000000012073D02050000F6135D80F70000000005000104135D45050000000200000006135D81050500010600000006135D80FD00000003050000FE00000006135D44FF00000009000000040000000200000006000000010000000400000003"
theorem small_2339592_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2339592_left_root small_2339592_left_fuel small_2339592_left_count small_2339592_left_encoded = true := by
  decide +kernel
theorem small_2339592_left_covered : CoveredBy scale carrier boxes small_2339592_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2339592_left_root small_2339592_left_fuel small_2339592_left_count small_2339592_left_encoded small_2339592_left_checked

theorem cover_2339592 : CoveredBy scale carrier boxes root_2339592 := by
  apply coveredBy_split_literal root_2339592 small_2339592_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2340030 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2339592_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2340030
#print axioms cover_2339592

def root_2339586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339586_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339586_left_fuel : Nat := 1
def small_2339586_left_count : Nat := 1
def small_2339586_left_encoded : String := "00000002"
theorem small_2339586_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2339586_left_root small_2339586_left_fuel small_2339586_left_count small_2339586_left_encoded = true := by
  decide +kernel
theorem small_2339586_left_covered : CoveredBy scale carrier boxes small_2339586_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2339586_left_root small_2339586_left_fuel small_2339586_left_count small_2339586_left_encoded small_2339586_left_checked

theorem cover_2339586 : CoveredBy scale carrier boxes root_2339586 := by
  apply coveredBy_split_literal root_2339586 small_2339586_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2339592 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2339586_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2339592
#print axioms cover_2339586

def root_2339585 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2339585 : CoveredBy scale carrier boxes root_2339585 := by
  apply coveredBy_split_literal root_2339585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2339586 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0899.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2339586
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0899.covered
#print axioms cover_2339585

def root_2339580 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339580_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339580_right_fuel : Nat := 1
def small_2339580_right_count : Nat := 1
def small_2339580_right_encoded : String := "00000001"
theorem small_2339580_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2339580_right_root small_2339580_right_fuel small_2339580_right_count small_2339580_right_encoded = true := by
  decide +kernel
theorem small_2339580_right_covered : CoveredBy scale carrier boxes small_2339580_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2339580_right_root small_2339580_right_fuel small_2339580_right_count small_2339580_right_encoded small_2339580_right_checked

theorem cover_2339580 : CoveredBy scale carrier boxes root_2339580 := by
  apply coveredBy_split_literal root_2339580 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2339585 small_2339580_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2339585
  · exact small_2339580_right_covered
#print axioms cover_2339580

def root_2339310 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339310_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339310_left_fuel : Nat := 19
def small_2339310_left_count : Nat := 125
def small_2339310_left_encoded : String := "1151E903000000010A0001041151E905000000020A0001061151E8FD0A0000FE000000051151E8FF000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF12073CFE00000004050000F60000000500000008120700FE000000050000000400000003000000081151E8FF08A912FD12073D06050000F6135D80F70000000005000102135D45030000000100000008135D810305000104135D450500000002050000FE00000005135D44FF0000000600000004135D8105050000FE00000007135D44FF0CFD9BFD0000000600000008000000040000000200000001135D44F70500010200000006135D810305000104000000060000000600000001000000000000000312070106000000030000000800000004115225050A0001061151E8FD0A0000FE0000000A1151E8FF08A9130512070104000000020000000712073D04050000F6135D80F700000000050001020000000A0000000A00000006000000020000000400000003115224FD000000030A0000FE115224FF0000000408A9130512070104000000020000000712073D0400000008000000021151E8FF08A9130512070104000000020000000712073D0408A912FD12073D06050000F6000000070000000800000003120701060000000300000007000000020000000400000002"
theorem small_2339310_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2339310_left_root small_2339310_left_fuel small_2339310_left_count small_2339310_left_encoded = true := by
  decide +kernel
theorem small_2339310_left_covered : CoveredBy scale carrier boxes small_2339310_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2339310_left_root small_2339310_left_fuel small_2339310_left_count small_2339310_left_encoded small_2339310_left_checked

theorem cover_2339310 : CoveredBy scale carrier boxes root_2339310 := by
  apply coveredBy_split_literal root_2339310 small_2339310_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2339580 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2339310_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2339580
#print axioms cover_2339310

def root_2339305 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339305_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2339305_right_fuel : Nat := 1
def small_2339305_right_count : Nat := 1
def small_2339305_right_encoded : String := "00000000"
theorem small_2339305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2339305_right_root small_2339305_right_fuel small_2339305_right_count small_2339305_right_encoded = true := by
  decide +kernel
theorem small_2339305_right_covered : CoveredBy scale carrier boxes small_2339305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2339305_right_root small_2339305_right_fuel small_2339305_right_count small_2339305_right_encoded small_2339305_right_checked

theorem cover_2339305 : CoveredBy scale carrier boxes root_2339305 := by
  apply coveredBy_split_literal root_2339305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2339310 small_2339305_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2339310
  · exact small_2339305_right_covered
#print axioms cover_2339305

def root_2325265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2325265 : CoveredBy scale carrier boxes root_2325265 := by
  apply coveredBy_split_literal root_2325265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2325266 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2339305 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2325266
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2339305
#print axioms cover_2325265

def root_2325264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2325264 : CoveredBy scale carrier boxes root_2325264 := by
  apply coveredBy_split_literal root_2325264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2325265 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0900.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2325265
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0900.covered
#print axioms cover_2325264

def root_2363980 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363980_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363980_left_fuel : Nat := 27
def small_2363980_left_count : Nat := 393
def small_2363980_left_encoded : String := "0F8750FD0C9A87080F8750FF0280010213D7B103000000010780010400000005128A7D050B4D43F600000005108010F700000007000000000000000213D7ED0307800104128A4105000000020B4D43F60000000500000006128A7D050B4D43F610804CF7000000000B4D4406108010FD0B4D44080000000510804CFF0000000403C00102000000050000000A0000000300000007108010F70B4D4406108010FD000000060000000300000007000000000000000200000001000000040F878CFF000000040280010213D7B1030000000107800104128A4105000000020B4D43F600000005108010F70B4D44060000000510804CFD000000030DE7CA08000000050E6014FF000000040000000500000000128A7D050B4D43F610804CF7000000000B4D4406108010FD0DE7CA0800000005000000090000000310804CFD000000030DE7CA080E5FD8FF00000007000000040E6014FF0000000400000009108010F70B4D4406108010FD0000000A0000000310804CFD000000030DE7CA080000000A0E6014FF0000000401400102000000090000000A000000000000000213D7ED0307800104128A4105000000020B4D43F610804CF7000000000B4D4406108010FD0DE7CA08000000050E6014FF00000004000000050000000310804CFD000000030DE7CA08000000050E6014FF0000000403C001020000000513A54D03064001040000000512FFAD050DAED87F0E9661080BF3E576000000051008ECF70BF3E58600000005100928FD0000000304600102000000051384190306E0010400000005000000090000000100000000000000040E96250800000004000000090000000200000001108010F70B4D4406108010FD0DE7CA080E5FD8FF00000006000000040E6014FF0000000403C0010213A51103000000010000000513A54D030640010412FF710500000002000000050000000A000000010000000310804CFD000000030DE7CA080E5FD8FF03C0010213A5110300000001064001040000000512FFAD050AA6A27600000005000000060000000213A54D030640010412FF7105000000020000000612FFAD050AA6A27610EDACF7000000000BF3E58600000005100928FD000000030D412888000000050EFA4CFF000000040000000A10ED70F70000000A000000000000000200000001000000040E6014FF0000000403C0010213A5110300000001064001040000000512FFAD050DAED87F0E9661080AA6A276000000050000000A000000040000000A0000000213A54D030640010412FF7105000000020DAED87F0E9661080AA6A2760000000510ED70F70BF3E58600000005100928FD000000030460010200000005138419030000000A0000000100000000000000040E962508000000040AA6A27610EDACF7000000000BF3E58600000005100928FD0000000304600102000000050000000810ED70F70BF3E5860000000A100928FD00000003046001020000000A000000080000000012FFAD050DAED87F0E9661080AA6A27610EDACF7000000000BF3E5860000000A0000000A0000000A000000040E962508000000040AA6A27610EDACF7000000000000000A0000000A000000020000000100000000128A7D050B4D43F610804CF7000000000B4D4406108010FD0DE7CA080E5FD8FF03C001020000000A0000000A000000040E6014FF0000000403C001020000000A0000000A0000000310804CFD000000030DE7CA080E5FD8FF03C0010213A511030000000108C0010411FBE90500000002000000050000000713A54D0308C0010411FBE905000000020BF3E576100928F7000000000BF3E58600000005000000071008ECF70000000A000000000000000700000001000000040E6014FF0000000403C0010213A511030000000108C0010411FBE90500000002000000090000000913A54D0308C0010411FBE905000000020DAED87F0E9661080BF3E576100928F700000000000000090000000A000000040E96250800000004000000090000000A00000001108010F70B4D4406108010FD0DE7CA080000000A0E6014FF000000040000000A0000000310804CFD000000030DE7CA080E5FD8FF03C001020000000A13A54D030000000A00000001000000040E6014FF0000000403C001020000000A13A54D030000000A0000000100000000000000020000000100000003"
theorem small_2363980_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363980_left_root small_2363980_left_fuel small_2363980_left_count small_2363980_left_encoded = true := by
  decide +kernel
theorem small_2363980_left_covered : CoveredBy scale carrier boxes small_2363980_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363980_left_root small_2363980_left_fuel small_2363980_left_count small_2363980_left_encoded small_2363980_left_checked

theorem cover_2363980 : CoveredBy scale carrier boxes root_2363980 := by
  apply coveredBy_split_literal root_2363980 small_2363980_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0904.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2363980_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0904.covered
#print axioms cover_2363980

def root_2363975 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363975_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363975_right_fuel : Nat := 1
def small_2363975_right_count : Nat := 1
def small_2363975_right_encoded : String := "00000000"
theorem small_2363975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363975_right_root small_2363975_right_fuel small_2363975_right_count small_2363975_right_encoded = true := by
  decide +kernel
theorem small_2363975_right_covered : CoveredBy scale carrier boxes small_2363975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363975_right_root small_2363975_right_fuel small_2363975_right_count small_2363975_right_encoded small_2363975_right_checked

theorem cover_2363975 : CoveredBy scale carrier boxes root_2363975 := by
  apply coveredBy_split_literal root_2363975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363980 small_2363975_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363980
  · exact small_2363975_right_covered
#print axioms cover_2363975

def root_2363451 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363451_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363451_left_fuel : Nat := 22
def small_2363451_left_count : Nat := 251
def small_2363451_left_encoded : String := "0F878CF7000000000C9A87060F8750FD0C9A87080F8750FF028001020000000513D7ED030780010400000005128A7D050DE7C9F6000000050E5FD8F70B4D44060000000500000007000000000000000200000001000000040F878CFF000000040280010213D7B103000000010780010400000005128A7D050DE7C9F6000000050E5FD8F70B4D44060000000500000009000000000000000213D7ED0307800104128A41050000000200000005128A7D050DE7C9F60E6014F7000000000B4D44060000000510804CFD000000030DE7CA08000000050E6014FF00000004000000090E5FD8F70B4D4406108010FD0DE7CA080E5FD8FF03C001020000000513A54D0308C00104000000050000000A00000001000000040E6014FF0000000403C001020000000513A54D0308C001040000000500000009000000010000000310804CFD000000030DE7CA080E5FD8FF03C001020000000513A54D0308C00104000000050000000700000001000000040E6014FF0000000403C001020000000913A54D0308C0010411FBE90500000002000000090000000900000001000000000000000200000001000000030F878CFD000000030C9A87080F8750FF0280010213D7B1030000000107800104000000050000000713D7ED0307800104128A41050000000200000005128A7D05000000070000000200000001000000040F878CFF000000040280010213D7B103000000010780010400000005128A7D050DE7C9F60E6014F7000000000DE7CA0600000005000000090E5FD8F70DE7CA060E5FD8FD0DE7CA080000000500000009000000030E6014FD0000000300000007000000000000000213D7ED0307800104128A4105000000020DE7C9F60E6014F7000000000DE7CA06000000050E6014FD000000030DE7CA0800000005000000060E5FD8F70DE7CA060E5FD8FD0DE7CA08000000050E6014FF0000000403C001020000000513A54D03064001040000000512FFAD050DAED87F0E9661080000000500000004000000060000000200000001000000030E6014FD000000030DE7CA080E5FD8FF03C001020000000513A54D03064001040000000512FFAD050DAED87D00000007000000060000000200000001000000040E6014FF0000000403C0010213A51103000000010640010400000005000000060000000600000000128A7D050DE7C9F60E6014F7000000000DE7CA060E5FD8FD0DE7CA080E5FD8FF00000007000000040E6014FF0000000400000006000000030E6014FD00000003000000060E5FD8F70DE7CA060E5FD8FD0DE7CA080E5FD8FF00000007000000040E6014FF0000000403C001020000000900000006000000030E6014FD000000030DE7CA080000000700000006000000000000000200000001"
theorem small_2363451_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363451_left_root small_2363451_left_fuel small_2363451_left_count small_2363451_left_encoded = true := by
  decide +kernel
theorem small_2363451_left_covered : CoveredBy scale carrier boxes small_2363451_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363451_left_root small_2363451_left_fuel small_2363451_left_count small_2363451_left_encoded small_2363451_left_checked

theorem cover_2363451 : CoveredBy scale carrier boxes root_2363451 := by
  apply coveredBy_split_literal root_2363451 small_2363451_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363975 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2363451_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363975
#print axioms cover_2363451

def root_2363446 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363446_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363446_right_fuel : Nat := 1
def small_2363446_right_count : Nat := 1
def small_2363446_right_encoded : String := "00000004"
theorem small_2363446_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363446_right_root small_2363446_right_fuel small_2363446_right_count small_2363446_right_encoded = true := by
  decide +kernel
theorem small_2363446_right_covered : CoveredBy scale carrier boxes small_2363446_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363446_right_root small_2363446_right_fuel small_2363446_right_count small_2363446_right_encoded small_2363446_right_checked

theorem cover_2363446 : CoveredBy scale carrier boxes root_2363446 := by
  apply coveredBy_split_literal root_2363446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363451 small_2363446_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363451
  · exact small_2363446_right_covered
#print axioms cover_2363446

def root_2363445 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363445_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363445_right_fuel : Nat := 30
def small_2363445_right_count : Nat := 435
def small_2363445_right_encoded : String := "0F34D108000000040C9A86F60F878CF7000000000C9A87060F8750FD028001020000000913D7ED0307800104128A4105000000020AD3577F10D13D080DE7C9F6000000050E5FD8F7000000090000000000000004000000090000000900000001000000030F878CFD000000030280010213D7B1030000000107800104000000090000000913D7ED0307800104128A4105000000020AD3577F10D13D080DE7C9F6000000060E5FD8F70DE7CA060E5FD8FD00000009000000030000000600000000000000040000000600000006000000010F8750F70C9A87060F8750FD0280010213D7B1030000000107800104128A4105000000020AD3577F10D13D080000000900000004000000090000000913D7ED0307800104128A4105000000020AD3577F10D13D080B4D43F610804CF7000000000B4D4406108010FD03C001020000000513A54D0300000009000000010000000310804CFD0000000303C001020000000913A54D0306400104000000090000000900000001108010F70B4D4406108010FD03C0010213A51103000000010000000913A54D030640010412FF710500000002000000070000000A000000010000000310804CFD0000000303C0010213A511030000000106400104000000090000000913A54D030640010412FF7105000000020BE879BF1011AD080AA6A2760000000910ED70F70BF3E58600000007100928FD0000000304600102000000090000000800000000000000040000000912FFAD050BE879BF1011AD080AA6A276000000090000000A00000004000000090000000200000001000000000000000410D101080000000400000009128A7D050AD3577F10D13D080B4D43F610804CF7000000000B4D4406108010FD000000090000000300000009108010F70B4D4406108010FD0000000A0000000310804CFD0000000303C001020000000A13A54D0308C0010411FBE905000000020000000A0000000A00000001000000000000000410D1010800000004000000090000000200000001000000030F878CFD000000030280010213D7B1030000000107800104128A4105000000020AD3577F10D13D080B4D43F600000009108010F70DE7CA060E5FD8FD000000090000000300000009000000000000000400000009128A7D050AD3577F10D13D080B4D43F600000009108010F70DE7CA060E5FD8FD0000000900000003000000090000000000000004000000090000000213D7ED0307800104128A4105000000020AD3577F10D13D080B4D43F610804CF7000000000DE7CA060E5FD8FD03C001020000000913A54D030640010412FF710500000002000000090000000900000001000000030E6014FD0000000303C001020000000600000006108010F70DE7CA060E5FD8FD03C0010213A51103000000010640010412FF710500000002000000090000000913A54D030640010412FF7105000000020BE879BF1011AD080AA6A27610EDACF7000000000D4128860EFA10FD00000009000000030000000910ED70F70D4128860EFA10FD04600102000000091384190305A00104000000070000000900000001000000030EFA4CFD0000000304600102000000091384190305A001041331350500000002000000090000000900000001000000000000000410117108000000040000000912FFAD050BE879BF1011AD080AA6A27610EDACF7000000000000000910ED70F70D4128860EFA10FD00000009000000030EFA4CFD0000000304600102000000091384190300000006000000010000000000000004000000090000000200000001000000030E6014FD0000000303C0010213A51103000000010640010412FF7105000000020BE879BF1011AD080DAED87D000000090E9625060000000300000006000000040000000912FFAD050BE879BF1011AD080000000900000004000000060000000213A54D030640010412FF7105000000020BE879BF1011AD080DAED87D0E9661060AA6A2760000000610ED70F70460010200000009138419030000000600000001000000000000000300000006000000040000000612FFAD05000000060000000200000001000000000000000410D10108000000040B4D43F600000006108010F70DE7CA060E5FD8FD00000009000000030000000600000000128A7D050AD3577F10D13D080B4D43F610804CF7000000000DE7CA060E5FD8FD03C0010200000006000000060000000300000006108010F70DE7CA060E5FD8FD03C0010213A511030000000108C0010411FBE90500000002000000090000000913A54D0308C0010411FBE905000000020BE879BF1011AD080AA6A276000000060000000A00000004000000060000000500000001000000030E6014FD0000000300000006000000000000000410D101080000000400000006000000020000000100000000"
theorem small_2363445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363445_right_root small_2363445_right_fuel small_2363445_right_count small_2363445_right_encoded = true := by
  decide +kernel
theorem small_2363445_right_covered : CoveredBy scale carrier boxes small_2363445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363445_right_root small_2363445_right_fuel small_2363445_right_count small_2363445_right_encoded small_2363445_right_checked

theorem cover_2363445 : CoveredBy scale carrier boxes root_2363445 := by
  apply coveredBy_split_literal root_2363445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363446 small_2363445_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363446
  · exact small_2363445_right_covered
#print axioms cover_2363445

def root_2363440 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363440_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363440_right_fuel : Nat := 1
def small_2363440_right_count : Nat := 1
def small_2363440_right_encoded : String := "00000003"
theorem small_2363440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363440_right_root small_2363440_right_fuel small_2363440_right_count small_2363440_right_encoded = true := by
  decide +kernel
theorem small_2363440_right_covered : CoveredBy scale carrier boxes small_2363440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363440_right_root small_2363440_right_fuel small_2363440_right_count small_2363440_right_encoded small_2363440_right_checked

theorem cover_2363440 : CoveredBy scale carrier boxes root_2363440 := by
  apply coveredBy_split_literal root_2363440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363445 small_2363440_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363445
  · exact small_2363440_right_covered
#print axioms cover_2363440

def root_2363439 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363439_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363439_right_fuel : Nat := 27
def small_2363439_right_count : Nat := 257
def small_2363439_right_encoded : String := "0F34D106000000030CFD9BFF0F350D080C9A86F60F878CF7000000000C9A87080F8750FF028001020000000813D7ED0307800104128A4105000000020AD3577D10D13D060DE7C9F6000000050000000800000003000000080000000700000001000000040F878CFF000000040280010213D7B1030000000107800104128A4105000000020AD3577D10D13D060DE7C9F600000005000000080000000300000006128A7D05000000080000000213D7ED0307800104128A4105000000020AD3577D10D13D060DE7C9F6000000060E5FD8F70DE7CA080E5FD8FF03C001020000000800000006000000040000000600000000000000030000000600000006000000010F8750F70C9A87080F8750FF028001020000000813D7ED0307800104128A4105000000020AD3577D10D13D060B4D43F6000000070000000800000003000000080000000700000001000000040F878CFF000000040280010213D7B1030000000107800104128A4105000000020AD3577D10D13D060B4D43F610804CF700000000000000080000000800000003000000080000000813D7ED0307800104128A4105000000020AD3577D10D13D060B4D43F610804CF7000000000DE7CA080E5FD8FF03C001020000000813A54D030640010412FF7105000000020BE879BD1011AD060BF3E576000000070000000800000003000000060000000700000001000000040E6014FF0000000403C001020000000600000006108010F70DE7CA080E5FD8FF03C001020000000813A54D030640010412FF7105000000020BE879BD1011AD060AA6A276000000070000000800000003000000080000000700000001000000040E6014FF0000000403C0010213A51103000000010640010412FF7105000000020BE879BD1011AD060DAED87F000000080000000800000003000000080000000813A54D030640010412FF7105000000020BE879BD1011AD060DAED87F0E9661080AA6A27600000006000000080000000400000006000000030000000612FFAD05000000060000000200000001000000000000000310D10106000000030B4D43F60000000600000008128A7D050AD3577D10D13D060B4D43F610804CF7000000000DE7CA080000000700000006108010F70DE7CA08000000070E6014FF0000000400000006000000000000000300000008000000020000000100000000000000040F34D108000000040C9A86F6000000060F8750F70280010213D7B1030000000107800104128A4105000000020AD3577D10D13D060AD3577F10D13D080B4D43F600000006108010F7014001020000000813F6150300000006000000010000000000000004000000060000000300000006128A7D05000000060000000213D7ED0307800104128A4105000000020AD3577D0000000600000006000000060000000100000000"
theorem small_2363439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363439_right_root small_2363439_right_fuel small_2363439_right_count small_2363439_right_encoded = true := by
  decide +kernel
theorem small_2363439_right_covered : CoveredBy scale carrier boxes small_2363439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363439_right_root small_2363439_right_fuel small_2363439_right_count small_2363439_right_encoded small_2363439_right_checked

theorem cover_2363439 : CoveredBy scale carrier boxes root_2363439 := by
  apply coveredBy_split_literal root_2363439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363440 small_2363439_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363440
  · exact small_2363439_right_covered
#print axioms cover_2363439

def root_2363433 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363433_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363433_left_fuel : Nat := 1
def small_2363433_left_count : Nat := 1
def small_2363433_left_encoded : String := "00000000"
theorem small_2363433_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363433_left_root small_2363433_left_fuel small_2363433_left_count small_2363433_left_encoded = true := by
  decide +kernel
theorem small_2363433_left_covered : CoveredBy scale carrier boxes small_2363433_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363433_left_root small_2363433_left_fuel small_2363433_left_count small_2363433_left_encoded small_2363433_left_checked

theorem cover_2363433 : CoveredBy scale carrier boxes root_2363433 := by
  apply coveredBy_split_literal root_2363433 small_2363433_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363439 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2363433_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363439
#print axioms cover_2363433

def root_2363432 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363432_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363432_right_fuel : Nat := 14
def small_2363432_right_count : Nat := 53
def small_2363432_right_encoded : String := "0F34D0F60CFD9BFD0F350D060CFD9BFF0F350D080C9A8706000000050F878CFD000000030C9A8708000000050F878CFF00000004028001020000000513D7ED030780010400000005128A7D05000000060000000200000001000000040F34D108000000040C9A87060F8750FD00000009000000030F878CFD0000000300000006000000030F34D106000000030CFD9BFF0F350D080C9A87080F8750FF028001020000000513D7ED0307800104000000050000000600000001000000040F878CFF0000000400000006000000040000000600000000"
theorem small_2363432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363432_right_root small_2363432_right_fuel small_2363432_right_count small_2363432_right_encoded = true := by
  decide +kernel
theorem small_2363432_right_covered : CoveredBy scale carrier boxes small_2363432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363432_right_root small_2363432_right_fuel small_2363432_right_count small_2363432_right_encoded small_2363432_right_checked

theorem cover_2363432 : CoveredBy scale carrier boxes root_2363432 := by
  apply coveredBy_split_literal root_2363432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363433 small_2363432_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363433
  · exact small_2363432_right_covered
#print axioms cover_2363432

def root_2363427 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363427_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2363427_right_fuel : Nat := 1
def small_2363427_right_count : Nat := 1
def small_2363427_right_encoded : String := "00000002"
theorem small_2363427_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2363427_right_root small_2363427_right_fuel small_2363427_right_count small_2363427_right_encoded = true := by
  decide +kernel
theorem small_2363427_right_covered : CoveredBy scale carrier boxes small_2363427_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2363427_right_root small_2363427_right_fuel small_2363427_right_count small_2363427_right_encoded small_2363427_right_checked

theorem cover_2363427 : CoveredBy scale carrier boxes root_2363427 := by
  apply coveredBy_split_literal root_2363427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363432 small_2363427_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363432
  · exact small_2363427_right_covered
#print axioms cover_2363427

def root_2361213 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2361213 : CoveredBy scale carrier boxes root_2361213 := by
  apply coveredBy_split_literal root_2361213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0903.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2363427 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0903.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2363427
#print axioms cover_2361213

def root_2361207 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361207_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361207_left_fuel : Nat := 1
def small_2361207_left_count : Nat := 1
def small_2361207_left_encoded : String := "00000001"
theorem small_2361207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361207_left_root small_2361207_left_fuel small_2361207_left_count small_2361207_left_encoded = true := by
  decide +kernel
theorem small_2361207_left_covered : CoveredBy scale carrier boxes small_2361207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361207_left_root small_2361207_left_fuel small_2361207_left_count small_2361207_left_encoded small_2361207_left_checked

theorem cover_2361207 : CoveredBy scale carrier boxes root_2361207 := by
  apply coveredBy_split_literal root_2361207 small_2361207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2361213 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2361207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2361213
#print axioms cover_2361207

def root_2369550 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369550_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369550_left_fuel : Nat := 16
def small_2369550_left_count : Nat := 123
def small_2369550_left_encoded : String := "0F8750FD0C9A87080F8750FF07800102128A410300000001028001040000000513D7ED050B4D43F6000000050000000600000002128A7D030280010413D7B105000000020B4D43F600000005108010F7000000080000000013D7ED050B4D43F610804CF7000000000B4D44060000000810804CFD000000030B4D4408108010FF08C0010200000005000000080000000400000008108010F70B4D44060000000810804CFD000000030B4D44080000000900000008000000000000000200000001000000040F878CFF0000000407800102128A4103000000010280010413D7B105000000020B4D43F600000005108010F70B4D44060000000510804CFD000000030DE7CA0800000005000000070000000013D7ED050B4D43F610804CF7000000000B4D4406108010FD000000080000000310804CFD000000030DE7CA08000000050E6014FF0000000400000008108010F70B4D4406108010FD0DE7CA080E5FD8FF0000000600000004000000080000000310804CFD000000030DE7CA080E5FD8FF0640010212FF7103000000010000000600000008000000040E6014FF000000040640010212FF71030000000100000008000000080000000000000002128A7D03028001040000000813D7ED050B4D43F600000008108010F70000000800000000000000020000000100000003"
theorem small_2369550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369550_left_root small_2369550_left_fuel small_2369550_left_count small_2369550_left_encoded = true := by
  decide +kernel
theorem small_2369550_left_covered : CoveredBy scale carrier boxes small_2369550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369550_left_root small_2369550_left_fuel small_2369550_left_count small_2369550_left_encoded small_2369550_left_checked

theorem cover_2369550 : CoveredBy scale carrier boxes root_2369550 := by
  apply coveredBy_split_literal root_2369550 small_2369550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0905.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2369550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0905.covered
#print axioms cover_2369550

def root_2369545 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369545_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369545_right_fuel : Nat := 1
def small_2369545_right_count : Nat := 1
def small_2369545_right_encoded : String := "00000000"
theorem small_2369545_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369545_right_root small_2369545_right_fuel small_2369545_right_count small_2369545_right_encoded = true := by
  decide +kernel
theorem small_2369545_right_covered : CoveredBy scale carrier boxes small_2369545_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369545_right_root small_2369545_right_fuel small_2369545_right_count small_2369545_right_encoded small_2369545_right_checked

theorem cover_2369545 : CoveredBy scale carrier boxes root_2369545 := by
  apply coveredBy_split_literal root_2369545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369550 small_2369545_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369550
  · exact small_2369545_right_covered
#print axioms cover_2369545

def root_2369069 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369069_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369069_left_fuel : Nat := 22
def small_2369069_left_count : Nat := 227
def small_2369069_left_encoded : String := "0F878CF7000000000C9A87060F8750FD0C9A87080F8750FF0780010200000005128A7D03028001040000000513D7ED050DE7C9F6000000050E5FD8F70B4D44060000000510804CFD000000030B4D44080000000500000008000000000000000200000001000000040F878CFF0000000407800102128A41030000000100000005128A7D030000000800000001000000030F878CFD000000030C9A87080F8750FF07800102128A41030000000100000005128A7D030280010413D7B105000000020DE7C9F6000000050E5FD8F70DE7CA06000000050000000A0000000013D7ED050DE7C9F60E6014F7000000000DE7CA06000000050E6014FD000000030000000A0E5FD8F70DE7CA060E5FD8FD0B4D4408108010FF08C001020000000511FC250303C001040000000500000009000000010000000410804CFF0000000408C001020000000500000008000000030E6014FD000000030B4D4408108010FF08C00102000000050000000A0000000410804CFF0000000408C0010211FBE903000000010000000A0000000A000000000000000200000001000000040F878CFF0000000407800102128A410300000001028001040000000513D7ED050DE7C9F60E6014F7000000000DE7CA06000000050E6014FD000000030DE7CA0800000005000000060E5FD8F70DE7CA060E5FD8FD0DE7CA08000000050E6014FF00000004064001020000000512FFAD0303C001040000000513A54D050DAED87F00000008000000060000000200000001000000030E6014FD000000030DE7CA080E5FD8FF064001020000000512FFAD0303C001040000000513A54D050DAED87D0E9661060000000500000003000000060000000200000001000000040E6014FF000000040640010212FF71030000000103C001040000000500000006000000060000000000000002128A7D030280010413D7B105000000020DE7C9F60E6014F7000000000DE7CA06000000050000000A0E5FD8F70DE7CA060E5FD8FD00000008000000030E6014FD000000030000000A0000000013D7ED050DE7C9F60E6014F7000000000DE7CA060E5FD8FD0DE7CA080E5FD8FF000000080000000400000008000000030E6014FD00000003000000060E5FD8F70DE7CA060E5FD8FD0DE7CA080E5FD8FF000000080000000400000008000000030E6014FD000000030DE7CA080E5FD8FF08C0010211FBE9030000000103C001040000000A00000006000000060000000400000006000000000000000200000001"
theorem small_2369069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369069_left_root small_2369069_left_fuel small_2369069_left_count small_2369069_left_encoded = true := by
  decide +kernel
theorem small_2369069_left_covered : CoveredBy scale carrier boxes small_2369069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369069_left_root small_2369069_left_fuel small_2369069_left_count small_2369069_left_encoded small_2369069_left_checked

theorem cover_2369069 : CoveredBy scale carrier boxes root_2369069 := by
  apply coveredBy_split_literal root_2369069 small_2369069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369545 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2369069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369545
#print axioms cover_2369069

def root_2369064 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369064_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369064_right_fuel : Nat := 1
def small_2369064_right_count : Nat := 1
def small_2369064_right_encoded : String := "00000004"
theorem small_2369064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369064_right_root small_2369064_right_fuel small_2369064_right_count small_2369064_right_encoded = true := by
  decide +kernel
theorem small_2369064_right_covered : CoveredBy scale carrier boxes small_2369064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369064_right_root small_2369064_right_fuel small_2369064_right_count small_2369064_right_encoded small_2369064_right_checked

theorem cover_2369064 : CoveredBy scale carrier boxes root_2369064 := by
  apply coveredBy_split_literal root_2369064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369069 small_2369064_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369069
  · exact small_2369064_right_covered
#print axioms cover_2369064

def root_2369063 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369063_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369063_right_fuel : Nat := 25
def small_2369063_right_count : Nat := 213
def small_2369063_right_encoded : String := "0F34D108000000040C9A86F60F878CF7000000000C9A87060F8750FD07800102128A410300000001028001040000000513D7ED050AD3577F10D13D080DE7C9F6000000050000000700000004000000070000000200000008000000030F878CFD0000000307800102128A4103000000010280010413D7B105000000020AD3577F10D13D080DE7C9F60000000500000007000000040000000613D7ED050AD3577F10D13D080DE7C9F6000000060E5FD8F70DE7CA060E5FD8FD0640010212FF71030000000103C00104000000050000000600000006000000030000000600000000000000040000000600000002128A7D03028001040000000700000006000000010F8750F70C9A87060F8750FD07800102128A410300000001028001040000000713D7ED050AD3577F10D13D080B4D43F6000000080000000700000004000000070000000200000007000000030F878CFD0000000307800102128A4103000000010280010413D7B105000000020AD3577F10D13D080B4D43F610804CF7000000000000000700000007000000040000000713D7ED050AD3577F10D13D080B4D43F610804CF7000000000DE7CA060E5FD8FD0640010212FF71030000000103C001040000000713A54D050BE879BF1011AD080BF3E576000000080000000700000004000000060000000200000008000000030E6014FD00000003064001020000000600000006108010F70DE7CA060E5FD8FD0640010212FF71030000000103C001040000000713A54D050BE879BF1011AD080AA6A276000000080000000700000004000000070000000200000007000000030E6014FD000000030640010212FF71030000000103C0010413A51105000000020BE879BF1011AD080DAED87D0000000700000007000000040000000713A54D050BE879BF1011AD080DAED87D0E9661060AA6A2760000000600000007000000030000000600000004000000060000000212FFAD0303C00104000000070000000600000001000000000000000410D10108000000040B4D43F6000000060000000700000002128A7D03028001040000000713D7ED050AD3577F10D13D080B4D43F610804CF7000000000DE7CA060000000700000006108010F70DE7CA06000000070E6014FD0000000300000006000000000000000400000007000000020000000100000000"
theorem small_2369063_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369063_right_root small_2369063_right_fuel small_2369063_right_count small_2369063_right_encoded = true := by
  decide +kernel
theorem small_2369063_right_covered : CoveredBy scale carrier boxes small_2369063_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369063_right_root small_2369063_right_fuel small_2369063_right_count small_2369063_right_encoded small_2369063_right_checked

theorem cover_2369063 : CoveredBy scale carrier boxes root_2369063 := by
  apply coveredBy_split_literal root_2369063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369064 small_2369063_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369064
  · exact small_2369063_right_covered
#print axioms cover_2369063

def root_2369058 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369058_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369058_right_fuel : Nat := 1
def small_2369058_right_count : Nat := 1
def small_2369058_right_encoded : String := "00000003"
theorem small_2369058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369058_right_root small_2369058_right_fuel small_2369058_right_count small_2369058_right_encoded = true := by
  decide +kernel
theorem small_2369058_right_covered : CoveredBy scale carrier boxes small_2369058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369058_right_root small_2369058_right_fuel small_2369058_right_count small_2369058_right_encoded small_2369058_right_checked

theorem cover_2369058 : CoveredBy scale carrier boxes root_2369058 := by
  apply coveredBy_split_literal root_2369058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369063 small_2369058_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369063
  · exact small_2369058_right_covered
#print axioms cover_2369058

def root_2369057 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369057_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369057_right_fuel : Nat := 31
def small_2369057_right_count : Nat := 457
def small_2369057_right_encoded : String := "0F34D106000000030CFD9BFF0F350D080C9A86F60F878CF7000000000C9A87080F8750FF07800102128A410300000001028001040000000513D7ED050AD3577D10D13D060DE7C9F6000000050E5FD8F70000000A00000000000000030000000A000000020000000A000000040F878CFF0000000407800102128A410300000001028001040000000A13D7ED050AD3577D10D13D060DE7C9F6000000060E5FD8F70DE7CA080E5FD8FF0000000A000000040000000600000000000000030000000600000002128A7D03028001040000000A00000006000000010F8750F70C9A87080F8750FF07800102128A4103000000010280010413D7B105000000020AD3577D10D13D060000000A000000030000000A13D7ED050AD3577D10D13D060B4D43F610804CF7000000000B4D4408108010FF06400102000000050000000A0000000410804CFF000000040640010212FF7103000000010000000A0000000A108010F70B4D4408108010FF0640010212FF71030000000103C001040000000A0000000712FFAD0303C001040000000900000009000000010000000410804CFF000000040640010212FF71030000000103C001040000000A13A54D050BE879BD1011AD060AA6A2760000000A10ED70F70BF3E58800000007100928FF0000000405A00102000000070000000900000000000000030000000A0000000212FFAD0303C001040000000A13A54D050BE879BD1011AD060AA6A2760000000A0000000900000003000000090000000200000001000000000000000310D10106000000030000000A00000002128A7D030280010413D7B105000000020000000A13D7ED050AD3577D10D13D060B4D43F610804CF7000000000B4D4408108010FF0000000A000000040000000A108010F70B4D4408108010FF000000090000000410804CFF0000000408C0010211FBE9030000000103C00104000000090000000900000009000000000000000310D10106000000030000000A0000000200000001000000040F878CFF0000000407800102128A4103000000010280010413D7B105000000020AD3577D10D13D060B4D43F60000000A108010F70DE7CA080E5FD8FF0000000A000000040000000A00000000000000030000000A13D7ED050AD3577D10D13D060B4D43F610804CF7000000000DE7CA080E5FD8FF0640010212FF7103000000010000000A0000000A000000040E6014FF00000004064001020000000600000006108010F70DE7CA080E5FD8FF0640010212FF71030000000103C001040000000A13A54D050BE879BD1011AD060AA6A27610EDACF7000000000D4128880EFA10FF0000000A000000040000000A10ED70F70D4128880EFA10FF05A001020000000A0000000A000000040EFA4CFF0000000405A0010213313503000000010000000A0000000A000000000000000310117106000000030000000A0000000212FFAD0303C001040000000A13A54D050BE879BD1011AD060AA6A27610EDACF7000000000000000A10ED70F70D4128880EFA10FF00000009000000040EFA4CFF0000000406E001020000000A0000000A00000000000000030000000A0000000200000001000000040E6014FF000000040640010212FF71030000000103C0010413A51105000000020BE879BD1011AD060DAED87F0000000A0E9625080000000400000006000000030000000A13A54D050BE879BD1011AD060DAED87F0E9661080AA6A2760000000610ED70F705A001021331350300000001046001040000000A0000000613317103000000060000000100000000000000040000000600000003000000060000000212FFAD0303C0010413A51105000000020BE879BD1011AD060000000A00000003000000060000000600000001000000000000000310D10106000000030B4D43F600000006108010F70DE7CA080E5FD8FF0000000A00000004000000060000000000000002128A7D030280010413D7B105000000020AD3577D10D13D060B4D43F60000000A108010F70DE7CA080E5FD8FF0000000A000000040000000A00000000000000030000000A13D7ED050AD3577D10D13D060B4D43F610804CF7000000000DE7CA080E5FD8FF08C0010200000006000000060000000400000006108010F70DE7CA080E5FD8FF08C0010211FBE9030000000103C001040000000A13A54D050BE879BD1011AD060AA6A276000000060000000900000003000000060000000211FC250303C00104000000090000000500000001000000040E6014FF0000000400000006000000000000000310D101060000000300000006000000020000000100000000000000040F34D108000000040C9A86F6000000060F8750F707800102128A4103000000010280010413D7B105000000020AD3577D10D13D060AD3577F10D13D080B4D43F600000006108010F70640010212FF7103000000010000000A0000000A000000000000000400000006000000030000000613D7ED050AD3577D000000060000000600000002128A7D030280010400000006000000060000000100000000"
theorem small_2369057_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369057_right_root small_2369057_right_fuel small_2369057_right_count small_2369057_right_encoded = true := by
  decide +kernel
theorem small_2369057_right_covered : CoveredBy scale carrier boxes small_2369057_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369057_right_root small_2369057_right_fuel small_2369057_right_count small_2369057_right_encoded small_2369057_right_checked

theorem cover_2369057 : CoveredBy scale carrier boxes root_2369057 := by
  apply coveredBy_split_literal root_2369057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369058 small_2369057_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369058
  · exact small_2369057_right_covered
#print axioms cover_2369057

def root_2369051 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369051_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369051_left_fuel : Nat := 1
def small_2369051_left_count : Nat := 1
def small_2369051_left_encoded : String := "00000000"
theorem small_2369051_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369051_left_root small_2369051_left_fuel small_2369051_left_count small_2369051_left_encoded = true := by
  decide +kernel
theorem small_2369051_left_covered : CoveredBy scale carrier boxes small_2369051_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369051_left_root small_2369051_left_fuel small_2369051_left_count small_2369051_left_encoded small_2369051_left_checked

theorem cover_2369051 : CoveredBy scale carrier boxes root_2369051 := by
  apply coveredBy_split_literal root_2369051 small_2369051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369057 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2369051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369057
#print axioms cover_2369051

def root_2369050 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369050_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369050_right_fuel : Nat := 13
def small_2369050_right_count : Nat := 51
def small_2369050_right_encoded : String := "0F34D0F60CFD9BFD0F350D060CFD9BFF0F350D080C9A8706000000050F878CFD000000030C9A8708000000050F878CFF000000040780010200000005128A7D0302800104000000050000000600000001000000040F34D108000000040C9A87060F8750FD0780010200000005128A7D0302800104000000050000000600000001000000030F878CFD0000000300000006000000030F34D106000000030CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF0000000400000006000000040000000600000000"
theorem small_2369050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369050_right_root small_2369050_right_fuel small_2369050_right_count small_2369050_right_encoded = true := by
  decide +kernel
theorem small_2369050_right_covered : CoveredBy scale carrier boxes small_2369050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369050_right_root small_2369050_right_fuel small_2369050_right_count small_2369050_right_encoded small_2369050_right_checked

theorem cover_2369050 : CoveredBy scale carrier boxes root_2369050 := by
  apply coveredBy_split_literal root_2369050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369051 small_2369050_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369051
  · exact small_2369050_right_covered
#print axioms cover_2369050

def root_2369044 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369044_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369044_left_fuel : Nat := 1
def small_2369044_left_count : Nat := 1
def small_2369044_left_encoded : String := "00000002"
theorem small_2369044_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369044_left_root small_2369044_left_fuel small_2369044_left_count small_2369044_left_encoded = true := by
  decide +kernel
theorem small_2369044_left_covered : CoveredBy scale carrier boxes small_2369044_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369044_left_root small_2369044_left_fuel small_2369044_left_count small_2369044_left_encoded small_2369044_left_checked

theorem cover_2369044 : CoveredBy scale carrier boxes root_2369044 := by
  apply coveredBy_split_literal root_2369044 small_2369044_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369050 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2369044_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369050
#print axioms cover_2369044

def root_2381028 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2381028 : CoveredBy scale carrier boxes root_2381028 := by
  apply coveredBy_split_literal root_2381028 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0909.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0910.root coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0909.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0910.covered
#print axioms cover_2381028

def root_2381022 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381022_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381022_left_fuel : Nat := 1
def small_2381022_left_count : Nat := 1
def small_2381022_left_encoded : String := "00000002"
theorem small_2381022_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2381022_left_root small_2381022_left_fuel small_2381022_left_count small_2381022_left_encoded = true := by
  decide +kernel
theorem small_2381022_left_covered : CoveredBy scale carrier boxes small_2381022_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2381022_left_root small_2381022_left_fuel small_2381022_left_count small_2381022_left_encoded small_2381022_left_checked

theorem cover_2381022 : CoveredBy scale carrier boxes root_2381022 := by
  apply coveredBy_split_literal root_2381022 small_2381022_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2381028 coord2 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_2381022_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2381028
#print axioms cover_2381022

def root_2381021 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381021_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381021_right_fuel : Nat := 20
def small_2381021_right_count : Nat := 225
def small_2381021_right_encoded : String := "128A7D050B4D43F610804CF7000000000DE7CA060E5FD8FD0DE7CA080E5FD8FF0640010212FF71030000000108C0010411FBE905000000020BF3E576000000071008ECF70D4128860EFA10FD000000070000000300000007000000000000000712FFAD0308C0010411FBE905000000020BF3E576100928F7000000000D4128860EFA10FD0D412888000000070EFA4CFF0000000400000006000000030EFA4CFD00000003000000061008ECF70D4128860EFA10FD0D412888000000070EFA4CFF0000000406E001020000000A12C821030000000600000001000000030EFA4CFD000000030D41288800000007000000070000000011FC2505000000070000000200000001000000040E6014FF000000040640010212FF71030000000108C0010411FBE905000000020DAED87F0E9661080BF3E576000000061008ECF70D4128860EFA10FD05A001020000000A00000006000000030000000600000000000000040000000611FC2505000000060000000212FFAD030000000600000001000000030E6014FD000000030DE7CA080E5FD8FF0640010212FF7103000000010000000712FFAD030000000600000001000000040E6014FF0000000400000006108010F70DE7CA060E5FD8FD0DE7CA080E5FD8FF0640010212FF71030000000108C0010411FBE905000000020AA6A27610EDACF7000000000D4128860EFA10FD00000007000000030000000710ED70F70D4128860EFA10FD0000000A0000000300000007000000000000000712FFAD0308C0010411FBE905000000020AA6A27610EDACF7000000000D4128860EFA10FD0D4128880000000A00000005000000030EFA4CFD000000030D412888000000070000000510ED70F70D4128860EFA10FD000000050000000300000005000000000000000500000001000000040E6014FF000000040640010212FF71030000000108C0010411FBE905000000020DAED87F0E9661080AA6A27610EDACF7000000000D4128860EFA10FD0000000A000000030EFA4CFD0000000305A00102000000060000000510ED70F70D4128860000000A0000000500000000000000040E962508000000040AA6A27610EDACF7000000000D4128860EFA10FD000000060000000300000005000000050000000500000005000000030E6014FD000000030DE7CA080E5FD8FF0640010212FF71030000000108C0010411FBE9050000000200000007000000050000000500000004000000050000000000000002"
theorem small_2381021_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2381021_right_root small_2381021_right_fuel small_2381021_right_count small_2381021_right_encoded = true := by
  decide +kernel
theorem small_2381021_right_covered : CoveredBy scale carrier boxes small_2381021_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2381021_right_root small_2381021_right_fuel small_2381021_right_count small_2381021_right_encoded small_2381021_right_checked

theorem cover_2381021 : CoveredBy scale carrier boxes root_2381021 := by
  apply coveredBy_split_literal root_2381021 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2381022 small_2381021_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2381022
  · exact small_2381021_right_covered
#print axioms cover_2381021

def root_2381015 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381015_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381015_left_fuel : Nat := 1
def small_2381015_left_count : Nat := 1
def small_2381015_left_encoded : String := "00000001"
theorem small_2381015_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2381015_left_root small_2381015_left_fuel small_2381015_left_count small_2381015_left_encoded = true := by
  decide +kernel
theorem small_2381015_left_covered : CoveredBy scale carrier boxes small_2381015_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2381015_left_root small_2381015_left_fuel small_2381015_left_count small_2381015_left_encoded small_2381015_left_checked

theorem cover_2381015 : CoveredBy scale carrier boxes root_2381015 := by
  apply coveredBy_split_literal root_2381015 small_2381015_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2381021 coord1 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_2381015_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2381021
#print axioms cover_2381015

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057

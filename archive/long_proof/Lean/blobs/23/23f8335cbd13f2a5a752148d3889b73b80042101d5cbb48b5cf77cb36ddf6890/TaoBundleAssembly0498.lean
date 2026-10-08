import TaoBundleAssembly0496
import TaoBundleAssembly0497
import TaoBundleChunkBatch0683
import TaoBundleChunkBatch0685
import TaoBundleChunkBatch0686
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498
def root_7268052 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268052_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268052_right_fuel : Nat := 17
def small_7268052_right_count : Nat := 125
def small_7268052_right_encoded : String := "135D44FF0CFD9BF70F350D0004548A0713867106000000030C9A87000F8750F7028001020000000A0000000A000000000F878CF7000000000280010213D7B10300000001078000FA128A7CFB00000002028000FE13D7ECFF00000004022A4587000000090000000A000000090000000913D7ED03078000FA128A7CFB00000002028000FE13D7ECFF00000004022A458713E1C506000000030DE7CA000000000A000000050000000A0000000500000005000000011386AD060C9A87000000000A0F878CF700000000028001020000000A0000000A00000003000000000F34D1000000000004548A0713867106000000030280010213D7B10300000001078000FA128A7CFB00000002028000FE13D7ECFF000000040000000700000007128A40FB028000FE13D7ECFF000000040AD3577710D13D00000000090000000010D101000000000000000005000000050000000213D7ED03078000FA128A7CFB000000020000000700000005000000011386AD060280010213D7B10300000001078000FA00000007128A40FB028000FE13D7ECFF000000040AD3577710D13D000000000A0000000000000007000000070000000213D7ED03078000FA00000007128A40FB028000FE13D7ECFF000000040AD3577710D13D000000000700000000000000070000000500000002000000010000000300000004"
theorem small_7268052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268052_right_root small_7268052_right_fuel small_7268052_right_count small_7268052_right_encoded = true := by
  decide +kernel
theorem small_7268052_right_covered : CoveredBy scale carrier boxes small_7268052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268052_right_root small_7268052_right_fuel small_7268052_right_count small_7268052_right_encoded small_7268052_right_checked

theorem cover_7268052 : CoveredBy scale carrier boxes root_7268052 := by
  apply coveredBy_split_literal root_7268052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0497.root_7268053 small_7268052_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0497.cover_7268053
  · exact small_7268052_right_covered
#print axioms cover_7268052

def root_7268046 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268046_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268046_left_fuel : Nat := 1
def small_7268046_left_count : Nat := 1
def small_7268046_left_encoded : String := "00000002"
theorem small_7268046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268046_left_root small_7268046_left_fuel small_7268046_left_count small_7268046_left_encoded = true := by
  decide +kernel
theorem small_7268046_left_covered : CoveredBy scale carrier boxes small_7268046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268046_left_root small_7268046_left_fuel small_7268046_left_count small_7268046_left_encoded small_7268046_left_checked

theorem cover_7268046 : CoveredBy scale carrier boxes root_7268046 := by
  apply coveredBy_split_literal root_7268046 small_7268046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268052 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7268046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268052
#print axioms cover_7268046

def root_7268045 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268045_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268045_right_fuel : Nat := 23
def small_7268045_right_count : Nat := 245
def small_7268045_right_encoded : String := "135D44FB050000FE135D80FF000000040CFD9BF70F350D0004548A0713867106000000030C9A87000F8750F700000007000000000F878CF7000000000280010213D7B10300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45870000000700000006000000090000000913D7ED03028000FA13D7ECFB00000002078000FE128A7CFF00000004022A4587000000070000000600000005000000050000000100000006000000000F34D1000000000004548A0713867106000000030280010213D7B10300000001028000FA13D7ECFB00000002078000FE128A7CFF000000040AD3577710D13D00022A458700000009000000080000000000000008128A40FF0AD3577710D13D00000000090000000010D1010000000000000000050000000413D7B0FB078000FE128A7CFF000000040AD3577710D13D00000000090000000000000008000000050000000213D7ED03028000FA13D7ECFB00000002078000FE128A7CFF000000040AD3577710D13D00022A45870000000513E2010603C0010213A511030000000103C000FA13A54CFB00000002000000060000000500000005000000030000000010D1010000000000022A458700000005000000080000000500000005000000011386AD060280010213D7B10300000001028000FA13D7ECFB00000002078000FE128A7CFF000000040AD3577710D13D00067ECE8712EA59060000000300000006000000060000000000000008128A40FF0AD3577710D13D00067ECE8712EA5906000000030140010213F5D9030000000103C000FA13A54CFB00000002064000FE00000006000000060000000600000006000000060000000010D1010000000000067ECE8712EA59060000000300000008000000080000000413D7B0FB078000FE128A7CFF0000000400000006128A40FF0AD357770000000610D101000000000000000008000000040000000213D7ED03028000FA13D7ECFB00000002078000FE128A7CFF000000040AD357770000000610D1010000000000067ECE8712EA5906000000030000000600000006128A40FF0AD357770000000610D1010000000000067ECE87000000050000000600000004000000060000000100000003135D44FF0CFD9BF70F350D0004548A0713867106000000030C9A8700000000090000000500000006000000000F34D1000000000004548A07000000051386AD060280010213D7B10300000001028000FA13D7ECFB00000002028000FE13D7ECFF000000040AD3577710D13D00067ECE8700000005000000060000000010D1010000000000067ECE870000000500000007000000050000000500000005000000030000000400000002"
theorem small_7268045_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268045_right_root small_7268045_right_fuel small_7268045_right_count small_7268045_right_encoded = true := by
  decide +kernel
theorem small_7268045_right_covered : CoveredBy scale carrier boxes small_7268045_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268045_right_root small_7268045_right_fuel small_7268045_right_count small_7268045_right_encoded small_7268045_right_checked

theorem cover_7268045 : CoveredBy scale carrier boxes root_7268045 := by
  apply coveredBy_split_literal root_7268045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268046 small_7268045_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268046
  · exact small_7268045_right_covered
#print axioms cover_7268045

def root_7268039 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268039_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268039_left_fuel : Nat := 1
def small_7268039_left_count : Nat := 1
def small_7268039_left_encoded : String := "00000001"
theorem small_7268039_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268039_left_root small_7268039_left_fuel small_7268039_left_count small_7268039_left_encoded = true := by
  decide +kernel
theorem small_7268039_left_covered : CoveredBy scale carrier boxes small_7268039_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268039_left_root small_7268039_left_fuel small_7268039_left_count small_7268039_left_encoded small_7268039_left_checked

theorem cover_7268039 : CoveredBy scale carrier boxes root_7268039 := by
  apply coveredBy_split_literal root_7268039 small_7268039_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268045 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7268039_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268045
#print axioms cover_7268039

def root_7268038 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7268038 : CoveredBy scale carrier boxes root_7268038 := by
  apply coveredBy_split_literal root_7268038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268039 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2739.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268039
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2739.covered
#print axioms cover_7268038

def root_7268032 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268032_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268032_left_fuel : Nat := 1
def small_7268032_left_count : Nat := 1
def small_7268032_left_encoded : String := "00000003"
theorem small_7268032_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268032_left_root small_7268032_left_fuel small_7268032_left_count small_7268032_left_encoded = true := by
  decide +kernel
theorem small_7268032_left_covered : CoveredBy scale carrier boxes small_7268032_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268032_left_root small_7268032_left_fuel small_7268032_left_count small_7268032_left_encoded small_7268032_left_checked

theorem cover_7268032 : CoveredBy scale carrier boxes root_7268032 := by
  apply coveredBy_split_literal root_7268032 small_7268032_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268038 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7268032_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268038
#print axioms cover_7268032

def root_7268031 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268031_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268031_right_fuel : Nat := 20
def small_7268031_right_count : Nat := 197
def small_7268031_right_encoded : String := "12073D0605000102135D450300000001050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030C9A8700000000060F878CF7000000000280010213D7B103000000010000000A13D7ED0300000006000000010000000A000000000F34D100000000000CFD9C070F34D106000000030280010213D7B10300000001078000FA00000007128A40FB078000FE128A7CFF000000040AD3577710D13D00000000060000000000000007000000070000000213D7ED03078000FA00000007128A40FB078000FE128A7CFF00000004000000060000000600000002000000010F350D060000000700000003135D44FF0CFD9BF70000000A0F34D100000000000CFD9C07000000070000000700000004135D44FB050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000CFD9C070F34D106000000030280010213D7B10300000001028000FA13D7ECFB00000002078000FE000000060000000600000006000000060F350D060C9A87060F87510700000003000000060000000600000003135D44FF0CFD9BF70F350D0000000006000000000F34D100000000000CFD9C070F34D1060000000300000006000000060000000400000002135D8103050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D10600000003000000060F350D060C9A8700000000060000000900000003000000000F34D100000000000CFD9C070F34D1060000000307800102128A410300000001078000FA0000000700000006128A7D03000000060000000100000007135D44FF0CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000000000700000004135D44FB050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000CFD9C070F34D106000000030000000600000006135D44FF0CFD9BF70F350D0000000006000000000000000600000004000000020000000100000003"
theorem small_7268031_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268031_right_root small_7268031_right_fuel small_7268031_right_count small_7268031_right_encoded = true := by
  decide +kernel
theorem small_7268031_right_covered : CoveredBy scale carrier boxes small_7268031_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268031_right_root small_7268031_right_fuel small_7268031_right_count small_7268031_right_encoded small_7268031_right_checked

theorem cover_7268031 : CoveredBy scale carrier boxes root_7268031 := by
  apply coveredBy_split_literal root_7268031 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268032 small_7268031_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268032
  · exact small_7268031_right_covered
#print axioms cover_7268031

def root_7268026 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268026_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268026_right_fuel : Nat := 1
def small_7268026_right_count : Nat := 1
def small_7268026_right_encoded : String := "00000000"
theorem small_7268026_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268026_right_root small_7268026_right_fuel small_7268026_right_count small_7268026_right_encoded = true := by
  decide +kernel
theorem small_7268026_right_covered : CoveredBy scale carrier boxes small_7268026_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268026_right_root small_7268026_right_fuel small_7268026_right_count small_7268026_right_encoded small_7268026_right_checked

theorem cover_7268026 : CoveredBy scale carrier boxes root_7268026 := by
  apply coveredBy_split_literal root_7268026 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268031 small_7268026_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268031
  · exact small_7268026_right_covered
#print axioms cover_7268026

def root_7268025 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268025_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268025_right_fuel : Nat := 24
def small_7268025_right_count : Nat := 309
def small_7268025_right_encoded : String := "120701000000000008A91307120701060000000305000102135D450300000001050000FA135D80FB00000002050000FE135D80FF00000004045489F71386AD0004548A0713867106000000030280010213D7B10300000001078000FA128A7CFB0000000200000007128A40FB000000080000000213D7ED03078000FA128A7CFB0000000200000007128A40FB078000FE128A7CFF00000004000000080000000700000002000000010000000700000000138671000000000004548A071386710600000003028001020000000713D7ED03078000FA0000000700000007000000010000000700000007135D44FB050000FE135D80FF00000004045489F71386AD0004548A071386710600000003028001020000000813D7ED03028000FA13D7ECFB00000002078000FE000000080000000500000005000000011386AD06028001020000000813D7ED03028000FA13D7ECFB00000002078000FE000000080000000713D7B0FB078000FE000000080000000500000002000000010000000300000000138671000000000000000008135D44FF045489F71386AD0004548A07000000051386AD060280010213D7B10300000001028000FA00000007000000050000000500000003000000001386710000000000000000070000000400000002135D8103050000FA135D80FB00000002050000FE135D80FF00000004045489F71386AD0004548A07138671060000000307800102128A410300000001078000FA128A7CFB00000002078000FE128A7CFF000000040000000700000007128A40FB078000FE128A7CFF00000004067ECE7712EA9500022A45870000000513E2010600000007000000030000000012EA590000000000022A458700000005000000070000000500000002128A7D03078000FA128A7CFB00000002078000FE128A7CFF00000004000000070000000500000005000000011386AD060780010200000007128A7D0300000007000000010000000300000000138671000000000004548A07138671060000000307800102128A410300000001078000FA00000007128A40FB078000FE000000080000000500000002128A7D03078000FA00000007000000050000000100000007135D44FF045489F7000000070000000700000004135D44FB050000FE135D80FF00000004045489F71386AD0004548A07000000051386AD0607800102128A410300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004067ECE7712EA95000000000600000000000000070000000500000005000000050000000300000000138671000000000004548A07000000051386AD0607800102128A41030000000100000008000000050000000300000005000000020000000112073D0605000102135D450300000001050000FA135D80FB0000000200000007135D44FB050000FE135D80FF00000004045489F71386AD000CFD9C070F34D10600000003028001020000000813D7ED03028000FA0000000700000006000000010F350D0600000007000000030000000000000007135D44FF045489F71386AD000CFD9C07000000070000000700000000000000070000000400000002135D8103050000FA00000007135D44FB050000FE135D80FF00000004045489F71386AD000CFD9C070F34D1060000000300000006000000060000000013867100000000000000000700000007000000020000000100000003"
theorem small_7268025_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268025_right_root small_7268025_right_fuel small_7268025_right_count small_7268025_right_encoded = true := by
  decide +kernel
theorem small_7268025_right_covered : CoveredBy scale carrier boxes small_7268025_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268025_right_root small_7268025_right_fuel small_7268025_right_count small_7268025_right_encoded small_7268025_right_checked

theorem cover_7268025 : CoveredBy scale carrier boxes root_7268025 := by
  apply coveredBy_split_literal root_7268025 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268026 small_7268025_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268026
  · exact small_7268025_right_covered
#print axioms cover_7268025

def root_7268020 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268020_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7268020_right_fuel : Nat := 1
def small_7268020_right_count : Nat := 1
def small_7268020_right_encoded : String := "00000004"
theorem small_7268020_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7268020_right_root small_7268020_right_fuel small_7268020_right_count small_7268020_right_encoded = true := by
  decide +kernel
theorem small_7268020_right_covered : CoveredBy scale carrier boxes small_7268020_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7268020_right_root small_7268020_right_fuel small_7268020_right_count small_7268020_right_encoded small_7268020_right_checked

theorem cover_7268020 : CoveredBy scale carrier boxes root_7268020 := by
  apply coveredBy_split_literal root_7268020 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268025 small_7268020_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268025
  · exact small_7268020_right_covered
#print axioms cover_7268020

def root_7261518 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7261518 : CoveredBy scale carrier boxes root_7261518 := by
  apply coveredBy_split_literal root_7261518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0497.root_7261519 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7268020 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0497.cover_7261519
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7268020
#print axioms cover_7261518

def root_7261513 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261513_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261513_right_fuel : Nat := 1
def small_7261513_right_count : Nat := 1
def small_7261513_right_encoded : String := "00000003"
theorem small_7261513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7261513_right_root small_7261513_right_fuel small_7261513_right_count small_7261513_right_encoded = true := by
  decide +kernel
theorem small_7261513_right_covered : CoveredBy scale carrier boxes small_7261513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7261513_right_root small_7261513_right_fuel small_7261513_right_count small_7261513_right_encoded small_7261513_right_checked

theorem cover_7261513 : CoveredBy scale carrier boxes root_7261513 := by
  apply coveredBy_split_literal root_7261513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7261518 small_7261513_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7261518
  · exact small_7261513_right_covered
#print axioms cover_7261513

def root_7261347 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261347_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261347_left_fuel : Nat := 16
def small_7261347_left_count : Nat := 77
def small_7261347_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073D0008A912FF12073CFE000000040500010200000005135D8103050000FA00000005135D44FB0500010600000005135D81070CFD9BF7000000090F34D1000000000000000009000000030000000200000001120700FE000000050000000400000000120701000000000008A912FF12073CFE000000040500010200000005135D81030000000900000001120700FE00000005000000041151E8FF08A912F712073D0005000102135D450300000001050000FA0000000A135D44FB0000000A00000002135D8103050000FA00000007135D44FB0500010600000007135D8107050000FE135D80FF000000040CFD9BF70000000900000007000000060000000300000002000000010000000012070100000000000000000700000004"
theorem small_7261347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7261347_left_root small_7261347_left_fuel small_7261347_left_count small_7261347_left_encoded = true := by
  decide +kernel
theorem small_7261347_left_covered : CoveredBy scale carrier boxes small_7261347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7261347_left_root small_7261347_left_fuel small_7261347_left_count small_7261347_left_encoded small_7261347_left_checked

theorem cover_7261347 : CoveredBy scale carrier boxes root_7261347 := by
  apply coveredBy_split_literal root_7261347 small_7261347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7261513 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7261347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7261513
#print axioms cover_7261347

def root_7261342 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261342_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261342_right_fuel : Nat := 1
def small_7261342_right_count : Nat := 1
def small_7261342_right_encoded : String := "00000002"
theorem small_7261342_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7261342_right_root small_7261342_right_fuel small_7261342_right_count small_7261342_right_encoded = true := by
  decide +kernel
theorem small_7261342_right_covered : CoveredBy scale carrier boxes small_7261342_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7261342_right_root small_7261342_right_fuel small_7261342_right_count small_7261342_right_encoded small_7261342_right_checked

theorem cover_7261342 : CoveredBy scale carrier boxes root_7261342 := by
  apply coveredBy_split_literal root_7261342 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7261347 small_7261342_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7261347
  · exact small_7261342_right_covered
#print axioms cover_7261342

def root_7254988 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7254988 : CoveredBy scale carrier boxes root_7254988 := by
  apply coveredBy_split_literal root_7254988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7254989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7261342 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7254989
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7261342
#print axioms cover_7254988

def root_7254982 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254982_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254982_left_fuel : Nat := 1
def small_7254982_left_count : Nat := 1
def small_7254982_left_encoded : String := "00000001"
theorem small_7254982_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7254982_left_root small_7254982_left_fuel small_7254982_left_count small_7254982_left_encoded = true := by
  decide +kernel
theorem small_7254982_left_covered : CoveredBy scale carrier boxes small_7254982_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7254982_left_root small_7254982_left_fuel small_7254982_left_count small_7254982_left_encoded small_7254982_left_checked

theorem cover_7254982 : CoveredBy scale carrier boxes root_7254982 := by
  apply coveredBy_split_literal root_7254982 small_7254982_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7254988 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7254982_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7254988
#print axioms cover_7254982

def root_7254981 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7254981 : CoveredBy scale carrier boxes root_7254981 := by
  apply coveredBy_split_literal root_7254981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7254982 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2740.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7254982
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2740.covered
#print axioms cover_7254981

def root_7254975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254975_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254975_left_fuel : Nat := 1
def small_7254975_left_count : Nat := 1
def small_7254975_left_encoded : String := "00000000"
theorem small_7254975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7254975_left_root small_7254975_left_fuel small_7254975_left_count small_7254975_left_encoded = true := by
  decide +kernel
theorem small_7254975_left_covered : CoveredBy scale carrier boxes small_7254975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7254975_left_root small_7254975_left_fuel small_7254975_left_count small_7254975_left_encoded small_7254975_left_checked

theorem cover_7254975 : CoveredBy scale carrier boxes root_7254975 := by
  apply coveredBy_split_literal root_7254975 small_7254975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7254981 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7254975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7254981
#print axioms cover_7254975

def root_7252169 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7252169 : CoveredBy scale carrier boxes root_7252169 := by
  apply coveredBy_split_literal root_7252169 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2732.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7254975 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2732.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7254975
#print axioms cover_7252169

def root_7285195 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7285195_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7285195_left_fuel : Nat := 25
def small_7285195_left_count : Nat := 487
def small_7285195_left_encoded : String := "120701020000000108A91307120701060000000305000100135D44F7050000FA135D80FB00000002050000FE135D810904548A03000000090000000600000004135D45090000000404548A0313867102000000010000000900000006135D44FB050000FE135D810904548A030000000A1386AD0204548A07000000061386AD060280010013D7B0F7028000FA000000090000000A000000000000000A000000030000000100000004135D45090000000404548A03138671020000000104548A070000000A1386AD060280010013D7B0F7028000FA00000009000000050000000000000005000000031386AD0204548A07000000061386AD060280010013D7B0F7028000FA0000000613D7B0FB028000FE13D7ED09067ECE830000000A000000060000000400000005000000020000000013D7ECF700000000028000FA000000060000000500000003000000010000000200000000135D80F700000000050000FA135D80FB00000002050000FE0000000600000006135D44FB050000FE135D81090000000A00000004000000050000000212073D0605000100135D44F7050000FA135D80FB00000002050000FE135D810904548A03000000091386AD020CFD9C070F34D1060000000300000009000000090000000100000004135D45090000000404548A0313867102000000010CFD9C070F34D1060000000300000009000000091386AD020CFD9C070F34D106000000030280010013D7B0F70000000900000000000000090F350D060C9A87060F87510700000003000000090F878D07028001000000000900000009000000030000000300000001135D44FB050000FE135D810904548A0313867102000000010CFD9C070F34D1060000000300000009000000091386AD020CFD9C070F34D106000000030280010013D7B0F7028000FA0000000913D7B0FB078000FE00000009128A41090000000400000009000000020000000013D7ECF700000000028000FA0000000913D7B0FB078000FE00000009128A41090000000400000009000000020F350D060C9A87060F87510700000003000000090F878D0702800100000000090000000900000003000000030000000100000004135D45090000000404548A0313867102000000010CFD9C070F34D106000000030280010000000009000000090F350D0600000008000000031386AD020CFD9C070F34D106000000030280010013D7B0F7028000FA13D7ECFB00000002028000FE0000000913D7B10900000004067ECE830000000912EA95020AD3578700000006000000090000000113D7B0FB028000FE13D7ED09067ECE830000000912EA95020AD3578710D101060000000301400100000000090000000910D13D0601400100000000080000000900000003000000010000000413D7B10900000004067ECE8312EA5902000000010000000512EA95020AD3578710D10106000000030000000510D13D06000000080000000300000001000000020000000013D7ECF700000000028000FA13D7ECFB00000002028000FE0000000913D7B10900000004067ECE830000000912EA9502000000060000000113D7B0FB028000FE13D7ED09067ECE830000000912EA95020AD3578710D10106000000030000000500000009000000010000000400000005000000020F350D060C9A87060F87510700000003028001000000000813D7ECF700000000028000FA00000007000000070F878D070280010013D7B0F7028000FA13D7ECFB00000002028000FE0000000900000008000000080000000013D7ECF700000000028000FA13D7ECFB00000002028000FE000000090000000713D7B0FB028000FE13D7ED09067ECE830000000812EA950200000009000000010000000400000007000000020000000300000003000000010000000200000000135D80F700000000050000FA135D80FB00000002050000FE135D810904548A03000000091386AD020CFD9C070F34D1060000000300000009000000090000000100000004135D45090000000404548A0313867102000000010CFD9C070F34D1060000000300000009000000091386AD020CFD9C070F34D10600000003000000060F350D060C9A87060F87510700000003000000070F878D07078001000000000900000007000000030000000300000001135D44FB050000FE135D810904548A0313867102000000010CFD9C070F34D1060000000300000009000000091386AD020CFD9C070F34D1060000000307800100128A40F7028000FA0000000913D7B0FB078000FE00000009128A410900000004000000090000000200000000128A7CF700000000028000FA0000000913D7B0FB078000FE0000000900000005000000020F350D060C9A87060F87510700000003000000090F878D0707800100000000090000000900000003000000030000000100000004135D45090000000404548A0313867102000000010CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000700000009000000031386AD020CFD9C070F34D1060000000307800100128A40F7028000FA13D7ECFB00000002028000FE00000009000000050000000500000000000000050F350D060C9A87060F87510700000003000000070F878D0707800100128A40F7028000FA000000070000000700000000000000070000000300000003000000010000000200000003"
theorem small_7285195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7285195_left_root small_7285195_left_fuel small_7285195_left_count small_7285195_left_encoded = true := by
  decide +kernel
theorem small_7285195_left_covered : CoveredBy scale carrier boxes small_7285195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7285195_left_root small_7285195_left_fuel small_7285195_left_count small_7285195_left_encoded small_7285195_left_checked

theorem cover_7285195 : CoveredBy scale carrier boxes root_7285195 := by
  apply coveredBy_split_literal root_7285195 small_7285195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2741.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7285195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2741.covered
#print axioms cover_7285195

def root_7285189 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7285189_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7285189_left_fuel : Nat := 1
def small_7285189_left_count : Nat := 1
def small_7285189_left_encoded : String := "00000004"
theorem small_7285189_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7285189_left_root small_7285189_left_fuel small_7285189_left_count small_7285189_left_encoded = true := by
  decide +kernel
theorem small_7285189_left_covered : CoveredBy scale carrier boxes small_7285189_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7285189_left_root small_7285189_left_fuel small_7285189_left_count small_7285189_left_encoded small_7285189_left_checked

theorem cover_7285189 : CoveredBy scale carrier boxes root_7285189 := by
  apply coveredBy_split_literal root_7285189 small_7285189_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7285195 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7285189_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7285195
#print axioms cover_7285189

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498

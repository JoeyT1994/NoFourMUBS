import TaoBundleAssembly0221
import TaoBundleChunkBatch0865
import TaoBundleChunkBatch0867
import TaoBundleChunkBatch0868
import TaoBundleChunkBatch0869
import TaoBundleChunkBatch0870
import TaoBundleChunkBatch0871
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222
def root_9256110 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256110_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256110_right_fuel : Nat := 19
def small_9256110_right_count : Nat := 199
def small_9256110_right_encoded : String := "135D44FF0CFD9BF90F350D0204548A0713867106000000030C9A87020F8750F900000006000000010F878CF9000000010280010013D7B10100000000078000FA128A7CFB00000002028000FE13D7ECFF00000004022A45870000000600000007000000060000000913D7ED01078000FA128A7CFB00000002028000FE13D7ECFF00000004022A4587000000060000000700000005000000050000000000000007000000010F34D1020000000104548A0713867106000000030280010013D7B10100000000078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3577910D13D02022A4587000000090000000A000000010000000A13D7B0FF0AD3577910D13D0200000009000000010000000900000004128A40FB028000FE13D7ECFF000000040AD3577910D13D02000000090000000110D101020000000100000005000000050000000213D7ED01078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3577910D13D02022A45870000000513E2010603C0010013A511010000000008C000FA000000070000000500000005000000030000000110D1010200000001022A4587000000050000000A0000000500000005000000001386AD060280010013D7B10100000000078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3577910D13D02067ECE8712EA5906000000030000000700000007000000010000000A13D7B0FF0000000700000004128A40FB028000FE13D7ECFF000000040AD3577910D13D02067ECE8712EA5906000000030140010013F5D90100000000064000FA000000070000000700000007000000070000000110D1010200000001067ECE8712EA5906000000030000000A0000000A13D7B0FF0AD357790000000710D10102000000010000000A000000040000000213D7ED01078000FA128A7CFB00000002028000FE13D7ECFF000000040AD357790000000710D1010200000001067ECE8712EA590600000003000000070000000700000007128A40FB028000FE13D7ECFF000000040AD357790000000710D1010200000001067ECE8700000005000000070000000500000002000000000000000300000004"
theorem small_9256110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256110_right_root small_9256110_right_fuel small_9256110_right_count small_9256110_right_encoded = true := by
  decide +kernel
theorem small_9256110_right_covered : CoveredBy scale carrier boxes small_9256110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256110_right_root small_9256110_right_fuel small_9256110_right_count small_9256110_right_encoded small_9256110_right_checked

theorem cover_9256110 : CoveredBy scale carrier boxes root_9256110 := by
  apply coveredBy_split_literal root_9256110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.root_9256111 small_9256110_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.cover_9256111
  · exact small_9256110_right_covered
#print axioms cover_9256110

def root_9256104 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256104_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256104_left_fuel : Nat := 1
def small_9256104_left_count : Nat := 1
def small_9256104_left_encoded : String := "00000002"
theorem small_9256104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256104_left_root small_9256104_left_fuel small_9256104_left_count small_9256104_left_encoded = true := by
  decide +kernel
theorem small_9256104_left_covered : CoveredBy scale carrier boxes small_9256104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256104_left_root small_9256104_left_fuel small_9256104_left_count small_9256104_left_encoded small_9256104_left_checked

theorem cover_9256104 : CoveredBy scale carrier boxes root_9256104 := by
  apply coveredBy_split_literal root_9256104 small_9256104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256110 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9256104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256110
#print axioms cover_9256104

def root_9256103 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256103_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256103_right_fuel : Nat := 19
def small_9256103_right_count : Nat := 171
def small_9256103_right_encoded : String := "135D44FB050000FE135D80FF000000040CFD9BF90F350D0204548A0713867106000000030C9A87020F8750F9028001000000000800000008000000010F878CF9000000010280010013D7B10100000000028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45870000000900000008000000090000000913D7ED01028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030DE7CA020000000800000005000000080000000500000005000000001386AD060C9A8702000000080F878CF90000000102800100000000080000000800000003000000010F34D1020000000104548A0713867106000000030280010013D7B10100000000028000FA13D7ECFB00000002078000FE128A7CFF0000000400000006128A40FF0AD3577910D13D02000000090000000110D1010200000001000000050000000413D7B0FB078000FE00000006000000050000000213D7ED01028000FA13D7ECFB00000002078000FE000000060000000500000005000000001386AD060280010013D7B10100000000028000FA13D7ECFB00000002078000FE00000006128A40FF0AD3577910D13D02000000080000000100000006000000040000000613D7ED01028000FA13D7ECFB00000002078000FE00000006128A40FF0AD3577910D13D0200000006000000010000000600000004000000060000000000000003135D44FF0CFD9BF90F350D0204548A0713867106000000030C9A8702000000090000000500000007000000010F34D1020000000104548A07000000051386AD060280010013D7B10100000000028000FA13D7ECFB00000002028000FE13D7ECFF000000040AD3577910D13D02067ECE8700000005000000070000000110D1010200000001067ECE870000000500000006000000050000000500000005000000030000000400000002"
theorem small_9256103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256103_right_root small_9256103_right_fuel small_9256103_right_count small_9256103_right_encoded = true := by
  decide +kernel
theorem small_9256103_right_covered : CoveredBy scale carrier boxes small_9256103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256103_right_root small_9256103_right_fuel small_9256103_right_count small_9256103_right_encoded small_9256103_right_checked

theorem cover_9256103 : CoveredBy scale carrier boxes root_9256103 := by
  apply coveredBy_split_literal root_9256103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256104 small_9256103_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256104
  · exact small_9256103_right_covered
#print axioms cover_9256103

def root_9256097 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256097_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256097_left_fuel : Nat := 1
def small_9256097_left_count : Nat := 1
def small_9256097_left_encoded : String := "00000000"
theorem small_9256097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256097_left_root small_9256097_left_fuel small_9256097_left_count small_9256097_left_encoded = true := by
  decide +kernel
theorem small_9256097_left_covered : CoveredBy scale carrier boxes small_9256097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256097_left_root small_9256097_left_fuel small_9256097_left_count small_9256097_left_encoded small_9256097_left_checked

theorem cover_9256097 : CoveredBy scale carrier boxes root_9256097 := by
  apply coveredBy_split_literal root_9256097 small_9256097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256103 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9256097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256103
#print axioms cover_9256097

def root_9256096 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9256096 : CoveredBy scale carrier boxes root_9256096 := by
  apply coveredBy_split_literal root_9256096 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256097 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3467.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256097
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3467.covered
#print axioms cover_9256096

def root_9256090 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256090_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256090_left_fuel : Nat := 1
def small_9256090_left_count : Nat := 1
def small_9256090_left_encoded : String := "00000003"
theorem small_9256090_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256090_left_root small_9256090_left_fuel small_9256090_left_count small_9256090_left_encoded = true := by
  decide +kernel
theorem small_9256090_left_covered : CoveredBy scale carrier boxes small_9256090_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256090_left_root small_9256090_left_fuel small_9256090_left_count small_9256090_left_encoded small_9256090_left_checked

theorem cover_9256090 : CoveredBy scale carrier boxes root_9256090 := by
  apply coveredBy_split_literal root_9256090 small_9256090_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256096 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9256090_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256096
#print axioms cover_9256090

def root_9256089 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256089_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256089_right_fuel : Nat := 20
def small_9256089_right_count : Nat := 199
def small_9256089_right_encoded : String := "12073D0605000100135D450100000000050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF90F350D020CFD9C070F34D106000000030C9A8702000000070F878CF9000000010280010013D7B101000000000000000813D7ED01000000070000000000000008000000010F34D102000000010CFD9C070F34D106000000030280010013D7B10100000000078000FA128A7CFB00000002078000FE00000005128A40FF0AD3577910D13D0200000007000000010000000600000004128A40FB078000FE00000006128A40FF00000006000000040000000213D7ED01078000FA128A7CFB00000002078000FE00000006128A40FF000000070000000400000006000000000F350D060000000600000003135D44FF0CFD9BF90F350D020CFD9C070F34D106000000030000000700000007000000010F34D102000000010CFD9C070F34D106000000030280010013D7B10100000000078000FA0000000700000007000000070F350D060C9A87060F8751070000000300000006000000070000000300000004135D44FB050000FE135D80FF000000040CFD9BF9000000080F34D102000000010CFD9C070000000600000006135D44FF0CFD9BF90F350D0200000007000000010F34D102000000010CFD9C070F34D1060000000300000007000000070000000400000002135D8101050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF90F350D020CFD9C070F34D10600000003000000070F350D060C9A8702000000070000000900000003000000010F34D102000000010CFD9C070F34D1060000000307800100128A410100000000078000FA0000000600000006128A7D01000000060000000000000006135D44FF0CFD9BF90F350D020CFD9C070F34D106000000030000000700000007000000010F34D102000000010CFD9C070F34D10600000003000000070000000700000004135D44FB050000FE135D80FF000000040CFD9BF90F350D020CFD9C070F34D106000000030000000700000007000000010F34D1020000000100000006135D44FF0CFD9BF90F350D0200000007000000010000000700000004000000020000000000000003"
theorem small_9256089_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256089_right_root small_9256089_right_fuel small_9256089_right_count small_9256089_right_encoded = true := by
  decide +kernel
theorem small_9256089_right_covered : CoveredBy scale carrier boxes small_9256089_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256089_right_root small_9256089_right_fuel small_9256089_right_count small_9256089_right_encoded small_9256089_right_checked

theorem cover_9256089 : CoveredBy scale carrier boxes root_9256089 := by
  apply coveredBy_split_literal root_9256089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256090 small_9256089_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256090
  · exact small_9256089_right_covered
#print axioms cover_9256089

def root_9256084 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256084_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256084_right_fuel : Nat := 1
def small_9256084_right_count : Nat := 1
def small_9256084_right_encoded : String := "00000001"
theorem small_9256084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256084_right_root small_9256084_right_fuel small_9256084_right_count small_9256084_right_encoded = true := by
  decide +kernel
theorem small_9256084_right_covered : CoveredBy scale carrier boxes small_9256084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256084_right_root small_9256084_right_fuel small_9256084_right_count small_9256084_right_encoded small_9256084_right_checked

theorem cover_9256084 : CoveredBy scale carrier boxes root_9256084 := by
  apply coveredBy_split_literal root_9256084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256089 small_9256084_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256089
  · exact small_9256084_right_covered
#print axioms cover_9256084

def root_9256083 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256083_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256083_right_fuel : Nat := 24
def small_9256083_right_count : Nat := 309
def small_9256083_right_encoded : String := "120701020000000108A91307120701060000000305000100135D450100000000050000FA135D80FB00000002050000FE135D80FF00000004045489F91386AD0204548A0713867106000000030280010013D7B10100000000078000FA0000000A0000000613D7ED01078000FA128A7CFB00000002078000FE128A7CFF0000000400000006128A40FF0000000A00000004128A40FB0000000600000002000000000000000600000001138671020000000104548A071386710600000003028001000000000613D7ED01078000FA0000000A000000060000000000000006135D44FF045489F91386AD0204548A071386710600000003028001000000000A13D7ED01078000FA0000000A00000005000000001386AD06028001000000000A13D7ED01078000FA0000000A128A40FB028000FE00000006000000050000000200000000000000030000000113867102000000010000000A00000004135D44FB050000FE00000006135D44FF045489F91386AD0204548A07000000051386AD060280010013D7B10100000000028000FA13D7ECFB00000002028000FE0000000600000005000000050000000500000003000000011386710200000001000000060000000400000002135D8101050000FA135D80FB00000002050000FE135D80FF00000004045489F91386AD0204548A07138671060000000307800100128A410100000000078000FA128A7CFB00000002078000FE128A7CFF0000000400000006128A40FF067ECE7912EA9502022A45870000000513E2010600000006000000030000000112EA590200000001022A4587000000050000000600000004128A40FB078000FE000000060000000500000002128A7D01078000FA128A7CFB00000002078000FE128A7CFF00000004000000060000000500000005000000001386AD060780010000000006128A7D0100000006000000000000000300000001138671020000000104548A07138671060000000307800100128A410100000000078000FA128A7CFB00000002078000FE000000060000000600000006128A7D01078000FA128A7CFB00000002078000FE0000000600000005000000050000000000000006135D44FF045489F91386AD0204548A07000000051386AD0607800100128A410100000000078000FA128A7CFB00000002028000FE13D7ECFF00000004067ECE7912EA95020000000700000001000000060000000500000005000000050000000300000001138671020000000104548A07000000051386AD0607800100128A4101000000000000000A000000050000000300000004135D44FB050000FE135D80FF00000004045489F9000000060000000600000005000000020000000012073D0605000100135D450100000000050000FA135D80FB00000002050000FE00000006135D44FF045489F91386AD020CFD9C070F34D10600000003028001000000000A13D7ED01078000FA0000000A00000006000000000F350D060000000600000003000000010000000600000004135D44FB050000FE00000006135D44FF045489F91386AD020CFD9C07000000060000000600000001000000060000000400000002135D8101050000FA135D80FB00000002050000FE00000006135D44FF045489F91386AD020CFD9C070F34D1060000000300000007000000060000000113867102000000010000000600000004000000060000000000000003"
theorem small_9256083_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256083_right_root small_9256083_right_fuel small_9256083_right_count small_9256083_right_encoded = true := by
  decide +kernel
theorem small_9256083_right_covered : CoveredBy scale carrier boxes small_9256083_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256083_right_root small_9256083_right_fuel small_9256083_right_count small_9256083_right_encoded small_9256083_right_checked

theorem cover_9256083 : CoveredBy scale carrier boxes root_9256083 := by
  apply coveredBy_split_literal root_9256083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256084 small_9256083_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256084
  · exact small_9256083_right_covered
#print axioms cover_9256083

def root_9256078 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256078_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256078_right_fuel : Nat := 1
def small_9256078_right_count : Nat := 1
def small_9256078_right_encoded : String := "00000004"
theorem small_9256078_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256078_right_root small_9256078_right_fuel small_9256078_right_count small_9256078_right_encoded = true := by
  decide +kernel
theorem small_9256078_right_covered : CoveredBy scale carrier boxes small_9256078_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256078_right_root small_9256078_right_fuel small_9256078_right_count small_9256078_right_encoded small_9256078_right_checked

theorem cover_9256078 : CoveredBy scale carrier boxes root_9256078 := by
  apply coveredBy_split_literal root_9256078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256083 small_9256078_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256083
  · exact small_9256078_right_covered
#print axioms cover_9256078

def root_9252792 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9252792 : CoveredBy scale carrier boxes root_9252792 := by
  apply coveredBy_split_literal root_9252792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.root_9252793 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9256078 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.cover_9252793
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9256078
#print axioms cover_9252792

def root_9252787 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252787_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252787_right_fuel : Nat := 1
def small_9252787_right_count : Nat := 1
def small_9252787_right_encoded : String := "00000003"
theorem small_9252787_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252787_right_root small_9252787_right_fuel small_9252787_right_count small_9252787_right_encoded = true := by
  decide +kernel
theorem small_9252787_right_covered : CoveredBy scale carrier boxes small_9252787_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252787_right_root small_9252787_right_fuel small_9252787_right_count small_9252787_right_encoded small_9252787_right_checked

theorem cover_9252787 : CoveredBy scale carrier boxes root_9252787 := by
  apply coveredBy_split_literal root_9252787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9252792 small_9252787_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9252792
  · exact small_9252787_right_covered
#print axioms cover_9252787

def root_9252655 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252655_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252655_left_fuel : Nat := 15
def small_9252655_left_count : Nat := 63
def small_9252655_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FF12073CFE00000004050001000000000500000006120700FE000000050000000400000001000000061151E8FF08A912F912073D0205000100135D450100000000050000FA135D80FB000000020500010600000005135D8107050000FE00000005135D44FF00000008000000040000000300000008135D8101050000FA135D80FB000000020500010600000006135D8107050000FE00000006135D44FF0CFD9BF900000008000000060000000400000003135D44FB05000106000000060000000800000002000000000000000112070102000000010000000600000004"
theorem small_9252655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252655_left_root small_9252655_left_fuel small_9252655_left_count small_9252655_left_encoded = true := by
  decide +kernel
theorem small_9252655_left_covered : CoveredBy scale carrier boxes small_9252655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252655_left_root small_9252655_left_fuel small_9252655_left_count small_9252655_left_encoded small_9252655_left_checked

theorem cover_9252655 : CoveredBy scale carrier boxes root_9252655 := by
  apply coveredBy_split_literal root_9252655 small_9252655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9252787 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9252655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9252787
#print axioms cover_9252655

def root_9252650 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252650_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252650_right_fuel : Nat := 1
def small_9252650_right_count : Nat := 1
def small_9252650_right_encoded : String := "00000002"
theorem small_9252650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252650_right_root small_9252650_right_fuel small_9252650_right_count small_9252650_right_encoded = true := by
  decide +kernel
theorem small_9252650_right_covered : CoveredBy scale carrier boxes small_9252650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252650_right_root small_9252650_right_fuel small_9252650_right_count small_9252650_right_encoded small_9252650_right_checked

theorem cover_9252650 : CoveredBy scale carrier boxes root_9252650 := by
  apply coveredBy_split_literal root_9252650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9252655 small_9252650_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9252655
  · exact small_9252650_right_covered
#print axioms cover_9252650

def root_9243080 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9243080 : CoveredBy scale carrier boxes root_9243080 := by
  apply coveredBy_split_literal root_9243080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.root_9243081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9252650 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.cover_9243081
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9252650
#print axioms cover_9243080

def root_9243074 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243074_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243074_left_fuel : Nat := 1
def small_9243074_left_count : Nat := 1
def small_9243074_left_encoded : String := "00000001"
theorem small_9243074_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9243074_left_root small_9243074_left_fuel small_9243074_left_count small_9243074_left_encoded = true := by
  decide +kernel
theorem small_9243074_left_covered : CoveredBy scale carrier boxes small_9243074_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9243074_left_root small_9243074_left_fuel small_9243074_left_count small_9243074_left_encoded small_9243074_left_checked

theorem cover_9243074 : CoveredBy scale carrier boxes root_9243074 := by
  apply coveredBy_split_literal root_9243074 small_9243074_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9243080 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9243074_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9243080
#print axioms cover_9243074

def root_9241778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9241778 : CoveredBy scale carrier boxes root_9241778 := by
  apply coveredBy_split_literal root_9241778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3460.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9243074 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3460.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9243074
#print axioms cover_9241778

def root_9241772 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9241772_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9241772_left_fuel : Nat := 1
def small_9241772_left_count : Nat := 1
def small_9241772_left_encoded : String := "00000000"
theorem small_9241772_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9241772_left_root small_9241772_left_fuel small_9241772_left_count small_9241772_left_encoded = true := by
  decide +kernel
theorem small_9241772_left_covered : CoveredBy scale carrier boxes small_9241772_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9241772_left_root small_9241772_left_fuel small_9241772_left_count small_9241772_left_encoded small_9241772_left_checked

theorem cover_9241772 : CoveredBy scale carrier boxes root_9241772 := by
  apply coveredBy_split_literal root_9241772 small_9241772_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9241778 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9241772_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9241778
#print axioms cover_9241772

def root_9268652 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9268652 : CoveredBy scale carrier boxes root_9268652 := by
  apply coveredBy_split_literal root_9268652 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3469.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3470.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3469.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3470.covered
#print axioms cover_9268652

def root_9268646 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9268646_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9268646_left_fuel : Nat := 1
def small_9268646_left_count : Nat := 1
def small_9268646_left_encoded : String := "00000001"
theorem small_9268646_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9268646_left_root small_9268646_left_fuel small_9268646_left_count small_9268646_left_encoded = true := by
  decide +kernel
theorem small_9268646_left_covered : CoveredBy scale carrier boxes small_9268646_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9268646_left_root small_9268646_left_fuel small_9268646_left_count small_9268646_left_encoded small_9268646_left_checked

theorem cover_9268646 : CoveredBy scale carrier boxes root_9268646 := by
  apply coveredBy_split_literal root_9268646 small_9268646_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9268652 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9268646_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9268652
#print axioms cover_9268646

def root_9267124 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9267124 : CoveredBy scale carrier boxes root_9267124 := by
  apply coveredBy_split_literal root_9267124 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3468.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9268646 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3468.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9268646
#print axioms cover_9267124

def root_9267119 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9267119_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9267119_right_fuel : Nat := 1
def small_9267119_right_count : Nat := 1
def small_9267119_right_encoded : String := "00000000"
theorem small_9267119_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9267119_right_root small_9267119_right_fuel small_9267119_right_count small_9267119_right_encoded = true := by
  decide +kernel
theorem small_9267119_right_covered : CoveredBy scale carrier boxes small_9267119_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9267119_right_root small_9267119_right_fuel small_9267119_right_count small_9267119_right_encoded small_9267119_right_checked

theorem cover_9267119 : CoveredBy scale carrier boxes root_9267119 := by
  apply coveredBy_split_literal root_9267119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9267124 small_9267119_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9267124
  · exact small_9267119_right_covered
#print axioms cover_9267119

def root_9241771 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9241771 : CoveredBy scale carrier boxes root_9241771 := by
  apply coveredBy_split_literal root_9241771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9241772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9267119 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9241772
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9267119
#print axioms cover_9241771

def root_9241770 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9241770 : CoveredBy scale carrier boxes root_9241770 := by
  apply coveredBy_split_literal root_9241770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9241771 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3471.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9241771
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3471.covered
#print axioms cover_9241770

def root_9274089 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274089 : CoveredBy scale carrier boxes root_9274089 := by
  apply coveredBy_split_literal root_9274089 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3472.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3473.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3472.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3473.covered
#print axioms cover_9274089

def root_9274084 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9274084_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9274084_right_fuel : Nat := 1
def small_9274084_right_count : Nat := 1
def small_9274084_right_encoded : String := "00000001"
theorem small_9274084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9274084_right_root small_9274084_right_fuel small_9274084_right_count small_9274084_right_encoded = true := by
  decide +kernel
theorem small_9274084_right_covered : CoveredBy scale carrier boxes small_9274084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9274084_right_root small_9274084_right_fuel small_9274084_right_count small_9274084_right_encoded small_9274084_right_checked

theorem cover_9274084 : CoveredBy scale carrier boxes root_9274084 := by
  apply coveredBy_split_literal root_9274084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9274089 small_9274084_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9274089
  · exact small_9274084_right_covered
#print axioms cover_9274084

def root_9283246 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9283246_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9283246_left_fuel : Nat := 25
def small_9283246_left_count : Nat := 339
def small_9283246_left_encoded : String := "0F8750FF0280010013D7B1010000000007800106128A4107000000030DE7CA02000000050E6014F90000000100000005128A7D070DE7CA020E5FD8F90B4D43FA10804CFB000000020B4D44080000000500000006108010FB0B4D4408000000070000000700000002000000010E6014F9000000010B4D43FA10804CFB000000020000000A108010FB0B4D44080000000710804CFF00000004014001000000000700000007000000020000000313D7ED0107800106128A4107000000030DE7CA020E5FD8F90B4D43FA10804CFB000000020B4D44080000000510804CFF0000000400000005108010FB0B4D4408108010FF000000080000000410804CFF0000000403C0010013A5110100000000064001060000000512FFAD070D412882000000050EFA4CF900000001000000050000000313A54D010640010612FF7107000000030000000812FFAD070D4128820EFA10F900000008000000010EFA4CF9000000010AA6A27A10EDACFB000000020BF3E588000000050000000700000007000000030000000000000002000000010E6014F9000000010B4D43FA10804CFB000000020B4D44080000000510804CFF0000000403C001000000000513A54D01064001060000000512FFAD070DAED8790E9661020BF3E57A000000051008ECFB0BF3E58800000005100928FF0000000404600100000000051384190106E0010600000005000000070000000000000002000000010E962502000000010000000A0000000300000000108010FB0B4D4408108010FF03C0010013A51101000000000000000513A54D010640010612FF7107000000030000000500000007000000000000000410804CFF0000000403C0010013A5110100000000064001060000000512FFAD070DAED8790E9661020AA6A27A000000050000000700000001000000070000000313A54D010640010612FF7107000000030DAED8790E9661020AA6A27A0000000510ED70FB0BF3E58800000005100928FF00000004046001000000000513841901000000070000000000000002000000010E962502000000010AA6A27A10EDACFB000000020BF3E58800000005100928FF0000000404600100000000050000000910ED70FB0BF3E58800000007100928FF000000040460010000000007000000070000000212FFAD070DAED8790E9661020AA6A27A10EDACFB000000020BF3E588000000070000000700000007000000010E962502000000010AA6A27A10EDACFB000000020000000700000007000000030000000000000002128A7D070DE7CA020E5FD8F90B4D43FA10804CFB000000020B4D4408108010FF03C0010000000007000000070000000410804CFF0000000403C0010013A511010000000008C0010611FBE90700000003000000050000000613A54D0108C0010611FBE907000000030D4128820EFA10F900000006000000010EFA4CF9000000010BF3E57A100928FB000000020BF3E5880000000500000006000000070000000600000000108010FB0B4D4408108010FF000000070000000410804CFF0000000403C001000000000713A54D01000000070000000000000002000000010E6014F9000000010B4D43FA10804CFB000000020B4D4408108010FF03C0010000000007000000070000000410804CFF0000000403C0010013A511010000000008C0010611FBE907000000030000000A0000000713A54D0108C0010611FBE907000000030DAED8790E9661020BF3E57A100928FB000000020000000A00000007000000010E962502000000010000000A0000000700000000108010FB0B4D4408108010FF000000070000000410804CFF0000000403C001000000000713A54D01000000070000000000000002000000030000000000000004"
theorem small_9283246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9283246_left_root small_9283246_left_fuel small_9283246_left_count small_9283246_left_encoded = true := by
  decide +kernel
theorem small_9283246_left_covered : CoveredBy scale carrier boxes small_9283246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9283246_left_root small_9283246_left_fuel small_9283246_left_count small_9283246_left_encoded small_9283246_left_checked

theorem cover_9283246 : CoveredBy scale carrier boxes root_9283246 := by
  apply coveredBy_split_literal root_9283246 small_9283246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3476.root coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9283246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3476.covered
#print axioms cover_9283246

def root_9283241 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9283241_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9283241_right_fuel : Nat := 1
def small_9283241_right_count : Nat := 1
def small_9283241_right_encoded : String := "00000002"
theorem small_9283241_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9283241_right_root small_9283241_right_fuel small_9283241_right_count small_9283241_right_encoded = true := by
  decide +kernel
theorem small_9283241_right_covered : CoveredBy scale carrier boxes small_9283241_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9283241_right_root small_9283241_right_fuel small_9283241_right_count small_9283241_right_encoded small_9283241_right_checked

theorem cover_9283241 : CoveredBy scale carrier boxes root_9283241 := by
  apply coveredBy_split_literal root_9283241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9283246 small_9283241_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9283246
  · exact small_9283241_right_covered
#print axioms cover_9283241

def root_9282825 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282825_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282825_left_fuel : Nat := 20
def small_9282825_left_count : Nat := 199
def small_9282825_left_encoded : String := "0F878CFB000000020C9A87080F8750FF0280010013D7B101000000000780010600000005128A7D070DE7CA02000000050000000A0000000313D7ED0107800106128A41070000000300000005128A7D070DE7CA020E5FD8F90DE7C9FA0E6014FB00000002000000050E5FD8FB0B4D4408108010FF03C001000000000513A54D0108C001060000000500000007000000000000000410804CFF0000000403C001000000000513A54D0108C0010600000005000000060000000000000002000000010E6014F9000000010DE7C9FA0E6014FB000000020000000A0E5FD8FB0B4D4408108010FF03C001000000000513A54D0108C001060000000500000007000000000000000410804CFF0000000403C001000000000A13A54D0108C0010611FBE907000000030000000A0000000A00000000000000020000000300000000000000040F878CFF000000040280010013D7B101000000000780010600000005128A7D070DE7CA020E5FD8F90DE7C9FA000000050E5FD8FB0000000600000002000000010E6014F9000000010DE7C9FA0000000A0E5FD8FB0000000A000000020000000313D7ED0107800106128A4107000000030DE7CA020E5FD8F90DE7C9FA000000050E5FD8FB0DE7CA08000000050E6014FF0000000403C001000000000513A54D01064001060000000512FFAD070DAED87F0000000600000008000000030000000000000002000000010E6014F9000000010DE7C9FA0E6014FB000000020DE7CA0800000005000000080E5FD8FB0DE7CA080E5FD8FF03C001000000000513A54D01064001060000000512FFAD070DAED8790E9661020000000500000001000000080000000300000000000000040E6014FF0000000403C0010013A51101000000000640010600000005000000080000000800000002128A7D070DE7CA020E5FD8F90DE7C9FA0E6014FB000000020DE7CA080E5FD8FF0000000600000004000000060E5FD8FB0DE7CA080E5FD8FF00000006000000040000000600000002000000010E6014F9000000010DE7C9FA000000080E5FD8FB0DE7CA080E5FD8FF03C001000000000A000000080000000400000008000000020000000300000000"
theorem small_9282825_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282825_left_root small_9282825_left_fuel small_9282825_left_count small_9282825_left_encoded = true := by
  decide +kernel
theorem small_9282825_left_covered : CoveredBy scale carrier boxes small_9282825_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282825_left_root small_9282825_left_fuel small_9282825_left_count small_9282825_left_encoded small_9282825_left_checked

theorem cover_9282825 : CoveredBy scale carrier boxes root_9282825 := by
  apply coveredBy_split_literal root_9282825 small_9282825_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9283241 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9282825_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9283241
#print axioms cover_9282825

def root_9282819 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282819_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282819_left_fuel : Nat := 1
def small_9282819_left_count : Nat := 1
def small_9282819_left_encoded : String := "00000001"
theorem small_9282819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282819_left_root small_9282819_left_fuel small_9282819_left_count small_9282819_left_encoded = true := by
  decide +kernel
theorem small_9282819_left_covered : CoveredBy scale carrier boxes small_9282819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282819_left_root small_9282819_left_fuel small_9282819_left_count small_9282819_left_encoded small_9282819_left_checked

theorem cover_9282819 : CoveredBy scale carrier boxes root_9282819 := by
  apply coveredBy_split_literal root_9282819 small_9282819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282825 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9282819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282825
#print axioms cover_9282819

def root_9282431 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282431_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282431_left_fuel : Nat := 20
def small_9282431_left_count : Nat := 187
def small_9282431_left_encoded : String := "0F8750F90C9A86FA0F878CFB000000020C9A87080F8750FF028001000000000513D7ED010780010600000005128A7D070B4D44020000000510804CF9000000010DE7C9FA000000050E5FD8FB0B4D44080000000500000006000000020000000300000000000000040F878CFF000000040280010013D7B1010000000007800106000000050000000613D7ED0107800106128A41070000000300000005128A7D070000000600000003000000000F8750FB0C9A87080F8750FF0280010013D7B101000000000780010600000005128A7D070B4D44020000000510804CF9000000010B4D43FA00000005108010FB00000006000000020000000313D7ED0107800106128A4107000000030B4D44020000000510804CF9000000010B4D43FA0000000500000008128A7D070B4D4402108010F90B4D43FA00000006000000060000000110804CF9000000010B4D43FA10804CFB000000020B4D4408108010FF03C0010000000005000000070000000400000006108010FB0B4D44080000000700000006000000020000000300000000000000040F878CFF000000040280010013D7B1010000000007800106128A4107000000030B4D44020000000510804CF9000000010B4D43FA00000005108010FB0DE7CA080000000500000006000000020000000613D7ED0107800106128A4107000000030B4D4402108010F90B4D43FA00000006108010FB0DE7CA080E5FD8FF000000060000000400000006000000020000000110804CF9000000010B4D43FA10804CFB000000020DE7CA08000000050E6014FF0000000400000006108010FB0DE7CA080E5FD8FF03C0010013A511010000000006400106000000050000000613A54D010640010612FF710700000003000000080000000600000000000000040E6014FF0000000403C001000000000613A54D010640010612FF71070000000300000006000000060000000000000002128A7D070B4D44020000000610804CF9000000010B4D43FA000000060000000600000003000000000000000200000001"
theorem small_9282431_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282431_left_root small_9282431_left_fuel small_9282431_left_count small_9282431_left_encoded = true := by
  decide +kernel
theorem small_9282431_left_covered : CoveredBy scale carrier boxes small_9282431_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282431_left_root small_9282431_left_fuel small_9282431_left_count small_9282431_left_encoded small_9282431_left_checked

theorem cover_9282431 : CoveredBy scale carrier boxes root_9282431 := by
  apply coveredBy_split_literal root_9282431 small_9282431_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282819 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9282431_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282819
#print axioms cover_9282431

def root_9282426 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282426_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282426_right_fuel : Nat := 1
def small_9282426_right_count : Nat := 1
def small_9282426_right_encoded : String := "00000004"
theorem small_9282426_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282426_right_root small_9282426_right_fuel small_9282426_right_count small_9282426_right_encoded = true := by
  decide +kernel
theorem small_9282426_right_covered : CoveredBy scale carrier boxes small_9282426_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282426_right_root small_9282426_right_fuel small_9282426_right_count small_9282426_right_encoded small_9282426_right_checked

theorem cover_9282426 : CoveredBy scale carrier boxes root_9282426 := by
  apply coveredBy_split_literal root_9282426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282431 small_9282426_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282431
  · exact small_9282426_right_covered
#print axioms cover_9282426

def root_9282425 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282425_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282425_right_fuel : Nat := 25
def small_9282425_right_count : Nat := 221
def small_9282425_right_encoded : String := "0F34D108000000040C9A87020F8750F90C9A86FA0F878CFB00000002028001000000000913D7ED0107800106128A4107000000030AD3577F10D13D080B4D44020000000510804CF9000000010DE7C9FA0000000500000009000000040000000900000006000000000F8750FB028001000000000913D7ED0107800106128A4107000000030AD3577F10D13D080B4D44020000000610804CF9000000010B4D43FA00000006000000090000000400000009000000060000000000000002000000010F878CF9000000010C9A86FA0F878CFB000000020280010013D7B1010000000007800106128A4107000000030AD3577F10D13D080DE7CA02000000050E6014F900000001000000080000000400000008128A7D07000000090000000313D7ED0107800106128A4107000000030AD3577F10D13D080DE7CA020E5FD8F90DE7C9FA000000080E5FD8FB03C001000000000900000008000000020000000100000008000000040000000800000008000000000F8750FB0280010013D7B1010000000007800106128A4107000000030AD3577F10D13D080DE7CA02000000090E6014F9000000010000000900000004000000090000000913D7ED0107800106128A4107000000030AD3577F10D13D080DE7CA020E5FD8F90B4D43FA10804CFB0000000203C001000000000913A54D010640010612FF7107000000030BE879BF1011AD080D412882000000060EFA4CF9000000010000000800000004000000080000000600000000108010FB03C001000000000913A54D010640010612FF7107000000030BE879BF1011AD080D412882000000060EFA4CF900000001000000090000000400000009000000060000000000000002000000010E6014F9000000010B4D43FA10804CFB0000000203C001000000000800000008108010FB03C0010013A51101000000000640010612FF7107000000030BE879BF1011AD080DAED879000000090000000900000004000000090000000913A54D010640010612FF7107000000030BE879BF1011AD080DAED8790E9661020AA6A27A00000008000000090000000100000008000000040000000812FFAD07000000080000000300000000000000020000000410D10108000000040DE7CA020000000900000008128A7D070AD3577F10D13D080DE7CA020E5FD8F900000006000000010E6014F900000001000000080000000400000009000000030000000000000002"
theorem small_9282425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282425_right_root small_9282425_right_fuel small_9282425_right_count small_9282425_right_encoded = true := by
  decide +kernel
theorem small_9282425_right_covered : CoveredBy scale carrier boxes small_9282425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282425_right_root small_9282425_right_fuel small_9282425_right_count small_9282425_right_encoded small_9282425_right_checked

theorem cover_9282425 : CoveredBy scale carrier boxes root_9282425 := by
  apply coveredBy_split_literal root_9282425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282426 small_9282425_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282426
  · exact small_9282425_right_covered
#print axioms cover_9282425

def root_9282419 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282419_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282419_left_fuel : Nat := 1
def small_9282419_left_count : Nat := 1
def small_9282419_left_encoded : String := "00000002"
theorem small_9282419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282419_left_root small_9282419_left_fuel small_9282419_left_count small_9282419_left_encoded = true := by
  decide +kernel
theorem small_9282419_left_covered : CoveredBy scale carrier boxes small_9282419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282419_left_root small_9282419_left_fuel small_9282419_left_count small_9282419_left_encoded small_9282419_left_checked

theorem cover_9282419 : CoveredBy scale carrier boxes root_9282419 := by
  apply coveredBy_split_literal root_9282419 small_9282419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282425 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9282419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282425
#print axioms cover_9282419

def root_9282418 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282418_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282418_right_fuel : Nat := 12
def small_9282418_right_count : Nat := 37
def small_9282418_right_encoded : String := "0F34D0FA0CFD9BFF0F350D080C9A8702000000050F878CF9000000010C9A8708000000050F878CFF00000004028001000000000513D7ED010780010600000005128A7D07000000080000000300000000000000040F34D108000000040C9A87020F8750F9028001000000000513D7ED0107800106000000050000000800000000000000010F878CF9000000010000000800000002"
theorem small_9282418_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282418_right_root small_9282418_right_fuel small_9282418_right_count small_9282418_right_encoded = true := by
  decide +kernel
theorem small_9282418_right_covered : CoveredBy scale carrier boxes small_9282418_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282418_right_root small_9282418_right_fuel small_9282418_right_count small_9282418_right_encoded small_9282418_right_checked

theorem cover_9282418 : CoveredBy scale carrier boxes root_9282418 := by
  apply coveredBy_split_literal root_9282418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282419 small_9282418_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282419
  · exact small_9282418_right_covered
#print axioms cover_9282418

def root_9282413 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282413_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282413_right_fuel : Nat := 1
def small_9282413_right_count : Nat := 1
def small_9282413_right_encoded : String := "00000001"
theorem small_9282413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282413_right_root small_9282413_right_fuel small_9282413_right_count small_9282413_right_encoded = true := by
  decide +kernel
theorem small_9282413_right_covered : CoveredBy scale carrier boxes small_9282413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282413_right_root small_9282413_right_fuel small_9282413_right_count small_9282413_right_encoded small_9282413_right_checked

theorem cover_9282413 : CoveredBy scale carrier boxes root_9282413 := by
  apply coveredBy_split_literal root_9282413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282418 small_9282413_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282418
  · exact small_9282413_right_covered
#print axioms cover_9282413

def root_9282412 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282412_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282412_right_fuel : Nat := 34
def small_9282412_right_count : Nat := 495
def small_9282412_right_encoded : String := "0F34D102000000010CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87080F8750FF028001000000000A13D7ED0107800106128A4107000000030AD3577910D13D020DE7C9FA000000050E5FD8FB0000000A00000002000000010000000A0000000A00000000000000040F878CFF000000040280010013D7B10100000000078001060000000A0000000A13D7ED0107800106128A4107000000030AD3577910D13D020DE7C9FA000000080E5FD8FB0DE7CA080E5FD8FF0000000A000000040000000800000002000000010000000800000008000000000F8750FB0C9A87080F8750FF0280010013D7B1010000000007800106128A4107000000030AD3577910D13D020000000A000000010000000A0000000A13D7ED0107800106128A4107000000030AD3577910D13D020B4D43FA10804CFB000000020B4D4408108010FF03C001000000000513A54D010000000A000000000000000410804CFF0000000403C001000000000A13A54D01064001060000000A0000000A00000000108010FB0B4D4408108010FF03C0010013A51101000000000000000A13A54D010640010612FF7107000000030000000600000007000000000000000410804CFF0000000403C0010013A5110100000000064001060000000A0000000A13A54D010640010612FF7107000000030BE879B91011AD020AA6A27A0000000A10ED70FB0BF3E58800000006100928FF0000000404600100000000070000000900000002000000010000000A12FFAD070BE879B91011AD020AA6A27A0000000A0000000700000001000000070000000300000000000000020000000110D10102000000010000000A128A7D070AD3577910D13D020B4D43FA10804CFB000000020B4D4408108010FF0000000A000000040000000A108010FB0B4D4408108010FF000000070000000410804CFF0000000403C001000000000713A54D0108C0010611FBE90700000003000000070000000700000000000000020000000110D10102000000010000000A0000000300000000000000040F878CFF000000040280010013D7B1010000000007800106128A4107000000030AD3577910D13D020B4D43FA0000000A108010FB0DE7CA080E5FD8FF0000000A000000040000000A00000002000000010000000A128A7D070AD3577910D13D020B4D43FA0000000A108010FB0DE7CA080E5FD8FF0000000A000000040000000A00000002000000010000000A0000000313D7ED0107800106128A4107000000030AD3577910D13D020B4D43FA10804CFB000000020DE7CA080E5FD8FF03C001000000000A13A54D010640010612FF7107000000030000000A0000000A00000000000000040E6014FF0000000403C001000000000800000008108010FB0DE7CA080E5FD8FF03C0010013A51101000000000640010612FF7107000000030000000A0000000A13A54D010640010612FF7107000000030BE879B91011AD020AA6A27A10EDACFB000000020D4128880EFA10FF0000000A000000040000000A10ED70FB0D4128880EFA10FF046001000000000A1384190105A00106000000060000000A00000000000000040EFA4CFF00000004046001000000000A1384190105A0010613313507000000030000000A0000000A00000000000000020000000110117102000000010000000A12FFAD070BE879B91011AD020AA6A27A10EDACFB000000020000000A10ED70FB0D4128880EFA10FF00000007000000040EFA4CFF00000004046001000000000A13841901000000080000000000000002000000010000000A0000000300000000000000040E6014FF0000000403C0010013A51101000000000640010612FF7107000000030BE879B91011AD020DAED87F0000000A0E9625080000000400000008000000010000000A12FFAD070BE879B91011AD020000000A00000001000000080000000313A54D010640010612FF7107000000030BE879B91011AD020DAED87F0E9661080AA6A27A0000000810ED70FB046001000000000A138419010000000800000000000000020000000400000008000000010000000812FFAD07000000080000000300000000000000020000000110D10102000000010B4D43FA00000008108010FB0DE7CA080E5FD8FF0000000A000000040000000800000002128A7D070AD3577910D13D020B4D43FA10804CFB000000020DE7CA080E5FD8FF03C0010000000008000000080000000400000008108010FB0DE7CA080E5FD8FF03C0010013A511010000000008C0010611FBE907000000030000000A0000000A13A54D0108C0010611FBE907000000030BE879B91011AD020AA6A27A000000080000000700000001000000080000000500000000000000040E6014FF0000000400000008000000020000000110D101020000000100000008000000030000000000000002000000040F34D108000000040C9A86FA000000080F8750FB0280010013D7B1010000000007800106128A4107000000030AD3577910D13D020AD3577F10D13D080B4D43FA00000008108010FB014001000000000913F6150100000008000000000000000200000004000000080000000100000008128A7D07000000080000000313D7ED0107800106128A4107000000030AD3577900000008000000080000000800000000000000020F34D0FA0CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF0000000400000008000000040000000800000002"
theorem small_9282412_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282412_right_root small_9282412_right_fuel small_9282412_right_count small_9282412_right_encoded = true := by
  decide +kernel
theorem small_9282412_right_covered : CoveredBy scale carrier boxes small_9282412_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282412_right_root small_9282412_right_fuel small_9282412_right_count small_9282412_right_encoded small_9282412_right_checked

theorem cover_9282412 : CoveredBy scale carrier boxes root_9282412 := by
  apply coveredBy_split_literal root_9282412 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282413 small_9282412_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282413
  · exact small_9282412_right_covered
#print axioms cover_9282412

def root_9282407 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282407_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9282407_right_fuel : Nat := 1
def small_9282407_right_count : Nat := 1
def small_9282407_right_encoded : String := "00000003"
theorem small_9282407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9282407_right_root small_9282407_right_fuel small_9282407_right_count small_9282407_right_encoded = true := by
  decide +kernel
theorem small_9282407_right_covered : CoveredBy scale carrier boxes small_9282407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9282407_right_root small_9282407_right_fuel small_9282407_right_count small_9282407_right_encoded small_9282407_right_checked

theorem cover_9282407 : CoveredBy scale carrier boxes root_9282407 := by
  apply coveredBy_split_literal root_9282407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282412 small_9282407_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282412
  · exact small_9282407_right_covered
#print axioms cover_9282407

def root_9280199 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9280199 : CoveredBy scale carrier boxes root_9280199 := by
  apply coveredBy_split_literal root_9280199 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3475.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9282407 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3475.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9282407
#print axioms cover_9280199

def root_9280193 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9280193_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9280193_left_fuel : Nat := 1
def small_9280193_left_count : Nat := 1
def small_9280193_left_encoded : String := "00000000"
theorem small_9280193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9280193_left_root small_9280193_left_fuel small_9280193_left_count small_9280193_left_encoded = true := by
  decide +kernel
theorem small_9280193_left_covered : CoveredBy scale carrier boxes small_9280193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9280193_left_root small_9280193_left_fuel small_9280193_left_count small_9280193_left_encoded small_9280193_left_checked

theorem cover_9280193 : CoveredBy scale carrier boxes root_9280193 := by
  apply coveredBy_split_literal root_9280193 small_9280193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9280199 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9280193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9280199
#print axioms cover_9280193

def root_9288073 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288073_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288073_left_fuel : Nat := 29
def small_9288073_left_count : Nat := 483
def small_9288073_left_encoded : String := "0F8750F90C9A86FA0F878CFB000000020C9A87080F8750FF0780010000000005128A7D01028001060000000513D7ED070B4D44020000000510804CF9000000010DE7C9FA00000005000000090000000300000000000000040F878CFF0000000407800100128A41010000000000000005128A7D010280010613D7B107000000030B4D44020000000510804CF9000000010000000513D7ED070B4D4402108010F90DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7CA080E5FD8FF08C001000000000511FC250103C00106000000050000000A00000000000000040E6014FF0000000408C001000000000500000007000000020000000110804CF9000000010DE7C9FA0E6014FB000000020DE7CA08000000050E6014FF00000004000000070E5FD8FB0DE7CA080E5FD8FF08C001000000000500000009000000040E6014FF0000000408C0010011FBE9010000000000000007000000070000000200000003000000000F8750FB0C9A87080F8750FF07800100128A410100000000028001060000000513D7ED070B4D44020000000510804CF9000000010B4D43FA000000050000000800000003128A7D010280010613D7B107000000030B4D4402000000050000000913D7ED070B4D4402108010F90B4D43FA10804CFB000000020B4D44080000000510804CFF0000000408C001000000000500000009108010FB00000008000000020000000110804CF9000000010B4D43FA00000009108010FB00000009000000020000000300000000000000040F878CFF0000000407800100128A4101000000000280010613D7B107000000030B4D44020000000510804CF9000000010B4D43FA00000005108010FB0DE7CA08000000050E6014FF00000004000000050000000213D7ED070B4D4402108010F90B4D43FA10804CFB000000020DE7CA08000000050E6014FF0000000400000005108010FB0DE7CA080E5FD8FF00000008000000040E6014FF000000040640010012FF7101000000000000000512FFAD010000000A00000000000000020000000110804CF9000000010B4D43FA10804CFB000000020DE7CA08000000050E6014FF00000004064001000000000512FFAD0103C001060000000513A54D070DAED87F0E9661080BF3E58200000005100928F9000000010BF3E57A000000051008ECFB06E00100000000050000000700000002000000040E96250800000004000000070000000300000000108010FB0DE7CA080E5FD8FF0640010012FF7101000000000000000812FFAD0103C0010613A51107000000030BF3E58200000005100928F9000000010000000513A54D070BF3E5821008ECF90000000800000001100928F9000000010AA6A27A10EDACFB000000020D412888000000050EFA4CFF000000040000000A0000000A0000000300000000000000040E6014FF000000040640010012FF71010000000003C001060000000513A54D070DAED87F0E9661080BF3E58200000005100928F9000000010AA6A27A0000000510ED70FB05A00100000000050000000A00000002000000040E962508000000040BF3E5821008ECF90AA6A27A000000050000000A00000001100928F9000000010AA6A27A10EDACFB0000000205A00100000000050000000710ED70FB05A0010013313501000000000460010600000005000000060000000A000000020000000312FFAD0103C0010613A51107000000030DAED87F0E9661080BF3E582000000050000000A000000040000000A13A54D070DAED87F0E9661080BF3E5820000000A100928F9000000010AA6A27A10EDACFB000000020000000A0000000A000000040E962508000000040BF3E5820000000A0000000A00000003000000000000000200000003128A7D010280010613D7B107000000030B4D4402108010F90B4D43FA10804CFB000000020DE7CA0800000005000000070000000A0000000110804CF9000000010B4D43FA10804CFB000000020DE7CA080E5FD8FF00000009000000040E6014FF0000000400000007108010FB0DE7CA080000000A0E6014FF0000000408C0010011FBE9010000000000000007000000070000000213D7ED070B4D4402108010F90B4D43FA10804CFB000000020DE7CA080E5FD8FF08C0010011FBE901000000000000000A0000000A000000040E6014FF0000000408C0010011FBE901000000000000000A0000000A108010FB0DE7CA080000000A0E6014FF000000040000000A000000020000000110804CF9000000010B4D43FA10804CFB000000020DE7CA080E5FD8FF08C0010011FBE9010000000003C0010613A51107000000030000000513A54D070BF3E5821008ECF90000000A00000001100928F9000000010BF3E57A00000009000000090000000300000009000000040E6014FF0000000408C0010011FBE9010000000003C001060000000713A54D070DAED87F0E9661080BF3E5820000000A100928F9000000010BF3E57A000000070000000A000000040E96250800000004000000070000000311FC250103C00106000000070000000A00000000108010FB0DE7CA080E5FD8FF08C0010011FBE9010000000003C001060000000A0000000A00000009000000040E6014FF0000000408C0010011FBE9010000000003C001060000000A0000000A0000000A0000000200000003000000000000000200000001"
theorem small_9288073_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288073_left_root small_9288073_left_fuel small_9288073_left_count small_9288073_left_encoded = true := by
  decide +kernel
theorem small_9288073_left_covered : CoveredBy scale carrier boxes small_9288073_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288073_left_root small_9288073_left_fuel small_9288073_left_count small_9288073_left_encoded small_9288073_left_checked

theorem cover_9288073 : CoveredBy scale carrier boxes root_9288073 := by
  apply coveredBy_split_literal root_9288073 small_9288073_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3477.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9288073_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3477.covered
#print axioms cover_9288073

def root_9288068 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288068_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288068_right_fuel : Nat := 1
def small_9288068_right_count : Nat := 1
def small_9288068_right_encoded : String := "00000004"
theorem small_9288068_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288068_right_root small_9288068_right_fuel small_9288068_right_count small_9288068_right_encoded = true := by
  decide +kernel
theorem small_9288068_right_covered : CoveredBy scale carrier boxes small_9288068_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288068_right_root small_9288068_right_fuel small_9288068_right_count small_9288068_right_encoded small_9288068_right_checked

theorem cover_9288068 : CoveredBy scale carrier boxes root_9288068 := by
  apply coveredBy_split_literal root_9288068 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288073 small_9288068_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288073
  · exact small_9288068_right_covered
#print axioms cover_9288068

def root_9288067 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288067_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288067_right_fuel : Nat := 29
def small_9288067_right_count : Nat := 415
def small_9288067_right_encoded : String := "0F34D108000000040C9A87020F8750F90C9A86FA0F878CFB0000000207800100128A410100000000028001060000000513D7ED070AD3577F10D13D080B4D44020000000500000007000000040000000700000003000000070F8750FB07800100128A4101000000000280010613D7B107000000030AD3577F10D13D0800000007000000040000000713D7ED070AD3577F10D13D080B4D4402108010F90B4D43FA10804CFB00000002064001000000000500000007108010FB0640010012FF71010000000003C00106000000070000000612FFAD0103C00106000000070000000A00000000000000020000000110804CF9000000010B4D43FA10804CFB000000020640010012FF7101000000000000000700000007108010FB0640010012FF71010000000003C001060000000713A54D070BE879BF1011AD080BF3E5821008ECF90000000600000001100928F9000000010AA6A27A0000000710ED70FB05A0010000000006000000070000000200000004000000070000000312FFAD0103C001060000000713A54D070BE879BF1011AD080BF3E5820000000A0000000A00000004000000070000000300000000000000020000000410D10108000000040000000700000003128A7D010280010613D7B107000000030000000713D7ED070AD3577F10D13D080B4D4402108010F90B4D43FA10804CFB00000002000000070000000A0000000110804CF9000000010B4D43FA10804CFB0000000200000007108010FB08C0010011FBE9010000000003C00106000000070000000A0000000A000000020000000410D101080000000400000007000000030000000000000002000000010F878CF9000000010C9A86FA0F878CFB0000000207800100128A410100000000028001060000000713D7ED070AD3577F10D13D080DE7CA020E5FD8F90DE7C9FA000000070E5FD8FB00000007000000020000000100000008000000040000000700000003128A7D01028001060000000700000008000000000F8750FB07800100128A4101000000000280010613D7B107000000030AD3577F10D13D080DE7CA020E5FD8F900000007000000010E6014F9000000010B4D43FA00000007108010FB0000000700000002000000040000000713D7ED070AD3577F10D13D080DE7CA020E5FD8F90B4D43FA10804CFB000000020640010012FF7101000000000000000700000007108010FB0640010012FF71010000000003C001060000000713A54D070BE879BF1011AD080D4128820EFA10F90AA6A27A0000000710ED70FB05A00100000000070000000700000002000000010EFA4CF9000000010AA6A27A0000000710ED70FB05A001001331350100000000000000070000000700000002000000041011710800000004000000070000000312FFAD0103C001060000000713A54D070BE879BF1011AD080D4128820EFA10F90AA6A27A0000000710ED70FB0000000700000002000000010EFA4CF9000000010AA6A27A0000000710ED70FB06E001000000000700000007000000020000000400000007000000030000000000000002000000010E6014F9000000010B4D43FA10804CFB00000002064001000000000800000008108010FB0640010012FF71010000000003C0010613A51107000000030BE879BF1011AD080DAED879000000070E9625020000000100000007000000040000000713A54D070BE879BF1011AD080DAED8790E9661020AA6A27A0000000810ED70FB05A00100133135010000000004600106000000070000000813317101000000080000000000000002000000010000000800000004000000080000000312FFAD0103C0010613A51107000000030BE879BF1011AD080000000700000004000000070000000800000000000000020000000410D10108000000040DE7CA020E5FD8F900000007000000010000000800000003128A7D010280010613D7B107000000030AD3577F10D13D080DE7CA020E5FD8F900000007000000010E6014F9000000010B4D43FA00000007108010FB0000000700000002000000040000000713D7ED070AD3577F10D13D080DE7CA020E5FD8F90B4D43FA10804CFB0000000208C001000000000800000007108010FB08C0010011FBE9010000000003C001060000000713A54D070BE879BF1011AD080D4128820EFA10F90000000A000000010EFA4CF9000000010000000800000004000000070000000311FC250103C0010600000007000000050000000000000002000000010E6014F900000001000000080000000410D101080000000400000008000000030000000000000002"
theorem small_9288067_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288067_right_root small_9288067_right_fuel small_9288067_right_count small_9288067_right_encoded = true := by
  decide +kernel
theorem small_9288067_right_covered : CoveredBy scale carrier boxes small_9288067_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288067_right_root small_9288067_right_fuel small_9288067_right_count small_9288067_right_encoded small_9288067_right_checked

theorem cover_9288067 : CoveredBy scale carrier boxes root_9288067 := by
  apply coveredBy_split_literal root_9288067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288068 small_9288067_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288068
  · exact small_9288067_right_covered
#print axioms cover_9288067

def root_9288061 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288061_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288061_left_fuel : Nat := 1
def small_9288061_left_count : Nat := 1
def small_9288061_left_encoded : String := "00000002"
theorem small_9288061_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288061_left_root small_9288061_left_fuel small_9288061_left_count small_9288061_left_encoded = true := by
  decide +kernel
theorem small_9288061_left_covered : CoveredBy scale carrier boxes small_9288061_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288061_left_root small_9288061_left_fuel small_9288061_left_count small_9288061_left_encoded small_9288061_left_checked

theorem cover_9288061 : CoveredBy scale carrier boxes root_9288061 := by
  apply coveredBy_split_literal root_9288061 small_9288061_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288067 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9288061_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288067
#print axioms cover_9288061

def root_9288060 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288060_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288060_right_fuel : Nat := 11
def small_9288060_right_count : Nat := 29
def small_9288060_right_encoded : String := "0F34D0FA0CFD9BFF0F350D080C9A8702000000050F878CF9000000010C9A8708000000050F878CFF000000040780010000000005128A7D0102800106000000050000000800000000000000040F34D108000000040C9A87020F8750F900000007000000010F878CF9000000010000000800000002"
theorem small_9288060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288060_right_root small_9288060_right_fuel small_9288060_right_count small_9288060_right_encoded = true := by
  decide +kernel
theorem small_9288060_right_covered : CoveredBy scale carrier boxes small_9288060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288060_right_root small_9288060_right_fuel small_9288060_right_count small_9288060_right_encoded small_9288060_right_checked

theorem cover_9288060 : CoveredBy scale carrier boxes root_9288060 := by
  apply coveredBy_split_literal root_9288060 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288061 small_9288060_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288061
  · exact small_9288060_right_covered
#print axioms cover_9288060

def root_9288055 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288055_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288055_right_fuel : Nat := 1
def small_9288055_right_count : Nat := 1
def small_9288055_right_encoded : String := "00000001"
theorem small_9288055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288055_right_root small_9288055_right_fuel small_9288055_right_count small_9288055_right_encoded = true := by
  decide +kernel
theorem small_9288055_right_covered : CoveredBy scale carrier boxes small_9288055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288055_right_root small_9288055_right_fuel small_9288055_right_count small_9288055_right_encoded small_9288055_right_checked

theorem cover_9288055 : CoveredBy scale carrier boxes root_9288055 := by
  apply coveredBy_split_literal root_9288055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288060 small_9288055_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288060
  · exact small_9288055_right_covered
#print axioms cover_9288055

def root_9288054 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288054_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288054_right_fuel : Nat := 29
def small_9288054_right_count : Nat := 277
def small_9288054_right_encoded : String := "0F34D102000000010CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87080F8750FF07800100128A410100000000028001060000000513D7ED070AD3577910D13D020DE7C9FA000000050000000600000001000000060000000300000009000000040F878CFF0000000407800100128A4101000000000280010613D7B107000000030AD3577910D13D020DE7C9FA0000000500000006000000010000000613D7ED070AD3577910D13D020DE7C9FA000000080E5FD8FB0DE7CA080E5FD8FF0640010012FF71010000000003C00106000000050000000800000008000000040000000800000002000000010000000800000003128A7D01028001060000000600000008000000000F8750FB0C9A87080F8750FF07800100128A410100000000028001060000000613D7ED070AD3577910D13D020B4D43FA000000090000000600000001000000060000000300000006000000040F878CFF0000000407800100128A4101000000000280010613D7B107000000030AD3577910D13D020B4D43FA10804CFB000000020000000600000006000000010000000613D7ED070AD3577910D13D020B4D43FA10804CFB000000020DE7CA080E5FD8FF0640010012FF71010000000003C001060000000613A54D070BE879B91011AD020BF3E57A000000090000000600000001000000060000000300000009000000040E6014FF00000004064001000000000800000008108010FB0DE7CA080E5FD8FF0640010012FF71010000000003C001060000000613A54D070BE879B91011AD020AA6A27A000000090000000600000001000000060000000300000006000000040E6014FF000000040640010012FF71010000000003C0010613A51107000000030BE879B91011AD020DAED87F0000000600000006000000010000000613A54D070BE879B91011AD020DAED87F0E9661080AA6A27A0000000800000006000000040000000800000001000000080000000312FFAD0103C00106000000060000000800000000000000020000000110D10102000000010B4D43FA000000080000000600000003128A7D01028001060000000613D7ED070AD3577910D13D020B4D43FA10804CFB000000020DE7CA080000000600000008108010FB0DE7CA08000000060E6014FF0000000400000006000000020000000100000006000000030000000000000002000000040F34D108000000040C9A86FA000000080F8750FB07800100128A4101000000000280010613D7B107000000030AD3577910D13D020AD3577F10D13D080B4D43FA00000007108010FB0640010012FF7101000000000000000700000007000000020000000400000007000000010000000813D7ED070AD35779000000080000000800000003128A7D0102800106000000080000000800000000000000020F34D0FA0CFD9BFF0F350D080C9A87080F8750FF0780010000000005128A7D0102800106000000050000000800000000000000040F878CFF0000000400000008000000040000000800000002"
theorem small_9288054_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288054_right_root small_9288054_right_fuel small_9288054_right_count small_9288054_right_encoded = true := by
  decide +kernel
theorem small_9288054_right_covered : CoveredBy scale carrier boxes small_9288054_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288054_right_root small_9288054_right_fuel small_9288054_right_count small_9288054_right_encoded small_9288054_right_checked

theorem cover_9288054 : CoveredBy scale carrier boxes root_9288054 := by
  apply coveredBy_split_literal root_9288054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288055 small_9288054_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288055
  · exact small_9288054_right_covered
#print axioms cover_9288054

def root_9288048 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288048_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9288048_left_fuel : Nat := 1
def small_9288048_left_count : Nat := 1
def small_9288048_left_encoded : String := "00000003"
theorem small_9288048_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9288048_left_root small_9288048_left_fuel small_9288048_left_count small_9288048_left_encoded = true := by
  decide +kernel
theorem small_9288048_left_covered : CoveredBy scale carrier boxes small_9288048_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9288048_left_root small_9288048_left_fuel small_9288048_left_count small_9288048_left_encoded small_9288048_left_checked

theorem cover_9288048 : CoveredBy scale carrier boxes root_9288048 := by
  apply coveredBy_split_literal root_9288048 small_9288048_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9288054 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9288048_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9288054
#print axioms cover_9288048

def root_9293407 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9293407 : CoveredBy scale carrier boxes root_9293407 := by
  apply coveredBy_split_literal root_9293407 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3478.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3479.root coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3478.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3479.covered
#print axioms cover_9293407

def root_9293402 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293402_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293402_right_fuel : Nat := 1
def small_9293402_right_count : Nat := 1
def small_9293402_right_encoded : String := "00000001"
theorem small_9293402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9293402_right_root small_9293402_right_fuel small_9293402_right_count small_9293402_right_encoded = true := by
  decide +kernel
theorem small_9293402_right_covered : CoveredBy scale carrier boxes small_9293402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9293402_right_root small_9293402_right_fuel small_9293402_right_count small_9293402_right_encoded small_9293402_right_checked

theorem cover_9293402 : CoveredBy scale carrier boxes root_9293402 := by
  apply coveredBy_split_literal root_9293402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9293407 small_9293402_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9293407
  · exact small_9293402_right_covered
#print axioms cover_9293402

def root_9299912 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(-13027072), (-12058112)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9299912 : CoveredBy scale carrier boxes root_9299912 := by
  apply coveredBy_split_literal root_9299912 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3482.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3483.root coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3482.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3483.covered
#print axioms cover_9299912

def root_9299907 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299907_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(-12058112), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299907_right_fuel : Nat := 1
def small_9299907_right_count : Nat := 1
def small_9299907_right_encoded : String := "00000001"
theorem small_9299907_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9299907_right_root small_9299907_right_fuel small_9299907_right_count small_9299907_right_encoded = true := by
  decide +kernel
theorem small_9299907_right_covered : CoveredBy scale carrier boxes small_9299907_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9299907_right_root small_9299907_right_fuel small_9299907_right_count small_9299907_right_encoded small_9299907_right_checked

theorem cover_9299907 : CoveredBy scale carrier boxes root_9299907 := by
  apply coveredBy_split_literal root_9299907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9299912 small_9299907_right_root coord1 true (-12058112)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9299912
  · exact small_9299907_right_covered
#print axioms cover_9299907

def root_9299906 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9299906 : CoveredBy scale carrier boxes root_9299906 := by
  apply coveredBy_split_literal root_9299906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9299907 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3484.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9299907
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3484.covered
#print axioms cover_9299906

def root_9299900 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299900_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299900_left_fuel : Nat := 1
def small_9299900_left_count : Nat := 1
def small_9299900_left_encoded : String := "00000003"
theorem small_9299900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9299900_left_root small_9299900_left_fuel small_9299900_left_count small_9299900_left_encoded = true := by
  decide +kernel
theorem small_9299900_left_covered : CoveredBy scale carrier boxes small_9299900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9299900_left_root small_9299900_left_fuel small_9299900_left_count small_9299900_left_encoded small_9299900_left_checked

theorem cover_9299900 : CoveredBy scale carrier boxes root_9299900 := by
  apply coveredBy_split_literal root_9299900 small_9299900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9299906 coord3 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9299900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9299906
#print axioms cover_9299900

def root_9299899 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299899_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299899_right_fuel : Nat := 20
def small_9299899_right_count : Nat := 217
def small_9299899_right_encoded : String := "128A7D070DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7CA080E5FD8FF0640010012FF71010000000008C0010611FBE907000000030D412882000000060EFA4CF9000000010BF3E57A000000061008ECFB00000006000000020000000612FFAD0108C0010611FBE907000000030D4128820EFA10F90BF3E57A000000061008ECFB0000000600000002000000010EFA4CF9000000010BF3E57A000000081008ECFB0D4128880EFA10FF06E001000000000712C821010000000800000000000000040EFA4CFF00000004000000060000000211FC2507000000060000000300000000000000040E6014FF000000040640010012FF7101000000000000000612FFAD010000000800000000108010FB0DE7CA080E5FD8FF0640010012FF71010000000008C0010611FBE907000000030D4128820EFA10F900000006000000010EFA4CF9000000010AA6A27A10EDACFB000000020D4128880EFA10FF00000006000000040000000610ED70FB0D4128880000000700000006000000020000000612FFAD0108C0010611FBE907000000030D4128820EFA10F90AA6A27A0000000600000005000000010EFA4CF9000000010AA6A27A10EDACFB000000020D4128880EFA10FF000000050000000400000005000000050000000500000000000000040E6014FF000000040640010012FF71010000000008C0010611FBE9070000000300000006000000050000000500000002000000010E6014F9000000010B4D43FA10804CFB000000020DE7CA080E5FD8FF0640010012FF71010000000008C0010611FBE907000000030DAED8790E9661020BF3E57A000000081008ECFB0D4128880EFA10FF05A001000000000700000008000000040000000800000002000000010000000811FC2507000000080000000312FFAD010000000800000000000000040E6014FF0000000400000008108010FB0DE7CA080E5FD8FF0640010012FF71010000000008C0010611FBE907000000030DAED8790E9661020AA6A27A10EDACFB000000020D4128880EFA10FF00000007000000040EFA4CFF0000000405A00100000000070000000510ED70FB0D412888000000070000000500000002000000010E962502000000010AA6A27A10EDACFB000000020D4128880EFA10FF00000007000000040000000500000005000000050000000500000004000000050000000200000003"
theorem small_9299899_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9299899_right_root small_9299899_right_fuel small_9299899_right_count small_9299899_right_encoded = true := by
  decide +kernel
theorem small_9299899_right_covered : CoveredBy scale carrier boxes small_9299899_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9299899_right_root small_9299899_right_fuel small_9299899_right_count small_9299899_right_encoded small_9299899_right_checked

theorem cover_9299899 : CoveredBy scale carrier boxes root_9299899 := by
  apply coveredBy_split_literal root_9299899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9299900 small_9299899_right_root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9299900
  · exact small_9299899_right_covered
#print axioms cover_9299899

def root_9299893 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299893_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299893_left_fuel : Nat := 1
def small_9299893_left_count : Nat := 1
def small_9299893_left_encoded : String := "00000000"
theorem small_9299893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9299893_left_root small_9299893_left_fuel small_9299893_left_count small_9299893_left_encoded = true := by
  decide +kernel
theorem small_9299893_left_covered : CoveredBy scale carrier boxes small_9299893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9299893_left_root small_9299893_left_fuel small_9299893_left_count small_9299893_left_encoded small_9299893_left_checked

theorem cover_9299893 : CoveredBy scale carrier boxes root_9299893 := by
  apply coveredBy_split_literal root_9299893 small_9299893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9299899 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9299893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9299899
#print axioms cover_9299893

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222

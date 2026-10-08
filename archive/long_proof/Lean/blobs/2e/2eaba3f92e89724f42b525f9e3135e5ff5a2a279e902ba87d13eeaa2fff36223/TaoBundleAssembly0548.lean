import TaoBundleAssembly0546
import TaoBundleAssembly0547
import TaoBundleChunkBatch0747
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548
def root_7956681 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956681_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956681_right_fuel : Nat := 21
def small_7956681_right_count : Nat := 277
def small_7956681_right_encoded : String := "1386AD000CFD9BFF0F350D080C9A87080F8750FF078000F8000000080000000A000000040F878CFF00000004078000F8128A7CF900000001078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000DE7CA080E5FD8FF00000008000000040E6014FF0000000408C000F80000000811FBE8F908C000FA11FC24FB000000020000000500000008000000010000000813D7ED07067ECE8112EA5900000000000DE7CA080000000A0E6014FF0000000408C000F811FC24F90000000108C000FA11FC24FB0000000203C0010600000005000000080000000811FBE8F90000000A000000010000000A00000003128A40FB02800106000000080000000800000002128A40F9078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000DE7CA080000000A0E6014FF00000004064000F812FFACF90000000108C000FA11FC24FB000000020000000A0000000A0000000A0000000A0000000A128A40FB0280010613D7B10700000003067ECE8112EA59000000000000000008000000080000000A0000000200000001000000040F34D10800000004078000F8128A7CF900000001078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D0808C000F80000000911FBE8F908C000FA00000007000000090000000100000004000000090000000913D7ED07067ECE8112EA5900000000000AD3577F10D13D0808C000F80000000911FBE8F900000009000000010000000400000009000000090000000300000009128A40F9078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D08064000F812FFACF90000000108C000FA0000000711FBE8FB014001060000000713F615070569AC410000000700000007000000030000000212FF70F9000000070000000100000004000000070000000713D7ED07067ECE8112EA5900000000000AD3577F10D13D08064000F812FFACF90000000108C000FA11FC24FB000000020000000A0000000A0000000A0000000410D1010800000004064000F80000000912FF70F9000000070000000112EA95000AD3577F0000000A000000090000000000000003128A40FB0280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D08064000F812FFACF900000001064000FA12FFACFB000000020140010613F5D907000000030569AC410000000900000007000000090000000912FF70F9064000FA12FFACFB0000000201400106000000070000000A12FF70FB0140010613F5D90700000003000000080000000A00000002000000010000000410D10108000000040000000912EA95000AD3577F10D13D08064000F8000000080000000A00000004000000090000000013D7ED07067ECE8112EA5900000000000AD3577F10D13D08064000F8000000090000000A000000040000000912EA9500000000090000000000000003000000020000000100000000"
theorem small_7956681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956681_right_root small_7956681_right_fuel small_7956681_right_count small_7956681_right_encoded = true := by
  decide +kernel
theorem small_7956681_right_covered : CoveredBy scale carrier boxes small_7956681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956681_right_root small_7956681_right_fuel small_7956681_right_count small_7956681_right_encoded small_7956681_right_checked

theorem cover_7956681 : CoveredBy scale carrier boxes root_7956681 := by
  apply coveredBy_split_literal root_7956681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0547.root_7956682 small_7956681_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0547.cover_7956682
  · exact small_7956681_right_covered
#print axioms cover_7956681

def root_7956675 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956675_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956675_left_fuel : Nat := 1
def small_7956675_left_count : Nat := 1
def small_7956675_left_encoded : String := "00000003"
theorem small_7956675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956675_left_root small_7956675_left_fuel small_7956675_left_count small_7956675_left_encoded = true := by
  decide +kernel
theorem small_7956675_left_covered : CoveredBy scale carrier boxes small_7956675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956675_left_root small_7956675_left_fuel small_7956675_left_count small_7956675_left_encoded small_7956675_left_checked

theorem cover_7956675 : CoveredBy scale carrier boxes root_7956675 := by
  apply coveredBy_split_literal root_7956675 small_7956675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956681 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7956675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956681
#print axioms cover_7956675

def root_7956674 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7956674 : CoveredBy scale carrier boxes root_7956674 := by
  apply coveredBy_split_literal root_7956674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956675 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2987.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956675
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2987.covered
#print axioms cover_7956674

def root_7956668 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956668_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956668_left_fuel : Nat := 1
def small_7956668_left_count : Nat := 1
def small_7956668_left_encoded : String := "00000002"
theorem small_7956668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956668_left_root small_7956668_left_fuel small_7956668_left_count small_7956668_left_encoded = true := by
  decide +kernel
theorem small_7956668_left_covered : CoveredBy scale carrier boxes small_7956668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956668_left_root small_7956668_left_fuel small_7956668_left_count small_7956668_left_encoded small_7956668_left_checked

theorem cover_7956668 : CoveredBy scale carrier boxes root_7956668 := by
  apply coveredBy_split_literal root_7956668 small_7956668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956674 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7956668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956674
#print axioms cover_7956668

def root_7956667 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956667_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956667_right_fuel : Nat := 19
def small_7956667_right_count : Nat := 159
def small_7956667_right_encoded : String := "135D44FB05000106135D45070000000304548A0113867100000000000CFD9BFF0F350D080C9A87080F8750FF078000F800000008128A40F90000000800000001000000040F878CFF00000004078000F8128A7CF900000001028000FA13D7ECFB000000020280010613D7B10700000003022A4581000000060000000813D7ED07022A458113E1C500000000000DE7CA080000000800000005000000080000000300000008128A40F9028000FA13D7ECFB000000020280010600000006000000050000000500000001000000040F34D10800000004078000F8128A7CF900000001028000FA13D7ECFB000000020000000900000009128A40F9028000FA13D7ECFB000000020280010613D7B10700000003022A45810000000613E201000AD3577F10D13D08000000060000000400000009000000000000000500000005000000011386AD000CFD9BFF0F350D080C9A8708000000080F878CFF00000004078000F800000008128A40F90000000800000001000000040F34D10800000004078000F800000009128A40F9028000FA13D7ECFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D080000000800000004000000090000000913D7ED07067ECE81000000090000000900000003000000090000000100000000135D810704548A0113867100000000000CFD9BFF0F350D080C9A87080F8750FF078000F8128A7CF90000000100000007000000050000000400000005000000040F34D10800000004000000051386AD000CFD9BFF0F350D080C9A87080000000A0F878CFF00000004078000F8128A7CF900000001000000080000000A000000040F34D1080000000400000009000000000000000300000002"
theorem small_7956667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956667_right_root small_7956667_right_fuel small_7956667_right_count small_7956667_right_encoded = true := by
  decide +kernel
theorem small_7956667_right_covered : CoveredBy scale carrier boxes small_7956667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956667_right_root small_7956667_right_fuel small_7956667_right_count small_7956667_right_encoded small_7956667_right_checked

theorem cover_7956667 : CoveredBy scale carrier boxes root_7956667 := by
  apply coveredBy_split_literal root_7956667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956668 small_7956667_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956668
  · exact small_7956667_right_covered
#print axioms cover_7956667

def root_7956661 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956661_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956661_left_fuel : Nat := 1
def small_7956661_left_count : Nat := 1
def small_7956661_left_encoded : String := "00000001"
theorem small_7956661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956661_left_root small_7956661_left_fuel small_7956661_left_count small_7956661_left_encoded = true := by
  decide +kernel
theorem small_7956661_left_covered : CoveredBy scale carrier boxes small_7956661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956661_left_root small_7956661_left_fuel small_7956661_left_count small_7956661_left_encoded small_7956661_left_checked

theorem cover_7956661 : CoveredBy scale carrier boxes root_7956661 := by
  apply coveredBy_split_literal root_7956661 small_7956661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956667 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7956661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956667
#print axioms cover_7956661

def root_7956660 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956660_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956660_right_fuel : Nat := 23
def small_7956660_right_count : Nat := 285
def small_7956660_right_encoded : String := "135D44F9050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000CFD9BFF0F350D080C9A87080F8750FF00000009000000040F878CFF00000004028000F813D7ECF900000001078000FA128A7CFB000000020280010613D7B10700000003022A4581000000060000000A13D7ED07022A4581000000090000000A00000003128A40FB0280010600000006000000050000000213D7B0F9078000FA000000090000000500000001000000040F34D10800000004028000F813D7ECF900000001078000FA128A7CFB000000020280010613D7B10700000003022A458113E1C500000000000AD3577F10D13D080000000600000004000000060000000713D7ED07022A458113E1C500000000000AD3577F0000000510D10108000000040000000513E201000AD3577F10D13D0803C000F813A54CF90000000108C000FA0000000A00000005000000050000000410D1010800000004000000070000000000000003128A40FB0280010613D7B10700000003022A45810000000613E201000AD3577F10D13D08000000060000000410D10108000000040000000500000000000000050000000213D7B0F9078000FA128A7CFB000000020280010613D7B10700000003022A458100000006000000070000000500000005000000011386AD000CFD9BFF0F350D080000000A000000040F34D10800000004028000F813D7ECF900000001078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA590000000000000000070000000713D7ED07067ECE8112EA5900000000000000000A0000000A00000003128A40FB0280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D0803C000F813A54CF900000001064000FA0000000A0000000A0000000A0000000410D10108000000040000000712EA95000AD3577F0000000A10D1010800000004000000070000000013D7ED07067ECE8112EA5900000000000AD3577F0000000510D1010800000004000000050000000A000000030000000213D7B0F9078000FA128A7CFB0000000202800106000000070000000A128A40FB0280010613D7B10700000003067ECE8112EA5900000000000000000A0000000A00000005000000020000000100000000135D810704548A0113867100000000000CFD9BFF0F350D080000000A000000040F34D10800000004000000051386AD000CFD9BFF0F350D080000000A000000040000000A0000000000000003135D44FB05000106135D45070000000304548A0113867100000000000CFD9BFF0F350D080C9A87080000000600000005000000040F34D10800000004000000051386AD000CFD9BFF0F350D080000000A000000040F34D10800000004028000F813D7ECF900000001028000FA13D7ECFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F0000000510D10108000000040000000512EA95000AD3577F0000000810D1010800000004000000090000000000000005000000050000000500000000135D810704548A01000000050000000A000000030000000200000001"
theorem small_7956660_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956660_right_root small_7956660_right_fuel small_7956660_right_count small_7956660_right_encoded = true := by
  decide +kernel
theorem small_7956660_right_covered : CoveredBy scale carrier boxes small_7956660_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956660_right_root small_7956660_right_fuel small_7956660_right_count small_7956660_right_encoded small_7956660_right_checked

theorem cover_7956660 : CoveredBy scale carrier boxes root_7956660 := by
  apply coveredBy_split_literal root_7956660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956661 small_7956660_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956661
  · exact small_7956660_right_covered
#print axioms cover_7956660

def root_7956655 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956655_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956655_right_fuel : Nat := 1
def small_7956655_right_count : Nat := 1
def small_7956655_right_encoded : String := "00000004"
theorem small_7956655_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956655_right_root small_7956655_right_fuel small_7956655_right_count small_7956655_right_encoded = true := by
  decide +kernel
theorem small_7956655_right_covered : CoveredBy scale carrier boxes small_7956655_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956655_right_root small_7956655_right_fuel small_7956655_right_count small_7956655_right_encoded small_7956655_right_checked

theorem cover_7956655 : CoveredBy scale carrier boxes root_7956655 := by
  apply coveredBy_split_literal root_7956655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956660 small_7956655_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956660
  · exact small_7956655_right_covered
#print axioms cover_7956655

def root_7956654 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956654_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956654_right_fuel : Nat := 21
def small_7956654_right_count : Nat := 219
def small_7956654_right_encoded : String := "1207010800000004050000F8135D80F900000001050000FA135D80FB0000000205000106135D45070000000304548A011386710000000000045489FF1386AD08078000F8128A7CF900000001078000FA128A7CFB000000020000000900000009128A40F9078000FA128A7CFB0000000200000007128A40FB000000090000000200000001000000041386710800000004078000F800000009000000091386AD00045489FF000000090000000900000000135D810704548A011386710000000000045489FF1386AD08078000F8128A7CF900000001078000FA128A7CFB000000020780010600000009128A7D07000000090000000300000009128A40F9078000FA128A7CFB0000000207800106128A410700000003022A458113E1C500000000000000000513E20100067ECE7F000000090000000900000000000000050000000500000001000000041386710800000004078000F800000009128A40F9078000FA128A7CFB0000000207800106000000070000000500000005000000011386AD00045489FF1386AD08078000F8000000090000000900000004000000090000000000000003135D44FB0500010600000009135D810704548A01138671000000000000000005000000090000000300000002135D44F9050000FA135D80FB0000000205000106135D45070000000304548A011386710000000000045489FF1386AD08028000F813D7ECF900000001078000FA00000007128A40FB0280010600000007000000050000000213D7B0F9078000FA00000007000000050000000100000004000000071386AD00045489FF1386AD08028000F813D7ECF900000001078000FA000000070000000913D7B0F9078000FA00000007128A40FB0280010600000007000000050000000200000001000000040000000700000000135D810704548A011386710000000000000000051386AD00045489FF1386AD08028000F813D7ECF900000001078000FA128A7CFB0000000207800106128A410700000003067ECE8112EA5900000000000000000500000007000000050000000500000005000000041386710800000004028000F800000009000000050000000000000003135D44FB05000106135D45070000000304548A011386710000000000000000051386AD00045489FF1386AD08028000F80000000900000005000000040000000900000000000000050000000200000001"
theorem small_7956654_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956654_right_root small_7956654_right_fuel small_7956654_right_count small_7956654_right_encoded = true := by
  decide +kernel
theorem small_7956654_right_covered : CoveredBy scale carrier boxes small_7956654_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956654_right_root small_7956654_right_fuel small_7956654_right_count small_7956654_right_encoded small_7956654_right_checked

theorem cover_7956654 : CoveredBy scale carrier boxes root_7956654 := by
  apply coveredBy_split_literal root_7956654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956655 small_7956654_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956655
  · exact small_7956654_right_covered
#print axioms cover_7956654

def root_7956648 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956648_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956648_left_fuel : Nat := 1
def small_7956648_left_count : Nat := 1
def small_7956648_left_encoded : String := "00000000"
theorem small_7956648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956648_left_root small_7956648_left_fuel small_7956648_left_count small_7956648_left_encoded = true := by
  decide +kernel
theorem small_7956648_left_covered : CoveredBy scale carrier boxes small_7956648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956648_left_root small_7956648_left_fuel small_7956648_left_count small_7956648_left_encoded small_7956648_left_checked

theorem cover_7956648 : CoveredBy scale carrier boxes root_7956648 := by
  apply coveredBy_split_literal root_7956648 small_7956648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956654 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7956648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956654
#print axioms cover_7956648

def root_7956647 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956647_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956647_right_fuel : Nat := 22
def small_7956647_right_count : Nat := 225
def small_7956647_right_encoded : String := "12073D0008A912FF12073D08050000F8135D80F900000001050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BFF0F350D080C9A8708000000080F878CFF00000004078000F800000008128A40F90000000A00000001000000040F34D10800000004078000F800000009128A40F9078000FA128A7CFB000000020280010613D7B107000000030AD3578110D101000000000000000007000000090000000A00000009000000010F350D000CFD9BFF000000080F34D108000000040000000900000000135D81070CFD9C010F34D100000000000CFD9BFF0F350D080000000A000000040F34D10800000004078000F800000009128A40F900000009000000010F350D000CFD9BFF0F350D080C9A87000000000800000008000000040F34D10800000004000000060000000000000003135D44FB05000106135D4507000000030CFD9C010F34D100000000000CFD9BFF000000080F34D108000000040000000900000008135D81070CFD9C010F34D100000000000CFD9BFF0000000A0F34D10800000004000000090F350D000CFD9BFF0000000800000009000000000000000300000002135D44F9050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BFF0F350D080000000A000000040F34D10800000004028000F813D7ECF900000001078000FA0000000A0000000A0000000A0F350D000CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F87510100000000000000090000000A00000000135D81070CFD9C010F34D100000000000000000A0F350D000CFD9BFF0F350D080000000A000000040000000A0000000000000003135D44FB05000106135D4507000000030CFD9C010F34D100000000000000000A0000000A135D81070CFD9C010000000A0000000A000000030000000200000001000000041207010800000004050000F8135D80F90000000100000009135D44F9050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D10000000000045489FF1386AD08028000F80000000913D7B0F9078000FA00000007000000090000000100000004000000070F350D000000000900000000135D81070CFD9C010F34D10000000000045489FF0000000A000000090000000900000003135D44FB05000106135D4507000000030CFD9C01000000090000000900000009000000020000000100000000"
theorem small_7956647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956647_right_root small_7956647_right_fuel small_7956647_right_count small_7956647_right_encoded = true := by
  decide +kernel
theorem small_7956647_right_covered : CoveredBy scale carrier boxes small_7956647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956647_right_root small_7956647_right_fuel small_7956647_right_count small_7956647_right_encoded small_7956647_right_checked

theorem cover_7956647 : CoveredBy scale carrier boxes root_7956647 := by
  apply coveredBy_split_literal root_7956647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956648 small_7956647_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956648
  · exact small_7956647_right_covered
#print axioms cover_7956647

def root_7956641 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956641_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956641_left_fuel : Nat := 1
def small_7956641_left_count : Nat := 1
def small_7956641_left_encoded : String := "00000004"
theorem small_7956641_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956641_left_root small_7956641_left_fuel small_7956641_left_count small_7956641_left_encoded = true := by
  decide +kernel
theorem small_7956641_left_covered : CoveredBy scale carrier boxes small_7956641_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956641_left_root small_7956641_left_fuel small_7956641_left_count small_7956641_left_encoded small_7956641_left_checked

theorem cover_7956641 : CoveredBy scale carrier boxes root_7956641 := by
  apply coveredBy_split_literal root_7956641 small_7956641_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956647 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7956641_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956647
#print axioms cover_7956641

def root_7956491 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956491_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956491_left_fuel : Nat := 17
def small_7956491_left_count : Nat := 73
def small_7956491_left_encoded : String := "1151E8FF08A913011207010000000000050000F8135D80F900000001050000FA135D80FB0000000205000106135D4507000000030500010800000008135D80FF0000000404548A011386710000000000078000F8128A7CF900000001078000FA00000009000000080000000900000008135D81070500010800000007135D80FF000000040000000A00000003135D44FB05000106000000080000000A00000002135D44F9050000FA135D80FB00000002050001060000000A0000000A0000000A0000000112073D00050000F8135D80F900000001050000FA135D80FB0000000205000106000000080000000800000008135D44F9050000FA135D80FB00000002050001060000000A135D81070000000A0000000300000008000000010000000000000004"
theorem small_7956491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956491_left_root small_7956491_left_fuel small_7956491_left_count small_7956491_left_encoded = true := by
  decide +kernel
theorem small_7956491_left_covered : CoveredBy scale carrier boxes small_7956491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956491_left_root small_7956491_left_fuel small_7956491_left_count small_7956491_left_encoded small_7956491_left_checked

theorem cover_7956491 : CoveredBy scale carrier boxes root_7956491 := by
  apply coveredBy_split_literal root_7956491 small_7956491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956641 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7956491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956641
#print axioms cover_7956491

def root_7956485 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956485_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956485_left_fuel : Nat := 1
def small_7956485_left_count : Nat := 1
def small_7956485_left_encoded : String := "00000003"
theorem small_7956485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956485_left_root small_7956485_left_fuel small_7956485_left_count small_7956485_left_encoded = true := by
  decide +kernel
theorem small_7956485_left_covered : CoveredBy scale carrier boxes small_7956485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956485_left_root small_7956485_left_fuel small_7956485_left_count small_7956485_left_encoded small_7956485_left_checked

theorem cover_7956485 : CoveredBy scale carrier boxes root_7956485 := by
  apply coveredBy_split_literal root_7956485 small_7956485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956491 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7956485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956491
#print axioms cover_7956485

def root_7956484 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956484_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956484_right_fuel : Nat := 22
def small_7956484_right_count : Nat := 217
def small_7956484_right_encoded : String := "115225070A0001081151E8FF08A91301120701000000000008A913070000000712073D06050000F80000000A0000000A0000000312073D0008A913070000000A12073D06050000F8135D80F900000001050000FA0000000700000007135D44F9050000FA135D80FB000000020500010800000007135D80FF000000040000000A0000000700000001000000030000000000000004115224FF0000000408A91301120701000000000008A9130712070106000000030000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB0000000204548A0113867100000000000CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080000000A000000040F34D1080000000400000005000000031386AD000CFD9C070000000A0F350D060CFD9BFF0F350D080000000A000000040F34D108000000040C9A87060F875107000000030000000A000000050000000300000000135D44FB04548A01000000051386AD000CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000005000000030000000000000002135D44F9050000FA135D80FB0000000204548A01000000050000000A0000000500000001000000041207010800000004050000F8135D80F900000001050000FA135D80FB0000000204548A011386710000000000000000051386AD000CFD9C07000000090F350D06045489FF1386AD080C9A8706000000090000000500000004138671080000000400000009000000030000000000000005000000050000000312073D0008A9130712070106000000030000000A12073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000060F350D060000000A0000000300000006135D44FB0CFD9C010F34D100000000000000000A0000000A00000002135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000000000A0F350D000CFD9C07000000060F350D060CFD9BFF000000060000000A0000000300000000135D44FB0000000A0000000200000001000000041207010800000004050000F8135D80F900000001050000FA0000000600000009135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000000000A000000060000000900000001000000030000000000000003"
theorem small_7956484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956484_right_root small_7956484_right_fuel small_7956484_right_count small_7956484_right_encoded = true := by
  decide +kernel
theorem small_7956484_right_covered : CoveredBy scale carrier boxes small_7956484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956484_right_root small_7956484_right_fuel small_7956484_right_count small_7956484_right_encoded small_7956484_right_checked

theorem cover_7956484 : CoveredBy scale carrier boxes root_7956484 := by
  apply coveredBy_split_literal root_7956484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956485 small_7956484_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956485
  · exact small_7956484_right_covered
#print axioms cover_7956484

def root_7956479 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956479_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956479_right_fuel : Nat := 1
def small_7956479_right_count : Nat := 1
def small_7956479_right_encoded : String := "00000002"
theorem small_7956479_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956479_right_root small_7956479_right_fuel small_7956479_right_count small_7956479_right_encoded = true := by
  decide +kernel
theorem small_7956479_right_covered : CoveredBy scale carrier boxes small_7956479_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956479_right_root small_7956479_right_fuel small_7956479_right_count small_7956479_right_encoded small_7956479_right_checked

theorem cover_7956479 : CoveredBy scale carrier boxes root_7956479 := by
  apply coveredBy_split_literal root_7956479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956484 small_7956479_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956484
  · exact small_7956479_right_covered
#print axioms cover_7956479

def root_7947997 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7947997 : CoveredBy scale carrier boxes root_7947997 := by
  apply coveredBy_split_literal root_7947997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0547.root_7947998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7956479 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0547.cover_7947998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7956479
#print axioms cover_7947997

def root_7947992 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7947992_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7947992_right_fuel : Nat := 1
def small_7947992_right_count : Nat := 1
def small_7947992_right_encoded : String := "00000001"
theorem small_7947992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7947992_right_root small_7947992_right_fuel small_7947992_right_count small_7947992_right_encoded = true := by
  decide +kernel
theorem small_7947992_right_covered : CoveredBy scale carrier boxes small_7947992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7947992_right_root small_7947992_right_fuel small_7947992_right_count small_7947992_right_encoded small_7947992_right_checked

theorem cover_7947992 : CoveredBy scale carrier boxes root_7947992 := by
  apply coveredBy_split_literal root_7947992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7947997 small_7947992_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7947997
  · exact small_7947992_right_covered
#print axioms cover_7947992

def root_7938400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7938400 : CoveredBy scale carrier boxes root_7938400 := by
  apply coveredBy_split_literal root_7938400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7938401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7947992 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7938401
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7947992
#print axioms cover_7938400

def root_7938395 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938395_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938395_right_fuel : Nat := 1
def small_7938395_right_count : Nat := 1
def small_7938395_right_encoded : String := "00000000"
theorem small_7938395_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938395_right_root small_7938395_right_fuel small_7938395_right_count small_7938395_right_encoded = true := by
  decide +kernel
theorem small_7938395_right_covered : CoveredBy scale carrier boxes small_7938395_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938395_right_root small_7938395_right_fuel small_7938395_right_count small_7938395_right_encoded small_7938395_right_checked

theorem cover_7938395 : CoveredBy scale carrier boxes root_7938395 := by
  apply coveredBy_split_literal root_7938395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.root_7938400 small_7938395_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548.cover_7938400
  · exact small_7938395_right_covered
#print axioms cover_7938395

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0548

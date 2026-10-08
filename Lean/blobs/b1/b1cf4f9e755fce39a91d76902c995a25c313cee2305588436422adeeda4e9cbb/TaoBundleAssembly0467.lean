import TaoBundleAssembly0463
import TaoBundleAssembly0465
import TaoBundleAssembly0466
import TaoBundleChunkBatch0635
import TaoBundleChunkBatch0639
import TaoBundleChunkBatch0640
import TaoBundleChunkBatch0641
import TaoBundleChunkBatch0642
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467
def root_6781391 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781391_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781391_right_fuel : Nat := 27
def small_6781391_right_count : Nat := 315
def small_6781391_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE00000009128A410900000004067ECE770000000712EA5900000000000B4D4402108010F90B4D440400000009000000070000000110804CF9000000010B4D440400000009000000050000000313D7B1070000000300000007000000020F878CFB0000000200000007000000010F878CF9000000010C9A87040F8750FB028000FC13D7ED07078000FE00000009128A410900000004067ECE7712EA9500000000070000000012EA590000000000000000050000000313D7B10700000003078000FE0000000700000005000000020F878CFB00000002028000FC13D7ED07078000FE00000007000000050000000300000005000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB028000FC13D7ED07078000FE128A7D09067ECE770000000712EA59000000000000000005000000040000000500000003000000050000000200000005000000020F34D10400000002000000050000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000B4D4402108010F90B4D44040000000610804CFB0000000200000009000000010000000900000004128A410900000004022A457713E201000B4D4402108010F90B4D4404108010FB000000090000000210804CFB0000000203C000FC13A54D07064000FE000000070000000500000003000000050000000110804CF9000000010B4D440400000009000000050000000013E1C500000000000B4D4402108010F90B4D44040000000610804CFB00000002000000060000000110804CF9000000010B4D4404108010FB0000000600000002000000050000000313D7B10700000003078000FE128A7D09022A45770000000713E1C50000000000000000090000000400000005000000020F878CFB00000002028000FC13D7ED07078000FE128A7D09022A45770000000713E1C500000000000B4D4402108010F90DE7CA040E5FD8FB0000000700000002000000070000000110804CF9000000010DE7CA040E5FD8FB03C000FC13A54D0708C000FE00000007000000050000000300000005000000020000000500000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000DE7CA020E5FD8F9000000090000000100000009000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D102000000010000000500000004135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07028000FE13D7ED09067ECE7712EA95000B4D440200000007000000050000000012EA5900000000000B4D4402108010F90B4D4404108010FB03C000FC0000000A00000005000000020000000500000001000000050000000400000005000000030000000500000002000000050000000100000005000000020F34D1040000000200000005000000010F34D102000000010000000500000000138671000000000000000005"
theorem small_6781391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781391_right_root small_6781391_right_fuel small_6781391_right_count small_6781391_right_encoded = true := by
  decide +kernel
theorem small_6781391_right_covered : CoveredBy scale carrier boxes small_6781391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781391_right_root small_6781391_right_fuel small_6781391_right_count small_6781391_right_encoded small_6781391_right_checked

theorem cover_6781391 : CoveredBy scale carrier boxes root_6781391 := by
  apply coveredBy_split_literal root_6781391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6781392 small_6781391_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6781392
  · exact small_6781391_right_covered
#print axioms cover_6781391

def root_6781386 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781386_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781386_right_fuel : Nat := 1
def small_6781386_right_count : Nat := 1
def small_6781386_right_encoded : String := "00000002"
theorem small_6781386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781386_right_root small_6781386_right_fuel small_6781386_right_count small_6781386_right_encoded = true := by
  decide +kernel
theorem small_6781386_right_covered : CoveredBy scale carrier boxes small_6781386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781386_right_root small_6781386_right_fuel small_6781386_right_count small_6781386_right_encoded small_6781386_right_checked

theorem cover_6781386 : CoveredBy scale carrier boxes root_6781386 := by
  apply coveredBy_split_literal root_6781386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6781391 small_6781386_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6781391
  · exact small_6781386_right_covered
#print axioms cover_6781386

def root_6781385 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781385_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781385_right_fuel : Nat := 21
def small_6781385_right_count : Nat := 63
def small_6781385_right_encoded : String := "1207010400000002050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF90F350D02045489FB1386AD040C9A8702000000070F878CF9000000010000000700000002138671040000000200000007000000010F34D10200000001000000050000000013867100000000000CFD9BF90F350D02045489FB1386AD040C9A87020F8750F9078000FC128A7D07078000FE128A7D09022A45770000000713E1C50000000000067ECE7B000000070000000700000004000000050000000300000005000000010000000500000002138671040000000200000005000000010F34D102000000010000000500000004000000050000000300000005"
theorem small_6781385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781385_right_root small_6781385_right_fuel small_6781385_right_count small_6781385_right_encoded = true := by
  decide +kernel
theorem small_6781385_right_covered : CoveredBy scale carrier boxes small_6781385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781385_right_root small_6781385_right_fuel small_6781385_right_count small_6781385_right_encoded small_6781385_right_checked

theorem cover_6781385 : CoveredBy scale carrier boxes root_6781385 := by
  apply coveredBy_split_literal root_6781385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6781386 small_6781385_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6781386
  · exact small_6781385_right_covered
#print axioms cover_6781385

def root_6781380 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781380_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781380_right_fuel : Nat := 1
def small_6781380_right_count : Nat := 1
def small_6781380_right_encoded : String := "00000001"
theorem small_6781380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781380_right_root small_6781380_right_fuel small_6781380_right_count small_6781380_right_encoded = true := by
  decide +kernel
theorem small_6781380_right_covered : CoveredBy scale carrier boxes small_6781380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781380_right_root small_6781380_right_fuel small_6781380_right_count small_6781380_right_encoded small_6781380_right_checked

theorem cover_6781380 : CoveredBy scale carrier boxes root_6781380 := by
  apply coveredBy_split_literal root_6781380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6781385 small_6781380_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6781385
  · exact small_6781380_right_covered
#print axioms cover_6781380

def root_6781379 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781379_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781379_right_fuel : Nat := 23
def small_6781379_right_count : Nat := 71
def small_6781379_right_encoded : String := "120701020000000108A912FB12073D04050000FC135D8107050000FE135D8109045489F71386AD00045489F91386AD020CFD9BFB0F350D040C9A8704000000080F878CFB000000020000000800000002000000080000000113867102000000010CFD9BFB0F350D04000000080000000200000008000000001386710000000000045489F91386AD020CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D09022A45770000000813E1C50000000000067ECE790000000800000008000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000011386710200000001000000050000000400000005000000030000000500000002120701040000000200000005"
theorem small_6781379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781379_right_root small_6781379_right_fuel small_6781379_right_count small_6781379_right_encoded = true := by
  decide +kernel
theorem small_6781379_right_covered : CoveredBy scale carrier boxes small_6781379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781379_right_root small_6781379_right_fuel small_6781379_right_count small_6781379_right_encoded small_6781379_right_checked

theorem cover_6781379 : CoveredBy scale carrier boxes root_6781379 := by
  apply coveredBy_split_literal root_6781379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6781380 small_6781379_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6781380
  · exact small_6781379_right_covered
#print axioms cover_6781379

def root_6781373 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781373_left_fuel : Nat := 1
def small_6781373_left_count : Nat := 1
def small_6781373_left_encoded : String := "00000000"
theorem small_6781373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781373_left_root small_6781373_left_fuel small_6781373_left_count small_6781373_left_encoded = true := by
  decide +kernel
theorem small_6781373_left_covered : CoveredBy scale carrier boxes small_6781373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781373_left_root small_6781373_left_fuel small_6781373_left_count small_6781373_left_encoded small_6781373_left_checked

theorem cover_6781373 : CoveredBy scale carrier boxes root_6781373 := by
  apply coveredBy_split_literal root_6781373 small_6781373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6781379 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6781373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6781379
#print axioms cover_6781373

def root_6780705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780705_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780705_left_fuel : Nat := 27
def small_6780705_left_count : Nat := 315
def small_6780705_left_encoded : String := "12073D0008A912F912073D0208A912FB12073D04050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9BF90F350D020CFD9BFB0F350D040C9A87000F8750F700000007000000000F878CF7000000000C9A87020F8750F90C9A870400000008000000070000000100000008000000020F34D1040000000200000007000000010F34D1020000000100000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07078000FE128A7D090AD357770000000710D10100000000000B4D44020000000500000008000000040000000800000003128A410700000003078000FE00000007128A4109000000040AD357770000000710D101000000000000000007000000020F878CFB00000002078000FC128A7D07078000FE00000007128A410900000004000000080000000300000007000000010F878CF9000000010C9A87040F8750FB078000FC00000008128A410700000003078000FE128A7D09000000070000000400000008000000020F878CFB00000002078000FC128A7D07000000080000000300000007000000020F34D104000000020C9A8702000000070F878CF90000000100000007000000010F34D102000000010CFD9BFB0F350D040C9A8704000000080F878CFB0000000200000008000000020000000800000004135D4509000000040CFD9BF70F350D000CFD9BF90000000800000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A8704000000080F878CFB00000002000000080000000100000008000000020F34D104000000020C9A87020F8750F9000000080000000100000008000000010F34D102000000010000000800000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9BF90F350D02000000070000000100000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A8702000000070F878CF900000001000000070000000200000007000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB000000070000000200000007000000020000000700000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9BFB00000007000000070000000100000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC00000008000000070000000200000007000000010F878CF90000000100000008000000020F34D1040000000200000005000000010F34D1020000000100000005000000021207010400000002050000FC135D8107050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BF90F350D0200000007000000010000000700000004135D4509000000040CFD9BF7000000080F34D100000000000CFD9BF9000000080000000700000003135D450700000003050000FE000000070000000700000001120701020000000108A912FB12073D04050000FC135D8107050000FE135D81090CFD9BF7000000060F34D10000000000045489F90000000800000008000000040000000800000003135D450700000003050000FE135D81090CFD9BF7000000070F34D10000000000045489F91386AD020CFD9BFB000000070000000700000001000000070000000400000008000000021207010400000002050000FC000000060000000500000000"
theorem small_6780705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6780705_left_root small_6780705_left_fuel small_6780705_left_count small_6780705_left_encoded = true := by
  decide +kernel
theorem small_6780705_left_covered : CoveredBy scale carrier boxes small_6780705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6780705_left_root small_6780705_left_fuel small_6780705_left_count small_6780705_left_encoded small_6780705_left_checked

theorem cover_6780705 : CoveredBy scale carrier boxes root_6780705 := by
  apply coveredBy_split_literal root_6780705 small_6780705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6781373 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6780705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6781373
#print axioms cover_6780705

def root_6780699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780699_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780699_left_fuel : Nat := 1
def small_6780699_left_count : Nat := 1
def small_6780699_left_encoded : String := "00000004"
theorem small_6780699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6780699_left_root small_6780699_left_fuel small_6780699_left_count small_6780699_left_encoded = true := by
  decide +kernel
theorem small_6780699_left_covered : CoveredBy scale carrier boxes small_6780699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6780699_left_root small_6780699_left_fuel small_6780699_left_count small_6780699_left_encoded small_6780699_left_checked

theorem cover_6780699 : CoveredBy scale carrier boxes root_6780699 := by
  apply coveredBy_split_literal root_6780699 small_6780699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6780705 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6780699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6780705
#print axioms cover_6780699

def root_6775821 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6775821 : CoveredBy scale carrier boxes root_6775821 := by
  apply coveredBy_split_literal root_6775821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6775822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6780699 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6775822
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6780699
#print axioms cover_6775821

def root_6775815 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775815_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775815_left_fuel : Nat := 1
def small_6775815_left_count : Nat := 1
def small_6775815_left_encoded : String := "00000003"
theorem small_6775815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6775815_left_root small_6775815_left_fuel small_6775815_left_count small_6775815_left_encoded = true := by
  decide +kernel
theorem small_6775815_left_covered : CoveredBy scale carrier boxes small_6775815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6775815_left_root small_6775815_left_fuel small_6775815_left_count small_6775815_left_encoded small_6775815_left_checked

theorem cover_6775815 : CoveredBy scale carrier boxes root_6775815 := by
  apply coveredBy_split_literal root_6775815 small_6775815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6775821 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6775815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6775821
#print axioms cover_6775815

def root_6758899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6758899 : CoveredBy scale carrier boxes root_6758899 := by
  apply coveredBy_split_literal root_6758899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6758900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6775815 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6758900
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6775815
#print axioms cover_6758899

def root_6758893 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758893_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758893_left_fuel : Nat := 1
def small_6758893_left_count : Nat := 1
def small_6758893_left_encoded : String := "00000002"
theorem small_6758893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6758893_left_root small_6758893_left_fuel small_6758893_left_count small_6758893_left_encoded = true := by
  decide +kernel
theorem small_6758893_left_covered : CoveredBy scale carrier boxes small_6758893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6758893_left_root small_6758893_left_fuel small_6758893_left_count small_6758893_left_encoded small_6758893_left_checked

theorem cover_6758893 : CoveredBy scale carrier boxes root_6758893 := by
  apply coveredBy_split_literal root_6758893 small_6758893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6758899 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6758893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6758899
#print axioms cover_6758893

def root_6753963 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6753963 : CoveredBy scale carrier boxes root_6753963 := by
  apply coveredBy_split_literal root_6753963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6753964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6758893 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6753964
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6758893
#print axioms cover_6753963

def root_6753957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753957_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753957_left_fuel : Nat := 1
def small_6753957_left_count : Nat := 1
def small_6753957_left_encoded : String := "00000001"
theorem small_6753957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6753957_left_root small_6753957_left_fuel small_6753957_left_count small_6753957_left_encoded = true := by
  decide +kernel
theorem small_6753957_left_covered : CoveredBy scale carrier boxes small_6753957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6753957_left_root small_6753957_left_fuel small_6753957_left_count small_6753957_left_encoded small_6753957_left_checked

theorem cover_6753957 : CoveredBy scale carrier boxes root_6753957 := by
  apply coveredBy_split_literal root_6753957 small_6753957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6753963 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6753957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6753963
#print axioms cover_6753957

def root_6746355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6746355 : CoveredBy scale carrier boxes root_6746355 := by
  apply coveredBy_split_literal root_6746355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6746356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6753957 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6746356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6753957
#print axioms cover_6746355

def root_6746349 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746349_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746349_left_fuel : Nat := 1
def small_6746349_left_count : Nat := 1
def small_6746349_left_encoded : String := "00000000"
theorem small_6746349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6746349_left_root small_6746349_left_fuel small_6746349_left_count small_6746349_left_encoded = true := by
  decide +kernel
theorem small_6746349_left_covered : CoveredBy scale carrier boxes small_6746349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6746349_left_root small_6746349_left_fuel small_6746349_left_count small_6746349_left_encoded small_6746349_left_checked

theorem cover_6746349 : CoveredBy scale carrier boxes root_6746349 := by
  apply coveredBy_split_literal root_6746349 small_6746349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6746355 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6746349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6746355
#print axioms cover_6746349

def root_6743271 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6743271 : CoveredBy scale carrier boxes root_6743271 := by
  apply coveredBy_split_literal root_6743271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2539.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6746349 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2539.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6746349
#print axioms cover_6743271

def root_6735417 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6735417 : CoveredBy scale carrier boxes root_6735417 := by
  apply coveredBy_split_literal root_6735417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6735418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6743271 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6735418
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6743271
#print axioms cover_6735417

def root_6797662 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6797662 : CoveredBy scale carrier boxes root_6797662 := by
  apply coveredBy_split_literal root_6797662 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2557.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2558.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2557.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2558.covered
#print axioms cover_6797662

def root_6797656 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6797656_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6797656_left_fuel : Nat := 1
def small_6797656_left_count : Nat := 1
def small_6797656_left_encoded : String := "00000000"
theorem small_6797656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6797656_left_root small_6797656_left_fuel small_6797656_left_count small_6797656_left_encoded = true := by
  decide +kernel
theorem small_6797656_left_covered : CoveredBy scale carrier boxes small_6797656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6797656_left_root small_6797656_left_fuel small_6797656_left_count small_6797656_left_encoded small_6797656_left_checked

theorem cover_6797656 : CoveredBy scale carrier boxes root_6797656 := by
  apply coveredBy_split_literal root_6797656 small_6797656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6797662 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6797656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6797662
#print axioms cover_6797656

def root_6795856 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6795856 : CoveredBy scale carrier boxes root_6795856 := by
  apply coveredBy_split_literal root_6795856 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2556.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6797656 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2556.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6797656
#print axioms cover_6795856

def root_6793360 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6793360 : CoveredBy scale carrier boxes root_6793360 := by
  apply coveredBy_split_literal root_6793360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2555.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6795856 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2555.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6795856
#print axioms cover_6793360

def root_6735416 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6735416 : CoveredBy scale carrier boxes root_6735416 := by
  apply coveredBy_split_literal root_6735416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6735417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6793360 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6735417
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6793360
#print axioms cover_6735416

def root_6684592 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684592 : CoveredBy scale carrier boxes root_6684592 := by
  apply coveredBy_split_literal root_6684592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6684593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6735416 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6684593
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6735416
#print axioms cover_6684592

def root_6801815 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801815_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801815_left_fuel : Nat := 19
def small_6801815_left_count : Nat := 363
def small_6801815_left_encoded : String := "0A0001001151E8F70A0001021151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD000000051207010600000003000000051151E8FF000000050000000400000001115224F9000000010A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F90000000A12070102000000010000000A1151E8FF000000050000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FB0000000512070104000000020000000500000001120701020000000108A912FB000000051207010400000002000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD0000000512070106000000030000000500000001120701020000000108A912FB0000000A1207010400000002000000051151E8FF000000050000000400000000115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FD000000050000000600000000120701000000000008A912FD000000051207010600000003000000051151E8FF000000050000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB0000000512070104000000020000000500000000120701000000000008A912FB000000051207010400000002000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD0000000512070106000000030000000500000000120701000000000008A912FB12073D0408A912FD00000005120701060000000300000005000000021207010400000002000000051151E8FF000000050000000400000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F90000000512070102000000010000000500000000120701000000000008A912F9000000051207010200000001000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FD000000051207010600000003000000050000000112070102000000010000000A00000000120701000000000008A912F912073D0208A912FD00000005120701060000000300000005000000011207010200000001000000051151E8FF000000050000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000800000000120701000000000008A912F912073D0208A912FB00000005120701040000000200000005000000011207010200000001000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073D0408A912FD000000051207010600000003000000050000000212070104000000020000000500000001120701020000000108A912FB0000000512070104000000020000000500000000120701000000000008A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000500000005"
theorem small_6801815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6801815_left_root small_6801815_left_fuel small_6801815_left_count small_6801815_left_encoded = true := by
  decide +kernel
theorem small_6801815_left_covered : CoveredBy scale carrier boxes small_6801815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6801815_left_root small_6801815_left_fuel small_6801815_left_count small_6801815_left_encoded small_6801815_left_checked

theorem cover_6801815 : CoveredBy scale carrier boxes root_6801815 := by
  apply coveredBy_split_literal root_6801815 small_6801815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2559.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_6801815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2559.covered
#print axioms cover_6801815

def root_6801814 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801814_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801814_right_fuel : Nat := 16
def small_6801814_right_count : Nat := 221
def small_6801814_right_encoded : String := "000001090A0001001151E8F70A0001021151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD00000005000000030000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD00000005000000030000000500000002115224FB000000020A0001061151E8FD00000005000000030000000500000000115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD00000005000000030000000500000002115224FB000000020A0001061151E8FD00000005000000030000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD00000005000000030000000500000002000000050A0001001151E8F70A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E9090000000408A912FD000000051207010600000003000000050000000500000002115224FB000000020A0001061151E8FD0A0001081151E90900000004000000080000000500000003115224FD000000030A0001081151E90900000004000000080000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E9090000000408A912F9000000051207010200000001000000050000000500000003115224FD000000030A0001081151E9090000000408A912F912073D0208A912FD00000005120701060000000300000005000000011207010200000001000000050000000500000002115224FB000000020A0001061151E8FD0A0001081151E9090000000408A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000500000005000000030000000500000000115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD0A0001081151E90900000004000000060000000500000003115224FD000000030A0001081151E9090000000408A912F712073D0008A912FD00000005120701060000000300000005000000001207010000000000000000050000000500000002115224FB000000020A0001061151E8FD0A0001081151E909000000040000000600000005000000030000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E90900000004000000060000000500000003000000050000000200000005"
theorem small_6801814_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6801814_right_root small_6801814_right_fuel small_6801814_right_count small_6801814_right_encoded = true := by
  decide +kernel
theorem small_6801814_right_covered : CoveredBy scale carrier boxes small_6801814_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6801814_right_root small_6801814_right_fuel small_6801814_right_count small_6801814_right_encoded small_6801814_right_checked

theorem cover_6801814 : CoveredBy scale carrier boxes root_6801814 := by
  apply coveredBy_split_literal root_6801814 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6801815 small_6801814_right_root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6801815
  · exact small_6801814_right_covered
#print axioms cover_6801814

def root_6809008 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6809008 : CoveredBy scale carrier boxes root_6809008 := by
  apply coveredBy_split_literal root_6809008 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2562.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2563.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2562.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2563.covered
#print axioms cover_6809008

def root_6809002 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6809002_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6809002_left_fuel : Nat := 1
def small_6809002_left_count : Nat := 1
def small_6809002_left_encoded : String := "00000000"
theorem small_6809002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6809002_left_root small_6809002_left_fuel small_6809002_left_count small_6809002_left_encoded = true := by
  decide +kernel
theorem small_6809002_left_covered : CoveredBy scale carrier boxes small_6809002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6809002_left_root small_6809002_left_fuel small_6809002_left_count small_6809002_left_encoded small_6809002_left_checked

theorem cover_6809002 : CoveredBy scale carrier boxes root_6809002 := by
  apply coveredBy_split_literal root_6809002 small_6809002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6809008 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6809002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6809008
#print axioms cover_6809002

def root_6807204 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6807204 : CoveredBy scale carrier boxes root_6807204 := by
  apply coveredBy_split_literal root_6807204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2561.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6809002 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2561.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6809002
#print axioms cover_6807204

def root_6805548 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6805548 : CoveredBy scale carrier boxes root_6805548 := by
  apply coveredBy_split_literal root_6805548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2560.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6807204 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2560.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6807204
#print axioms cover_6805548

def root_6805547 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6805547 : CoveredBy scale carrier boxes root_6805547 := by
  apply coveredBy_split_literal root_6805547 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6805548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2564.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6805548
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2564.covered
#print axioms cover_6805547

def root_6801813 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6801813 : CoveredBy scale carrier boxes root_6801813 := by
  apply coveredBy_split_literal root_6801813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6801814 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6805547 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6801814
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6805547
#print axioms cover_6801813

def root_6684591 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684591 : CoveredBy scale carrier boxes root_6684591 := by
  apply coveredBy_split_literal root_6684591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6684592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6801813 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6684592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6801813
#print axioms cover_6684591

def root_6815214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815214 : CoveredBy scale carrier boxes root_6815214 := by
  apply coveredBy_split_literal root_6815214 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2565.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2566.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2565.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2566.covered
#print axioms cover_6815214

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467

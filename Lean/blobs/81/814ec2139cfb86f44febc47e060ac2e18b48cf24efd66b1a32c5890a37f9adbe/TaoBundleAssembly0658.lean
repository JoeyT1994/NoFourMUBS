import TaoBundleAssembly0655
import TaoBundleAssembly0656
import TaoBundleAssembly0657
import TaoBundleChunkBatch0904
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658
def root_9690909 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690909_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690909_right_fuel : Nat := 28
def small_9690909_right_count : Nat := 225
def small_9690909_right_encoded : String := "0F34D104000000020C9A87020F8750F9078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577B10D13D040B4D4402108010F908C000FC11FC25070000000A0000000311FBE9070000000308C000FE0000000811FBE90900000004000000090000000110804CF90000000108C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879BB1011AD040BF3E58200000009100928F900000001096000FC0000000911AA81070000000300000008000000021011710400000002000000090000000900000004000000090000000311FBE9070000000308C000FE11FC25090115234113F85900000000000BE879BB000000081011710400000002000000050000000800000004000000050000000210D10104000000020B4D44020000000910804CF9000000010000000913E201000AD3577B10D13D040B4D44020000000910804CF90000000108C000FC0000000911FBE9070000000308C000FE00000008000000050000000210D1010400000002000000090000000000000004128A410900000004022A458113E1C500000000000AD3577B00000009000000090000000900000003128A410700000003078000FE128A7D09022A458113E1C500000000000AD3577B10D13D040B4D4402108010F9064000FC000000080000000500000001000000050000000210D10104000000020000000513E201000AD3577B10D13D040B4D440200000008000000050000000210D101040000000200000005000000000000000400000005000000010F878CF900000001078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577B10D13D040DE7CA020E5FD8F908C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879BB1011AD040D4128820EFA10F9096000FC11AABD07000000090000000311AA810700000003096000FE11AABD09000000080000000400000005000000010EFA4CF900000001096000FC11AABD070000000900000003000000050000000210117104000000020000000513F895000BE879BB0000000900000009000000000000000400000005000000030000000500000001000000050000000210D10104000000020000000513E201000AD3577B10D13D040DE7CA020E5FD8F908C000FC11FC250700000009000000030000000500000001000000050000000210D1010400000002000000050000000000000004000000050000000300000005"
theorem small_9690909_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690909_right_root small_9690909_right_fuel small_9690909_right_count small_9690909_right_encoded = true := by
  decide +kernel
theorem small_9690909_right_covered : CoveredBy scale carrier boxes small_9690909_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690909_right_root small_9690909_right_fuel small_9690909_right_count small_9690909_right_encoded small_9690909_right_checked

theorem cover_9690909 : CoveredBy scale carrier boxes root_9690909 := by
  apply coveredBy_split_literal root_9690909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0657.root_9690910 small_9690909_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0657.cover_9690910
  · exact small_9690909_right_covered
#print axioms cover_9690909

def root_9690904 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690904_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690904_right_fuel : Nat := 1
def small_9690904_right_count : Nat := 1
def small_9690904_right_encoded : String := "00000001"
theorem small_9690904_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690904_right_root small_9690904_right_fuel small_9690904_right_count small_9690904_right_encoded = true := by
  decide +kernel
theorem small_9690904_right_covered : CoveredBy scale carrier boxes small_9690904_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690904_right_root small_9690904_right_fuel small_9690904_right_count small_9690904_right_encoded small_9690904_right_checked

theorem cover_9690904 : CoveredBy scale carrier boxes root_9690904 := by
  apply coveredBy_split_literal root_9690904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690909 small_9690904_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690909
  · exact small_9690904_right_covered
#print axioms cover_9690904

def root_9690903 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690903_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690903_right_fuel : Nat := 30
def small_9690903_right_count : Nat := 231
def small_9690903_right_encoded : String := "0F34D102000000010CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577910D13D020B4D4404108010FB08C000FC11FC250708C000FE00000007000000070000000311FBE907000000030000000A0000000210804CFB0000000208C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879B91011AD020BF3E58400000009100928FB00000002096000FC11AABD0700000007000000030000000A0000000110117102000000010000000A0000000A0000000411FBE909000000040115234113F85900000000000BE879B900000007101171020000000100000005000000070000000311FBE9070000000308C000FE0000000A000000050000000110D10102000000010B4D44040000000A10804CFB000000020000000A13E201000AD3577910D13D020B4D44040000000A10804CFB0000000208C000FC11FC250700000007000000030000000A0000000110D10102000000010000000A0000000000000004128A410900000004022A458113E1C500000000000AD3577910D13D020B4D4404108010FB08C000FC000000070000000500000002000000050000000110D10102000000010000000513E201000AD3577910D13D020B4D440400000007000000050000000110D1010200000001000000050000000000000003128A410700000003078000FE128A7D09022A458113E1C500000000000AD357790000000A0000000A0000000A0000000400000005000000020F878CFB00000002078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577910D13D020DE7CA040E5FD8FB08C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879B91011AD020D4128840EFA10FB096000FC11AABD07096000FE0000000A11AA81090000000400000007000000030000000A000000020EFA4CFB00000002096000FC11AABD07096000FE11AABD090000000A000000040000000500000003000000050000000110117102000000010000000513F895000BE879B90000000A0000000A000000000000000400000005000000030000000500000002000000050000000110D10102000000010000000513E201000AD3577910D13D020DE7CA040E5FD8FB08C000FC11FC250708C000FE0000000A00000005000000030000000500000002000000050000000110D1010200000001000000050000000000000004000000050000000300000005000000020F34D1040000000200000005"
theorem small_9690903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690903_right_root small_9690903_right_fuel small_9690903_right_count small_9690903_right_encoded = true := by
  decide +kernel
theorem small_9690903_right_covered : CoveredBy scale carrier boxes small_9690903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690903_right_root small_9690903_right_fuel small_9690903_right_count small_9690903_right_encoded small_9690903_right_checked

theorem cover_9690903 : CoveredBy scale carrier boxes root_9690903 := by
  apply coveredBy_split_literal root_9690903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690904 small_9690903_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690904
  · exact small_9690903_right_covered
#print axioms cover_9690903

def root_9690897 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690897_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690897_left_fuel : Nat := 1
def small_9690897_left_count : Nat := 1
def small_9690897_left_encoded : String := "00000000"
theorem small_9690897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690897_left_root small_9690897_left_fuel small_9690897_left_count small_9690897_left_encoded = true := by
  decide +kernel
theorem small_9690897_left_covered : CoveredBy scale carrier boxes small_9690897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690897_left_root small_9690897_left_fuel small_9690897_left_count small_9690897_left_encoded small_9690897_left_checked

theorem cover_9690897 : CoveredBy scale carrier boxes root_9690897 := by
  apply coveredBy_split_literal root_9690897 small_9690897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690903 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9690897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690903
#print axioms cover_9690897

def root_9690896 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690896_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690896_right_fuel : Nat := 22
def small_9690896_right_count : Nat := 255
def small_9690896_right_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07078000FE000000060000000600000003128A410700000003078000FE0000000600000006000000020F878CFB00000002078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000B4D44020000000610804CF9000000010DE7CA0400000006000000080000000600000004128A4109000000040000000900000003128A410700000003078000FE128A7D090000000800000004128A410900000004067ECE8112EA5900000000000B4D44020000000610804CF9000000010DE7CA04000000060000000500000006000000010F878CF9000000010C9A87040F8750FB078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000DE7CA0200000006000000070000000600000004128A4109000000040000000700000003128A410700000003078000FE128A7D090000000A00000004128A410900000004067ECE8112EA5900000000000DE7CA02000000060000000A00000006000000020F878CFB00000002078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD8F90DE7CA040E5FD8FB08C000FC0000000600000006000000020E6014FB0000000208C000FC0000000911FBE9070000000300000008000000010E6014F9000000010DE7CA040E5FD8FB08C000FC000000070000000A000000020E6014FB0000000208C000FC11FC250700000009000000030000000512EA95000DE7CA020E5FD8F90DE7CA040000000600000008000000010000000A0000000000000004128A410900000004067ECE8112EA5900000000000DE7CA02000000090E6014F900000001000000050000000900000003128A410700000003078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD8F90000000A000000010000000A0000000A0000000400000005000000020F34D104000000020C9A87020F8750F9078000FC128A7D07078000FE128A7D0900000009000000040000000900000003128A410700000003078000FE128A7D09000000080000000400000005000000010F878CF900000001078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000AD3577B00000009000000090000000900000004000000050000000300000005000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D090000000A00000004128A41090000000400000007000000030000000A000000020F878CFB00000002078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000AD357790000000A0000000A0000000A00000004000000050000000300000005000000020F34D104000000020000000500000000"
theorem small_9690896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690896_right_root small_9690896_right_fuel small_9690896_right_count small_9690896_right_encoded = true := by
  decide +kernel
theorem small_9690896_right_covered : CoveredBy scale carrier boxes small_9690896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690896_right_root small_9690896_right_fuel small_9690896_right_count small_9690896_right_encoded small_9690896_right_checked

theorem cover_9690896 : CoveredBy scale carrier boxes root_9690896 := by
  apply coveredBy_split_literal root_9690896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690897 small_9690896_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690897
  · exact small_9690896_right_covered
#print axioms cover_9690896

def root_9690891 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690891_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690891_right_fuel : Nat := 1
def small_9690891_right_count : Nat := 1
def small_9690891_right_encoded : String := "00000004"
theorem small_9690891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690891_right_root small_9690891_right_fuel small_9690891_right_count small_9690891_right_encoded = true := by
  decide +kernel
theorem small_9690891_right_covered : CoveredBy scale carrier boxes small_9690891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690891_right_root small_9690891_right_fuel small_9690891_right_count small_9690891_right_encoded small_9690891_right_checked

theorem cover_9690891 : CoveredBy scale carrier boxes root_9690891 := by
  apply coveredBy_split_literal root_9690891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690896 small_9690891_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690896
  · exact small_9690891_right_covered
#print axioms cover_9690891

def root_9690890 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690890_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690890_right_fuel : Nat := 22
def small_9690890_right_count : Nat := 139
def small_9690890_right_encoded : String := "135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07028000FE13D7ED09022A458113E1C500000000000B4D44020000000610804CF9000000010000000600000006000000040000000600000003128A410700000003028000FE13D7ED09022A458113E1C500000000000B4D44020000000610804CF90000000100000006000000060000000400000005000000020F878CFB00000002078000FC128A7D07028000FE13D7ED09022A458113E1C500000000000B4D44020000000910804CF900000001000000050000000900000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB078000FC128A7D07028000FE13D7ED09022A458113E1C500000000000DE7CA020E5FD8F90B4D44040000000610804CFB0000000200000005000000010E6014F9000000010000000500000007000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D10200000001000000051386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D070000000600000003000000060000000200000009000000010F878CF9000000010C9A87040F8750FB078000FC00000007128A410700000003000000050000000200000009000000020F34D1040000000200000005000000010F34D102000000010000000500000000"
theorem small_9690890_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690890_right_root small_9690890_right_fuel small_9690890_right_count small_9690890_right_encoded = true := by
  decide +kernel
theorem small_9690890_right_covered : CoveredBy scale carrier boxes small_9690890_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690890_right_root small_9690890_right_fuel small_9690890_right_count small_9690890_right_encoded small_9690890_right_checked

theorem cover_9690890 : CoveredBy scale carrier boxes root_9690890 := by
  apply coveredBy_split_literal root_9690890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690891 small_9690890_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690891
  · exact small_9690890_right_covered
#print axioms cover_9690890

def root_9690885 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690885_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690885_right_fuel : Nat := 1
def small_9690885_right_count : Nat := 1
def small_9690885_right_encoded : String := "00000003"
theorem small_9690885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690885_right_root small_9690885_right_fuel small_9690885_right_count small_9690885_right_encoded = true := by
  decide +kernel
theorem small_9690885_right_covered : CoveredBy scale carrier boxes small_9690885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690885_right_root small_9690885_right_fuel small_9690885_right_count small_9690885_right_encoded small_9690885_right_checked

theorem cover_9690885 : CoveredBy scale carrier boxes root_9690885 := by
  apply coveredBy_split_literal root_9690885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690890 small_9690885_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690890
  · exact small_9690885_right_covered
#print axioms cover_9690885

def root_9690884 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690884_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690884_right_fuel : Nat := 22
def small_9690884_right_count : Nat := 175
def small_9690884_right_encoded : String := "135D450700000003050000FE135D810904548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A458113E1C500000000000B4D44020000000610804CF900000001000000060000000600000004128A410900000004022A458113E1C500000000000B4D44020000000610804CF90000000100000006000000060000000313D7B10700000003078000FE128A7D09000000060000000400000005000000020F878CFB00000002028000FC13D7ED07078000FE128A7D09022A458113E1C500000000000B4D4402108010F9000000080000000110804CF900000001000000050000000800000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A458113E1C500000000000DE7CA020E5FD8F90000000A000000010000000A0000000A000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D10200000001000000051386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE00000006000000060000000300000006000000020F878CFB00000002028000FC13D7ED07078000FE00000008128A41090000000400000005000000030000000A000000010F878CF9000000010C9A87040000000A0F878CFB0000000200000005000000020F34D1040000000200000005000000010F34D10200000001000000050000000000000004135D45090000000404548A011386710000000000000000051386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC0000000600000005000000020000000500000001000000050000000200000005000000010000000500000000"
theorem small_9690884_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690884_right_root small_9690884_right_fuel small_9690884_right_count small_9690884_right_encoded = true := by
  decide +kernel
theorem small_9690884_right_covered : CoveredBy scale carrier boxes small_9690884_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690884_right_root small_9690884_right_fuel small_9690884_right_count small_9690884_right_encoded small_9690884_right_checked

theorem cover_9690884 : CoveredBy scale carrier boxes root_9690884 := by
  apply coveredBy_split_literal root_9690884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690885 small_9690884_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690885
  · exact small_9690884_right_covered
#print axioms cover_9690884

def root_9690879 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690879_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690879_right_fuel : Nat := 1
def small_9690879_right_count : Nat := 1
def small_9690879_right_encoded : String := "00000002"
theorem small_9690879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690879_right_root small_9690879_right_fuel small_9690879_right_count small_9690879_right_encoded = true := by
  decide +kernel
theorem small_9690879_right_covered : CoveredBy scale carrier boxes small_9690879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690879_right_root small_9690879_right_fuel small_9690879_right_count small_9690879_right_encoded small_9690879_right_checked

theorem cover_9690879 : CoveredBy scale carrier boxes root_9690879 := by
  apply coveredBy_split_literal root_9690879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690884 small_9690879_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690884
  · exact small_9690879_right_covered
#print axioms cover_9690879

def root_9690878 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690878_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690878_right_fuel : Nat := 18
def small_9690878_right_count : Nat := 47
def small_9690878_right_encoded : String := "1207010400000002050000FC135D8107050000FE135D810904548A0113867100000000000CFD9BF90F350D02045489FB1386AD040C9A87020F8750F9078000FC128A7D07078000FE128A7D0900000009000000040000000500000003000000050000000100000005000000020000000500000001000000051386AD000CFD9BF90F350D02045489FB1386AD040C9A87020000000900000005000000020000000500000001000000050000000000000004000000050000000300000005"
theorem small_9690878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690878_right_root small_9690878_right_fuel small_9690878_right_count small_9690878_right_encoded = true := by
  decide +kernel
theorem small_9690878_right_covered : CoveredBy scale carrier boxes small_9690878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690878_right_root small_9690878_right_fuel small_9690878_right_count small_9690878_right_encoded small_9690878_right_checked

theorem cover_9690878 : CoveredBy scale carrier boxes root_9690878 := by
  apply coveredBy_split_literal root_9690878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690879 small_9690878_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690879
  · exact small_9690878_right_covered
#print axioms cover_9690878

def root_9690873 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690873_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690873_right_fuel : Nat := 1
def small_9690873_right_count : Nat := 1
def small_9690873_right_encoded : String := "00000001"
theorem small_9690873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690873_right_root small_9690873_right_fuel small_9690873_right_count small_9690873_right_encoded = true := by
  decide +kernel
theorem small_9690873_right_covered : CoveredBy scale carrier boxes small_9690873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690873_right_root small_9690873_right_fuel small_9690873_right_count small_9690873_right_encoded small_9690873_right_checked

theorem cover_9690873 : CoveredBy scale carrier boxes root_9690873 := by
  apply coveredBy_split_literal root_9690873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690878 small_9690873_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690878
  · exact small_9690873_right_covered
#print axioms cover_9690873

def root_9690872 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690872_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690872_right_fuel : Nat := 20
def small_9690872_right_count : Nat := 51
def small_9690872_right_encoded : String := "120701020000000108A912FB12073D04050000FC135D8107050000FE135D810904548A011386710000000000045489F91386AD020CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D090000000A000000040000000500000003000000050000000200000005000000020000000500000001000000051386AD00045489F91386AD020CFD9BFB0F350D040C9A87040000000A000000050000000200000005000000010000000500000000000000040000000500000003000000050000000200000005"
theorem small_9690872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690872_right_root small_9690872_right_fuel small_9690872_right_count small_9690872_right_encoded = true := by
  decide +kernel
theorem small_9690872_right_covered : CoveredBy scale carrier boxes small_9690872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690872_right_root small_9690872_right_fuel small_9690872_right_count small_9690872_right_encoded small_9690872_right_checked

theorem cover_9690872 : CoveredBy scale carrier boxes root_9690872 := by
  apply coveredBy_split_literal root_9690872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690873 small_9690872_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690873
  · exact small_9690872_right_covered
#print axioms cover_9690872

def root_9690866 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690866_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690866_left_fuel : Nat := 1
def small_9690866_left_count : Nat := 1
def small_9690866_left_encoded : String := "00000000"
theorem small_9690866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690866_left_root small_9690866_left_fuel small_9690866_left_count small_9690866_left_encoded = true := by
  decide +kernel
theorem small_9690866_left_covered : CoveredBy scale carrier boxes small_9690866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690866_left_root small_9690866_left_fuel small_9690866_left_count small_9690866_left_encoded small_9690866_left_checked

theorem cover_9690866 : CoveredBy scale carrier boxes root_9690866 := by
  apply coveredBy_split_literal root_9690866 small_9690866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690872 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9690866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690872
#print axioms cover_9690866

def root_9690865 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690865_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690865_right_fuel : Nat := 22
def small_9690865_right_count : Nat := 241
def small_9690865_right_encoded : String := "12073D0008A912F912073D0208A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC0000000600000006000000020F878CFB00000002078000FC00000009128A41070000000300000008000000010F878CF9000000010C9A87040F8750FB078000FC000000070000000A000000020F878CFB00000002078000FC128A7D0700000009000000030000000A000000020F34D1040000000200000009000000010F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D000CFD9BF90F350D020CFD9BFB0F350D040C9A8700000000090F878D010C9A8702000000090000000A00000000000000020F34D1040000000200000009000000010F34D102000000010000000A0000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A870200000009000000090000000200000009000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB00000007000000020000000500000002000000050F350D000CFD9BF900000009000000090000000000000003135D450700000003050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90000000A000000010000000A000000020F34D104000000020C9A87020F8750F9000000080000000100000005000000010F34D102000000010000000A0F350D000CFD9BF90F350D020CFD9BFB0000000A0000000A000000010000000A0000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040000000A000000050000000100000005000000020F34D1040000000200000005000000010F34D10200000001000000050F350D000CFD9BF90000000A0000000900000000000000021207010400000002050000FC135D8107050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D0200000009000000010000000900000009000000040000000900000003135D450700000003050000FE135D81090CFD9C010F34D100000000000000000500000005000000040000000500000001120701020000000108A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D10000000000045489F90000000A0000000A0000000A00000004135D4509000000040CFD9C010F34D100000000000000000500000005000000030000000A0000000212070104000000020000000500000000"
theorem small_9690865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690865_right_root small_9690865_right_fuel small_9690865_right_count small_9690865_right_encoded = true := by
  decide +kernel
theorem small_9690865_right_covered : CoveredBy scale carrier boxes small_9690865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690865_right_root small_9690865_right_fuel small_9690865_right_count small_9690865_right_encoded small_9690865_right_checked

theorem cover_9690865 : CoveredBy scale carrier boxes root_9690865 := by
  apply coveredBy_split_literal root_9690865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690866 small_9690865_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690866
  · exact small_9690865_right_covered
#print axioms cover_9690865

def root_9690859 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690859_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690859_left_fuel : Nat := 1
def small_9690859_left_count : Nat := 1
def small_9690859_left_encoded : String := "00000004"
theorem small_9690859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690859_left_root small_9690859_left_fuel small_9690859_left_count small_9690859_left_encoded = true := by
  decide +kernel
theorem small_9690859_left_covered : CoveredBy scale carrier boxes small_9690859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690859_left_root small_9690859_left_fuel small_9690859_left_count small_9690859_left_encoded small_9690859_left_checked

theorem cover_9690859 : CoveredBy scale carrier boxes root_9690859 := by
  apply coveredBy_split_literal root_9690859 small_9690859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690865 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9690859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690865
#print axioms cover_9690859

def root_9685609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9685609 : CoveredBy scale carrier boxes root_9685609 := by
  apply coveredBy_split_literal root_9685609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0657.root_9685610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9690859 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0657.cover_9685610
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9690859
#print axioms cover_9685609

def root_9685603 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685603_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685603_left_fuel : Nat := 1
def small_9685603_left_count : Nat := 1
def small_9685603_left_encoded : String := "00000003"
theorem small_9685603_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685603_left_root small_9685603_left_fuel small_9685603_left_count small_9685603_left_encoded = true := by
  decide +kernel
theorem small_9685603_left_covered : CoveredBy scale carrier boxes small_9685603_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685603_left_root small_9685603_left_fuel small_9685603_left_count small_9685603_left_encoded small_9685603_left_checked

theorem cover_9685603 : CoveredBy scale carrier boxes root_9685603 := by
  apply coveredBy_split_literal root_9685603 small_9685603_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9685609 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9685603_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9685609
#print axioms cover_9685603

def root_9659207 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659207 : CoveredBy scale carrier boxes root_9659207 := by
  apply coveredBy_split_literal root_9659207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9659208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9685603 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9659208
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9685603
#print axioms cover_9659207

def root_9659201 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659201_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659201_left_fuel : Nat := 1
def small_9659201_left_count : Nat := 1
def small_9659201_left_encoded : String := "00000002"
theorem small_9659201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659201_left_root small_9659201_left_fuel small_9659201_left_count small_9659201_left_encoded = true := by
  decide +kernel
theorem small_9659201_left_covered : CoveredBy scale carrier boxes small_9659201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659201_left_root small_9659201_left_fuel small_9659201_left_count small_9659201_left_encoded small_9659201_left_checked

theorem cover_9659201 : CoveredBy scale carrier boxes root_9659201 := by
  apply coveredBy_split_literal root_9659201 small_9659201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9659207 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9659201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9659207
#print axioms cover_9659201

def root_9656323 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9656323 : CoveredBy scale carrier boxes root_9656323 := by
  apply coveredBy_split_literal root_9656323 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3614.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9659201 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3614.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9659201
#print axioms cover_9656323

def root_9656317 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9656317_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9656317_left_fuel : Nat := 1
def small_9656317_left_count : Nat := 1
def small_9656317_left_encoded : String := "00000001"
theorem small_9656317_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9656317_left_root small_9656317_left_fuel small_9656317_left_count small_9656317_left_encoded = true := by
  decide +kernel
theorem small_9656317_left_covered : CoveredBy scale carrier boxes small_9656317_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9656317_left_root small_9656317_left_fuel small_9656317_left_count small_9656317_left_encoded small_9656317_left_checked

theorem cover_9656317 : CoveredBy scale carrier boxes root_9656317 := by
  apply coveredBy_split_literal root_9656317 small_9656317_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9656323 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9656317_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9656323
#print axioms cover_9656317

def root_9652879 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9652879 : CoveredBy scale carrier boxes root_9652879 := by
  apply coveredBy_split_literal root_9652879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9652880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9656317 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9652880
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9656317
#print axioms cover_9652879

def root_9652874 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652874_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652874_right_fuel : Nat := 1
def small_9652874_right_count : Nat := 1
def small_9652874_right_encoded : String := "00000000"
theorem small_9652874_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9652874_right_root small_9652874_right_fuel small_9652874_right_count small_9652874_right_encoded = true := by
  decide +kernel
theorem small_9652874_right_covered : CoveredBy scale carrier boxes small_9652874_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9652874_right_root small_9652874_right_fuel small_9652874_right_count small_9652874_right_encoded small_9652874_right_checked

theorem cover_9652874 : CoveredBy scale carrier boxes root_9652874 := by
  apply coveredBy_split_literal root_9652874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9652879 small_9652874_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9652879
  · exact small_9652874_right_covered
#print axioms cover_9652874

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658

import TaoBundleAssembly0643
import TaoBundleChunkBatch0883
import TaoBundleChunkBatch0884
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644
def root_9442590 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442590_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442590_right_fuel : Nat := 20
def small_9442590_right_count : Nat := 147
def small_9442590_right_encoded : String := "128A4107000000030280010813D7B0FF022A457913E201020DE7CA000E5FD9010000000008C000FA11FC25050000000600000002000000060E60150108C000FA11FC2505064000FC12FFAD07014001080000000913F614FF00000004033F67B90000000613BBF502000000010DAED881000000090E96610000000006000000000000000312FF7107000000030140010800000007000000060000000211FBE90500000002064000FC12FFAD07014001080000000713F614FF00000004033F67B900000006000000070000000312FF710700000003014001080000000700000006000000000000000113E1C502000000010DE7CA00000000070E60150108C000FA11FC2505000000070000000200000007000000000000000413D7ECFF00000004022A457913E201020DE7CA00000000060E60150108C000FA11FC2505000000060000000200000006000000000000000113E1C502000000010DE7CA000E5FD9010000000008C000FA0000000A11FBE90500000002064000FC12FFAD0703C00108000000070000000500000003000000050E60150108C000FA11FC2505064000FC12FFAD0703C0010813A510FF0115233913F895020DAED8810E96250000000000096000FA11AABD050000000900000002000000070E966100000000060000000000000001000000070000000413A54CFF00000004011523390000000613F8590200000001000000050000000312FF7107000000030000000A0000000211FBE90500000002064000FC12FFAD0703C0010813A510FF000000070000000400000005000000030000000500000000"
theorem small_9442590_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442590_right_root small_9442590_right_fuel small_9442590_right_count small_9442590_right_encoded = true := by
  decide +kernel
theorem small_9442590_right_covered : CoveredBy scale carrier boxes small_9442590_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442590_right_root small_9442590_right_fuel small_9442590_right_count small_9442590_right_encoded small_9442590_right_checked

theorem cover_9442590 : CoveredBy scale carrier boxes root_9442590 := by
  apply coveredBy_split_literal root_9442590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9442591 small_9442590_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9442591
  · exact small_9442590_right_covered
#print axioms cover_9442590

def root_9442585 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442585_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442585_right_fuel : Nat := 1
def small_9442585_right_count : Nat := 1
def small_9442585_right_encoded : String := "00000002"
theorem small_9442585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442585_right_root small_9442585_right_fuel small_9442585_right_count small_9442585_right_encoded = true := by
  decide +kernel
theorem small_9442585_right_covered : CoveredBy scale carrier boxes small_9442585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442585_right_root small_9442585_right_fuel small_9442585_right_count small_9442585_right_encoded small_9442585_right_checked

theorem cover_9442585 : CoveredBy scale carrier boxes root_9442585 := by
  apply coveredBy_split_literal root_9442585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442590 small_9442585_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442590
  · exact small_9442585_right_covered
#print axioms cover_9442585

def root_9442584 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442584_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442584_right_fuel : Nat := 18
def small_9442584_right_count : Nat := 163
def small_9442584_right_encoded : String := "128A410500000002078000FC128A7D070280010813D7B0FF022A457913E201020DE7CA00000000080E601501064000FA12FFAD0508C000FC0000000811FBE90700000003000000080000000200000008000000000000000113E1C502000000010DE7CA00000000070E601501064000FA12FFAD0508C000FC11FC25070000000700000003000000070000000200000007000000000000000413D7ECFF00000004022A457913E201020DE7CA00000000080E601501064000FA12FFAD0508C000FC0000000811FBE9070000000303C0010800000008000000080000000200000008000000000000000113E1C502000000010DE7CA000E5FD90100000000064000FA12FFAD0508C000FC0000000811FBE9070000000303C00108000000070000000500000002000000080E601501064000FA12FFAD0508C000FC11FC250703C0010813A510FF0115233900000008000000070000000413A54CFF00000004011523390000000813F8590200000001000000050000000311FBE9070000000303C0010813A510FF0000000700000004000000050000000212FF71050000000208C000FC11FC250703C00108000000080000000500000003000000050000000000000003128A4107000000030280010813D7B0FF022A457913E201020DE7CA000E5FD90100000000000000080E601501064000FA12FFAD05064000FC12FFAD07014001080000000713F614FF00000004033F67B90000000600000007000000030000000700000002000000070000000000000001000000070000000413D7ECFF00000004022A457913E201020DE7CA00000000060E601501064000FA12FFAD05000000060000000200000005000000000000000113E1C502000000010DE7CA000E5FD901000000000000000500000005"
theorem small_9442584_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442584_right_root small_9442584_right_fuel small_9442584_right_count small_9442584_right_encoded = true := by
  decide +kernel
theorem small_9442584_right_covered : CoveredBy scale carrier boxes small_9442584_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442584_right_root small_9442584_right_fuel small_9442584_right_count small_9442584_right_encoded small_9442584_right_checked

theorem cover_9442584 : CoveredBy scale carrier boxes root_9442584 := by
  apply coveredBy_split_literal root_9442584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442585 small_9442584_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442585
  · exact small_9442584_right_covered
#print axioms cover_9442584

def root_9442579 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442579_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442579_right_fuel : Nat := 1
def small_9442579_right_count : Nat := 1
def small_9442579_right_encoded : String := "00000000"
theorem small_9442579_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442579_right_root small_9442579_right_fuel small_9442579_right_count small_9442579_right_encoded = true := by
  decide +kernel
theorem small_9442579_right_covered : CoveredBy scale carrier boxes small_9442579_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442579_right_root small_9442579_right_fuel small_9442579_right_count small_9442579_right_encoded small_9442579_right_checked

theorem cover_9442579 : CoveredBy scale carrier boxes root_9442579 := by
  apply coveredBy_split_literal root_9442579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442584 small_9442579_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442584
  · exact small_9442579_right_covered
#print axioms cover_9442579

def root_9442401 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442401_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442401_left_fuel : Nat := 19
def small_9442401_left_count : Nat := 85
def small_9442401_left_encoded : String := "0F87510100000000078000FA128A7D05078000FC128A7D070280010813D7B0FF022A45790000000813E1C502000000010B4D44000000000A10804D0108C000FA0000000A11FBE9050000000208C000FC0000000800000007000000000000000413D7ECFF00000004022A45790000000613E1C502000000010B4D440010801101000000000000000A10804D0108C000FA11FC250508C000FC11FC250703C0010813A510FF000000080000000413A54CFF0000000401152339000000060000000A000000030000000A0000000211FBE9050000000208C000FC0000000811FBE90700000003000000060000000000000003128A4107000000030280010813D7B0FF0000000A000000040000000600000002128A410500000002078000FC128A7D0702800108000000080000000800000003128A4107000000030280010813D7B0FF022A457900000006000000070000000400000006"
theorem small_9442401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442401_left_root small_9442401_left_fuel small_9442401_left_count small_9442401_left_encoded = true := by
  decide +kernel
theorem small_9442401_left_covered : CoveredBy scale carrier boxes small_9442401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442401_left_root small_9442401_left_fuel small_9442401_left_count small_9442401_left_encoded small_9442401_left_checked

theorem cover_9442401 : CoveredBy scale carrier boxes root_9442401 := by
  apply coveredBy_split_literal root_9442401 small_9442401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442579 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9442401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442579
#print axioms cover_9442401

def root_9442395 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442395_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442395_left_fuel : Nat := 1
def small_9442395_left_count : Nat := 1
def small_9442395_left_encoded : String := "00000001"
theorem small_9442395_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442395_left_root small_9442395_left_fuel small_9442395_left_count small_9442395_left_encoded = true := by
  decide +kernel
theorem small_9442395_left_covered : CoveredBy scale carrier boxes small_9442395_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442395_left_root small_9442395_left_fuel small_9442395_left_count small_9442395_left_encoded small_9442395_left_checked

theorem cover_9442395 : CoveredBy scale carrier boxes root_9442395 := by
  apply coveredBy_split_literal root_9442395 small_9442395_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442401 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9442395_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442401
#print axioms cover_9442395

def root_9442185 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442185_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442185_left_fuel : Nat := 19
def small_9442185_left_count : Nat := 101
def small_9442185_left_encoded : String := "1386AD020C9A87000F87510100000000078000FA128A7D05078000FC000000080000000600000002000000080F878D01078000FA128A7D05078000FC128A7D070280010813D7B0FF067ECE790000000812EA5902000000010DE7CA000E5FD90100000000000000080E60150108C000FA11FC2505000000050000000200000008000000000000000413D7ECFF00000004067ECE790000000612EA5902000000010DE7CA00000000060E60150108C000FA11FC250508C000FC11FC250703C00108000000050000000600000003000000060000000211FBE9050000000208C000FC00000008000000060000000000000003128A4107000000030280010813D7B0FF067ECE790000000612EA5902000000010DE7CA00000000060E60150108C000FA11FC250500000006000000020000000600000000000000040000000600000002128A410500000002078000FC128A7D0702800108000000080000000800000003128A4107000000030280010813D7B0FF067ECE790000000612EA5902000000010000000800000004000000060000000000000001"
theorem small_9442185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442185_left_root small_9442185_left_fuel small_9442185_left_count small_9442185_left_encoded = true := by
  decide +kernel
theorem small_9442185_left_covered : CoveredBy scale carrier boxes small_9442185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442185_left_root small_9442185_left_fuel small_9442185_left_count small_9442185_left_encoded small_9442185_left_checked

theorem cover_9442185 : CoveredBy scale carrier boxes root_9442185 := by
  apply coveredBy_split_literal root_9442185 small_9442185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442395 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9442185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442395
#print axioms cover_9442185

def root_9442180 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442180_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442180_right_fuel : Nat := 1
def small_9442180_right_count : Nat := 1
def small_9442180_right_encoded : String := "00000000"
theorem small_9442180_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442180_right_root small_9442180_right_fuel small_9442180_right_count small_9442180_right_encoded = true := by
  decide +kernel
theorem small_9442180_right_covered : CoveredBy scale carrier boxes small_9442180_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442180_right_root small_9442180_right_fuel small_9442180_right_count small_9442180_right_encoded small_9442180_right_checked

theorem cover_9442180 : CoveredBy scale carrier boxes root_9442180 := by
  apply coveredBy_split_literal root_9442180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442185 small_9442180_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442185
  · exact small_9442180_right_covered
#print axioms cover_9442180

def root_9439768 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9439768 : CoveredBy scale carrier boxes root_9439768 := by
  apply coveredBy_split_literal root_9439768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3531.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9442180 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3531.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9442180
#print axioms cover_9439768

def root_9439763 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439763_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439763_right_fuel : Nat := 1
def small_9439763_right_count : Nat := 1
def small_9439763_right_encoded : String := "00000004"
theorem small_9439763_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439763_right_root small_9439763_right_fuel small_9439763_right_count small_9439763_right_encoded = true := by
  decide +kernel
theorem small_9439763_right_covered : CoveredBy scale carrier boxes small_9439763_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439763_right_root small_9439763_right_fuel small_9439763_right_count small_9439763_right_encoded small_9439763_right_checked

theorem cover_9439763 : CoveredBy scale carrier boxes root_9439763 := by
  apply coveredBy_split_literal root_9439763 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439768 small_9439763_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439768
  · exact small_9439763_right_covered
#print axioms cover_9439763

def root_9439762 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9439762 : CoveredBy scale carrier boxes root_9439762 := by
  apply coveredBy_split_literal root_9439762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3533.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439763
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3533.covered
#print axioms cover_9439762

def root_9439757 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439757_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439757_right_fuel : Nat := 1
def small_9439757_right_count : Nat := 1
def small_9439757_right_encoded : String := "00000003"
theorem small_9439757_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439757_right_root small_9439757_right_fuel small_9439757_right_count small_9439757_right_encoded = true := by
  decide +kernel
theorem small_9439757_right_covered : CoveredBy scale carrier boxes small_9439757_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439757_right_root small_9439757_right_fuel small_9439757_right_count small_9439757_right_encoded small_9439757_right_checked

theorem cover_9439757 : CoveredBy scale carrier boxes root_9439757 := by
  apply coveredBy_split_literal root_9439757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439762 small_9439757_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439762
  · exact small_9439757_right_covered
#print axioms cover_9439757

def root_9439756 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439756_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439756_right_fuel : Nat := 19
def small_9439756_right_count : Nat := 209
def small_9439756_right_encoded : String := "135D45070000000305000108135D44FF0CFD9C010F34D10000000000045489F91386AD02078000FA128A7D05028000FC13D7ED070280010813D7B0FF0AD357810000000910D13D00067ECE790000000612EA59020000000100000006000000000000000413D7ECFF000000040AD3578110D1010000000000067ECE790000000612EA59020000000100000006000000060000000313D7B1070000000302800108000000090000000600000002128A410500000002028000FC13D7ED070280010813D7B0FF0AD3578110D1010000000000067ECE790000000912EA5902000000010000000910D13D00067ECE790000000612EA590200000001064000FA0000000600000006000000000000000413D7ECFF000000040AD3578110D1010000000000067ECE790000000600000005000000060000000313D7B107000000030280010813D7B0FF0AD3578110D101000000000000000009000000060000000400000005000000011386710200000001078000FA128A7D05028000FC13D7ED070280010813D7B0FF0AD357810000000910D13D00022A45790000000900000007000000000000000413D7ECFF000000040AD3578110D1010000000000022A4579000000090000000510D13D00022A457913E2010208C000FA00000006000000050000000100000005000000000000000313D7B107000000030280010813D7B0FF0AD357810000000710D13D000000000700000000000000040000000500000002128A410500000002028000FC13D7ED070280010813D7B0FF0AD3578110D10100000000000000000510D13D000000000700000000000000040000000500000003000000050F350D00045489F90000000613867102000000010C9A87000F875101000000000000000A0F878D01078000FA128A7D05028000FC13D7ED070280010813D7B0FF022A457900000006000000070000000413D7ECFF00000004022A4579000000060000000A000000030000000A00000002128A410500000002028000FC13D7ED070280010800000007000000050000000300000005000000000000000000000004135D80FF000000040CFD9C010F34D10000000000045489F9000000061386710200000001000000050F350D00045489F90000000613867102000000010000000600000000"
theorem small_9439756_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439756_right_root small_9439756_right_fuel small_9439756_right_count small_9439756_right_encoded = true := by
  decide +kernel
theorem small_9439756_right_covered : CoveredBy scale carrier boxes small_9439756_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439756_right_root small_9439756_right_fuel small_9439756_right_count small_9439756_right_encoded small_9439756_right_checked

theorem cover_9439756 : CoveredBy scale carrier boxes root_9439756 := by
  apply coveredBy_split_literal root_9439756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439757 small_9439756_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439757
  · exact small_9439756_right_covered
#print axioms cover_9439756

def root_9439751 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439751_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439751_right_fuel : Nat := 1
def small_9439751_right_count : Nat := 1
def small_9439751_right_encoded : String := "00000002"
theorem small_9439751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439751_right_root small_9439751_right_fuel small_9439751_right_count small_9439751_right_encoded = true := by
  decide +kernel
theorem small_9439751_right_covered : CoveredBy scale carrier boxes small_9439751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439751_right_root small_9439751_right_fuel small_9439751_right_count small_9439751_right_encoded small_9439751_right_checked

theorem cover_9439751 : CoveredBy scale carrier boxes root_9439751 := by
  apply coveredBy_split_literal root_9439751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439756 small_9439751_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439756
  · exact small_9439751_right_covered
#print axioms cover_9439751

def root_9439750 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439750_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439750_right_fuel : Nat := 21
def small_9439750_right_count : Nat := 213
def small_9439750_right_encoded : String := "135D450500000002050000FC135D810705000108135D44FF0CFD9C010F34D10000000000045489F91386AD02028000FA13D7ED05078000FC0000000A128A4107000000030280010813D7B0FF0AD357810000000A10D13D0000000008000000000000000413D7ECFF000000040AD357810000000A10D13D000000000A00000000000000020000000A000000011386710200000001028000FA13D7ED05078000FC128A7D070000000A00000003128A4107000000030280010813D7B0FF0AD3578110D10100000000000000000510D13D00000000070000000000000004000000050000000213D7B10500000002078000FC0000000A000000050F350D00045489F91386AD020C9A8700000000080F878D01028000FA13D7ED05078000FC00000008128A410700000003000000080000000200000008000000000000000113867102000000010C9A87000F87510100000000028000FA13D7ED05078000FC00000008128A4107000000030000000800000002000000080F878D01028000FA13D7ED05078000FC128A7D070280010813D7B0FF022A457900000008000000070000000413D7ECFF00000004022A45790000000813E1C502000000010DE7CA00000000080000000500000003128A4107000000030280010800000007000000050000000213D7B10500000002078000FC0000000800000005000000000000000000000004135D80FF000000040CFD9C010F34D10000000000045489F91386AD020000000A000000011386710200000001000000050F350D00045489F91386AD020C9A8700000000060F878D01028000FA0000000600000006000000000000000113867102000000010C9A87000F87510100000000028000FA0000000900000005000000050000000000000003135D45070000000305000108135D44FF0CFD9C010F34D10000000000045489F91386AD02028000FA13D7ED05028000FC13D7ED070280010813D7B0FF0AD3578110D1010000000000067ECE790000000A0000000510D13D00067ECE7900000006000000050000000000000004000000050000000300000005000000020000000500000001000000050F350D00045489F90000000613867102000000010C9A870000000007000000050000000000000004135D80FF000000040CFD9C010F34D100000000000000000500000005"
theorem small_9439750_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439750_right_root small_9439750_right_fuel small_9439750_right_count small_9439750_right_encoded = true := by
  decide +kernel
theorem small_9439750_right_covered : CoveredBy scale carrier boxes small_9439750_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439750_right_root small_9439750_right_fuel small_9439750_right_count small_9439750_right_encoded small_9439750_right_checked

theorem cover_9439750 : CoveredBy scale carrier boxes root_9439750 := by
  apply coveredBy_split_literal root_9439750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439751 small_9439750_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439751
  · exact small_9439750_right_covered
#print axioms cover_9439750

def root_9439744 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439744_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439744_left_fuel : Nat := 1
def small_9439744_left_count : Nat := 1
def small_9439744_left_encoded : String := "00000001"
theorem small_9439744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439744_left_root small_9439744_left_fuel small_9439744_left_count small_9439744_left_encoded = true := by
  decide +kernel
theorem small_9439744_left_covered : CoveredBy scale carrier boxes small_9439744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439744_left_root small_9439744_left_fuel small_9439744_left_count small_9439744_left_encoded small_9439744_left_checked

theorem cover_9439744 : CoveredBy scale carrier boxes root_9439744 := by
  apply coveredBy_split_literal root_9439744 small_9439744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439750 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9439744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439750
#print axioms cover_9439744

def root_9439354 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439354_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439354_left_fuel : Nat := 20
def small_9439354_left_count : Nat := 181
def small_9439354_left_encoded : String := "12073D02050000FA135D8105050000FC135D810705000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350D020000000A000000010F34D10200000001078000FA128A7D05078000FC0000000A128A4107000000030280010813D7B0FF0AD357810000000A10D13D000000000600000000000000040000000600000002128A410500000002078000FC0000000A128A4107000000030000000A0F350D000CFD9BF9000000080F34D102000000010C9A8700000000060F878D01078000FA128A7D05078000FC00000008000000060000000200000008000000000000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF9000000070F34D10200000001078000FA128A7D050000000A000000020000000A0F350D000CFD9BF90F350D020C9A87000000000600000007000000010F34D10200000001000000060000000000000003135D45070000000305000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350D020C9A87020F8750F9000000060000000100000006000000010F34D10200000001078000FA00000006000000060F350D000CFD9BF9000000060F34D10200000001000000060000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF9000000060F34D10200000001000000060F350D000CFD9BF9000000060F34D10200000001000000060000000000000002135D450500000002050000FC135D810705000108135D44FF0CFD9C010F34D100000000000CFD9BF9000000080000000A0000000800000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000060F34D10200000001000000060000000000000003135D45070000000305000108135D44FF0CFD9C010F34D100000000000CFD9BF9000000060F34D10200000001000000060F350D00000000060000000000000004135D80FF000000040CFD9C01000000060F350D00000000060000000000000001"
theorem small_9439354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439354_left_root small_9439354_left_fuel small_9439354_left_count small_9439354_left_encoded = true := by
  decide +kernel
theorem small_9439354_left_covered : CoveredBy scale carrier boxes small_9439354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439354_left_root small_9439354_left_fuel small_9439354_left_count small_9439354_left_encoded small_9439354_left_checked

theorem cover_9439354 : CoveredBy scale carrier boxes root_9439354 := by
  apply coveredBy_split_literal root_9439354 small_9439354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439744 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9439354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439744
#print axioms cover_9439354

def root_9439349 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439349_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9439349_right_fuel : Nat := 1
def small_9439349_right_count : Nat := 1
def small_9439349_right_encoded : String := "00000000"
theorem small_9439349_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9439349_right_root small_9439349_right_fuel small_9439349_right_count small_9439349_right_encoded = true := by
  decide +kernel
theorem small_9439349_right_covered : CoveredBy scale carrier boxes small_9439349_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9439349_right_root small_9439349_right_fuel small_9439349_right_count small_9439349_right_encoded small_9439349_right_checked

theorem cover_9439349 : CoveredBy scale carrier boxes root_9439349 := by
  apply coveredBy_split_literal root_9439349 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439354 small_9439349_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439354
  · exact small_9439349_right_covered
#print axioms cover_9439349

def root_9438771 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438771_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438771_left_fuel : Nat := 24
def small_9438771_left_count : Nat := 277
def small_9438771_left_encoded : String := "120701000000000008A912F912073D02050000FA135D8105050000FC0000000A135D45070000000305000108135D44FF04548A010000000A1386AD000CFD9BF90F350D020000000A000000010F34D10200000001078000FA000000090000000A0000000000000004135D80FF0000000404548A0113867100000000000000000A1386AD000CFD9BF9000000060F34D10200000001000000060000000000000002135D450500000002050000FC0000000A135D45070000000305000108135D44FF04548A010000000A1386AD000CFD9BF90000000A0000000A00000000000000040000000A000000011207010200000001050000FA135D8105050000FC135D810705000108135D44FF04548A011386710000000000045489F9000000091386710200000001078000FA000000090000000A1386AD00045489F90000000A1386710200000001078000FA128A7D05078000FC128A7D070000000A00000003128A4107000000030000000900000002128A410500000002078000FC0000000A0000000A0000000000000004135D80FF0000000404548A011386710000000000045489F90000000A1386710200000001078000FA128A7D05078000FC0000000A128A410700000003078001080000000900000005000000020000000A1386AD00045489F91386AD02078000FA128A7D050000000A000000020000000A000000011386710200000001078000FA128A7D05078000FC128A7D07078001080000000A128A7CFF000000040000000A00000003128A41070000000307800108128A40FF067ECE8112EA590000000000022A4579000000090000000512EA9500022A457913E201020000000A000000010000000500000000000000040000000500000002128A410500000002078000FC0000000A000000050000000000000003135D45070000000305000108135D44FF04548A011386710000000000000000091386AD00045489F91386AD02078000FA00000009128A410500000002028000FC0000000A13D7B10700000003028001080000000900000005000000011386710200000001078000FA00000009128A410500000002028000FC13D7ED0702800108000000090000000500000003000000050000000000000004135D80FF0000000404548A011386710000000000045489F91386AD02078000FA128A7D0500000009000000020000000500000001000000051386AD00045489F91386AD02078000FA128A7D05028000FC13D7ED0707800108128A40FF067ECE810000000912EA9500000000060000000000000004000000050000000300000005000000020000000500000001000000050000000000000002135D450500000002050000FC135D8107050001080000000A135D80FF0000000404548A010000000A0000000A00000003135D45070000000305000108135D44FF04548A0113867100000000000000000A1386AD00045489F91386AD02028000FA13D7ED05028000FC0000000A0000000500000002000000050000000100000005000000000000000400000005"
theorem small_9438771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9438771_left_root small_9438771_left_fuel small_9438771_left_count small_9438771_left_encoded = true := by
  decide +kernel
theorem small_9438771_left_covered : CoveredBy scale carrier boxes small_9438771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9438771_left_root small_9438771_left_fuel small_9438771_left_count small_9438771_left_encoded small_9438771_left_checked

theorem cover_9438771 : CoveredBy scale carrier boxes root_9438771 := by
  apply coveredBy_split_literal root_9438771 small_9438771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9439349 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9438771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9439349
#print axioms cover_9438771

def root_9438766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438766_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438766_right_fuel : Nat := 1
def small_9438766_right_count : Nat := 1
def small_9438766_right_encoded : String := "00000004"
theorem small_9438766_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9438766_right_root small_9438766_right_fuel small_9438766_right_count small_9438766_right_encoded = true := by
  decide +kernel
theorem small_9438766_right_covered : CoveredBy scale carrier boxes small_9438766_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9438766_right_root small_9438766_right_fuel small_9438766_right_count small_9438766_right_encoded small_9438766_right_checked

theorem cover_9438766 : CoveredBy scale carrier boxes root_9438766 := by
  apply coveredBy_split_literal root_9438766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9438771 small_9438766_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9438771
  · exact small_9438766_right_covered
#print axioms cover_9438766

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644

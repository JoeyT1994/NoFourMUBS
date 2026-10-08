import TaoBundleAssembly0224
import TaoBundleAssembly0225
import TaoBundleChunkBatch0882
import TaoBundleChunkBatch0883
import TaoBundleChunkBatch0884
import TaoBundleChunkBatch0885
import TaoBundleChunkBatch0886
import TaoBundleChunkBatch0887
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226
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
  apply coveredBy_split_literal root_9442590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9442591 small_9442590_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9442591
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
  apply coveredBy_split_literal root_9442585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442590 small_9442585_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442590
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
  apply coveredBy_split_literal root_9442584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442585 small_9442584_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442585
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
  apply coveredBy_split_literal root_9442579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442584 small_9442579_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442584
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
  apply coveredBy_split_literal root_9442401 small_9442401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442579 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9442401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442579
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
  apply coveredBy_split_literal root_9442395 small_9442395_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442401 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9442395_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442401
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
  apply coveredBy_split_literal root_9442185 small_9442185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442395 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9442185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442395
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
  apply coveredBy_split_literal root_9442180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442185 small_9442180_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442185
  · exact small_9442180_right_covered
#print axioms cover_9442180

def root_9439768 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9439768 : CoveredBy scale carrier boxes root_9439768 := by
  apply coveredBy_split_literal root_9439768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3531.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9442180 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3531.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9442180
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
  apply coveredBy_split_literal root_9439763 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439768 small_9439763_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439768
  · exact small_9439763_right_covered
#print axioms cover_9439763

def root_9439762 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9439762 : CoveredBy scale carrier boxes root_9439762 := by
  apply coveredBy_split_literal root_9439762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3533.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439763
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
  apply coveredBy_split_literal root_9439757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439762 small_9439757_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439762
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
  apply coveredBy_split_literal root_9439756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439757 small_9439756_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439757
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
  apply coveredBy_split_literal root_9439751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439756 small_9439751_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439756
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
  apply coveredBy_split_literal root_9439750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439751 small_9439750_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439751
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
  apply coveredBy_split_literal root_9439744 small_9439744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439750 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9439744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439750
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
  apply coveredBy_split_literal root_9439354 small_9439354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439744 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9439354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439744
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
  apply coveredBy_split_literal root_9439349 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439354 small_9439349_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439354
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
  apply coveredBy_split_literal root_9438771 small_9438771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9439349 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9438771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9439349
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
  apply coveredBy_split_literal root_9438766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9438771 small_9438766_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9438771
  · exact small_9438766_right_covered
#print axioms cover_9438766

def root_9438765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438765_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438765_right_fuel : Nat := 20
def small_9438765_right_count : Nat := 179
def small_9438765_right_encoded : String := "115224FF0000000408A91301120701000000000008A912F912073D0208A912FF12073D08050000FA135D8105050000FC00000007135D45070000000304548A01000000060000000700000002135D4505000000020000000A000000040000000A00000001120701020000000108A912FF12073D08050000FA135D8105050000FC135D810704548A011386710000000000045489F91386AD020CFD9BFF0F350D080000000A000000040000000500000001000000051386AD00045489F91386AD020CFD9BFF0F350D080C9A87080000000A00000005000000040000000500000001000000050000000000000003000000050000000200000005000000040000000512073D0008A912F912073D0208A912FF12073D08050000FA135D8105050000FC135D81070CFD9C010F34D10000000000000000070000000700000003135D4507000000030CFD9C010F34D100000000000CFD9BF9000000060F34D10200000001000000060F350D000CFD9BF9000000060F34D10200000001000000060000000000000002135D450500000002050000FC135D81070CFD9C010F34D100000000000000000A0F350D00000000060000000000000003135D450700000003000000060000000412070108000000040000000600000001120701020000000108A912FF12073D08050000FA135D8105050000FC135D81070CFD9C010F34D10000000000045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF0000000600000004000000050000000400000006000000011386710200000001000000050F350D00045489F90000000613867102000000010CFD9BFF0F350D080000000600000004000000050000000000000003135D4507000000030CFD9C010F34D10000000000000000050000000500000002135D450500000002050000FC135D81070CFD9C010F34D10000000000000000050000000500000003000000050000000412070108000000040000000500000000"
theorem small_9438765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9438765_right_root small_9438765_right_fuel small_9438765_right_count small_9438765_right_encoded = true := by
  decide +kernel
theorem small_9438765_right_covered : CoveredBy scale carrier boxes small_9438765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9438765_right_root small_9438765_right_fuel small_9438765_right_count small_9438765_right_encoded small_9438765_right_checked

theorem cover_9438765 : CoveredBy scale carrier boxes root_9438765 := by
  apply coveredBy_split_literal root_9438765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9438766 small_9438765_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9438766
  · exact small_9438765_right_covered
#print axioms cover_9438765

def root_9438759 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438759_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438759_left_fuel : Nat := 1
def small_9438759_left_count : Nat := 1
def small_9438759_left_encoded : String := "00000003"
theorem small_9438759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9438759_left_root small_9438759_left_fuel small_9438759_left_count small_9438759_left_encoded = true := by
  decide +kernel
theorem small_9438759_left_covered : CoveredBy scale carrier boxes small_9438759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9438759_left_root small_9438759_left_fuel small_9438759_left_count small_9438759_left_encoded small_9438759_left_checked

theorem cover_9438759 : CoveredBy scale carrier boxes root_9438759 := by
  apply coveredBy_split_literal root_9438759 small_9438759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9438765 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9438759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9438765
#print axioms cover_9438759

def root_9434759 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9434759 : CoveredBy scale carrier boxes root_9434759 := by
  apply coveredBy_split_literal root_9434759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9434760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9438759 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9434760
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9438759
#print axioms cover_9434759

def root_9434753 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434753_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434753_left_fuel : Nat := 1
def small_9434753_left_count : Nat := 1
def small_9434753_left_encoded : String := "00000002"
theorem small_9434753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434753_left_root small_9434753_left_fuel small_9434753_left_count small_9434753_left_encoded = true := by
  decide +kernel
theorem small_9434753_left_covered : CoveredBy scale carrier boxes small_9434753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434753_left_root small_9434753_left_fuel small_9434753_left_count small_9434753_left_encoded small_9434753_left_checked

theorem cover_9434753 : CoveredBy scale carrier boxes root_9434753 := by
  apply coveredBy_split_literal root_9434753 small_9434753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9434759 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9434753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9434759
#print axioms cover_9434753

def root_9421949 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9421949 : CoveredBy scale carrier boxes root_9421949 := by
  apply coveredBy_split_literal root_9421949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9421950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9434753 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9421950
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9434753
#print axioms cover_9421949

def root_9421943 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421943_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421943_left_fuel : Nat := 1
def small_9421943_left_count : Nat := 1
def small_9421943_left_encoded : String := "00000001"
theorem small_9421943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421943_left_root small_9421943_left_fuel small_9421943_left_count small_9421943_left_encoded = true := by
  decide +kernel
theorem small_9421943_left_covered : CoveredBy scale carrier boxes small_9421943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421943_left_root small_9421943_left_fuel small_9421943_left_count small_9421943_left_encoded small_9421943_left_checked

theorem cover_9421943 : CoveredBy scale carrier boxes root_9421943 := by
  apply coveredBy_split_literal root_9421943 small_9421943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9421949 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9421943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9421949
#print axioms cover_9421943

def root_9421507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421507_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421507_left_fuel : Nat := 20
def small_9421507_left_count : Nat := 203
def small_9421507_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E8FF08A91301120701000000000008A91305120700FA08A913070000000A00000005000000020000000A12073D0008A91305120700FA0000000500000002000000050000000000000004115224FF0000000408A9130112070100000000000000000712073D0008A91305120700FA00000007000000020000000700000000000000031151E907000000030A0001081151E8FF08A91301120701000000000008A91305120700FA000000050000000212073CFA000000020500010200000005135D80F900000001050000FC00000005135D45070000000305000108000000050000000712073D0008A91305120700FA000000050000000212073CFA000000020500010200000005135D80F900000001050000FC00000005135D4507000000030500010800000005135D80FF000000040CFD9C010F34D1000000000000000007000000070000000000000004115224FF0000000408A9130112070100000000000000000712073D0008A91305120700FA00000007000000020000000700000000000000021151E905000000020A0000FC115225070A0001081151E8FF08A913010000000A12073D0008A91307120700FC000000050000000312073CFC000000030500010200000005135D80F900000001050000FA000000050000000A0000000000000004115224FF0000000408A913011207010000000000000000070000000A000000031151E907000000030A0001081151E8FF08A9130112070100000000000000000A12073D0005000102135D44F9050000FA135D81050000000A000000020000000800000001135D80F900000001050000FA135D8105050000FC135D810705000108000000050000000700000003135D45070000000305000108135D44FF0000000800000004135D80FF000000040CFD9C010000000A0000000700000002135D450500000002050000FC00000008135D450700000003000000080000000000000004115224FF0000000408A9130112070100000000000000000712073D0008A912FF12073D08050001020000000A135D80F900000001050000FA000000070000000A00000004000000070000000000000001"
theorem small_9421507_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421507_left_root small_9421507_left_fuel small_9421507_left_count small_9421507_left_encoded = true := by
  decide +kernel
theorem small_9421507_left_covered : CoveredBy scale carrier boxes small_9421507_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421507_left_root small_9421507_left_fuel small_9421507_left_count small_9421507_left_encoded small_9421507_left_checked

theorem cover_9421507 : CoveredBy scale carrier boxes root_9421507 := by
  apply coveredBy_split_literal root_9421507 small_9421507_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9421943 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9421507_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9421943
#print axioms cover_9421507

def root_9421502 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421502_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421502_right_fuel : Nat := 1
def small_9421502_right_count : Nat := 1
def small_9421502_right_encoded : String := "00000000"
theorem small_9421502_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421502_right_root small_9421502_right_fuel small_9421502_right_count small_9421502_right_encoded = true := by
  decide +kernel
theorem small_9421502_right_covered : CoveredBy scale carrier boxes small_9421502_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421502_right_root small_9421502_right_fuel small_9421502_right_count small_9421502_right_encoded small_9421502_right_checked

theorem cover_9421502 : CoveredBy scale carrier boxes root_9421502 := by
  apply coveredBy_split_literal root_9421502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9421507 small_9421502_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9421507
  · exact small_9421502_right_covered
#print axioms cover_9421502

def root_9418552 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9418552 : CoveredBy scale carrier boxes root_9418552 := by
  apply coveredBy_split_literal root_9418552 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3525.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9421502 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3525.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9421502
#print axioms cover_9418552

def root_9418551 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9418551_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9418551_right_fuel : Nat := 21
def small_9418551_right_count : Nat := 365
def small_9418551_right_encoded : String := "0A0001001151E901000000000A0001021151E8F90A0000FA115225050A0000FC115225070A0001081151E909000000040000000700000007000000031151E907000000030A0001081151E909000000040000000700000007000000021151E905000000020A0000FC115225070A0001081151E909000000040000000600000007000000031151E907000000030000000A00000001115224F9000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A912F9000000071207010200000001000000071152250908A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A91307000000070000000700000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A913070000000912073CFC000000030000000600000004000000031151E907000000030A0001081151E90900000004000000061152250908A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A91309000000060000000700000001120701020000000108A91305120700FA00000006000000020000000600000004000000021151E905000000020A0000FC115225070A0001081151E909000000040000000A1152250908A912F912073D0208A913070000000A00000006000000010000000900000004000000031151E907000000030A0001081151E909000000040000000500000006115225010A0001021151E8F90A0000FA115225050A0000FC115225070A0001081151E909000000040000000700000007000000031151E907000000030A0001081151E909000000040000000600000007000000021151E905000000020A0000FC115225070A0001081151E909000000040000000700000007000000031151E907000000030A0001080000000A0000000600000001115224F9000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A91301120701000000000008A912F900000007120701020000000108A91305120700FA00000007000000020000000712073D0008A912F900000007120701020000000108A913050000000700000007000000001152250908A91301120701000000000008A912F900000007120701020000000108A91305120700FA000000070000000212073CFA0000000208A91307120700FC00000007000000030000000712073D0008A912F912073D0208A91305120700FA00000007000000020000000700000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC0000000308A91309120701080000000400000007000000070000000000000004000000031151E907000000030A0001081151E9090000000408A913010000000812073D0008A912F90000000600000008000000001152250908A91301120701000000000008A912F900000007120701020000000108A913050000000612073CFA0000000208A91309000000080000000612073D0008A912F912073D0208A91305120700FA00000007000000020000000700000001120701020000000108A9130500000006000000060000000000000004000000021151E905000000020A0000FC115225070A0001081151E9090000000408A91301120701000000000008A912F90000000712070102000000010000000A12073D0008A912F912073D0208A9130700000007000000070000000112070102000000010000000A000000001152250908A91301120701000000000008A912F90000000712070102000000010000000A12073D0008A912F90000000A120701020000000108A913070000000912073CFC000000030000000A0000000000000004000000031151E907000000030A0001081151E909000000040000000A1152250908A91301120701000000000008A912F90000000712070102000000010000000512073D0008A912F900000006120701020000000100000005000000000000000400000000"
theorem small_9418551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9418551_right_root small_9418551_right_fuel small_9418551_right_count small_9418551_right_encoded = true := by
  decide +kernel
theorem small_9418551_right_covered : CoveredBy scale carrier boxes small_9418551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9418551_right_root small_9418551_right_fuel small_9418551_right_count small_9418551_right_encoded small_9418551_right_checked

theorem cover_9418551 : CoveredBy scale carrier boxes root_9418551 := by
  apply coveredBy_split_literal root_9418551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9418552 small_9418551_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9418552
  · exact small_9418551_right_covered
#print axioms cover_9418551

def root_9373859 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9373859 : CoveredBy scale carrier boxes root_9373859 := by
  apply coveredBy_split_literal root_9373859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9373860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9418551 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9373860
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9418551
#print axioms cover_9373859

def root_9366625 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9366625 : CoveredBy scale carrier boxes root_9366625 := by
  apply coveredBy_split_literal root_9366625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9366626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9373859 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9366626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9373859
#print axioms cover_9366625

def root_9450489 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450489 : CoveredBy scale carrier boxes root_9450489 := by
  apply coveredBy_split_literal root_9450489 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3534.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3535.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3534.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3535.covered
#print axioms cover_9450489

def root_9455875 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455875_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455875_left_fuel : Nat := 22
def small_9455875_left_count : Nat := 225
def small_9455875_left_encoded : String := "1151E8FD0A0000FE1152250908A91301120701000000000008A912F912073D0208A91305120700FA08A913090000000812073CFE000000040500010600000005135D80FD00000003000000050000000212073CFA0000000208A913090000000812073CFE000000040000000800000001120701020000000108A91305120700FA08A91309120700FE0000000500000004000000050000000212073CFA0000000208A91309120700FE000000050000000412073CFE0000000405000106135D44FD04548A011386710000000000045489F90000000513867102000000010CFD9C05000000050F350CFA00000002000000080000000800000003135D80FD0000000304548A011386710000000000045489F91386AD02000000080000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA00000002000000081386AD00045489F90000000813867102000000010CFD9C0500000007000000080000000012073D0008A912F912073D0208A91305120700FA00000005000000020000000800000001120701020000000108A913050000000712073CFA0000000208A91309000000080000000700000000000000041151E9090000000408A91301120701000000000008A912F912073D0208A91305120700FA000000070000000212073CFA0000000205000106135D44FD050000FE135D810904548A011386710000000000000000080000000700000004135D4509000000040000000700000003135D80FD00000003050000FE135D810904548A011386710000000000000000080000000800000004135D45090000000404548A0113867100000000000CFD9BF90F350D0200000008000000010F34D10200000001000000070000000800000001120701020000000108A913050000000712073CFA0000000205000106135D44FD0000000700000003135D80FD00000003050000FE135D810904548A011386710000000000045489F91386AD020CFD9C05000000070F350CFA000000020C9A86FA00000007000000080000000113867102000000010CFD9C05000000070F350CFA000000020C9A86FA000000070F87510500000002000000070000000700000004135D45090000000404548A011386710000000000045489F9000000070000000A0000000712073D0008A912F912073D0208A913050000000712073CFA00000002050001060000000700000008000000011207010200000001000000070000000000000003"
theorem small_9455875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455875_left_root small_9455875_left_fuel small_9455875_left_count small_9455875_left_encoded = true := by
  decide +kernel
theorem small_9455875_left_covered : CoveredBy scale carrier boxes small_9455875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455875_left_root small_9455875_left_fuel small_9455875_left_count small_9455875_left_encoded small_9455875_left_checked

theorem cover_9455875 : CoveredBy scale carrier boxes root_9455875 := by
  apply coveredBy_split_literal root_9455875 small_9455875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3536.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9455875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3536.covered
#print axioms cover_9455875

def root_9455870 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455870_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455870_right_fuel : Nat := 1
def small_9455870_right_count : Nat := 1
def small_9455870_right_encoded : String := "00000002"
theorem small_9455870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455870_right_root small_9455870_right_fuel small_9455870_right_count small_9455870_right_encoded = true := by
  decide +kernel
theorem small_9455870_right_covered : CoveredBy scale carrier boxes small_9455870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455870_right_root small_9455870_right_fuel small_9455870_right_count small_9455870_right_encoded small_9455870_right_checked

theorem cover_9455870 : CoveredBy scale carrier boxes root_9455870 := by
  apply coveredBy_split_literal root_9455870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9455875 small_9455870_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9455875
  · exact small_9455870_right_covered
#print axioms cover_9455870

def root_9455869 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455869_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455869_right_fuel : Nat := 22
def small_9455869_right_count : Nat := 241
def small_9455869_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A91301120701000000000008A912F900000008120701020000000108A91309000000080000000812073D0008A912F912073D0200000008000000010000000800000000000000041151E9090000000408A91301120701000000000008A912F912073D02050000FA135D81050500010600000008000000080000000200000008000000011207010200000001050000FA135D810505000106135D44FD050000FE135D810904548A011386710000000000000000080000000700000004135D45090000000404548A011386710000000000000000070000000700000003135D80FD00000003050000FE135D810904548A011386710000000000000000080000000800000004135D45090000000404548A011386710000000000045489F91386AD02078000FA128A7D0500000008000000020000000500000001000000051386AD00000000080000000000000002135D45050000000205000106135D44FD050000FE00000008135D45090000000404548A011386710000000000045489F900000008000000050000000700000003135D80FD00000003050000FE000000080000000512073D0008A912F9000000081207010200000001050000FA135D810505000106000000070000000800000002000000080000000000000003115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073D0208A912FD000000080000000800000001120701020000000108A912FD12073D0608A913090000000812073CFE00000004050000FA135D810504548A011386710000000000045489F90000000813867102000000010000000800000008000000020000000800000003120701060000000308A913090000000812073CFE000000040000000812073D0008A912F912073D0208A912FD12073D060000000800000003120701060000000308A91309120700FE050000FA00000008135D4505000000020CFD9C01000000080000000A0000000412073CFE000000040000000800000001120701020000000108A912FD000000080000000800000000000000041151E9090000000408A91301120701000000000008A912F912073D0208A912FD12073D0600000008000000030000000800000001120701020000000108A912FD12073D06050000FA135D8105050000FE135D810904548A011386710000000000045489F900000008000000050000000800000004000000050000000200000005000000030000000512073D0008A912F900000008120701020000000108A912FD12073D0600000008000000030000000800000000"
theorem small_9455869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455869_right_root small_9455869_right_fuel small_9455869_right_count small_9455869_right_encoded = true := by
  decide +kernel
theorem small_9455869_right_covered : CoveredBy scale carrier boxes small_9455869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455869_right_root small_9455869_right_fuel small_9455869_right_count small_9455869_right_encoded small_9455869_right_checked

theorem cover_9455869 : CoveredBy scale carrier boxes root_9455869 := by
  apply coveredBy_split_literal root_9455869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9455870 small_9455869_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9455870
  · exact small_9455869_right_covered
#print axioms cover_9455869

def root_9455863 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455863_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455863_left_fuel : Nat := 1
def small_9455863_left_count : Nat := 1
def small_9455863_left_encoded : String := "00000001"
theorem small_9455863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455863_left_root small_9455863_left_fuel small_9455863_left_count small_9455863_left_encoded = true := by
  decide +kernel
theorem small_9455863_left_covered : CoveredBy scale carrier boxes small_9455863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455863_left_root small_9455863_left_fuel small_9455863_left_count small_9455863_left_encoded small_9455863_left_checked

theorem cover_9455863 : CoveredBy scale carrier boxes root_9455863 := by
  apply coveredBy_split_literal root_9455863 small_9455863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9455869 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9455863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9455869
#print axioms cover_9455863

def root_9455329 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455329_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455329_left_fuel : Nat := 20
def small_9455329_left_count : Nat := 249
def small_9455329_left_encoded : String := "1151E8F90A0000FA115225050A0001061151E8FD0A0000FE1152250908A91301120701000000000008A91305120700FA08A913090000000800000005000000020000000812073D0008A91305120700FA00000005000000020000000500000000000000041151E9090000000408A91301120701000000000008A91305120700FA0000000500000002000000080000000800000003115224FD000000030A0000FE1152250908A91301120701000000000008A91305120700FA08A912FD12073D0608A91309120700FE0500010200000005000000080000000412073CFE000000040500010200000005135D80F90000000100000005000000031207010600000003000000090000000212073CFA0000000208A912FD12073D0608A913090000000812073CFE000000040500010200000005000000080000000312070106000000030000000912073D0008A91305120700FA08A912FD12073D060000000500000003000000050000000212073CFA0000000208A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000102000000050000000800000003120701060000000308A91309120700FE00000005000000040000000900000000000000041151E9090000000408A91301120701000000000008A91305120700FA08A912FD12073D060500010200000009135D80F900000001050000FE00000009135D45090000000404548A01000000091386AD00000000090000000000000003120701060000000300000009000000020000000912073D0008A91305120700FA08A912FD12073D060500010200000005135D80F900000001050000FE00000005135D4509000000040CFD9C0100000008000000070000000312070106000000030500010200000009135D80F900000001050000FE00000009135D450900000004000000090000000212073CFA0000000208A912FD12073D06000000080000000312070106000000030000000900000000000000021151E905000000020A0001061151E8FD0A0000FE1152250908A913010000000812073D0008A91309120700FE00000005000000040000000800000000000000041151E909000000040000000800000003115224FD000000030A0000FE1152250908A91301120701000000000008A912FD0000000812070106000000030000000912073D0008A912FD12073D0608A91309120700FE05000102000000050000000A0000000412073CFE0000000405000102135D44F900000008000000010000000800000003120701060000000308A91309120700FE0500010200000009135D80F900000001050000FA000000090000000A000000040000000900000000000000041151E909000000040000000800000001"
theorem small_9455329_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455329_left_root small_9455329_left_fuel small_9455329_left_count small_9455329_left_encoded = true := by
  decide +kernel
theorem small_9455329_left_covered : CoveredBy scale carrier boxes small_9455329_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455329_left_root small_9455329_left_fuel small_9455329_left_count small_9455329_left_encoded small_9455329_left_checked

theorem cover_9455329 : CoveredBy scale carrier boxes root_9455329 := by
  apply coveredBy_split_literal root_9455329 small_9455329_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9455863 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9455329_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9455863
#print axioms cover_9455329

def root_9455324 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455324_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455324_right_fuel : Nat := 1
def small_9455324_right_count : Nat := 1
def small_9455324_right_encoded : String := "00000000"
theorem small_9455324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455324_right_root small_9455324_right_fuel small_9455324_right_count small_9455324_right_encoded = true := by
  decide +kernel
theorem small_9455324_right_covered : CoveredBy scale carrier boxes small_9455324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455324_right_root small_9455324_right_fuel small_9455324_right_count small_9455324_right_encoded small_9455324_right_checked

theorem cover_9455324 : CoveredBy scale carrier boxes root_9455324 := by
  apply coveredBy_split_literal root_9455324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9455329 small_9455324_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9455329
  · exact small_9455324_right_covered
#print axioms cover_9455324

def root_9454728 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9454728_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9454728_left_fuel : Nat := 22
def small_9454728_left_count : Nat := 275
def small_9454728_left_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115225050A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250908A91305120700FA000000050000000212073CFA0000000208A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000400000009000000041151E9090000000408A91305120700FA08A912FD000000051207010600000003000000090000000200000008000000021151E905000000020A0001061151E8FD0A0000FE000000051151E909000000040000000800000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000100135D450100000000050001020000000900000008135D810105000102135D44F90000000800000001000000080000000000000003120701060000000308A91309120700FE000000090000000400000009000000041151E909000000040000000800000001115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE1152250900000008000000041151E909000000040000000700000003115224FD000000030A0000FE1152250908A912F912073D0208A91305120700FA08A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000412073CFE000000040500010000000008135D81010CFD9BF9000000080F34D1020000000100000007000000000000000212073CFA0000000208A912FD12073D060000000800000003120701060000000308A91309120700FE05000100135D4501000000000CFD9BF90000000500000008135D81010CFD9BF90000000800000008000000000000000412073CFE000000040000000800000001120701020000000108A91305120700FA08A912FD00000007120701060000000308A9130900000008000000070000000212073CFA0000000208A912FD0000000800000008000000041151E9090000000408A912F912073D0208A91305120700FA08A912FD000000071207010600000003050001000000000700000007000000020000000800000001120701020000000108A913050000000712073CFA0000000208A912FD0000000700000008000000021151E905000000020A0001061151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE0000000500000004000000080000000100000008000000041151E909000000040000000800000003115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073D0608A91309120700FE05000100135D4501000000000000000800000008000000040000000800000003120701060000000308A91309120700FE05000100135D4501000000000000000A135D8101050000FA000000080000000A000000000000000412073CFE0000000405000100000000060000000800000001120701020000000108A912FD00000008120701060000000300000008000000041151E9090000000400000008"
theorem small_9454728_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9454728_left_root small_9454728_left_fuel small_9454728_left_count small_9454728_left_encoded = true := by
  decide +kernel
theorem small_9454728_left_covered : CoveredBy scale carrier boxes small_9454728_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9454728_left_root small_9454728_left_fuel small_9454728_left_count small_9454728_left_encoded small_9454728_left_checked

theorem cover_9454728 : CoveredBy scale carrier boxes root_9454728 := by
  apply coveredBy_split_literal root_9454728 small_9454728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9455324 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9454728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9455324
#print axioms cover_9454728

def root_9450488 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450488 : CoveredBy scale carrier boxes root_9450488 := by
  apply coveredBy_split_literal root_9450488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9450489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9454728 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9450489
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9454728
#print axioms cover_9450488

def root_9459827 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9459827 : CoveredBy scale carrier boxes root_9459827 := by
  apply coveredBy_split_literal root_9459827 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3537.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3538.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3537.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3538.covered
#print axioms cover_9459827

def root_9459821 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9459821_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9459821_left_fuel : Nat := 1
def small_9459821_left_count : Nat := 1
def small_9459821_left_encoded : String := "00000000"
theorem small_9459821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9459821_left_root small_9459821_left_fuel small_9459821_left_count small_9459821_left_encoded = true := by
  decide +kernel
theorem small_9459821_left_covered : CoveredBy scale carrier boxes small_9459821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9459821_left_root small_9459821_left_fuel small_9459821_left_count small_9459821_left_encoded small_9459821_left_checked

theorem cover_9459821 : CoveredBy scale carrier boxes root_9459821 := by
  apply coveredBy_split_literal root_9459821 small_9459821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9459827 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9459821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9459827
#print axioms cover_9459821

def root_9459820 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9459820 : CoveredBy scale carrier boxes root_9459820 := by
  apply coveredBy_split_literal root_9459820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9459821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3539.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9459821
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3539.covered
#print axioms cover_9459820

def root_9468412 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9468412 : CoveredBy scale carrier boxes root_9468412 := by
  apply coveredBy_split_literal root_9468412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3541.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3542.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3541.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3542.covered
#print axioms cover_9468412

def root_9468407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9468407_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9468407_right_fuel : Nat := 1
def small_9468407_right_count : Nat := 1
def small_9468407_right_encoded : String := "00000000"
theorem small_9468407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9468407_right_root small_9468407_right_fuel small_9468407_right_count small_9468407_right_encoded = true := by
  decide +kernel
theorem small_9468407_right_covered : CoveredBy scale carrier boxes small_9468407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9468407_right_root small_9468407_right_fuel small_9468407_right_count small_9468407_right_encoded small_9468407_right_checked

theorem cover_9468407 : CoveredBy scale carrier boxes root_9468407 := by
  apply coveredBy_split_literal root_9468407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9468412 small_9468407_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9468412
  · exact small_9468407_right_covered
#print axioms cover_9468407

def root_9465961 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9465961 : CoveredBy scale carrier boxes root_9465961 := by
  apply coveredBy_split_literal root_9465961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3540.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9468407 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3540.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9468407
#print axioms cover_9465961

def root_9459819 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9459819 : CoveredBy scale carrier boxes root_9459819 := by
  apply coveredBy_split_literal root_9459819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9459820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9465961 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9459820
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9465961
#print axioms cover_9459819

def root_9450487 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450487 : CoveredBy scale carrier boxes root_9450487 := by
  apply coveredBy_split_literal root_9450487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9450488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9459819 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9450488
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9459819
#print axioms cover_9450487

def root_9477211 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477211_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477211_left_fuel : Nat := 25
def small_9477211_left_count : Nat := 483
def small_9477211_left_encoded : String := "120701000000000008A91307120701060000000305000102135D44F9050000FA135D8105050000FE135D80FF0000000404548A010000000900000007135D44FF04548A01000000081386AD0004548A07000000071386AD060280010213D7B0F9078000FA00000008128A410500000002028000FE0000000700000008000000010000000800000003000000000000000400000002135D450500000002050000FE135D80FF0000000404548A0113867100000000000000000900000007135D44FF04548A01138671000000000004548A07000000081386AD060280010213D7B0F9028000FA00000008000000050000000100000005000000031386AD0004548A07000000071386AD060280010213D7B0F9028000FA13D7ED05028000FE0000000713D7B0FF067ECE810000000800000007000000040000000213D7B10500000002028000FE00000007000000050000000113D7ECF900000001028000FA000000070000000500000003000000000000000400000001135D80F900000001050000FA135D8105050000FE000000070000000800000002135D450500000002050000FE000000070000000512073D0605000102135D44F9050000FA135D8105050000FE135D80FF0000000404548A01000000091386AD000CFD9C070F34D10600000003000000090000000900000000135D44FF04548A0113867100000000000CFD9C070F34D1060000000300000009000000091386AD000CFD9C070F34D106000000030280010213D7B0F9078000FA00000009128A410500000002000000090000000113D7ECF900000001078000FA00000009128A410500000002000000090F350D060C9A87060F87510700000003000000090F878D070280010200000009000000090000000300000003000000000000000400000002135D450500000002050000FE135D80FF0000000404548A0113867100000000000CFD9C070F34D1060000000300000009000000091386AD000CFD9C070F34D106000000030280010213D7B0F90000000900000001000000090F350D060C9A87060F87510700000003000000090F878D07028001020000000900000009000000030000000300000000135D44FF04548A0113867100000000000CFD9C070F34D106000000030280010200000009000000090F350D060000000A000000031386AD000CFD9C070F34D106000000030280010213D7B0F9028000FA13D7ED05028000FE0000000913D7B0FF067ECE810000000912EA95000AD3578710D101060000000301400102000000090000000910D13D060140010200000009000000090000000300000000000000040000000213D7B10500000002028000FE13D7ECFF00000004067ECE810000000912EA95000AD3578700000007000000090000000013D7B0FF067ECE8112EA5900000000000000000512EA95000AD3578710D10106000000030000000510D13D060000000A0000000300000000000000040000000113D7ECF900000001028000FA13D7ED05028000FE0000000913D7B0FF067ECE810000000912EA95000AD3578710D1010600000003000000050000000900000000000000040000000213D7B10500000002028000FE13D7ECFF00000004067ECE810000000912EA95000000000700000000000000050F350D060C9A87060F87510700000003028001020000000A13D7ECF900000001028000FA00000009000000060F878D070280010213D7B0F9028000FA13D7ED05028000FE000000090000000A000000020000000A0000000113D7ECF900000001028000FA13D7ED05028000FE0000000913D7B0FF067ECE810000000912EA95000000000900000000000000040000000213D7B10500000002028000FE00000006000000060000000300000003000000000000000400000001135D80F900000001050000FA135D8105050000FE135D80FF0000000404548A01000000091386AD000CFD9C070F34D10600000003000000090000000900000000135D44FF04548A0113867100000000000CFD9C070F34D1060000000300000008000000091386AD000CFD9C070F34D1060000000307800102128A40F9078000FA00000009128A4105000000020000000900000001128A7CF900000001078000FA00000008128A410500000002000000090F350D060C9A87060F87510700000003000000090F878D070780010200000009000000090000000300000003000000000000000400000002135D450500000002050000FE135D80FF0000000404548A0113867100000000000CFD9C070F34D1060000000300000009000000091386AD000CFD9C070F34D10600000003000000070F350D060C9A87060F87510700000003000000060F878D07078001020000000900000006000000030000000300000000135D44FF04548A0113867100000000000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000600000009000000031386AD000CFD9C070F34D1060000000307800102128A40F9028000FA13D7ED05028000FE0000000900000005000000020000000500000001000000050F350D060C9A87060F87510700000003000000060F878D0707800102128A40F9028000FA13D7ED05028000FE0000000600000006000000020000000600000001000000060000000300000003000000000000000400000003"
theorem small_9477211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9477211_left_root small_9477211_left_fuel small_9477211_left_count small_9477211_left_encoded = true := by
  decide +kernel
theorem small_9477211_left_covered : CoveredBy scale carrier boxes small_9477211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9477211_left_root small_9477211_left_fuel small_9477211_left_count small_9477211_left_encoded small_9477211_left_checked

theorem cover_9477211 : CoveredBy scale carrier boxes root_9477211 := by
  apply coveredBy_split_literal root_9477211 small_9477211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3545.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9477211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3545.covered
#print axioms cover_9477211

def root_9477206 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477206_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9477206_right_fuel : Nat := 1
def small_9477206_right_count : Nat := 1
def small_9477206_right_encoded : String := "00000004"
theorem small_9477206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9477206_right_root small_9477206_right_fuel small_9477206_right_count small_9477206_right_encoded = true := by
  decide +kernel
theorem small_9477206_right_covered : CoveredBy scale carrier boxes small_9477206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9477206_right_root small_9477206_right_fuel small_9477206_right_count small_9477206_right_encoded small_9477206_right_checked

theorem cover_9477206 : CoveredBy scale carrier boxes root_9477206 := by
  apply coveredBy_split_literal root_9477206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9477211 small_9477206_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9477211
  · exact small_9477206_right_covered
#print axioms cover_9477206

def root_9476774 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476774_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476774_left_fuel : Nat := 20
def small_9476774_left_count : Nat := 199
def small_9476774_left_encoded : String := "115224FF0000000408A91301120701000000000008A91307120701060000000308A912FF12073CFE0000000405000102135D44F9050000FA000000070000000700000001000000070000000712073D0608A912FF12073CFE0000000405000102135D44F9050000FA00000009135D45050000000204548A01000000091386AD000CFD9C070F34D1060000000300000009000000090000000000000001135D80F900000001050000FA00000009135D45050000000204548A01000000091386AD000CFD9C070F34D10600000003000000070000000900000000120700FE00000009000000040000000312073D0008A91307120701060000000308A912FF00000007120700FE000000070000000412073D0608A912FF12073CFE0000000405000102135D44F9050000FA135D81050CFD9C010F34D100000000000CFD9C070F34D10600000003000000070F350D0600000005000000030F350D000CFD9C07000000050F350D0600000005000000030000000000000002135D4505000000020CFD9C010F34D100000000000CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F87510700000003000000080F878D0700000007000000030F34D0FE0000000500000004000000030F350D000CFD9C07000000070F350D0600000008000000030000000000000001135D80F900000001050000FA135D81050CFD9C010F34D100000000000CFD9C070F34D10600000003000000070F350D060CFD9BFF0000000900000009000000030F350D000CFD9C07000000070F350D060CFD9BFF0000000700000007000000030000000000000002135D4505000000020CFD9C010F34D100000000000CFD9C07000000070F350D060CFD9BFF0000000700000006000000030F350D000000000700000000120700FE05000102135D44F9050000FA135D81050CFD9C01000000050F350D000000000900000000000000020000000700000001135D80F900000001050000FA135D81050CFD9C01000000090F350D000CFD9C070F34D1060000000300000006000000060000000000000002135D45050000000200000007000000040000000300000000"
theorem small_9476774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9476774_left_root small_9476774_left_fuel small_9476774_left_count small_9476774_left_encoded = true := by
  decide +kernel
theorem small_9476774_left_covered : CoveredBy scale carrier boxes small_9476774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9476774_left_root small_9476774_left_fuel small_9476774_left_count small_9476774_left_encoded small_9476774_left_checked

theorem cover_9476774 : CoveredBy scale carrier boxes root_9476774 := by
  apply coveredBy_split_literal root_9476774 small_9476774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9477206 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9476774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9477206
#print axioms cover_9476774

def root_9476769 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476769_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9476769_right_fuel : Nat := 1
def small_9476769_right_count : Nat := 1
def small_9476769_right_encoded : String := "00000003"
theorem small_9476769_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9476769_right_root small_9476769_right_fuel small_9476769_right_count small_9476769_right_encoded = true := by
  decide +kernel
theorem small_9476769_right_covered : CoveredBy scale carrier boxes small_9476769_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9476769_right_root small_9476769_right_fuel small_9476769_right_count small_9476769_right_encoded small_9476769_right_checked

theorem cover_9476769 : CoveredBy scale carrier boxes root_9476769 := by
  apply coveredBy_split_literal root_9476769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.root_9476774 small_9476769_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226.cover_9476774
  · exact small_9476769_right_covered
#print axioms cover_9476769

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0226

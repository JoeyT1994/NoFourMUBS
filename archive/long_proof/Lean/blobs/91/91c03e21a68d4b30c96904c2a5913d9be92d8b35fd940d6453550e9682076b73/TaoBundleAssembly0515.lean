import TaoBundleAssembly0513
import TaoBundleAssembly0514
import TaoBundleChunkBatch0705
import TaoBundleChunkBatch0707
import TaoBundleChunkBatch0708
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515
def root_7506276 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506276_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506276_left_fuel : Nat := 21
def small_7506276_left_count : Nat := 325
def small_7506276_left_encoded : String := "1386AD000CFD9C030F34D102000000010280010413D7B0FB078000FC128A7D07078000FE128A7D09067ECE770000000812EA5900000000000AD357830000000810D13D020140010413F5D8FB08C000FC0000000511FBE90700000003000000090000000213F614FB0000000208C000FC0000000811FBE9070000000308C000FE000000090000000800000001000000040000000800000003128A410700000003078000FE128A7D09067ECE770000000912EA5900000000000AD357830000000910D13D02014001040000000913F614FB00000002064000FC12FFAD0708C000FE0000000911FBE909000000040569AC3700000007000000090000000312FF710700000003000000090000000100000004128A410900000004067ECE7712EA95000AD357830000000810D13D02014001040000000A00000007000000010000000012EA5900000000000AD3578310D10102000000010000000810D13D020140010413F5D8FB064000FC12FFAD07064000FE12FFAD090569AC37000000080000000800000004000000080000000312FF710700000003064000FE12FFAD09000000090000000412FF7109000000040000000A0000000213F614FB00000002064000FC12FFAD07064000FE12FFAD090000000800000004000000080000000312FF710700000003064000FE12FFAD09000000070000000400000007000000010000000213D7ECFB00000002078000FC128A7D07078000FE128A7D09067ECE770000000812EA5900000000000AD357830000000810D13D0203C0010413A510FB08C000FC0000000811FBE9070000000300000008000000020000000800000001000000040000000800000003128A410700000003078000FE128A7D09067ECE7712EA95000AD3578300000008000000070000000012EA5900000000000AD3578310D101020000000103C001040000000913A54CFB000000020000000810D13D0203C0010413A510FB064000FC12FFAD0708C000FE11FC2509000000070000000400000007000000030000000700000002000000070000000100000004128A410900000004067ECE7712EA9500000000080000000012EA5900000000000AD357830000000810D13D0203C0010413A510FB064000FC00000008000000070000000200000007000000010F350D020C9A87020F875103000000010280010413D7B0FB078000FC0000000A0000000700000002000000070F878D030280010413D7B0FB078000FC128A7D07078000FE128A7D09067ECE770000000A12EA5900000000000DE7CA020E5FD903000000010000000A0E6015030140010413F5D8FB08C000FC0000000511FBE907000000030000000A0000000213F614FB0000000208C000FC0000000A11FBE907000000030000000A00000001000000040000000A00000003128A410700000003078000FE128A7D09067ECE770000000712EA5900000000000DE7CA02000000070E6015030140010413F5D8FB064000FC12FFAD0708C000FE0000000900000007000000030000000700000002000000070000000100000004128A410900000004067ECE770000000712EA5900000000000000000A0000000213D7ECFB00000002078000FC128A7D07078000FE128A7D09067ECE770000000712EA5900000000000DE7CA02000000070E60150303C0010413A510FB08C000FC0000000A11FBE90700000003000000070000000213A54CFB0000000208C000FC0000000A0000000700000001000000040000000A00000003128A410700000003078000FE0000000700000007000000010000000100000000"
theorem small_7506276_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506276_left_root small_7506276_left_fuel small_7506276_left_count small_7506276_left_encoded = true := by
  decide +kernel
theorem small_7506276_left_covered : CoveredBy scale carrier boxes small_7506276_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506276_left_root small_7506276_left_fuel small_7506276_left_count small_7506276_left_encoded small_7506276_left_checked

theorem cover_7506276 : CoveredBy scale carrier boxes root_7506276 := by
  apply coveredBy_split_literal root_7506276 small_7506276_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0514.root_7506958 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_7506276_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0514.cover_7506958
#print axioms cover_7506276

def root_7506271 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506271_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506271_right_fuel : Nat := 1
def small_7506271_right_count : Nat := 1
def small_7506271_right_encoded : String := "00000004"
theorem small_7506271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506271_right_root small_7506271_right_fuel small_7506271_right_count small_7506271_right_encoded = true := by
  decide +kernel
theorem small_7506271_right_covered : CoveredBy scale carrier boxes small_7506271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506271_right_root small_7506271_right_fuel small_7506271_right_count small_7506271_right_encoded small_7506271_right_checked

theorem cover_7506271 : CoveredBy scale carrier boxes root_7506271 := by
  apply coveredBy_split_literal root_7506271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506276 small_7506271_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506276
  · exact small_7506271_right_covered
#print axioms cover_7506271

def root_7506270 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506270_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506270_right_fuel : Nat := 17
def small_7506270_right_count : Nat := 129
def small_7506270_right_encoded : String := "135D450900000004045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB078000FC00000008128A410700000003028000FE13D7ED09067ECE770000000812EA5900000000000AD357830000000810D13D020000000A0000000100000004000000080000000213D7ECFB00000002078000FC00000008128A410700000003028000FE13D7ED09067ECE77000000080000000800000004000000050F350D020C9A87020000000A0F878D03028001040000000A0000000A00000001000000010000000013867100000000000CFD9C030F34D102000000010280010413D7B0FB078000FC128A7D07028000FE13D7ED0900000008000000040000000800000003128A410700000003028000FE13D7ED09022A457713E201000AD357830000000810D13D020000000600000001000000000000000600000004000000050000000213D7ECFB00000002078000FC128A7D070000000800000003000000050F350D020C9A87020F87510300000001028001040000000A0000000A0F878D030280010413D7B0FB078000FC128A7D07028000FE13D7ED09022A45770000000A00000006000000040000000600000003000000060000000213D7ECFB00000002078000FC128A7D07028000FE13D7ED09022A45770000000A13E1C500000000000DE7CA020000000A00000005000000040000000500000003000000050000000100000001"
theorem small_7506270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506270_right_root small_7506270_right_fuel small_7506270_right_count small_7506270_right_encoded = true := by
  decide +kernel
theorem small_7506270_right_covered : CoveredBy scale carrier boxes small_7506270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506270_right_root small_7506270_right_fuel small_7506270_right_count small_7506270_right_encoded small_7506270_right_checked

theorem cover_7506270 : CoveredBy scale carrier boxes root_7506270 := by
  apply coveredBy_split_literal root_7506270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506271 small_7506270_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506271
  · exact small_7506270_right_covered
#print axioms cover_7506270

def root_7506265 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506265_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506265_right_fuel : Nat := 1
def small_7506265_right_count : Nat := 1
def small_7506265_right_encoded : String := "00000003"
theorem small_7506265_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506265_right_root small_7506265_right_fuel small_7506265_right_count small_7506265_right_encoded = true := by
  decide +kernel
theorem small_7506265_right_covered : CoveredBy scale carrier boxes small_7506265_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506265_right_root small_7506265_right_fuel small_7506265_right_count small_7506265_right_encoded small_7506265_right_checked

theorem cover_7506265 : CoveredBy scale carrier boxes root_7506265 := by
  apply coveredBy_split_literal root_7506265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506270 small_7506265_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506270
  · exact small_7506265_right_covered
#print axioms cover_7506265

def root_7506264 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506264_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506264_right_fuel : Nat := 23
def small_7506264_right_count : Nat := 259
def small_7506264_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07078000FE128A7D09067ECE770000000912EA5900000000000000000900000004128A410900000004067ECE7712EA95000AD3578310D101020000000100000009000000070000000012EA5900000000000AD3578310D10102000000010000000910D13D020140010413F5D8FB03C000FC13A54D07064000FE000000070000000600000003000000060000000200000007000000010000000313D7B10700000003078000FE128A7D090000000700000004128A410900000004067ECE770000000712EA590000000000000000070000000213D7ECFB00000002028000FC13D7ED07078000FE128A7D09067ECE770000000712EA5900000000000000000700000004128A410900000004067ECE770000000712EA5900000000000AD3578310D1010200000001000000050000000500000003000000070F350D0200000007000000010000000013867100000000000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000AD357830000000610D13D02000000060000000100000004128A410900000004022A457713E201000AD3578310D10102000000010000000510D13D02000000060000000100000000000000060000000313D7B10700000003078000FE128A7D09022A4577000000090000000600000004000000050000000213D7ECFB00000002028000FC13D7ED07078000FE128A7D09022A457713E201000AD3578310D10102000000010000000910D13D0203C0010413A510FB03C000FC13A54D070000000700000003000000050000000200000005000000010000000013E1C500000000000AD3578310D10102000000010000000500000005000000040000000500000003000000050F350D020C9A87020F87510300000001000000080F878D030280010413D7B0FB028000FC13D7ED07078000FE128A7D09022A45770000000700000006000000040000000600000003000000060000000213D7ECFB00000002028000FC13D7ED07078000FE128A7D09022A4577000000070000000800000004000000050000000300000005000000010000000100000004135D450900000004045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07028000FE13D7ED09067ECE7712EA95000AD3578310D101020000000100000008000000070000000012EA5900000000000AD3578310D101020000000100000005000000050000000400000005000000030000000500000002000000050F350D0200000007000000010000000013867100000000000CFD9C030F34D10200000001000000050F350D020C9A8702000000060000000500000001"
theorem small_7506264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506264_right_root small_7506264_right_fuel small_7506264_right_count small_7506264_right_encoded = true := by
  decide +kernel
theorem small_7506264_right_covered : CoveredBy scale carrier boxes small_7506264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506264_right_root small_7506264_right_fuel small_7506264_right_count small_7506264_right_encoded small_7506264_right_checked

theorem cover_7506264 : CoveredBy scale carrier boxes root_7506264 := by
  apply coveredBy_split_literal root_7506264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506265 small_7506264_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506265
  · exact small_7506264_right_covered
#print axioms cover_7506264

def root_7506259 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506259_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506259_right_fuel : Nat := 1
def small_7506259_right_count : Nat := 1
def small_7506259_right_encoded : String := "00000002"
theorem small_7506259_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506259_right_root small_7506259_right_fuel small_7506259_right_count small_7506259_right_encoded = true := by
  decide +kernel
theorem small_7506259_right_covered : CoveredBy scale carrier boxes small_7506259_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506259_right_root small_7506259_right_fuel small_7506259_right_count small_7506259_right_encoded small_7506259_right_checked

theorem cover_7506259 : CoveredBy scale carrier boxes root_7506259 := by
  apply coveredBy_split_literal root_7506259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506264 small_7506259_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506264
  · exact small_7506259_right_covered
#print axioms cover_7506259

def root_7506258 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7506258 : CoveredBy scale carrier boxes root_7506258 := by
  apply coveredBy_split_literal root_7506258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2827.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506259
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2827.covered
#print axioms cover_7506258

def root_7506253 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506253_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506253_right_fuel : Nat := 1
def small_7506253_right_count : Nat := 1
def small_7506253_right_encoded : String := "00000001"
theorem small_7506253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506253_right_root small_7506253_right_fuel small_7506253_right_count small_7506253_right_encoded = true := by
  decide +kernel
theorem small_7506253_right_covered : CoveredBy scale carrier boxes small_7506253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506253_right_root small_7506253_right_fuel small_7506253_right_count small_7506253_right_encoded small_7506253_right_checked

theorem cover_7506253 : CoveredBy scale carrier boxes root_7506253 := by
  apply coveredBy_split_literal root_7506253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506258 small_7506253_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506258
  · exact small_7506253_right_covered
#print axioms cover_7506253

def root_7505741 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505741_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505741_left_fuel : Nat := 21
def small_7505741_left_count : Nat := 243
def small_7505741_left_encoded : String := "120701020000000105000104135D44FB050000FC135D8107050000FE135D8109045489F71386AD0004548A03000000080000000800000000138671000000000004548A031386710200000001028001040000000813D7ECFB00000002078000FC00000008000000081386AD020280010413D7B0FB078000FC128A7D070000000800000003128A410700000003000000090000000213D7ECFB00000002078000FC128A7D070000000800000003128A410700000003078000FE128A7D0900000009000000040000000800000001000000040000000800000003135D450700000003050000FE135D8109045489F71386AD0004548A03000000091386AD02028001040000000913D7ECFB00000002028000FC13D7ED07078000FE00000009000000080000000313D7B10700000003078000FE00000009000000050000000100000000138671000000000004548A03000000091386AD02028001040000000913D7ECFB00000002028000FC13D7ED07078000FE000000090000000500000003000000050000000100000004135D450900000004045489F71386AD0004548A03000000081386AD020280010413D7B0FB028000FC00000008000000050000000200000005000000010000000013867100000000000000000500000002135D80FB00000002050000FC135D8107050000FE135D8109045489F71386AD0004548A03000000081386AD020780010400000008128A7CFB00000002000000080000000100000000138671000000000004548A03138671020000000107800104128A40FB078000FC00000008128A410700000003078000FE000000090000000500000002128A7CFB00000002078000FC00000008000000051386AD0207800104128A40FB078000FC128A7D07078000FE128A7D0900000008000000040000000800000003128A410700000003078000FE128A7D09022A457713E20100067ECE8300000008000000080000000013E1C5000000000000000005000000040000000500000002128A7CFB00000002078000FC128A7D07078000FE128A7D0900000008000000040000000500000003000000050000000100000004135D450900000004045489F70000000813867100000000000000000500000003135D450700000003050000FE135D8109045489F71386AD0004548A03138671020000000107800104128A40FB0000000900000002000000051386AD0207800104128A40FB028000FC13D7ED07078000FE128A7D09067ECE770000000712EA5900000000000000000500000004000000050000000300000005000000020000000500000001000000001386710000000000000000050000000400000005"
theorem small_7505741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505741_left_root small_7505741_left_fuel small_7505741_left_count small_7505741_left_encoded = true := by
  decide +kernel
theorem small_7505741_left_covered : CoveredBy scale carrier boxes small_7505741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505741_left_root small_7505741_left_fuel small_7505741_left_count small_7505741_left_encoded small_7505741_left_checked

theorem cover_7505741 : CoveredBy scale carrier boxes root_7505741 := by
  apply coveredBy_split_literal root_7505741 small_7505741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7506253 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7505741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7506253
#print axioms cover_7505741

def root_7505735 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505735_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505735_left_fuel : Nat := 1
def small_7505735_left_count : Nat := 1
def small_7505735_left_encoded : String := "00000000"
theorem small_7505735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505735_left_root small_7505735_left_fuel small_7505735_left_count small_7505735_left_encoded = true := by
  decide +kernel
theorem small_7505735_left_covered : CoveredBy scale carrier boxes small_7505735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505735_left_root small_7505735_left_fuel small_7505735_left_count small_7505735_left_encoded small_7505735_left_checked

theorem cover_7505735 : CoveredBy scale carrier boxes root_7505735 := by
  apply coveredBy_split_literal root_7505735 small_7505735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7505741 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7505735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7505741
#print axioms cover_7505735

def root_7505201 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505201_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505201_left_fuel : Nat := 22
def small_7505201_left_count : Nat := 249
def small_7505201_left_encoded : String := "12073D0008A91303120701020000000105000104135D44FB050000FC135D81070000000800000003135D450700000003050000FE135D81090CFD9BF70F350D0000000008000000000F34D1000000000004548A03000000081386AD02028001040000000913D7ECFB00000002028000FC00000008000000070000000100000004135D4509000000040CFD9BF7000000080000000800000002135D80FB00000002050000FC00000008135D450700000003050000FE135D81090CFD9BF7000000070F34D1000000000004548A030000000800000007000000040000000812073D0205000104135D44FB050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D10200000001000000080000000A000000000F34D100000000000CFD9C030F34D102000000010280010413D7B0FB078000FC00000008128A410700000003078000FE128A7D090AD357770000000710D10100000000000000000900000004000000080000000213D7ECFB00000002078000FC00000008128A410700000003078000FE128A7D090000000700000004000000070F350D020C9A8702000000070F878D030280010413D7B0FB0000000A0000000213D7ECFB0000000200000007000000010000000100000004135D4509000000040CFD9BF70000000A0F34D100000000000CFD9C030F34D10200000001000000080000000A00000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D102000000010C9A87000F8750F70000000700000000000000070F350D020000000700000001000000000F34D100000000000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07078000FE0000000700000007000000030000000700000002000000070F350D02000000070000000100000004135D4509000000040CFD9BF7000000070F34D100000000000000000700000002135D80FB00000002050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D10200000001000000060F350D020C9A87000000000A0000000700000001000000000F34D100000000000CFD9C030F34D1020000000107800104128A40FB078000FC000000080000000700000002128A7CFB00000002000000060F350D02000000070000000100000004135D4509000000040CFD9BF70F350D000CFD9C03000000070000000A000000000F34D100000000000CFD9C030F34D10200000001000000080000000700000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C03000000070F350D020000000700000001000000000F34D100000000000000000700000004135D4509000000040CFD9BF700000007000000070000000100000000"
theorem small_7505201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505201_left_root small_7505201_left_fuel small_7505201_left_count small_7505201_left_encoded = true := by
  decide +kernel
theorem small_7505201_left_covered : CoveredBy scale carrier boxes small_7505201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505201_left_root small_7505201_left_fuel small_7505201_left_count small_7505201_left_encoded small_7505201_left_checked

theorem cover_7505201 : CoveredBy scale carrier boxes root_7505201 := by
  apply coveredBy_split_literal root_7505201 small_7505201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7505735 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7505201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7505735
#print axioms cover_7505201

def root_7505195 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505195_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505195_left_fuel : Nat := 1
def small_7505195_left_count : Nat := 1
def small_7505195_left_encoded : String := "00000004"
theorem small_7505195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505195_left_root small_7505195_left_fuel small_7505195_left_count small_7505195_left_encoded = true := by
  decide +kernel
theorem small_7505195_left_covered : CoveredBy scale carrier boxes small_7505195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505195_left_root small_7505195_left_fuel small_7505195_left_count small_7505195_left_encoded small_7505195_left_checked

theorem cover_7505195 : CoveredBy scale carrier boxes root_7505195 := by
  apply coveredBy_split_literal root_7505195 small_7505195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7505201 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7505195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7505201
#print axioms cover_7505195

def root_7497895 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7497895 : CoveredBy scale carrier boxes root_7497895 := by
  apply coveredBy_split_literal root_7497895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0514.root_7497896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7505195 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0514.cover_7497896
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7505195
#print axioms cover_7497895

def root_7497889 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497889_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497889_left_fuel : Nat := 1
def small_7497889_left_count : Nat := 1
def small_7497889_left_encoded : String := "00000003"
theorem small_7497889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7497889_left_root small_7497889_left_fuel small_7497889_left_count small_7497889_left_encoded = true := by
  decide +kernel
theorem small_7497889_left_covered : CoveredBy scale carrier boxes small_7497889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7497889_left_root small_7497889_left_fuel small_7497889_left_count small_7497889_left_encoded small_7497889_left_checked

theorem cover_7497889 : CoveredBy scale carrier boxes root_7497889 := by
  apply coveredBy_split_literal root_7497889 small_7497889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7497895 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7497889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7497895
#print axioms cover_7497889

def root_7490601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7490601 : CoveredBy scale carrier boxes root_7490601 := by
  apply coveredBy_split_literal root_7490601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0513.root_7490602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7497889 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0513.cover_7490602
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7497889
#print axioms cover_7490601

def root_7490596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490596_right_fuel : Nat := 1
def small_7490596_right_count : Nat := 1
def small_7490596_right_encoded : String := "00000002"
theorem small_7490596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490596_right_root small_7490596_right_fuel small_7490596_right_count small_7490596_right_encoded = true := by
  decide +kernel
theorem small_7490596_right_covered : CoveredBy scale carrier boxes small_7490596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490596_right_root small_7490596_right_fuel small_7490596_right_count small_7490596_right_encoded small_7490596_right_checked

theorem cover_7490596 : CoveredBy scale carrier boxes root_7490596 := by
  apply coveredBy_split_literal root_7490596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7490601 small_7490596_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7490601
  · exact small_7490596_right_covered
#print axioms cover_7490596

def root_7517141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7517141 : CoveredBy scale carrier boxes root_7517141 := by
  apply coveredBy_split_literal root_7517141 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2828.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2829.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2828.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2829.covered
#print axioms cover_7517141

def root_7517135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7517135_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7517135_left_fuel : Nat := 1
def small_7517135_left_count : Nat := 1
def small_7517135_left_encoded : String := "00000002"
theorem small_7517135_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7517135_left_root small_7517135_left_fuel small_7517135_left_count small_7517135_left_encoded = true := by
  decide +kernel
theorem small_7517135_left_covered : CoveredBy scale carrier boxes small_7517135_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7517135_left_root small_7517135_left_fuel small_7517135_left_count small_7517135_left_encoded small_7517135_left_checked

theorem cover_7517135 : CoveredBy scale carrier boxes root_7517135 := by
  apply coveredBy_split_literal root_7517135 small_7517135_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7517141 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7517135_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7517141
#print axioms cover_7517135

def root_7490595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7490595 : CoveredBy scale carrier boxes root_7490595 := by
  apply coveredBy_split_literal root_7490595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7490596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7517135 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7490596
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7517135
#print axioms cover_7490595

def root_7490590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490590_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490590_right_fuel : Nat := 1
def small_7490590_right_count : Nat := 1
def small_7490590_right_encoded : String := "00000001"
theorem small_7490590_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490590_right_root small_7490590_right_fuel small_7490590_right_count small_7490590_right_encoded = true := by
  decide +kernel
theorem small_7490590_right_covered : CoveredBy scale carrier boxes small_7490590_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490590_right_root small_7490590_right_fuel small_7490590_right_count small_7490590_right_encoded small_7490590_right_checked

theorem cover_7490590 : CoveredBy scale carrier boxes root_7490590 := by
  apply coveredBy_split_literal root_7490590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7490595 small_7490590_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7490595
  · exact small_7490590_right_covered
#print axioms cover_7490590

def root_7487766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7487766 : CoveredBy scale carrier boxes root_7487766 := by
  apply coveredBy_split_literal root_7487766 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2819.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7490590 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2819.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7490590
#print axioms cover_7487766

def root_7487760 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487760_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487760_left_fuel : Nat := 1
def small_7487760_left_count : Nat := 1
def small_7487760_left_encoded : String := "00000000"
theorem small_7487760_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7487760_left_root small_7487760_left_fuel small_7487760_left_count small_7487760_left_encoded = true := by
  decide +kernel
theorem small_7487760_left_covered : CoveredBy scale carrier boxes small_7487760_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7487760_left_root small_7487760_left_fuel small_7487760_left_count small_7487760_left_encoded small_7487760_left_checked

theorem cover_7487760 : CoveredBy scale carrier boxes root_7487760 := by
  apply coveredBy_split_literal root_7487760 small_7487760_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7487766 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7487760_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7487766
#print axioms cover_7487760

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515

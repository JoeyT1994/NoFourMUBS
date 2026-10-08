import TaoBundleAssembly0634
import TaoBundleChunkBatch0870
import TaoBundleChunkBatch0871
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635
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
  apply coveredBy_split_literal root_9288054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0634.root_9288055 small_9288054_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0634.cover_9288055
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
  apply coveredBy_split_literal root_9288048 small_9288048_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9288054 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9288048_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9288054
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
  apply coveredBy_split_literal root_9293402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293407 small_9293402_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293407
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
  apply coveredBy_split_literal root_9299907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299912 small_9299907_right_root coord1 true (-12058112)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299912
  · exact small_9299907_right_covered
#print axioms cover_9299907

def root_9299906 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9299906 : CoveredBy scale carrier boxes root_9299906 := by
  apply coveredBy_split_literal root_9299906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299907 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3484.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299907
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
  apply coveredBy_split_literal root_9299900 small_9299900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299906 coord3 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9299900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299906
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
  apply coveredBy_split_literal root_9299899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299900 small_9299899_right_root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299900
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
  apply coveredBy_split_literal root_9299893 small_9299893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299899 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9299893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299899
#print axioms cover_9299893

def root_9299892 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299892_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299892_right_fuel : Nat := 23
def small_9299892_right_count : Nat := 253
def small_9299892_right_encoded : String := "128A7D0107800106128A4107000000030DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7CA080E5FD8FF08C0010011FBE901000000000640010612FF7107000000030D4128820EFA10F90BF3E57A000000091008ECFB0000000900000002000000010000000912FFAD070D4128820EFA10F90BF3E57A100928FB000000020D412888000000090EFA4CFF00000004000000081008ECFB0D412888000000090EFA4CFF000000040820010012465D010000000006E001060000000A000000080000000900000002000000010EFA4CF9000000010BF3E57A000000081008ECFB0D4128880000000900000009000000020000000311FC25010000000900000000000000040E6014FF0000000408C0010011FBE901000000000640010612FF7107000000030DAED87F0E9661080D4128820EFA10F90BF3E57A000000081008ECFB0820010012465D010000000005A00106000000080000000800000008000000020000000100000008000000040000000812FFAD07000000080000000311FC25010000000800000000108010FB0DE7CA080E5FD8FF08C0010011FBE901000000000640010612FF7107000000030D4128820EFA10F90AA6A27A000000090000000A000000010EFA4CF9000000010000000912FFAD070D4128820EFA10F90AA6A27A10EDACFB000000020D4128880000000A0000000500000005000000010EFA4CF9000000010AA6A27A10EDACFB000000020D4128880000000900000005000000050000000311FC250106400106000000090000000500000000000000040E6014FF0000000408C0010011FBE901000000000640010612FF7107000000030DAED87F0E9661080D4128820EFA10F90000000A000000010EFA4CF9000000010AA6A27A10EDACFB0000000208200100000000080000000500000005000000040E962508000000040D4128820EFA10F90000000A0000000100000005000000050000000500000002000000010E6014F9000000010B4D43FA10804CFB000000020DE7CA080E5FD8FF08C0010011FBE901000000000640010612FF7107000000030000000912FFAD07000000080000000300000009000000040E6014FF0000000400000008108010FB0DE7CA080E5FD8FF08C0010011FBE901000000000640010612FF710700000003000000090000000500000005000000040000000500000002128A7D070DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7CA080E5FD8FF08C0010011FBE9010000000008C0010611FBE907000000030D4128820EFA10F90BF3E57A000000081008ECFB0D4128880EFA10FF00000005000000040000000500000002000000010EFA4CF90000000100000008000000050000000500000004000000050000000500000001000000050000000300000000"
theorem small_9299892_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9299892_right_root small_9299892_right_fuel small_9299892_right_count small_9299892_right_encoded = true := by
  decide +kernel
theorem small_9299892_right_covered : CoveredBy scale carrier boxes small_9299892_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9299892_right_root small_9299892_right_fuel small_9299892_right_count small_9299892_right_encoded small_9299892_right_checked

theorem cover_9299892 : CoveredBy scale carrier boxes root_9299892 := by
  apply coveredBy_split_literal root_9299892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299893 small_9299892_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299893
  · exact small_9299892_right_covered
#print axioms cover_9299892

def root_9299886 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299886_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9299886_left_fuel : Nat := 1
def small_9299886_left_count : Nat := 1
def small_9299886_left_encoded : String := "00000004"
theorem small_9299886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9299886_left_root small_9299886_left_fuel small_9299886_left_count small_9299886_left_encoded = true := by
  decide +kernel
theorem small_9299886_left_covered : CoveredBy scale carrier boxes small_9299886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9299886_left_root small_9299886_left_fuel small_9299886_left_count small_9299886_left_encoded small_9299886_left_checked

theorem cover_9299886 : CoveredBy scale carrier boxes root_9299886 := by
  apply coveredBy_split_literal root_9299886 small_9299886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299892 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9299886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299892
#print axioms cover_9299886

def root_9298498 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9298498 : CoveredBy scale carrier boxes root_9298498 := by
  apply coveredBy_split_literal root_9298498 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3481.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9299886 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3481.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9299886
#print axioms cover_9298498

def root_9298493 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9298493_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9298493_right_fuel : Nat := 1
def small_9298493_right_count : Nat := 1
def small_9298493_right_encoded : String := "00000002"
theorem small_9298493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9298493_right_root small_9298493_right_fuel small_9298493_right_count small_9298493_right_encoded = true := by
  decide +kernel
theorem small_9298493_right_covered : CoveredBy scale carrier boxes small_9298493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9298493_right_root small_9298493_right_fuel small_9298493_right_count small_9298493_right_encoded small_9298493_right_checked

theorem cover_9298493 : CoveredBy scale carrier boxes root_9298493 := by
  apply coveredBy_split_literal root_9298493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9298498 small_9298493_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9298498
  · exact small_9298493_right_covered
#print axioms cover_9298493

def root_9297175 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9297175 : CoveredBy scale carrier boxes root_9297175 := by
  apply coveredBy_split_literal root_9297175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3480.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9298493 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3480.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9298493
#print axioms cover_9297175

def root_9297169 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9297169_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9297169_left_fuel : Nat := 1
def small_9297169_left_count : Nat := 1
def small_9297169_left_encoded : String := "00000001"
theorem small_9297169_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9297169_left_root small_9297169_left_fuel small_9297169_left_count small_9297169_left_encoded = true := by
  decide +kernel
theorem small_9297169_left_covered : CoveredBy scale carrier boxes small_9297169_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9297169_left_root small_9297169_left_fuel small_9297169_left_count small_9297169_left_encoded small_9297169_left_checked

theorem cover_9297169 : CoveredBy scale carrier boxes root_9297169 := by
  apply coveredBy_split_literal root_9297169 small_9297169_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9297175 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9297169_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9297175
#print axioms cover_9297169

def root_9293401 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9293401 : CoveredBy scale carrier boxes root_9293401 := by
  apply coveredBy_split_literal root_9293401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9297169 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293402
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9297169
#print axioms cover_9293401

def root_9293396 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293396_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293396_right_fuel : Nat := 1
def small_9293396_right_count : Nat := 1
def small_9293396_right_encoded : String := "00000004"
theorem small_9293396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9293396_right_root small_9293396_right_fuel small_9293396_right_count small_9293396_right_encoded = true := by
  decide +kernel
theorem small_9293396_right_covered : CoveredBy scale carrier boxes small_9293396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9293396_right_root small_9293396_right_fuel small_9293396_right_count small_9293396_right_encoded small_9293396_right_checked

theorem cover_9293396 : CoveredBy scale carrier boxes root_9293396 := by
  apply coveredBy_split_literal root_9293396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293401 small_9293396_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293401
  · exact small_9293396_right_covered
#print axioms cover_9293396

def root_9293395 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293395_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293395_right_fuel : Nat := 29
def small_9293395_right_count : Nat := 395
def small_9293395_right_encoded : String := "0F34D108000000040C9A87020F8750F90C9A86FA0F878CFB0000000207800100128A41010000000007800106128A4107000000030AD3577F10D13D080B4D4402108010F90DE7C9FA000000060E5FD8FB00000006000000020000000110804CF9000000010DE7C9FA000000080E5FD8FB0640010012FF7101000000000000000612FFAD010000000800000000000000020000000410D101080000000400000008128A7D070AD3577F000000060000000800000003128A7D0107800106128A4107000000030AD3577F10D13D080B4D4402108010F90DE7C9FA000000080E5FD8FB08C0010011FBE9010000000000000006000000070000000200000001000000080000000400000008128A7D070000000800000003000000000F8750FB07800100128A41010000000007800106128A4107000000030AD3577F10D13D080B4D4402108010F90B4D43FA00000006108010FB00000006000000020000000110804CF9000000010B4D43FA10804CFB000000020640010012FF7101000000000640010612FF710700000003000000060000000612FFAD010640010612FF7107000000030BE879BF1011AD080BF3E58200000006100928F9000000010000000800000004000000070000000600000000108010FB0640010012FF7101000000000640010612FF7107000000030BE879BF00000006000000060000000612FFAD010640010612FF7107000000030BE879BF1011AD080BF3E58200000006100928F9000000010AA6A27A000000060000000A000000040000000A0000000600000000000000020000000410D10108000000040B4D44020000000610804CF9000000010B4D43FA0000000600000009128A7D070AD3577F0000000610D10108000000040000000600000003128A7D0107800106128A4107000000030AD3577F10D13D080B4D4402108010F90B4D43FA10804CFB0000000208C0010011FBE90100000000064001060000000A000000060000000A0000000A0000000110804CF9000000010B4D43FA10804CFB0000000208C0010011FBE901000000000640010612FF7107000000030BE879BF1011AD080BF3E5820000000A0000000700000004000000070000000811FC25010000000800000000108010FB08C0010011FBE90100000000064001060000000A0000000500000005000000020000000410D10108000000040B4D4402108010F90B4D43FA000000070000000A0000000110804CF90000000100000008128A7D070AD3577F10D13D080B4D4402108010F90000000600000001000000050000000410D101080000000400000005000000030000000000000002000000010F878CF9000000010C9A86FA0F878CFB0000000207800100128A410100000000078001060000000800000008000000080F8750FB07800100128A41010000000007800106128A4107000000030AD3577F10D13D080DE7CA020E5FD8F90B4D43FA10804CFB000000020640010012FF7101000000000640010612FF7107000000030BE879BF00000008000000080000000800000008108010FB0640010012FF7101000000000640010612FF7107000000030BE879BF1011AD080D4128820EFA10F90AA6A27A0000000610ED70FB0000000600000002000000010EFA4CF9000000010AA6A27A0000000810ED70FB05A001001331350100000000000000091331710105A00106000000080000000500000000000000020000000410117108000000040D412882000000090000000812FFAD070BE879BF00000006000000080000000312FFAD010640010612FF7107000000030BE879BF1011AD080D4128820EFA10F90AA6A27A0000000810ED70FB06E0010012C7E501000000000000000A0000000500000002000000010EFA4CF900000001000000080000000400000008000000050000000000000002000000010E6014F9000000010B4D43FA00000008108010FB0640010012FF71010000000006400106000000080000000500000005000000020000000410D101080000000400000008128A7D070AD3577F10D13D080DE7CA020E5FD8F90B4D43FA00000008000000050000000100000005000000040000000800000003128A7D0107800106128A4107000000030AD3577F10D13D080DE7CA020E5FD8F90B4D43FA000000080000000500000001000000050000000400000008000000050000000000000002"
theorem small_9293395_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9293395_right_root small_9293395_right_fuel small_9293395_right_count small_9293395_right_encoded = true := by
  decide +kernel
theorem small_9293395_right_covered : CoveredBy scale carrier boxes small_9293395_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9293395_right_root small_9293395_right_fuel small_9293395_right_count small_9293395_right_encoded small_9293395_right_checked

theorem cover_9293395 : CoveredBy scale carrier boxes root_9293395 := by
  apply coveredBy_split_literal root_9293395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293396 small_9293395_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293396
  · exact small_9293395_right_covered
#print axioms cover_9293395

def root_9293389 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293389_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293389_left_fuel : Nat := 1
def small_9293389_left_count : Nat := 1
def small_9293389_left_encoded : String := "00000002"
theorem small_9293389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9293389_left_root small_9293389_left_fuel small_9293389_left_count small_9293389_left_encoded = true := by
  decide +kernel
theorem small_9293389_left_covered : CoveredBy scale carrier boxes small_9293389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9293389_left_root small_9293389_left_fuel small_9293389_left_count small_9293389_left_encoded small_9293389_left_checked

theorem cover_9293389 : CoveredBy scale carrier boxes root_9293389 := by
  apply coveredBy_split_literal root_9293389 small_9293389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293395 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9293389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293395
#print axioms cover_9293389

def root_9293388 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293388_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293388_right_fuel : Nat := 19
def small_9293388_right_count : Nat := 161
def small_9293388_right_encoded : String := "0F34D0FA0CFD9BFF0F350D080C9A87020F8750F90C9A87080F8750FF07800100128A41010000000000000005128A7D0107800106128A41070000000300000005128A7D070AD3577B10D13CFA000000020B4D4402108010F90B4D4408108010FF08C00100000000050000000900000004000000060000000110804CF9000000010B4D4408108010FF000000090000000410804CFF000000040000000810D100FA0B4D44020000000500000008000000020000000300000000000000040F878CFF0000000407800100128A4101000000000780010600000005128A7D070AD3577B10D13CFA000000020B4D44020000000610804CF9000000010000000810D100FA000000080000000200000003128A7D0107800106128A4107000000030AD3577B10D13CFA000000020B4D4402108010F90DE7CA08000000050E6014FF00000004000000080000000110804CF9000000010000000810D100FA0000000800000002128A7D07000000080000000300000000000000010F878CF9000000010C9A87080F8750FF07800100128A4101000000000780010600000005128A7D070AD3577B10D13CFA000000020DE7CA020E5FD8F90B4D44080000000510804CFF0000000400000008000000010E6014F9000000010000000810D100FA000000080000000200000003128A7D0107800106128A4107000000030AD3577B10D13CFA000000020DE7CA020E5FD8F900000009000000010000000910D100FA0000000800000002128A7D07000000080000000300000000000000040F878CFF0000000407800100128A41010000000007800106000000080000000800000008000000040F34D108000000040C9A87020F8750F9078001000000000800000008000000010000000800000002"
theorem small_9293388_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9293388_right_root small_9293388_right_fuel small_9293388_right_count small_9293388_right_encoded = true := by
  decide +kernel
theorem small_9293388_right_covered : CoveredBy scale carrier boxes small_9293388_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9293388_right_root small_9293388_right_fuel small_9293388_right_count small_9293388_right_encoded small_9293388_right_checked

theorem cover_9293388 : CoveredBy scale carrier boxes root_9293388 := by
  apply coveredBy_split_literal root_9293388 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293389 small_9293388_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293389
  · exact small_9293388_right_covered
#print axioms cover_9293388

def root_9293383 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293383_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9293383_right_fuel : Nat := 1
def small_9293383_right_count : Nat := 1
def small_9293383_right_encoded : String := "00000001"
theorem small_9293383_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9293383_right_root small_9293383_right_fuel small_9293383_right_count small_9293383_right_encoded = true := by
  decide +kernel
theorem small_9293383_right_covered : CoveredBy scale carrier boxes small_9293383_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9293383_right_root small_9293383_right_fuel small_9293383_right_count small_9293383_right_encoded small_9293383_right_checked

theorem cover_9293383 : CoveredBy scale carrier boxes root_9293383 := by
  apply coveredBy_split_literal root_9293383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.root_9293388 small_9293383_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635.cover_9293388
  · exact small_9293383_right_covered
#print axioms cover_9293383

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0635

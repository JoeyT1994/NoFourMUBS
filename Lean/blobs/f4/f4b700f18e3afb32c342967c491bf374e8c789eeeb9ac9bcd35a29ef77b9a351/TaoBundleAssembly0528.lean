import TaoBundleAssembly0527
import TaoBundleChunkBatch0722
import TaoBundleChunkBatch0723
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528
def root_7667747 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667747_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667747_right_fuel : Nat := 26
def small_7667747_right_count : Nat := 329
def small_7667747_right_encoded : String := "135D4509000000040CFD9C030F34D102000000010CFD9C070F34D106000000030280010013D7B0F70280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010AD3578710D10106000000030140010013F5D8F70140010413F5D8FB03C000FE13A54D0909BE35430000000811777D02000000060000000100000004000000050000000200000005000000000000000510D13D06014001000000000813F614F7000000000140010413F5D8FB03C000FE13A54D0909BE35430000000811777D020BE879C7000000080000000800000001000000040000000500000002000000050000000310D13D020AD3578710D10106000000030140010013F5D8F7014001040000000613F614FB0000000203C000FE13A54D090BE879C3000000060000000600000004000000050000000013F614F70000000001400104000000060000000510D13D06014001000000000A13F614F700000000014001040000000A13F614FB0000000203C000FE13A54D090BE879C310117102000000010BE879C71011710600000003000000050000000A0000000A000000040000000500000003000000010000000413D7B109000000040AD3578310D10102000000010000000510D13D020AD3578710D1010600000003000000050000000A000000010000000213D7ECFB00000002028000FE13D7ED090AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D060140010013F5D8F703C0010413A510FB03C000FE13A54D090BE879C3000000080000000A000000040000000500000002000000050000000000000005000000030000000100000004000000050000000013D7ECF7000000000280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D0603C0010013A510F70140010413F5D8FB03C000FE13A54D090BE879C300000006000000060000000400000005000000020000000500000000000000050000000300000001000000040000000500000002000000050F350D060C9A87060F875107000000030000000A0F878D070280010013D7B0F70280010413D7B0FB0000000A0000000213D7ECFB00000002028000FE13D7ED090AD35783000000080000000A00000004000000080000000013D7ECF7000000000280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010DE7CA060E5FD90700000003000000070E60150703C0010013A510F7000000080000000000000005000000030000000A000000040000000A0000000213D7ECFB00000002028000FE13D7ED090AD3578310D10102000000010000000510D13D020DE7CA060E5FD907000000030000000A0000000500000001000000040000000500000003000000030F350D020CFD9C070F34D106000000030C9A87020F875103000000010000000A0F878D030280010013D7B0F70280010413D7B0FB0000000A0000000213D7ECFB00000002028000FE13D7ED090AD3578710D10106000000030DE7CA020E5FD90300000001000000060E6015030140010013F5D8F703C0010413A510FB0000000600000002000000050000000000000005000000010000000A000000040000000A0000000013D7ECF7000000000280010413D7B0FB028000FE13D7ED090AD35787000000060000000A00000004000000060000000213D7ECFB00000002028000FE13D7ED090AD3578710D10106000000030000000510D13D060DE7CA020E5FD903000000010000000A00000005000000030000000400000005000000010000000A00000001"
theorem small_7667747_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667747_right_root small_7667747_right_fuel small_7667747_right_count small_7667747_right_encoded = true := by
  decide +kernel
theorem small_7667747_right_covered : CoveredBy scale carrier boxes small_7667747_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667747_right_root small_7667747_right_fuel small_7667747_right_count small_7667747_right_encoded small_7667747_right_checked

theorem cover_7667747 : CoveredBy scale carrier boxes root_7667747 := by
  apply coveredBy_split_literal root_7667747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7667748 small_7667747_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7667748
  · exact small_7667747_right_covered
#print axioms cover_7667747

def root_7667742 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667742_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667742_right_fuel : Nat := 1
def small_7667742_right_count : Nat := 1
def small_7667742_right_encoded : String := "00000002"
theorem small_7667742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667742_right_root small_7667742_right_fuel small_7667742_right_count small_7667742_right_encoded = true := by
  decide +kernel
theorem small_7667742_right_covered : CoveredBy scale carrier boxes small_7667742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667742_right_root small_7667742_right_fuel small_7667742_right_count small_7667742_right_encoded small_7667742_right_checked

theorem cover_7667742 : CoveredBy scale carrier boxes root_7667742 := by
  apply coveredBy_split_literal root_7667742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7667747 small_7667742_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7667747
  · exact small_7667742_right_covered
#print axioms cover_7667742

def root_7684418 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7684418 : CoveredBy scale carrier boxes root_7684418 := by
  apply coveredBy_split_literal root_7684418 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2886.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2887.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2886.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2887.covered
#print axioms cover_7684418

def root_7684413 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7684413_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7684413_right_fuel : Nat := 1
def small_7684413_right_count : Nat := 1
def small_7684413_right_encoded : String := "00000001"
theorem small_7684413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7684413_right_root small_7684413_right_fuel small_7684413_right_count small_7684413_right_encoded = true := by
  decide +kernel
theorem small_7684413_right_covered : CoveredBy scale carrier boxes small_7684413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7684413_right_root small_7684413_right_fuel small_7684413_right_count small_7684413_right_encoded small_7684413_right_checked

theorem cover_7684413 : CoveredBy scale carrier boxes root_7684413 := by
  apply coveredBy_split_literal root_7684413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7684418 small_7684413_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7684418
  · exact small_7684413_right_covered
#print axioms cover_7684413

def root_7683723 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683723_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683723_left_fuel : Nat := 32
def small_7683723_left_count : Nat := 325
def small_7683723_left_encoded : String := "0F34D102000000010CFD9C070F34D106000000030280010013D7B0F707800104128A40FB078000FE128A7D090AD3578310D10102000000010AD35787000000080000000810D13D020AD3578710D1010600000003014001000000000713F614F7000000000000000A10D13D060140010013F5D8F70640010412FF70FB08C000FE000000070000000800000002000000080000000013F614F7000000000640010412FF70FB08C000FE11FC25090BE879C3000000081011AD020BE879C70000000700000008000000010000000411FBE909000000040BE879C3000000081011AD020BE879C70000000800000008000000010000000212FFACFB0000000208C000FE11FC2509000000080000000400000005000000030000000100000004128A4109000000040AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D06014001000000000800000005000000030000000100000002128A7CFB00000002078000FE128A7D090AD357830000000810D13D020AD3578710D10106000000030000000510D13D0600000008000000030000000100000004000000050000000013D7ECF70000000007800104128A40FB078000FE128A7D090AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D0603C0010013A510F70640010412FF70FB08C000FE11FC25090BE879C30000000A1011AD020BE879C70000000A1011AD06032001000000000813C144F70000000005A001040000000A0000000500000003000000010000000400000005000000020000000500000000000000050000000300000001000000040000000500000002000000050F350D060C9A87060F87510700000003028001000000000813D7ECF70000000007800104128A40FB078000FE128A7D090AD357830000000810D13D020000000800000001000000040000000800000002128A7CFB00000002000000080F878D070280010013D7B0F707800104128A40FB078000FE128A7D090AD357830000000810D13D020000000800000001000000040000000800000002128A7CFB00000002000000080000000013D7ECF70000000007800104128A40FB078000FE128A7D090AD3578310D10102000000010000000810D13D020DE7CA060E5FD9070000000303C001000000000813A54CF7000000000640010412FF70FB08C000FE11FC25090BE879C3000000081011AD02000000080000000100000004000000080000000212FFACFB00000002000000080E60150703C0010013A510F70640010412FF70FB08C000FE11FC25090000000800000004000000080000000212FFACFB00000002000000080000000013A54CF7000000000640010412FF70FB08C000FE11FC25090BE879C31011710200000001000000081011AD020DAED8870E96250600000003046001001383DCF705A00104133134FB096000FE0000000800000005000000020000000500000000000000050E9661060460010000000008138418F70000000005A00104133134FB096000FE11AABD090000000800000004000000050000000200000005000000030000000100000004000000050000000200000005000000030000000100000004128A4109000000040AD3578310D10102000000010000000510D13D020DE7CA060E5FD9070000000303C001000000000800000005000000050000000100000002128A7CFB00000002078000FE128A7D090AD357830000000810D13D020DE7CA0600000008000000050000000100000004000000050000000300000003"
theorem small_7683723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683723_left_root small_7683723_left_fuel small_7683723_left_count small_7683723_left_encoded = true := by
  decide +kernel
theorem small_7683723_left_covered : CoveredBy scale carrier boxes small_7683723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683723_left_root small_7683723_left_fuel small_7683723_left_count small_7683723_left_encoded small_7683723_left_checked

theorem cover_7683723 : CoveredBy scale carrier boxes root_7683723 := by
  apply coveredBy_split_literal root_7683723 small_7683723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7684413 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7683723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7684413
#print axioms cover_7683723

def root_7683718 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683718_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683718_right_fuel : Nat := 1
def small_7683718_right_count : Nat := 1
def small_7683718_right_encoded : String := "00000004"
theorem small_7683718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683718_right_root small_7683718_right_fuel small_7683718_right_count small_7683718_right_encoded = true := by
  decide +kernel
theorem small_7683718_right_covered : CoveredBy scale carrier boxes small_7683718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683718_right_root small_7683718_right_fuel small_7683718_right_count small_7683718_right_encoded small_7683718_right_checked

theorem cover_7683718 : CoveredBy scale carrier boxes root_7683718 := by
  apply coveredBy_split_literal root_7683718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7683723 small_7683718_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7683723
  · exact small_7683718_right_covered
#print axioms cover_7683718

def root_7683717 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683717_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683717_right_fuel : Nat := 17
def small_7683717_right_count : Nat := 85
def small_7683717_right_encoded : String := "135D4509000000040CFD9C030F34D102000000010CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003000000080F878D0702800100000000080000000500000003000000030F350D020CFD9C070F34D106000000030C9A87020F875103000000010280010000000009000000090F878D030280010013D7B0F707800104128A40FB028000FE13D7ED090AD357870000000910D13D060DE7CA02000000090000000500000003000000040000000500000002000000050000000000000005000000010F350D060C9A87020F875103000000010000000A0F878D030C9A87060F875107000000030000000A0F878D070280010013D7B0F7078001040000000A000000090000000013D7ECF70000000007800104128A40FB028000FE13D7ED090DE7CA020000000A000000050000000400000005000000020000000500000003000000010000000300000001"
theorem small_7683717_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683717_right_root small_7683717_right_fuel small_7683717_right_count small_7683717_right_encoded = true := by
  decide +kernel
theorem small_7683717_right_covered : CoveredBy scale carrier boxes small_7683717_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683717_right_root small_7683717_right_fuel small_7683717_right_count small_7683717_right_encoded small_7683717_right_checked

theorem cover_7683717 : CoveredBy scale carrier boxes root_7683717 := by
  apply coveredBy_split_literal root_7683717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7683718 small_7683717_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7683718
  · exact small_7683717_right_covered
#print axioms cover_7683717

def root_7683711 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683711_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683711_left_fuel : Nat := 1
def small_7683711_left_count : Nat := 1
def small_7683711_left_encoded : String := "00000002"
theorem small_7683711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683711_left_root small_7683711_left_fuel small_7683711_left_count small_7683711_left_encoded = true := by
  decide +kernel
theorem small_7683711_left_covered : CoveredBy scale carrier boxes small_7683711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683711_left_root small_7683711_left_fuel small_7683711_left_count small_7683711_left_encoded small_7683711_left_checked

theorem cover_7683711 : CoveredBy scale carrier boxes root_7683711 := by
  apply coveredBy_split_literal root_7683711 small_7683711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7683717 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7683711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7683717
#print axioms cover_7683711

def root_7667741 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667741 : CoveredBy scale carrier boxes root_7667741 := by
  apply coveredBy_split_literal root_7667741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7667742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7683711 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7667742
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7683711
#print axioms cover_7667741

def root_7667736 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667736_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667736_right_fuel : Nat := 1
def small_7667736_right_count : Nat := 1
def small_7667736_right_encoded : String := "00000000"
theorem small_7667736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667736_right_root small_7667736_right_fuel small_7667736_right_count small_7667736_right_encoded = true := by
  decide +kernel
theorem small_7667736_right_covered : CoveredBy scale carrier boxes small_7667736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667736_right_root small_7667736_right_fuel small_7667736_right_count small_7667736_right_encoded small_7667736_right_checked

theorem cover_7667736 : CoveredBy scale carrier boxes root_7667736 := by
  apply coveredBy_split_literal root_7667736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7667741 small_7667736_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7667741
  · exact small_7667736_right_covered
#print axioms cover_7667736

def root_7692060 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692060_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692060_left_fuel : Nat := 30
def small_7692060_left_count : Nat := 171
def small_7692060_left_encoded : String := "0F34D106000000030C9A87020F8751030000000107800100128A40F7028001040000000613D7ECFB00000002078000FE128A7D090AD357870000000610D13D060000000600000003000000040000000600000000128A7CF700000000000000060F878D0307800100128A40F70280010413D7B0FB078000FE128A7D090AD357870000000610D13D06000000060000000300000004000000060000000213D7ECFB00000002078000FE128A7D090AD3578710D10106000000030000000610D13D060DE7CA020E5FD903000000010640010012FF70F703C001040000000613A54CFB0000000208C000FE11FC25090BE879C7000000061011AD06000000060000000300000004000000060000000012FFACF700000000000000060E6015030640010012FF70F703C0010413A510FB08C000FE11FC25090000000600000004000000060000000213A54CFB0000000208C000FE11FC25090BE879C71011710600000003000000061011AD060DAED8830E9625020000000105A00100133134F7046001041383DCFB096000FE0000000600000005000000020000000500000000000000050E96610205A00100133134F70460010400000006138418FB00000002096000FE11AABD0900000006000000040000000500000000133170F70000000000000006000000010000000300000004000000050000000012FFACF70000000003C001040000000600000005000000010000000300000004128A4109000000040AD3578710D10106000000030000000510D13D060DE7CA020E5FD903000000010640010012FF70F703C0010400000006000000050000000000000005000000050000000300000000128A7CF700000000028001040000000613D7ECFB00000002078000FE128A7D090AD357870000000610D13D060DE7CA02000000060000000500000003000000040000000500000001"
theorem small_7692060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7692060_left_root small_7692060_left_fuel small_7692060_left_count small_7692060_left_encoded = true := by
  decide +kernel
theorem small_7692060_left_covered : CoveredBy scale carrier boxes small_7692060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7692060_left_root small_7692060_left_fuel small_7692060_left_count small_7692060_left_encoded small_7692060_left_checked

theorem cover_7692060 : CoveredBy scale carrier boxes root_7692060 := by
  apply coveredBy_split_literal root_7692060 small_7692060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2889.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7692060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2889.covered
#print axioms cover_7692060

def root_7692055 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692055_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692055_right_fuel : Nat := 1
def small_7692055_right_count : Nat := 1
def small_7692055_right_encoded : String := "00000001"
theorem small_7692055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7692055_right_root small_7692055_right_fuel small_7692055_right_count small_7692055_right_encoded = true := by
  decide +kernel
theorem small_7692055_right_covered : CoveredBy scale carrier boxes small_7692055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7692055_right_root small_7692055_right_fuel small_7692055_right_count small_7692055_right_encoded small_7692055_right_checked

theorem cover_7692055 : CoveredBy scale carrier boxes root_7692055 := by
  apply coveredBy_split_literal root_7692055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7692060 small_7692055_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7692060
  · exact small_7692055_right_covered
#print axioms cover_7692055

def root_7689567 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7689567 : CoveredBy scale carrier boxes root_7689567 := by
  apply coveredBy_split_literal root_7689567 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2888.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7692055 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2888.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7692055
#print axioms cover_7689567

def root_7689562 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689562_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689562_right_fuel : Nat := 1
def small_7689562_right_count : Nat := 1
def small_7689562_right_encoded : String := "00000004"
theorem small_7689562_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689562_right_root small_7689562_right_fuel small_7689562_right_count small_7689562_right_encoded = true := by
  decide +kernel
theorem small_7689562_right_covered : CoveredBy scale carrier boxes small_7689562_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689562_right_root small_7689562_right_fuel small_7689562_right_count small_7689562_right_encoded small_7689562_right_checked

theorem cover_7689562 : CoveredBy scale carrier boxes root_7689562 := by
  apply coveredBy_split_literal root_7689562 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7689567 small_7689562_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7689567
  · exact small_7689562_right_covered
#print axioms cover_7689562

def root_7689561 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689561_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689561_right_fuel : Nat := 17
def small_7689561_right_count : Nat := 91
def small_7689561_right_encoded : String := "135D4509000000040CFD9C030F34D102000000010CFD9C070F34D10600000003000000050F350D060C9A87060F8751070000000307800100128A40F70000000700000000000000070F878D0707800100128A40F70280010413D7B0FB028000FE13D7ED090AD357830000000710D13D020DE7CA0600000007000000050000000100000004000000050000000200000005000000000000000500000003000000030F350D020CFD9C070F34D106000000030C9A87020F87510300000001000000060F878D0307800100128A40F70280010400000006000000050000000000000005000000010F350D060C9A87020F875103000000010000000A0F878D030C9A87060F875107000000030000000A0F878D0707800100128A40F7028001040000000A13D7ECFB00000002028000FE13D7ED090DE7CA020000000A00000005000000040000000500000000128A7CF70000000002800104000000070000000500000003000000010000000300000001"
theorem small_7689561_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689561_right_root small_7689561_right_fuel small_7689561_right_count small_7689561_right_encoded = true := by
  decide +kernel
theorem small_7689561_right_covered : CoveredBy scale carrier boxes small_7689561_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689561_right_root small_7689561_right_fuel small_7689561_right_count small_7689561_right_encoded small_7689561_right_checked

theorem cover_7689561 : CoveredBy scale carrier boxes root_7689561 := by
  apply coveredBy_split_literal root_7689561 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7689562 small_7689561_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7689562
  · exact small_7689561_right_covered
#print axioms cover_7689561

def root_7689556 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689556_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689556_right_fuel : Nat := 1
def small_7689556_right_count : Nat := 1
def small_7689556_right_encoded : String := "00000002"
theorem small_7689556_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689556_right_root small_7689556_right_fuel small_7689556_right_count small_7689556_right_encoded = true := by
  decide +kernel
theorem small_7689556_right_covered : CoveredBy scale carrier boxes small_7689556_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689556_right_root small_7689556_right_fuel small_7689556_right_count small_7689556_right_encoded small_7689556_right_checked

theorem cover_7689556 : CoveredBy scale carrier boxes root_7689556 := by
  apply coveredBy_split_literal root_7689556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7689561 small_7689556_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7689561
  · exact small_7689556_right_covered
#print axioms cover_7689556

def root_7689555 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7689555 : CoveredBy scale carrier boxes root_7689555 := by
  apply coveredBy_split_literal root_7689555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7689556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2890.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7689556
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2890.covered
#print axioms cover_7689555

def root_7689549 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689549_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689549_left_fuel : Nat := 1
def small_7689549_left_count : Nat := 1
def small_7689549_left_encoded : String := "00000000"
theorem small_7689549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689549_left_root small_7689549_left_fuel small_7689549_left_count small_7689549_left_encoded = true := by
  decide +kernel
theorem small_7689549_left_covered : CoveredBy scale carrier boxes small_7689549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689549_left_root small_7689549_left_fuel small_7689549_left_count small_7689549_left_encoded small_7689549_left_checked

theorem cover_7689549 : CoveredBy scale carrier boxes root_7689549 := by
  apply coveredBy_split_literal root_7689549 small_7689549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7689555 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7689549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7689555
#print axioms cover_7689549

def root_7667735 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667735 : CoveredBy scale carrier boxes root_7667735 := by
  apply coveredBy_split_literal root_7667735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7667736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7689549 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7667736
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7689549
#print axioms cover_7667735

def root_7667730 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667730_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667730_right_fuel : Nat := 1
def small_7667730_right_count : Nat := 1
def small_7667730_right_encoded : String := "00000003"
theorem small_7667730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667730_right_root small_7667730_right_fuel small_7667730_right_count small_7667730_right_encoded = true := by
  decide +kernel
theorem small_7667730_right_covered : CoveredBy scale carrier boxes small_7667730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667730_right_root small_7667730_right_fuel small_7667730_right_count small_7667730_right_encoded small_7667730_right_checked

theorem cover_7667730 : CoveredBy scale carrier boxes root_7667730 := by
  apply coveredBy_split_literal root_7667730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7667735 small_7667730_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7667735
  · exact small_7667730_right_covered
#print axioms cover_7667730

def root_7666990 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666990_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666990_left_fuel : Nat := 24
def small_7666990_left_count : Nat := 351
def small_7666990_left_encoded : String := "120701060000000305000100135D44F705000104135D44FB050000FE135D81090CFD9C030F34D1020000000104548A0713867106000000030280010000000007000000061386AD060280010013D7B0F70280010413D7B0FB078000FE128A7D090AD357830000000A0000000700000004128A4109000000040AD3578310D1010200000001067ECE870000000612EA95060140010000000007000000060000000310D13D0200000006000000010000000213D7ECFB00000002078000FE128A7D090000000700000004128A4109000000040AD3578310D10102000000010000000510D13D02067ECE870000000612EA950601400100000000070000000500000003000000010000000013D7ECF7000000000280010413D7B0FB078000FE128A7D090000000A00000004000000060000000213D7ECFB00000002078000FE0000000A00000005000000030F350D0204548A07000000061386AD060C9A87020F87510300000001000000060F878D030280010013D7B0F7028001040000000613D7ECFB00000002078000FE00000007000000060000000013D7ECF700000000028001040000000613D7ECFB00000002078000FE000000060000000600000001000000030000000100000004135D4509000000040CFD9C030F34D1020000000104548A071386710600000003000000051386AD060280010013D7B0F70280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010000000500000006000000040000000500000002000000050000000000000005000000030F350D0204548A07000000061386AD060C9A8702000000060F878D030280010013D7B0F7028001040000000613D7ECFB00000002028000FE0000000600000005000000000000000600000001000000030000000100000002135D80FB00000002050000FE135D81090CFD9C030F34D1020000000104548A070000000A1386AD060280010013D7B0F707800104128A40FB078000FE0000000A0000000500000002000000050000000000000005000000030F350D0204548A0713867106000000030C9A87020F87510300000001000000060F878D03028001000000000700000005000000011386AD060C9A87020F875103000000010280010013D7B0F707800104128A40FB0000000700000002000000070000000013D7ECF70000000007800104128A40FB078000FE000000060000000600000002128A7CFB00000002078000FE00000007000000050F878D030280010013D7B0F707800104128A40FB078000FE00000007128A410900000004067ECE870000000712EA9506000000070000000300000002128A7CFB00000002078000FE00000007000000050000000013D7ECF70000000007800104128A40FB078000FE128A7D09067ECE870000000612EA95060DE7CA020E5FD903000000010000000600000005000000030000000400000005000000020000000500000001000000030000000100000004135D4509000000040CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87020F875103000000010000000900000005000000030000000100000000135D80F70000000005000104135D44FB050000FE135D81090CFD9C030F34D1020000000104548A07000000061386AD0607800100128A40F70280010400000006000000050000000000000005000000030F350D02000000060000000100000004135D4509000000040CFD9C030F34D10200000001000000050F350D02000000060000000100000002135D80FB00000002050000FE135D81090CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87020F8751030000000107800100128A40F707800104000000060000000500000000000000050000000500000003000000010000000400000005"
theorem small_7666990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7666990_left_root small_7666990_left_fuel small_7666990_left_count small_7666990_left_encoded = true := by
  decide +kernel
theorem small_7666990_left_covered : CoveredBy scale carrier boxes small_7666990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7666990_left_root small_7666990_left_fuel small_7666990_left_count small_7666990_left_encoded small_7666990_left_checked

theorem cover_7666990 : CoveredBy scale carrier boxes root_7666990 := by
  apply coveredBy_split_literal root_7666990 small_7666990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7667730 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7666990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7667730
#print axioms cover_7666990

def root_7666985 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666985_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666985_right_fuel : Nat := 1
def small_7666985_right_count : Nat := 1
def small_7666985_right_encoded : String := "00000001"
theorem small_7666985_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7666985_right_root small_7666985_right_fuel small_7666985_right_count small_7666985_right_encoded = true := by
  decide +kernel
theorem small_7666985_right_covered : CoveredBy scale carrier boxes small_7666985_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7666985_right_root small_7666985_right_fuel small_7666985_right_count small_7666985_right_encoded small_7666985_right_checked

theorem cover_7666985 : CoveredBy scale carrier boxes root_7666985 := by
  apply coveredBy_split_literal root_7666985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.root_7666990 small_7666985_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528.cover_7666990
  · exact small_7666985_right_covered
#print axioms cover_7666985

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0528

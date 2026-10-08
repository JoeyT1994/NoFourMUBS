import TaoBundleAssembly0350
import TaoBundleAssembly0353
import TaoBundleChunkBatch0467
import TaoBundleChunkBatch0468
import TaoBundleChunkBatch0469
import TaoBundleChunkBatch0470
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354
def root_4947402 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4947402_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4947402_right_fuel : Nat := 1
def small_4947402_right_count : Nat := 1
def small_4947402_right_encoded : String := "00000002"
theorem small_4947402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4947402_right_root small_4947402_right_fuel small_4947402_right_count small_4947402_right_encoded = true := by
  decide +kernel
theorem small_4947402_right_covered : CoveredBy scale carrier boxes small_4947402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4947402_right_root small_4947402_right_fuel small_4947402_right_count small_4947402_right_encoded small_4947402_right_checked

theorem cover_4947402 : CoveredBy scale carrier boxes root_4947402 := by
  apply coveredBy_split_literal root_4947402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0353.root_4947407 small_4947402_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0353.cover_4947407
  · exact small_4947402_right_covered
#print axioms cover_4947402

def root_4941122 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4941122 : CoveredBy scale carrier boxes root_4941122 := by
  apply coveredBy_split_literal root_4941122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4941123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4947402 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4941123
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4947402
#print axioms cover_4941122

def root_4941117 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941117_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941117_right_fuel : Nat := 1
def small_4941117_right_count : Nat := 1
def small_4941117_right_encoded : String := "00000001"
theorem small_4941117_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4941117_right_root small_4941117_right_fuel small_4941117_right_count small_4941117_right_encoded = true := by
  decide +kernel
theorem small_4941117_right_covered : CoveredBy scale carrier boxes small_4941117_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4941117_right_root small_4941117_right_fuel small_4941117_right_count small_4941117_right_encoded small_4941117_right_checked

theorem cover_4941117 : CoveredBy scale carrier boxes root_4941117 := by
  apply coveredBy_split_literal root_4941117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4941122 small_4941117_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4941122
  · exact small_4941117_right_covered
#print axioms cover_4941117

def root_4931767 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4931767 : CoveredBy scale carrier boxes root_4931767 := by
  apply coveredBy_split_literal root_4931767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4931768 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4941117 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4931768
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4941117
#print axioms cover_4931767

def root_4931762 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4931762_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4931762_right_fuel : Nat := 1
def small_4931762_right_count : Nat := 1
def small_4931762_right_encoded : String := "00000000"
theorem small_4931762_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4931762_right_root small_4931762_right_fuel small_4931762_right_count small_4931762_right_encoded = true := by
  decide +kernel
theorem small_4931762_right_covered : CoveredBy scale carrier boxes small_4931762_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4931762_right_root small_4931762_right_fuel small_4931762_right_count small_4931762_right_encoded small_4931762_right_checked

theorem cover_4931762 : CoveredBy scale carrier boxes root_4931762 := by
  apply coveredBy_split_literal root_4931762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4931767 small_4931762_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4931767
  · exact small_4931762_right_covered
#print axioms cover_4931762

def root_4993007 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4993007 : CoveredBy scale carrier boxes root_4993007 := by
  apply coveredBy_split_literal root_4993007 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1867.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1868.root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1867.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1868.covered
#print axioms cover_4993007

def root_4993001 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4993001_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4993001_left_fuel : Nat := 1
def small_4993001_left_count : Nat := 1
def small_4993001_left_encoded : String := "00000002"
theorem small_4993001_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4993001_left_root small_4993001_left_fuel small_4993001_left_count small_4993001_left_encoded = true := by
  decide +kernel
theorem small_4993001_left_covered : CoveredBy scale carrier boxes small_4993001_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4993001_left_root small_4993001_left_fuel small_4993001_left_count small_4993001_left_encoded small_4993001_left_checked

theorem cover_4993001 : CoveredBy scale carrier boxes root_4993001 := by
  apply coveredBy_split_literal root_4993001 small_4993001_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4993007 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4993001_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4993007
#print axioms cover_4993001

def root_4997474 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997474_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997474_right_fuel : Nat := 28
def small_4997474_right_count : Nat := 351
def small_4997474_right_encoded : String := "128A4101000000000280010613D7B0FD0280010813D7B0FF0AD3578310D10102000000010000000910D13D020DE7CA04000000060E601505064000F612FFAD01014001060000000613F614FD00000003014001080000000613F614FF000000040BE879C30000000900000006000000000000000600000002000000010000000413D7ECFF000000040AD3578310D10102000000010DE7CA040E5FD90500000002064000F612FFAD010000000900000000000000090E601505064000F612FFAD01014001060000000813F614FD0000000303C0010800000009000000080000000012FF7101000000000140010613F5D8FD03C0010800000009000000080000000313F614FD0000000303C0010800000009000000050000000210D13D020DE7CA040E5FD90500000002000000060E601505064000F612FFAD010140010613F5D8FD03C0010813A510FF0BE879C3101171020000000100000008000000060000000413A54CFF000000040BE879C31011710200000001000000081011AD0200000006000000010000000313F614FD0000000303C0010813A510FF0BE879C310117102000000010DAED8850E9625040000000206E000F600000008000000090E9661040000000600000002000000060000000413A54CFF000000040BE879C310117102000000010DAED8850E9625040000000206E000F60000000812C7E5010000000001E0010600000008000000050E96610406E000F60000000800000007000000021011AD020DAED8850E9625040000000206E000F612C8210101E001060000000A13E994FD0000000304600108000000060000000A000000000000000600000006000000010000000012FF710100000000014001060000000613F614FD0000000303C001080000000613A54CFF000000040BE879C310117102000000010DAED8850E9625040000000200000005000000060000000600000002000000010000000313D7ECFD000000030280010813D7B0FF0AD357830000000910D13D020DE7CA04000000090E601505064000F612FFAD0100000009000000000000000900000002000000010000000413D7ECFF000000040AD3578310D10102000000010DE7CA04000000090E601505064000F612FFAD010000000900000000000000050000000210D13D020DE7CA040E5FD90500000002064000F612FFAD0103C0010613A510FD03C001080000000613A54CFF000000040BE879C3101171020000000100000009000000060000000313A54CFD0000000303C001080000000913A54CFF000000040BE879C3000000091011AD0200000006000000010000000012FF71010000000003C001060000000613A54CFD0000000303C0010800000006000000050E601505064000F612FFAD0103C0010613A510FD03C0010813A510FF0BE879C31011710200000001000000091011AD020DAED8850E9625040000000206E000F612C82101032001060000000613C144FD0000000300000009000000000000000600000006000000010000000413A54CFF000000040BE879C310117102000000010DAED8850E96250400000002000000050E96610400000009000000021011AD020DAED8850E9625040000000206E000F612C821010320010613C108FD046001081383DCFF0C730AE30FA709020000000100000005000000060000000400000005000000030000000500000000000000050E96610406E000F612C82101032001060000000613C144FD00000003046001080000000600000005000000000000000600000002000000010000000313A54CFD0000000303C0010813A510FF0BE879C3000000091011AD020DAED88500000009000000090000000100000004000000050000000012FF71010000000003C0010613A510FD03C0010813A510FF0BE879C30000000900000006000000040000000500000003000000050000000200000001"
theorem small_4997474_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4997474_right_root small_4997474_right_fuel small_4997474_right_count small_4997474_right_encoded = true := by
  decide +kernel
theorem small_4997474_right_covered : CoveredBy scale carrier boxes small_4997474_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4997474_right_root small_4997474_right_fuel small_4997474_right_count small_4997474_right_encoded small_4997474_right_checked

theorem cover_4997474 : CoveredBy scale carrier boxes root_4997474 := by
  apply coveredBy_split_literal root_4997474 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1869.root small_4997474_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1869.covered
  · exact small_4997474_right_covered
#print axioms cover_4997474

def root_4997469 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997469_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997469_right_fuel : Nat := 1
def small_4997469_right_count : Nat := 1
def small_4997469_right_encoded : String := "00000002"
theorem small_4997469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4997469_right_root small_4997469_right_fuel small_4997469_right_count small_4997469_right_encoded = true := by
  decide +kernel
theorem small_4997469_right_covered : CoveredBy scale carrier boxes small_4997469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4997469_right_root small_4997469_right_fuel small_4997469_right_count small_4997469_right_encoded small_4997469_right_checked

theorem cover_4997469 : CoveredBy scale carrier boxes root_4997469 := by
  apply coveredBy_split_literal root_4997469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4997474 small_4997469_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4997474
  · exact small_4997469_right_covered
#print axioms cover_4997469

def root_4997249 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997249_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997249_left_fuel : Nat := 22
def small_4997249_left_count : Nat := 103
def small_4997249_left_encoded : String := "0F87510500000002078000F6128A7D010280010613D7B0FD0280010813D7B0FF0AD3578300000005000000060000000413D7ECFF000000040AD3578310D10102000000010000000810D13D020B4D440410801105000000020000000610804D0508C000F6000000050000000600000002000000010000000313D7ECFD00000003028001080000000913D7ECFF000000040AD357830000000910D13D020B4D440410801105000000020000000910804D0508C000F611FC250103C0010613A510FD03C001080000000513A54CFF000000040BE879C3000000081011AD020BF3E584000000051009290500000009000000020000000100000003000000090000000011FBE9010000000003C0010613A510FD03C001080000000613A54CFF00000004000000090000000300000009000000020000000100000000128A4101000000000280010613D7B0FD028001080000000613D7ECFF000000040AD3578310D101020000000100000009000000060000000313D7ECFD00000003028001080000000913D7ECFF000000040AD357830000000910D13D020000000600000001"
theorem small_4997249_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4997249_left_root small_4997249_left_fuel small_4997249_left_count small_4997249_left_encoded = true := by
  decide +kernel
theorem small_4997249_left_covered : CoveredBy scale carrier boxes small_4997249_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4997249_left_root small_4997249_left_fuel small_4997249_left_count small_4997249_left_encoded small_4997249_left_checked

theorem cover_4997249 : CoveredBy scale carrier boxes root_4997249 := by
  apply coveredBy_split_literal root_4997249 small_4997249_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4997469 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4997249_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4997469
#print axioms cover_4997249

def root_4997244 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997244_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4997244_right_fuel : Nat := 1
def small_4997244_right_count : Nat := 1
def small_4997244_right_encoded : String := "00000002"
theorem small_4997244_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4997244_right_root small_4997244_right_fuel small_4997244_right_count small_4997244_right_encoded = true := by
  decide +kernel
theorem small_4997244_right_covered : CoveredBy scale carrier boxes small_4997244_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4997244_right_root small_4997244_right_fuel small_4997244_right_count small_4997244_right_encoded small_4997244_right_checked

theorem cover_4997244 : CoveredBy scale carrier boxes root_4997244 := by
  apply coveredBy_split_literal root_4997244 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4997249 small_4997244_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4997249
  · exact small_4997244_right_covered
#print axioms cover_4997244

def root_4993000 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4993000 : CoveredBy scale carrier boxes root_4993000 := by
  apply coveredBy_split_literal root_4993000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4993001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4997244 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4993001
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4997244
#print axioms cover_4993000

def root_4992994 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992994_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992994_left_fuel : Nat := 1
def small_4992994_left_count : Nat := 1
def small_4992994_left_encoded : String := "00000001"
theorem small_4992994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4992994_left_root small_4992994_left_fuel small_4992994_left_count small_4992994_left_encoded = true := by
  decide +kernel
theorem small_4992994_left_covered : CoveredBy scale carrier boxes small_4992994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4992994_left_root small_4992994_left_fuel small_4992994_left_count small_4992994_left_encoded small_4992994_left_checked

theorem cover_4992994 : CoveredBy scale carrier boxes root_4992994 := by
  apply coveredBy_split_literal root_4992994 small_4992994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4993000 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4992994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4993000
#print axioms cover_4992994

def root_5000996 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000996_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000996_right_fuel : Nat := 28
def small_5000996_right_count : Nat := 341
def small_5000996_right_encoded : String := "128A4101000000000280010613D7B0FD0280010813D7B0FF0AD3578510D10104000000020000000A10D13D040DE7CA02000000060E601503064000F612FFAD01014001060000000613F614FD00000003014001080000000613F614FF000000040BE879C50000000A00000006000000000000000600000001000000020000000413D7ECFF000000040AD357850000000A10D13D040DE7CA020000000A0E601503064000F612FFAD010000000A000000000000000A00000001000000020000000313D7ECFD000000030280010813D7B0FF0AD3578510D10104000000020DE7CA020E5FD90300000001064000F612FFAD010000000A000000000000000A0E601503064000F612FFAD0103C001060000000A000000070000000012FF71010000000003C001060000000A13A54CFD000000030140010800000007000000050000000110D13D040DE7CA020E5FD90300000001000000060E601503064000F612FFAD0103C0010613A510FD0140010813F5D8FF0BE879C5101171040000000200000007000000060000000413F614FF000000040BE879C510117104000000020DAED8830E9625020000000106E000F6000000070000000A0E9661020000000600000001000000060000000313A54CFD000000030140010813F5D8FF0BE879C51011710400000002000000071011AD0400000006000000020000000413F614FF000000040BE879C510117104000000020DAED8830E9625020000000106E000F60000000712C7E50100000000046001061383DCFD0000000700000003000000050E96610206E000F60000000700000008000000011011AD040DAED8830E9625020000000106E000F612C82101046001061383DCFD000000060000000300000009000000000000000600000006000000020000000012FF71010000000003C001060000000613A54CFD00000003014001080000000613F614FF000000040BE879C510117104000000020DAED8830E9625020000000100000005000000060000000600000001000000020000000413D7ECFF000000040AD3578510D10104000000020DE7CA020000000A0E601503064000F612FFAD010000000A00000000000000050000000110D13D040DE7CA020E5FD90300000001064000F612FFAD0103C001060000000A13A54CFD0000000303C0010813A510FF0BE879C510117104000000020000000A000000060000000413A54CFF000000040BE879C50000000A1011AD0400000006000000020000000012FF71010000000003C001060000000613A54CFD0000000303C0010800000006000000050E601503064000F612FFAD0103C0010613A510FD03C0010813A510FF0BE879C510117104000000020000000A1011AD040DAED8830E9625020000000106E000F612C82101032001060000000613C144FD0000000303200108000000060000000A000000000000000600000006000000020000000413A54CFF000000040BE879C50000000A1011AD040DAED8830000000A0000000A000000020000000313A54CFD0000000303C0010813A510FF0BE879C510117104000000020DAED8830E96250200000001000000050E9661020000000A000000011011AD040DAED8830E9625020000000106E000F612C82101046001061383DCFD0320010813C108FF0C730AE50FA709040000000200000005000000060000000400000005000000030000000500000000000000050E96610206E000F612C821010460010600000006138418FD000000030320010800000006000000050000000000000006000000010000000200000004000000050000000012FF71010000000003C0010613A510FD03C0010813A510FF0BE879C50000000A00000006000000040000000500000003000000050000000100000002"
theorem small_5000996_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5000996_right_root small_5000996_right_fuel small_5000996_right_count small_5000996_right_encoded = true := by
  decide +kernel
theorem small_5000996_right_covered : CoveredBy scale carrier boxes small_5000996_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5000996_right_root small_5000996_right_fuel small_5000996_right_count small_5000996_right_encoded small_5000996_right_checked

theorem cover_5000996 : CoveredBy scale carrier boxes root_5000996 := by
  apply coveredBy_split_literal root_5000996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1870.root small_5000996_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1870.covered
  · exact small_5000996_right_covered
#print axioms cover_5000996

def root_5000991 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000991_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000991_right_fuel : Nat := 1
def small_5000991_right_count : Nat := 1
def small_5000991_right_encoded : String := "00000001"
theorem small_5000991_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5000991_right_root small_5000991_right_fuel small_5000991_right_count small_5000991_right_encoded = true := by
  decide +kernel
theorem small_5000991_right_covered : CoveredBy scale carrier boxes small_5000991_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5000991_right_root small_5000991_right_fuel small_5000991_right_count small_5000991_right_encoded small_5000991_right_checked

theorem cover_5000991 : CoveredBy scale carrier boxes root_5000991 := by
  apply coveredBy_split_literal root_5000991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5000996 small_5000991_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5000996
  · exact small_5000991_right_covered
#print axioms cover_5000991

def root_5000781 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000781_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000781_left_fuel : Nat := 22
def small_5000781_left_count : Nat := 97
def small_5000781_left_encoded : String := "0F87510300000001078000F6128A7D010280010613D7B0FD0280010813D7B0FF0AD357850000000500000006000000040000000A0000000313D7ECFD000000030280010813D7B0FF0AD3578510D10104000000020000000710D13D040B4D440210801103000000010000000610804D0308C000F6000000050000000600000001000000020000000413D7ECFF000000040AD357850000000A10D13D040B4D440210801103000000010000000A10804D0308C000F611FC250103C001060000000A13A54CFD0000000303C0010813A510FF0BE879C5000000071011AD040BF3E58200000005100929030000000A0000000100000002000000040000000A0000000011FBE9010000000003C001060000000A13A54CFD000000030000000A000000010000000200000000128A4101000000000280010613D7B0FD0000000A0000000313D7ECFD000000030280010813D7B0FF0AD3578510D10104000000020000000A000000060000000413D7ECFF000000040AD357850000000A10D13D040000000600000002"
theorem small_5000781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5000781_left_root small_5000781_left_fuel small_5000781_left_count small_5000781_left_encoded = true := by
  decide +kernel
theorem small_5000781_left_covered : CoveredBy scale carrier boxes small_5000781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5000781_left_root small_5000781_left_fuel small_5000781_left_count small_5000781_left_encoded small_5000781_left_checked

theorem cover_5000781 : CoveredBy scale carrier boxes root_5000781 := by
  apply coveredBy_split_literal root_5000781 small_5000781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5000991 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5000781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5000991
#print axioms cover_5000781

def root_5000775 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000775_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000775_left_fuel : Nat := 1
def small_5000775_left_count : Nat := 1
def small_5000775_left_encoded : String := "00000002"
theorem small_5000775_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5000775_left_root small_5000775_left_fuel small_5000775_left_count small_5000775_left_encoded = true := by
  decide +kernel
theorem small_5000775_left_covered : CoveredBy scale carrier boxes small_5000775_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5000775_left_root small_5000775_left_fuel small_5000775_left_count small_5000775_left_encoded small_5000775_left_checked

theorem cover_5000775 : CoveredBy scale carrier boxes root_5000775 := by
  apply coveredBy_split_literal root_5000775 small_5000775_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5000781 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_5000775_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5000781
#print axioms cover_5000775

def root_5000774 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5000774 : CoveredBy scale carrier boxes root_5000774 := by
  apply coveredBy_split_literal root_5000774 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5000775 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1871.root coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5000775
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1871.covered
#print axioms cover_5000774

def root_5000769 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000769_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5000769_right_fuel : Nat := 1
def small_5000769_right_count : Nat := 1
def small_5000769_right_encoded : String := "00000001"
theorem small_5000769_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5000769_right_root small_5000769_right_fuel small_5000769_right_count small_5000769_right_encoded = true := by
  decide +kernel
theorem small_5000769_right_covered : CoveredBy scale carrier boxes small_5000769_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5000769_right_root small_5000769_right_fuel small_5000769_right_count small_5000769_right_encoded small_5000769_right_checked

theorem cover_5000769 : CoveredBy scale carrier boxes root_5000769 := by
  apply coveredBy_split_literal root_5000769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5000774 small_5000769_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5000774
  · exact small_5000769_right_covered
#print axioms cover_5000769

def root_4992993 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4992993 : CoveredBy scale carrier boxes root_4992993 := by
  apply coveredBy_split_literal root_4992993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5000769 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5000769
#print axioms cover_4992993

def root_4992988 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992988_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992988_right_fuel : Nat := 1
def small_4992988_right_count : Nat := 1
def small_4992988_right_encoded : String := "00000004"
theorem small_4992988_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4992988_right_root small_4992988_right_fuel small_4992988_right_count small_4992988_right_encoded = true := by
  decide +kernel
theorem small_4992988_right_covered : CoveredBy scale carrier boxes small_4992988_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4992988_right_root small_4992988_right_fuel small_4992988_right_count small_4992988_right_encoded small_4992988_right_checked

theorem cover_4992988 : CoveredBy scale carrier boxes root_4992988 := by
  apply coveredBy_split_literal root_4992988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992993 small_4992988_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992993
  · exact small_4992988_right_covered
#print axioms cover_4992988

def root_5007139 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5007139 : CoveredBy scale carrier boxes root_5007139 := by
  apply coveredBy_split_literal root_5007139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1872.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1873.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1872.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1873.covered
#print axioms cover_5007139

def root_5007133 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5007133_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5007133_left_fuel : Nat := 1
def small_5007133_left_count : Nat := 1
def small_5007133_left_encoded : String := "00000004"
theorem small_5007133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5007133_left_root small_5007133_left_fuel small_5007133_left_count small_5007133_left_encoded = true := by
  decide +kernel
theorem small_5007133_left_covered : CoveredBy scale carrier boxes small_5007133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5007133_left_root small_5007133_left_fuel small_5007133_left_count small_5007133_left_encoded small_5007133_left_checked

theorem cover_5007133 : CoveredBy scale carrier boxes root_5007133 := by
  apply coveredBy_split_literal root_5007133 small_5007133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5007139 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5007133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5007139
#print axioms cover_5007133

def root_4992987 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4992987 : CoveredBy scale carrier boxes root_4992987 := by
  apply coveredBy_split_literal root_4992987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5007133 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992988
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5007133
#print axioms cover_4992987

def root_4992982 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992982_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992982_right_fuel : Nat := 1
def small_4992982_right_count : Nat := 1
def small_4992982_right_encoded : String := "00000003"
theorem small_4992982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4992982_right_root small_4992982_right_fuel small_4992982_right_count small_4992982_right_encoded = true := by
  decide +kernel
theorem small_4992982_right_covered : CoveredBy scale carrier boxes small_4992982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4992982_right_root small_4992982_right_fuel small_4992982_right_count small_4992982_right_encoded small_4992982_right_checked

theorem cover_4992982 : CoveredBy scale carrier boxes root_4992982 := by
  apply coveredBy_split_literal root_4992982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992987 small_4992982_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992987
  · exact small_4992982_right_covered
#print axioms cover_4992982

def root_5013214 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5013214 : CoveredBy scale carrier boxes root_5013214 := by
  apply coveredBy_split_literal root_5013214 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1874.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1875.root coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1874.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1875.covered
#print axioms cover_5013214

def root_5013209 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5013209_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5013209_right_fuel : Nat := 1
def small_5013209_right_count : Nat := 1
def small_5013209_right_encoded : String := "00000001"
theorem small_5013209_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5013209_right_root small_5013209_right_fuel small_5013209_right_count small_5013209_right_encoded = true := by
  decide +kernel
theorem small_5013209_right_covered : CoveredBy scale carrier boxes small_5013209_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5013209_right_root small_5013209_right_fuel small_5013209_right_count small_5013209_right_encoded small_5013209_right_checked

theorem cover_5013209 : CoveredBy scale carrier boxes root_5013209 := by
  apply coveredBy_split_literal root_5013209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5013214 small_5013209_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5013214
  · exact small_5013209_right_covered
#print axioms cover_5013209

def root_5012539 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5012539_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5012539_left_fuel : Nat := 29
def small_5012539_left_count : Nat := 321
def small_5012539_left_encoded : String := "0F34D102000000010CFD9C050F34D10400000002078000F6128A7D0107800106128A40FD0280010813D7B0FF0AD3578310D10102000000010AD35785000000060000000910D13D020AD3578510D101040000000208C000F60000000611FBE9010000000006400106000000070000000510D13D0408C000F611FC25010640010612FF70FD014001080000000713F614FF000000040BE879C3000000091011AD020BE879C500000007000000090000000100000003000000090000000011FBE901000000000640010612FF70FD014001080000000913F614FF000000040BE879C3000000091011AD020BE879C5000000090000000900000001000000030000000900000002000000010000000413D7ECFF000000040AD3578310D10102000000010000000510D13D020AD3578510D10104000000020000000510D13D0408C000F611FC25010640010612FF70FD03C0010813A510FF0BE879C3000000061011AD020BE879C5000000061011AD04096000F60000000611AA81010000000005A00106133134FD03200108000000090000000500000003000000050000000200000001000000040000000500000003000000050000000000000005000000020000000100000003128A7CFD000000030280010813D7B0FF0AD357830000000910D13D020AD3578510D10104000000020000000510D13D04000000090000000200000001000000040000000500000000128A41010000000007800106128A40FD0280010813D7B0FF0AD3578310D10102000000010000000510D13D020AD3578510D10104000000020000000510D13D04064000F612FFAD010640010612FF70FD014001080000000900000005000000030000000500000000000000050000000200000001000000040000000500000003000000050F350D040C9A87040F87510500000002078000F6128A7D0107800106128A40FD028001080000000913D7ECFF000000040AD357830000000910D13D020000000900000001000000030000000900000000000000090F878D05078000F6128A7D0107800106128A40FD0280010813D7B0FF0AD357830000000910D13D0200000009000000010000000413D7ECFF000000040AD3578310D10102000000010000000910D13D020DE7CA040E5FD9050000000208C000F611FC25010640010612FF70FD03C001080000000913A54CFF000000040BE879C3000000091011AD020000000900000001000000030000000900000000000000090E60150508C000F611FC25010640010612FF70FD03C0010813A510FF000000090000000413A54CFF000000040BE879C31011710200000001000000091011AD020DAED8850E96250400000002096000F611AABD0105A00106000000060000000500000000000000050E966104096000F611AABD0100000009000000000000000900000002000000010000000312FFACFD0000000303C0010800000009000000050000000011FBE901000000000640010612FF70FD03C0010800000009000000050000000300000005000000020000000100000003128A7CFD00000003028001080000000913D7ECFF000000040AD357830000000910D13D020DE7CA0400000009000000050000000100000000128A41010000000007800106128A40FD028001080000000913D7ECFF000000040AD3578310D10102000000010000000510D13D020DE7CA040E5FD90500000002064000F60000000900000005000000050000000100000003128A7CFD000000030280010800000009000000050000000200000002"
theorem small_5012539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5012539_left_root small_5012539_left_fuel small_5012539_left_count small_5012539_left_encoded = true := by
  decide +kernel
theorem small_5012539_left_covered : CoveredBy scale carrier boxes small_5012539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5012539_left_root small_5012539_left_fuel small_5012539_left_count small_5012539_left_encoded small_5012539_left_checked

theorem cover_5012539 : CoveredBy scale carrier boxes root_5012539 := by
  apply coveredBy_split_literal root_5012539 small_5012539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5013209 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_5012539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5013209
#print axioms cover_5012539

def root_5012534 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5012534_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5012534_right_fuel : Nat := 1
def small_5012534_right_count : Nat := 1
def small_5012534_right_encoded : String := "00000004"
theorem small_5012534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5012534_right_root small_5012534_right_fuel small_5012534_right_count small_5012534_right_encoded = true := by
  decide +kernel
theorem small_5012534_right_covered : CoveredBy scale carrier boxes small_5012534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5012534_right_root small_5012534_right_fuel small_5012534_right_count small_5012534_right_encoded small_5012534_right_checked

theorem cover_5012534 : CoveredBy scale carrier boxes root_5012534 := by
  apply coveredBy_split_literal root_5012534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5012539 small_5012534_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5012539
  · exact small_5012534_right_covered
#print axioms cover_5012534

def root_5012533 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5012533 : CoveredBy scale carrier boxes root_5012533 := by
  apply coveredBy_split_literal root_5012533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5012534 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1876.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5012534
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1876.covered
#print axioms cover_5012533

def root_5012527 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5012527_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5012527_left_fuel : Nat := 1
def small_5012527_left_count : Nat := 1
def small_5012527_left_encoded : String := "00000003"
theorem small_5012527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5012527_left_root small_5012527_left_fuel small_5012527_left_count small_5012527_left_encoded = true := by
  decide +kernel
theorem small_5012527_left_covered : CoveredBy scale carrier boxes small_5012527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5012527_left_root small_5012527_left_fuel small_5012527_left_count small_5012527_left_encoded small_5012527_left_checked

theorem cover_5012527 : CoveredBy scale carrier boxes root_5012527 := by
  apply coveredBy_split_literal root_5012527 small_5012527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5012533 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5012527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5012533
#print axioms cover_5012527

def root_4992981 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4992981 : CoveredBy scale carrier boxes root_4992981 := by
  apply coveredBy_split_literal root_4992981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_5012527 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992982
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_5012527
#print axioms cover_4992981

def root_4992976 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992976_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992976_right_fuel : Nat := 1
def small_4992976_right_count : Nat := 1
def small_4992976_right_encoded : String := "00000000"
theorem small_4992976_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4992976_right_root small_4992976_right_fuel small_4992976_right_count small_4992976_right_encoded = true := by
  decide +kernel
theorem small_4992976_right_covered : CoveredBy scale carrier boxes small_4992976_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4992976_right_root small_4992976_right_fuel small_4992976_right_count small_4992976_right_encoded small_4992976_right_checked

theorem cover_4992976 : CoveredBy scale carrier boxes root_4992976 := by
  apply coveredBy_split_literal root_4992976 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992981 small_4992976_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992981
  · exact small_4992976_right_covered
#print axioms cover_4992976

def root_4992975 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4992975 : CoveredBy scale carrier boxes root_4992975 := by
  apply coveredBy_split_literal root_4992975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992976 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1877.root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992976
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1877.covered
#print axioms cover_4992975

def root_4992970 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992970_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4992970_right_fuel : Nat := 1
def small_4992970_right_count : Nat := 1
def small_4992970_right_encoded : String := "00000002"
theorem small_4992970_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4992970_right_root small_4992970_right_fuel small_4992970_right_count small_4992970_right_encoded = true := by
  decide +kernel
theorem small_4992970_right_covered : CoveredBy scale carrier boxes small_4992970_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4992970_right_root small_4992970_right_fuel small_4992970_right_count small_4992970_right_encoded small_4992970_right_checked

theorem cover_4992970 : CoveredBy scale carrier boxes root_4992970 := by
  apply coveredBy_split_literal root_4992970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.root_4992975 small_4992970_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354.cover_4992975
  · exact small_4992970_right_covered
#print axioms cover_4992970

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0354

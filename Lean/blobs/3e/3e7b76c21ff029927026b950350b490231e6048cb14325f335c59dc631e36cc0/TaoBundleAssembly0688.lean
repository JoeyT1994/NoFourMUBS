import TaoBundleAssembly0687
import TaoBundleChunkBatch0960
import TaoBundleChunkBatch0962
import TaoBundleChunkBatch0963
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688
def root_10236840 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236840_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236840_right_fuel : Nat := 1
def small_10236840_right_count : Nat := 1
def small_10236840_right_encoded : String := "00000001"
theorem small_10236840_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10236840_right_root small_10236840_right_fuel small_10236840_right_count small_10236840_right_encoded = true := by
  decide +kernel
theorem small_10236840_right_covered : CoveredBy scale carrier boxes small_10236840_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10236840_right_root small_10236840_right_fuel small_10236840_right_count small_10236840_right_encoded small_10236840_right_checked

theorem cover_10236840 : CoveredBy scale carrier boxes root_10236840 := by
  apply coveredBy_split_literal root_10236840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10236845 small_10236840_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10236845
  · exact small_10236840_right_covered
#print axioms cover_10236840

def root_10236032 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236032_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236032_left_fuel : Nat := 38
def small_10236032_left_count : Nat := 383
def small_10236032_left_encoded : String := "1151E903000000010A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A9130112070100000000000000000712073D0008A91305120700FA08A912FF00000007120700FE0500010200000007135D810305000106135D450700000003000000070000000700000001000000040000000212073CFA0000000200000007000000001151E8FF08A91301120701000000000008A9130500000007000000060000000700000004115225070A0000FE115224FF0000000408A91301120701000000000008A91305120700FA08A91307120701060000000308A912FF0000000600000007000000070000000212073CFA0000000208A913071207010600000003000000070000000712073D0008A91305120700FA08A91307120701060000000308A912FF12073CFE0000000405000102135D4503000000010CFD9C010000000700000006135D81030CFD9C010F34D10000000000000000060F350D0004548A05138670FA04548A07000000060000000700000002000000070000000000000001120700FE05000102135D4503000000010CFD9C010F34D10000000000000000060F350D0004548A05138670FA04548A070000000600000007000000021386ACFA0000000204548A07000000060000000700000000135D81030CFD9C010F34D1000000000004548A05138670FA04548A07000000060000000700000002000000060F350D0004548A05138670FA04548A071386710600000003045489FF00000006138670FE0C9A87000F8751010000000007800102128A41030000000100000006128A7D03022A45850000000513E200FA00000002022A45870000000513E20106022A457F0000000513E1C4FE0B4D440000000009000000060000000400000003000000010F878D010780010200000006128A7D03022A458500000005000000060000000100000000000000041386AD06045489FF1386ACFE000000040C9A87000F875101000000000000000700000007138670FE0C9A87000F8751010000000007800102128A410300000001022A45850000000800000007128A7D03022A458513E1C4FA067ECE8712EA590600000003022A457F0000000513E1C4FE0B4D44001080110100000000000000080000000800000004000000070000000200000007000000010F878D0100000007000000000000000400000003000000021386ACFA0000000204548A071386710600000003045489FF00000006138670FE0C9A87000F875101000000000000000600000006000000041386AD06000000070000000300000000000000010000000412073D0608A912FF12073CFE0000000400000007120700FE0500010200000007135D81030CFD9C010F34D10000000000000000070F350D0004548A05138670FA0CFD9C070F34D10600000003045489FF0000000700000007000000070000000200000007000000000000000100000004000000030000000212073CFA0000000208A91307120701060000000308A912FF12073CFE000000040500010200000006135D81030000000700000001120700FE05000102135D4503000000010CFD9C010000000700000007135D81030CFD9C010F34D10000000000000000060F350D000CFD9C050F34D0FA04548A070000000600000007000000020000000700000000000000010000000412073D0608A912FF000000070000000700000003000000001151E8FF08A91301120701000000000008A91305000000070000000612073D0008A91305120700FA000000070000000200000007000000000000000400000003000000021151E905000000020A0001061151E907000000030A0000FE115224FF00000004000000071151E8FF08A913011207010000000000000000060000000700000004115225070A0000FE115224FF0000000408A91301120701000000000008A913070000000612073D0608A912FF00000006000000070000000312073D0008A91307120701060000000308A912FF000000060000000712073D060000000700000003000000001151E8FF08A9130112070100000000000000000612073D0008A913070000000612073D0605000102000000090000000700000003000000000000000400000003"
theorem small_10236032_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10236032_left_root small_10236032_left_fuel small_10236032_left_count small_10236032_left_encoded = true := by
  decide +kernel
theorem small_10236032_left_covered : CoveredBy scale carrier boxes small_10236032_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10236032_left_root small_10236032_left_fuel small_10236032_left_count small_10236032_left_encoded small_10236032_left_checked

theorem cover_10236032 : CoveredBy scale carrier boxes root_10236032 := by
  apply coveredBy_split_literal root_10236032 small_10236032_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10236840 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10236032_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10236840
#print axioms cover_10236032

def root_10236027 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236027_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236027_right_fuel : Nat := 1
def small_10236027_right_count : Nat := 1
def small_10236027_right_encoded : String := "00000000"
theorem small_10236027_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10236027_right_root small_10236027_right_fuel small_10236027_right_count small_10236027_right_encoded = true := by
  decide +kernel
theorem small_10236027_right_covered : CoveredBy scale carrier boxes small_10236027_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10236027_right_root small_10236027_right_fuel small_10236027_right_count small_10236027_right_encoded small_10236027_right_checked

theorem cover_10236027 : CoveredBy scale carrier boxes root_10236027 := by
  apply coveredBy_split_literal root_10236027 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10236032 small_10236027_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10236032
  · exact small_10236027_right_covered
#print axioms cover_10236027

def root_10232959 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10232959 : CoveredBy scale carrier boxes root_10232959 := by
  apply coveredBy_split_literal root_10232959 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3837.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10236027 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3837.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10236027
#print axioms cover_10232959

def root_10240491 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10240491 : CoveredBy scale carrier boxes root_10240491 := by
  apply coveredBy_split_literal root_10240491 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3839.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3840.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3839.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3840.covered
#print axioms cover_10240491

def root_10240485 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10240485_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10240485_left_fuel : Nat := 1
def small_10240485_left_count : Nat := 1
def small_10240485_left_encoded : String := "00000000"
theorem small_10240485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10240485_left_root small_10240485_left_fuel small_10240485_left_count small_10240485_left_encoded = true := by
  decide +kernel
theorem small_10240485_left_covered : CoveredBy scale carrier boxes small_10240485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10240485_left_root small_10240485_left_fuel small_10240485_left_count small_10240485_left_encoded small_10240485_left_checked

theorem cover_10240485 : CoveredBy scale carrier boxes root_10240485 := by
  apply coveredBy_split_literal root_10240485 small_10240485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10240491 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10240485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10240491
#print axioms cover_10240485

def root_10257186 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10257186_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10257186_left_fuel : Nat := 25
def small_10257186_left_count : Nat := 249
def small_10257186_left_encoded : String := "0F87510300000001022A458513E1C4FA022A458713E1C50600000003022A45890000000513E200FE000000040DE7CA000E5FD90100000000000000080000000813E20106022A458913E1C4FE0DE7CA000E5FD901000000000B4D44020000000510804D030000000500000001000000080000000413E200FE000000040DE7CA000E5FD901000000000000000800000008000000030000000213E200FA00000002022A458713E1C50600000003022A458913E1C4FE0DE7CA000E5FD901000000000B4D44020000000510804D030000000500000001000000060000000413E200FE000000040DE7CA000E5FD901000000000B4D44021080110300000001033F67C50000000813BC30FA0000000201152347000000060000000810804D03033F67C513BBF4FA011523470000000513F89506033F67C90000000500000008000000030000000213BC30FA000000020115234713F8590600000003033F67C913BBF4FE000000050000000413BC30FE000000040D4128800EFA110100000000000000090000000813F89506033F67C913BBF4FE0D4128800EFA1101000000000BF3E5821008ED0300000001000000061009290303C9F8E5000000050000000A000000010EFA4D010BF3E582000000061009290303C9F8E5000000050000000600000001000000000000000413BC30FE000000040D4128800EFA1101000000000BF3E582000000081009290303C9F8E50000000813A36CFA00000002019FB4670000000800000008000000010000000800000003000000010E6015010B4D44020000000810804D03033F67C50000000813BC30FA00000002011523470000000613F89506033F67C9000000060000000800000003000000010000000013E20106022A458913E1C4FE0DE7CA000E5FD901000000000B4D44021080110300000001033F67C5000000080000000710804D03033F67C513BBF4FA033F67C700000005000000070000000200000007000000010E60150100000007000000000000000413E200FE000000040DE7CA000E5FD901000000000B4D440210801103000000010000000810804D03033F67C513BBF4FA033F67C713BBF5060000000300000008000000080000000213BC30FA00000002033F67C713BBF50600000003033F67C913BBF4FE0D4128800EFA1101000000000BF3E582000000071009290303C9F8E5000000080000000700000001000000070000000413BC30FE000000040D4128800EFA110100000000000000080000000813BC3106033F67C90000000713BC30FE000000040D4128800EFA110100000000000000070000000700000003000000010E6015010B4D44020000000710804D03033F67C50000000800000007000000010000000000000003"
theorem small_10257186_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10257186_left_root small_10257186_left_fuel small_10257186_left_count small_10257186_left_encoded = true := by
  decide +kernel
theorem small_10257186_left_covered : CoveredBy scale carrier boxes small_10257186_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10257186_left_root small_10257186_left_fuel small_10257186_left_count small_10257186_left_encoded small_10257186_left_checked

theorem cover_10257186 : CoveredBy scale carrier boxes root_10257186 := by
  apply coveredBy_split_literal root_10257186 small_10257186_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3847.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10257186_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3847.covered
#print axioms cover_10257186

def root_10257181 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10257181_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10257181_right_fuel : Nat := 1
def small_10257181_right_count : Nat := 1
def small_10257181_right_encoded : String := "00000000"
theorem small_10257181_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10257181_right_root small_10257181_right_fuel small_10257181_right_count small_10257181_right_encoded = true := by
  decide +kernel
theorem small_10257181_right_covered : CoveredBy scale carrier boxes small_10257181_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10257181_right_root small_10257181_right_fuel small_10257181_right_count small_10257181_right_encoded small_10257181_right_checked

theorem cover_10257181 : CoveredBy scale carrier boxes root_10257181 := by
  apply coveredBy_split_literal root_10257181 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10257186 small_10257181_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10257186
  · exact small_10257181_right_covered
#print axioms cover_10257181

def root_10255947 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10255947 : CoveredBy scale carrier boxes root_10255947 := by
  apply coveredBy_split_literal root_10255947 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3846.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10257181 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3846.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10257181
#print axioms cover_10255947

def root_10255942 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10255942_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10255942_right_fuel : Nat := 1
def small_10255942_right_count : Nat := 1
def small_10255942_right_encoded : String := "00000004"
theorem small_10255942_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10255942_right_root small_10255942_right_fuel small_10255942_right_count small_10255942_right_encoded = true := by
  decide +kernel
theorem small_10255942_right_covered : CoveredBy scale carrier boxes small_10255942_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10255942_right_root small_10255942_right_fuel small_10255942_right_count small_10255942_right_encoded small_10255942_right_checked

theorem cover_10255942 : CoveredBy scale carrier boxes root_10255942 := by
  apply coveredBy_split_literal root_10255942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10255947 small_10255942_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10255947
  · exact small_10255942_right_covered
#print axioms cover_10255942

def root_10255941 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10255941 : CoveredBy scale carrier boxes root_10255941 := by
  apply coveredBy_split_literal root_10255941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10255942 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3848.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10255942
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3848.covered
#print axioms cover_10255941

def root_10255935 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10255935_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10255935_left_fuel : Nat := 1
def small_10255935_left_count : Nat := 1
def small_10255935_left_encoded : String := "00000003"
theorem small_10255935_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10255935_left_root small_10255935_left_fuel small_10255935_left_count small_10255935_left_encoded = true := by
  decide +kernel
theorem small_10255935_left_covered : CoveredBy scale carrier boxes small_10255935_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10255935_left_root small_10255935_left_fuel small_10255935_left_count small_10255935_left_encoded small_10255935_left_checked

theorem cover_10255935 : CoveredBy scale carrier boxes root_10255935 := by
  apply coveredBy_split_literal root_10255935 small_10255935_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10255941 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10255935_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10255941
#print axioms cover_10255935

def root_10255934 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10255934 : CoveredBy scale carrier boxes root_10255934 := by
  apply coveredBy_split_literal root_10255934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10255935 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3849.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10255935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3849.covered
#print axioms cover_10255934

def root_10255929 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10255929_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10255929_right_fuel : Nat := 1
def small_10255929_right_count : Nat := 1
def small_10255929_right_encoded : String := "00000002"
theorem small_10255929_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10255929_right_root small_10255929_right_fuel small_10255929_right_count small_10255929_right_encoded = true := by
  decide +kernel
theorem small_10255929_right_covered : CoveredBy scale carrier boxes small_10255929_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10255929_right_root small_10255929_right_fuel small_10255929_right_count small_10255929_right_encoded small_10255929_right_checked

theorem cover_10255929 : CoveredBy scale carrier boxes root_10255929 := by
  apply coveredBy_split_literal root_10255929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10255934 small_10255929_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10255934
  · exact small_10255929_right_covered
#print axioms cover_10255929

def root_10265403 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10265403_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10265403_left_fuel : Nat := 24
def small_10265403_left_count : Nat := 283
def small_10265403_left_encoded : String := "0F875101000000000C9A87020F87510300000001067ECE8512EA58FA022A458713E1C50600000003022A458913E1C4FE0B4D44000000000A10804D010B4D4402000000060000000A000000000000000413E200FE000000040B4D440010801101000000000B4D4402000000090000000910804D010B4D440210801103000000010000000910804D030569AC451340D4FA011523470000000913F89506033F67C90000000913BC30FE00000004000000090000000300000002134110FA00000002011523470000000913F89506033F67C9000000090000000900000003000000010000000013E20106022A458913E1C4FE0B4D44000000000A10804D010B4D4402000000070000000A000000000000000413E200FE000000040B4D440010801101000000000B4D44021080110300000001000000090000000A10804D010B4D440210801103000000010569AC451340D4FA033F67C70000000900000007000000020000000710804D030569AC451340D4FA033F67C713BBF50600000003033F67C90000000A13BC30FE000000040BF3E5801008ED010000000000000009100929010BF3E5821008ED0300000001000000090000000A0000000013BC3106033F67C90000000713BC30FE000000040BF3E5800000000A1009290100000007000000000000000300000002134110FA00000002033F67C713BBF50600000003033F67C90000000713BC30FE000000040BF3E5800000000A00000007000000070000000100000000000000030000000212EA94FA00000002022A458713E1C50600000003022A458913E1C4FE0B4D44000000000A000000060000000413E200FE000000040B4D440010801101000000000000000910804D010B4D440210801103000000010000000910804D030793F0C5128220FA01152347000000090000000A000000020000000A000000010000000013E20106022A45890000000A13E200FE000000040B4D440010801101000000000B4D44021080110300000001000000090000000A10804D010000000700000000000000030F878D03067ECE8512EA58FA022A458713E1C50600000003022A45890000000A13E200FE000000040B4D440010801101000000000000000A10804D010DE7CA020E5FD903000000010569AC451340D4FA0115234713F8590600000003033F67C90000000A13BC30FE000000040BF3E5800000000A0000000A0000000A000000020000000A0E6015030000000A000000010000000013E20106022A45890000000A13E200FE000000040B4D440010801101000000000000000A10804D010DE7CA020E5FD903000000010569AC451340D4FA033F67C70000000A0000000A000000020000000A0000000A00000000000000030000000212EA94FA00000002022A458713E1C50600000003022A45890000000A13E200FE000000040B4D44000000000A10804D010DE7CA020E5FD903000000010000000A0000000A0000000013E20106022A45890000000A13E200FE000000040B4D44000000000A10804D010DE7CA020E5FD903000000010000000A0000000A000000000000000300000001"
theorem small_10265403_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10265403_left_root small_10265403_left_fuel small_10265403_left_count small_10265403_left_encoded = true := by
  decide +kernel
theorem small_10265403_left_covered : CoveredBy scale carrier boxes small_10265403_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10265403_left_root small_10265403_left_fuel small_10265403_left_count small_10265403_left_encoded small_10265403_left_checked

theorem cover_10265403 : CoveredBy scale carrier boxes root_10265403 := by
  apply coveredBy_split_literal root_10265403 small_10265403_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3850.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10265403_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3850.covered
#print axioms cover_10265403

def root_10265398 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10265398_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10265398_right_fuel : Nat := 1
def small_10265398_right_count : Nat := 1
def small_10265398_right_encoded : String := "00000004"
theorem small_10265398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10265398_right_root small_10265398_right_fuel small_10265398_right_count small_10265398_right_encoded = true := by
  decide +kernel
theorem small_10265398_right_covered : CoveredBy scale carrier boxes small_10265398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10265398_right_root small_10265398_right_fuel small_10265398_right_count small_10265398_right_encoded small_10265398_right_checked

theorem cover_10265398 : CoveredBy scale carrier boxes root_10265398 := by
  apply coveredBy_split_literal root_10265398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10265403 small_10265398_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10265403
  · exact small_10265398_right_covered
#print axioms cover_10265398

def root_10270847 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10270847_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10270847_right_fuel : Nat := 1
def small_10270847_right_count : Nat := 1
def small_10270847_right_encoded : String := "00000004"
theorem small_10270847_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10270847_right_root small_10270847_right_fuel small_10270847_right_count small_10270847_right_encoded = true := by
  decide +kernel
theorem small_10270847_right_covered : CoveredBy scale carrier boxes small_10270847_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10270847_right_root small_10270847_right_fuel small_10270847_right_count small_10270847_right_encoded small_10270847_right_checked

theorem cover_10270847 : CoveredBy scale carrier boxes root_10270847 := by
  apply coveredBy_split_literal root_10270847 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3852.root small_10270847_right_root coord4 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3852.covered
  · exact small_10270847_right_covered
#print axioms cover_10270847

def root_10270846 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10270846_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10270846_right_fuel : Nat := 19
def small_10270846_right_count : Nat := 239
def small_10270846_right_encoded : String := "12EA94FE000000040DE7CA000E5FD901000000000DE7CA020E5FD903000000010569AC451340D4FA0115234713F85906000000030793F0C9128220FE0D4128800EFA1101000000000D4128820EFA110300000001000000090EFA4D0300000006000000010EFA4D010D4128820EFA110300000001000000080EFA4D0304DF1B25000000061365F0FA000000020000000500000001000000000000000412825CFE000000040D412880000000060000000513F895060793F0C9128220FE0D412880000000060EFA4D010D4128820EFA11030000000100000005000000050000000000000004000000050000000300000002134110FA000000020115234713F85906000000030793F0C9128220FE0D4128800EFA11010000000000000005000000050000000400000005000000050E6015030569AC4500000006134110FA000000020115234713F85906000000030793F0C9128220FE0DAED883000000060E9661020D412880000000060000000500000001000000040000000500000005000000010E6015010DE7CA020E5FD903000000010569AC451340D4FA0115234713F85906000000030793F0C9128220FE0DAED8810E96250000000000000000080E9661000D412882000000080EFA4D0304DF1B25000000081365F0FA00000002008A92270000000A000000050000000100000000000000040000000A13F895060793F0C9128220FE0DAED8810E96250000000000000000080E9661000D41288200000008000000050000000000000004000000050000000300000002134110FA000000020115234713F85906000000030793F0C9128220FE0DAED8810E962500000000000D4128820000000A000000050E9661000D4128820EFA1103000000010000000500000005000000000000000400000005000000050E6015030569AC451340D4FA0115234713F85906000000030793F0C9128220FE0DAED8810E962500000000000DAED8830E96250200000001000000060E9661020000000A000000010E9661000DAED883000000060E96610204DF1B25000000061365F0FA0000000200000006000000010000000000000004000000060000000600000002134110FA000000020115234713F85906000000030793F0C9128220FE0DAED8810E962500000000000DAED8830E9625020000000105F43D650000000600000005000000050E9661000DAED8830E962502000000010000000500000005000000000000000412825CFE000000040000000513F895060793F0C9128220FE0DAED8810E9625000000000000000005000000050000000400000005000000030000000100000000"
theorem small_10270846_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10270846_right_root small_10270846_right_fuel small_10270846_right_count small_10270846_right_encoded = true := by
  decide +kernel
theorem small_10270846_right_covered : CoveredBy scale carrier boxes small_10270846_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10270846_right_root small_10270846_right_fuel small_10270846_right_count small_10270846_right_encoded small_10270846_right_checked

theorem cover_10270846 : CoveredBy scale carrier boxes root_10270846 := by
  apply coveredBy_split_literal root_10270846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10270847 small_10270846_right_root coord4 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10270847
  · exact small_10270846_right_covered
#print axioms cover_10270846

def root_10270840 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10270840_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10270840_left_fuel : Nat := 1
def small_10270840_left_count : Nat := 1
def small_10270840_left_encoded : String := "00000003"
theorem small_10270840_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10270840_left_root small_10270840_left_fuel small_10270840_left_count small_10270840_left_encoded = true := by
  decide +kernel
theorem small_10270840_left_covered : CoveredBy scale carrier boxes small_10270840_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10270840_left_root small_10270840_left_fuel small_10270840_left_count small_10270840_left_encoded small_10270840_left_checked

theorem cover_10270840 : CoveredBy scale carrier boxes root_10270840 := by
  apply coveredBy_split_literal root_10270840 small_10270840_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10270846 coord3 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_10270840_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10270846
#print axioms cover_10270840

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688

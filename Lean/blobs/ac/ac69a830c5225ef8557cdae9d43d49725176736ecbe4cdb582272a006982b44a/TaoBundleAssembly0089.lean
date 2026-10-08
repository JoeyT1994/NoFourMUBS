import TaoBundleAssembly0088
import TaoBundleChunkBatch0339
import TaoBundleChunkBatch0340
import TaoBundleChunkBatch0341
import TaoBundleChunkBatch0342
import TaoBundleChunkBatch0343
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089
def root_3591516 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591516_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591516_left_fuel : Nat := 29
def small_3591516_left_count : Nat := 445
def small_3591516_left_encoded : String := "0F34D108000000040C9A86F60F878D010C9A86F80F878D0307800104128A40FB022A4587000000050000000A00000002128A7CFB00000002022A458713E1C506000000030AD3578910D10108000000040DE7C9F6000000090000000710D13D080DE7C9F6000000090E5FD90100000000000000090000000413E201060AD3578910D10108000000040000000710D13D080DE7C9F60E6015010000000A00000000000000070000000400000003000000010F8751030000000107800104128A40FB022A458713E1C506000000030AD357890000000A10D13D080DE7C9F60000000A0E5FD901000000000B4D43F80000000A00000008000000040000000A00000002128A7CFB00000002022A458713E1C506000000030AD3578910D10108000000040000000810D13D080DE7C9F60E60150100000008000000000E5FD901000000000B4D43F800000009000000080000000413E201060AD3578910D10108000000040000000A10D13D080DE7C9F60000000A0E5FD901000000000B4D43F80000000A10801103000000010000000A0000000400000003000000000F875101000000000C9A86F80F878D0307800104128A40FB022A458713E1C506000000030AD3578910D10108000000040000000710D13D080B4D43F610804D010DE7C9F8000000050E5FD903000000010640010400000005000000070000000000000007000000040000000700000002128A7CFB00000002022A458713E1C506000000030AD3578910D10108000000040000000710D13D080B4D43F610804D010DE7C9F8000000070E5FD903000000010000000900000000000000070000000400000007000000010F8751030000000107800104128A40FB022A458713E1C506000000030AD3578910D10108000000040B4D43F610804D010000000A0000000010801101000000000B4D43F800000007108011030000000106400104000000070000000710D13D080B4D43F610804D010B4D43F810804D030640010412FF70FB0000000A0000000212FFACFB000000020115234713F85906000000030BE879C91011710800000004000000070000000900000007000000011080110300000001064001040000000A12FFACFB0000000201152347000000080000000A0000000010801101000000000B4D43F810804D030640010412FF70FB0115234713F85906000000030BE879C90000000700000007000000070000000212FFACFB00000002000000070000000110801103000000010640010412FF70FB0115234713F85906000000030BE879C910117108000000040000000A1011AD080AA6A27610EDAD010AA6A2780000000A000000080000000010ED7101000000000AA6A2780000000710ED71030000000105A00104133134FB0000000A00000002133170FB00000002008A92270000000800000007000000040000000A0000000212FFACFB000000020115234713F85906000000030BE879C91011710800000004000000071011AD080AA6A27610EDAD010AA6A27800000009000000080000000010ED7101000000000AA6A2780000000710ED71030000000106E001040000000712C820FB00000002000000070000000413F895060BE879C9000000071011AD080AA6A27610EDAD0100000007000000000000000700000004000000030000000413E201060AD3578910D10108000000040000000710D13D080B4D43F610804D010000000A0000000010801101000000000B4D43F8000000071080110300000001064001040000000700000007000000040000000300000002128A7CFB00000002022A458713E1C506000000030AD3578910D10108000000040B4D43F610804D010B4D43F800000009000000080000000010801101000000000000000710D13D080B4D43F610804D010B4D43F810804D0308C0010411FBE8FB011523470000000900000007000000020000000900000001108011030000000108C0010411FBE8FB011523470000000813F895060BE879C91011710800000004000000071011AD080BF3E576000000081008ED010000000000000009000000040000000300000002000000090000000010801101000000000B4D43F810804D0308C00104000000070000000900000001108011030000000108C0010411FBE8FB0115234713F85906000000030BE879C91011710800000004000000070000000913F895060BE879C90000000700000007000000030000000211FC24FB000000020115234700000009000000050000000413E201060AD3578910D10108000000040000000710D13D080B4D43F610804D010B4D43F810804D030000000700000001108011030000000108C0010411FBE8FB0000000A0000000211FC24FB00000002033F67C713BBF506000000030BE879C90000000700000007000000070000000010801101000000000B4D43F800000007108011030000000108C0010400000007000000050000000400000003"
theorem small_3591516_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3591516_left_root small_3591516_left_fuel small_3591516_left_count small_3591516_left_encoded = true := by
  decide +kernel
theorem small_3591516_left_covered : CoveredBy scale carrier boxes small_3591516_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3591516_left_root small_3591516_left_fuel small_3591516_left_count small_3591516_left_encoded small_3591516_left_checked

theorem cover_3591516 : CoveredBy scale carrier boxes root_3591516 := by
  apply coveredBy_split_literal root_3591516 small_3591516_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0088.root_3592462 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3591516_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0088.cover_3592462
#print axioms cover_3591516

def root_3591510 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591510_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591510_left_fuel : Nat := 1
def small_3591510_left_count : Nat := 1
def small_3591510_left_encoded : String := "00000003"
theorem small_3591510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3591510_left_root small_3591510_left_fuel small_3591510_left_count small_3591510_left_encoded = true := by
  decide +kernel
theorem small_3591510_left_covered : CoveredBy scale carrier boxes small_3591510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3591510_left_root small_3591510_left_fuel small_3591510_left_count small_3591510_left_encoded small_3591510_left_checked

theorem cover_3591510 : CoveredBy scale carrier boxes root_3591510 := by
  apply coveredBy_split_literal root_3591510 small_3591510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3591516 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3591510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3591516
#print axioms cover_3591510

def root_3591509 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3591509 : CoveredBy scale carrier boxes root_3591509 := by
  apply coveredBy_split_literal root_3591509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3591510 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1363.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3591510
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1363.covered
#print axioms cover_3591509

def root_3591503 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591503_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591503_left_fuel : Nat := 1
def small_3591503_left_count : Nat := 1
def small_3591503_left_encoded : String := "00000001"
theorem small_3591503_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3591503_left_root small_3591503_left_fuel small_3591503_left_count small_3591503_left_encoded = true := by
  decide +kernel
theorem small_3591503_left_covered : CoveredBy scale carrier boxes small_3591503_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3591503_left_root small_3591503_left_fuel small_3591503_left_count small_3591503_left_encoded small_3591503_left_checked

theorem cover_3591503 : CoveredBy scale carrier boxes root_3591503 := by
  apply coveredBy_split_literal root_3591503 small_3591503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3591509 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3591503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3591509
#print axioms cover_3591503

def root_3591239 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591239_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591239_left_fuel : Nat := 17
def small_3591239_left_count : Nat := 127
def small_3591239_left_encoded : String := "0F34D0F804548A0713867106000000030CFD9C090F34D108000000040C9A86F60F878D010780010400000005128A7CFB000000020AD357830000000510D13CF800000001022A45870000000500000007000000000F87510100000000000000070F350D080C9A86F60F878D010C9A8708000000050F878D090000000500000004000000000F875101000000000C9A87080F8751090000000407800104128A40FB0000000500000002128A7CFB000000020AD3578310D100F8000000050000000110D13CF800000001022A458713E1C506000000030B4D43F60000000500000008000000080F878D0907800104128A40FB0AD357830000000510D13CF800000001022A4587000000050000000700000002128A7CFB000000020AD357830000000710D13CF800000001022A458713E1C506000000030B4D43F600000009000000070000000700000004000000041386AD060CFD9C090F34D10800000004000000070F350D080C9A86F60F878D010C9A87080F875109000000040780010400000005128A7CFB000000020AD357830000000710D13CF800000001067ECE8712EA5906000000030DE7C9F60000000500000007000000070F878D0907800104000000070000000700000004000000000F875101000000000C9A87080F8751090000000407800104000000070000000700000007000000040000000300000001"
theorem small_3591239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3591239_left_root small_3591239_left_fuel small_3591239_left_count small_3591239_left_encoded = true := by
  decide +kernel
theorem small_3591239_left_covered : CoveredBy scale carrier boxes small_3591239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3591239_left_root small_3591239_left_fuel small_3591239_left_count small_3591239_left_encoded small_3591239_left_checked

theorem cover_3591239 : CoveredBy scale carrier boxes root_3591239 := by
  apply coveredBy_split_literal root_3591239 small_3591239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3591503 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3591239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3591503
#print axioms cover_3591239

def root_3591233 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591233_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3591233_left_fuel : Nat := 1
def small_3591233_left_count : Nat := 1
def small_3591233_left_encoded : String := "00000000"
theorem small_3591233_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3591233_left_root small_3591233_left_fuel small_3591233_left_count small_3591233_left_encoded = true := by
  decide +kernel
theorem small_3591233_left_covered : CoveredBy scale carrier boxes small_3591233_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3591233_left_root small_3591233_left_fuel small_3591233_left_count small_3591233_left_encoded small_3591233_left_checked

theorem cover_3591233 : CoveredBy scale carrier boxes root_3591233 := by
  apply coveredBy_split_literal root_3591233 small_3591233_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3591239 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3591233_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3591239
#print axioms cover_3591233

def root_3590899 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590899_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590899_left_fuel : Nat := 23
def small_3590899_left_count : Nat := 157
def small_3590899_left_encoded : String := "0F34D0F60CFD9C030F34D0F804548A07000000051386AD060CFD9C09000000050F350D08000000050000000400000003000000010F350CF80000000104548A0713867106000000030CFD9C090F34D108000000040C9A86F80000000A0F875103000000010000000A0F350D080C9A86F80F878D030C9A8708000000050F878D090000000500000004000000010F875103000000010C9A87080F8751090000000407800104128A40FB0000000500000002128A7CFB000000020AD3578110D100F6000000050000000010D13CF600000000022A458713E1C506000000030B4D43F80000000510801103000000010B4D4408000000050000000913E201060B4D43F810804D030B4D44080000000510804D0900000005000000040000000110801103000000010B4D44080000000610804D0908C00104000000060000000600000004000000030F878D0907800104128A40FB0000000A00000002128A7CFB000000020AD357810000000A10D13CF600000000022A458713E1C506000000030B4D43F800000009000000080000000A00000004000000041386AD060CFD9C090F34D108000000040000000A0F350D080C9A86F80F878D030C9A87080F875109000000040780010400000005128A7CFB000000020AD357810000000A10D13CF600000000067ECE8712EA5906000000030DE7C9F8000000050E5FD903000000010000000A0000000A0000000A000000010F875103000000010C9A87080F87510900000004078001040000000A128A7CFB000000020AD357810000000A10D13CF600000000067ECE8712EA5906000000030B4D43F80000000A10801103000000010000000A0000000A0000000A000000040000000300000000"
theorem small_3590899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3590899_left_root small_3590899_left_fuel small_3590899_left_count small_3590899_left_encoded = true := by
  decide +kernel
theorem small_3590899_left_covered : CoveredBy scale carrier boxes small_3590899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3590899_left_root small_3590899_left_fuel small_3590899_left_count small_3590899_left_encoded small_3590899_left_checked

theorem cover_3590899 : CoveredBy scale carrier boxes root_3590899 := by
  apply coveredBy_split_literal root_3590899 small_3590899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3591233 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3590899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3591233
#print axioms cover_3590899

def root_3590893 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590893_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590893_left_fuel : Nat := 1
def small_3590893_left_count : Nat := 1
def small_3590893_left_encoded : String := "00000002"
theorem small_3590893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3590893_left_root small_3590893_left_fuel small_3590893_left_count small_3590893_left_encoded = true := by
  decide +kernel
theorem small_3590893_left_covered : CoveredBy scale carrier boxes small_3590893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3590893_left_root small_3590893_left_fuel small_3590893_left_count small_3590893_left_encoded small_3590893_left_checked

theorem cover_3590893 : CoveredBy scale carrier boxes root_3590893 := by
  apply coveredBy_split_literal root_3590893 small_3590893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3590899 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3590893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3590899
#print axioms cover_3590893

def root_3589003 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3589003 : CoveredBy scale carrier boxes root_3589003 := by
  apply coveredBy_split_literal root_3589003 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1357.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3590893 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1357.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3590893
#print axioms cover_3589003

def root_3588998 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588998_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588998_right_fuel : Nat := 1
def small_3588998_right_count : Nat := 1
def small_3588998_right_encoded : String := "00000004"
theorem small_3588998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588998_right_root small_3588998_right_fuel small_3588998_right_count small_3588998_right_encoded = true := by
  decide +kernel
theorem small_3588998_right_covered : CoveredBy scale carrier boxes small_3588998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588998_right_root small_3588998_right_fuel small_3588998_right_count small_3588998_right_encoded small_3588998_right_checked

theorem cover_3588998 : CoveredBy scale carrier boxes root_3588998 := by
  apply coveredBy_split_literal root_3588998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3589003 small_3588998_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3589003
  · exact small_3588998_right_covered
#print axioms cover_3588998

def root_3588716 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588716_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588716_left_fuel : Nat := 21
def small_3588716_left_count : Nat := 133
def small_3588716_left_encoded : String := "120701080000000405000104135D44FB0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A07138671060000000304548A090000000A1386AD080C9A86F60000000A0F875101000000000C9A86F8000000060F875103000000010000000A000000040000000A00000002135D80FB000000020CFD9C010F34D0F60CFD9C030F34D0F800000005000000010000000A000000000F350CF6000000000CFD9C030F34D0F804548A07138671060000000304548A09000000070000000700000007000000010F350CF80000000104548A07138671060000000304548A0913867108000000040C9A86F60F878D010C9A86F80000000A0000000A000000000F875101000000000C9A86F8000000070F875103000000010780010400000007000000071386AD080C9A86F60F878D010C9A86F80F878D03078001040000000A128A7CFB00000002022A458713E1C50600000003067ECE89000000070000000700000007000000010F875103000000010000000A000000000F875101000000000C9A86F80F878D0300000007000000010F8751030000000107800104128A40FB0000000A00000002128A7CFB00000002022A458713E1C50600000003067ECE89000000070000000700000007000000041386AD0604548A0913867108000000040000000A1386AD080C9A86F60000000A000000070000000400000003"
theorem small_3588716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588716_left_root small_3588716_left_fuel small_3588716_left_count small_3588716_left_encoded = true := by
  decide +kernel
theorem small_3588716_left_covered : CoveredBy scale carrier boxes small_3588716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588716_left_root small_3588716_left_fuel small_3588716_left_count small_3588716_left_encoded small_3588716_left_checked

theorem cover_3588716 : CoveredBy scale carrier boxes root_3588716 := by
  apply coveredBy_split_literal root_3588716 small_3588716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588998 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3588716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588998
#print axioms cover_3588716

def root_3588710 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588710_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588710_left_fuel : Nat := 1
def small_3588710_left_count : Nat := 1
def small_3588710_left_encoded : String := "00000003"
theorem small_3588710_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588710_left_root small_3588710_left_fuel small_3588710_left_count small_3588710_left_encoded = true := by
  decide +kernel
theorem small_3588710_left_covered : CoveredBy scale carrier boxes small_3588710_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588710_left_root small_3588710_left_fuel small_3588710_left_count small_3588710_left_encoded small_3588710_left_checked

theorem cover_3588710 : CoveredBy scale carrier boxes root_3588710 := by
  apply coveredBy_split_literal root_3588710 small_3588710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588716 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3588710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588716
#print axioms cover_3588710

def root_3588709 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588709_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588709_right_fuel : Nat := 28
def small_3588709_right_count : Nat := 135
def small_3588709_right_encoded : String := "12073D0608A9130912070108000000040000000A12073D0805000104135D44FB0CFD9C010000000A0F350CF6000000000CFD9C030F34D0F80CFD9C070F34D106000000030CFD9C09000000070F350D080C9A86F60000000A000000070000000400000007000000010000000A00000002135D80FB000000020CFD9C010F34D0F60CFD9C030F34D0F80000000A000000010000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D106000000030CFD9C09000000070F350D080C9A86F60F878D01000000070000000000000007000000040F350D060000000700000003000000010F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D080C9A86F60F878D010C9A86F80F878D030C9A87080F87510900000004078001040000000A128A7CFB000000020AD3578710D10106000000030DE7C9F60000000A00000007000000070000000A000000010F875103000000010000000A000000000F875101000000000C9A86F80F878D030C9A87080F8751090000000407800104000000070000000700000007000000010F875103000000010C9A87080F8751090000000407800104128A40FB0000000A00000002128A7CFB000000020AD3578710D10106000000030B4D43F610804D010B4D43F80000000710801103000000010000000A0000000000000008000000070000000A000000040F350D060000000A000000030000000400000003"
theorem small_3588709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588709_right_root small_3588709_right_fuel small_3588709_right_count small_3588709_right_encoded = true := by
  decide +kernel
theorem small_3588709_right_covered : CoveredBy scale carrier boxes small_3588709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588709_right_root small_3588709_right_fuel small_3588709_right_count small_3588709_right_encoded small_3588709_right_checked

theorem cover_3588709 : CoveredBy scale carrier boxes root_3588709 := by
  apply coveredBy_split_literal root_3588709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588710 small_3588709_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588710
  · exact small_3588709_right_covered
#print axioms cover_3588709

def root_3588703 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588703_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588703_left_fuel : Nat := 1
def small_3588703_left_count : Nat := 1
def small_3588703_left_encoded : String := "00000001"
theorem small_3588703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588703_left_root small_3588703_left_fuel small_3588703_left_count small_3588703_left_encoded = true := by
  decide +kernel
theorem small_3588703_left_covered : CoveredBy scale carrier boxes small_3588703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588703_left_root small_3588703_left_fuel small_3588703_left_count small_3588703_left_encoded small_3588703_left_checked

theorem cover_3588703 : CoveredBy scale carrier boxes root_3588703 := by
  apply coveredBy_split_literal root_3588703 small_3588703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588709 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3588703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588709
#print axioms cover_3588703

def root_3588515 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588515_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588515_left_fuel : Nat := 17
def small_3588515_left_count : Nat := 87
def small_3588515_left_encoded : String := "120700F808A91307120701060000000308A9130912070108000000040500010400000005135D80FB000000020CFD9C01000000050000000712073D0805000104135D44FB0000000500000002135D80FB000000020CFD9C010F34D0F600000005000000000F350CF60000000004548A03138670F804548A070000000500000007000000011386ACF80000000104548A0713867106000000030CFD9C09000000050F350D0800000005000000041386AD060CFD9C09000000070F350D080C9A86F6000000050000000700000004000000030000000412073D0608A9130912070108000000040000000712073D0805000104135D44FB0CFD9C010F34D0F600000005000000000F350CF6000000000000000700000002135D80FB000000020CFD9C010F34D0F604548A03000000051386ACF8000000010CFD9C070000000500000007000000000F350CF60000000000000007000000040000000300000001"
theorem small_3588515_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588515_left_root small_3588515_left_fuel small_3588515_left_count small_3588515_left_encoded = true := by
  decide +kernel
theorem small_3588515_left_covered : CoveredBy scale carrier boxes small_3588515_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588515_left_root small_3588515_left_fuel small_3588515_left_count small_3588515_left_encoded small_3588515_left_checked

theorem cover_3588515 : CoveredBy scale carrier boxes root_3588515 := by
  apply coveredBy_split_literal root_3588515 small_3588515_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588703 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3588515_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588703
#print axioms cover_3588515

def root_3588509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588509_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588509_left_fuel : Nat := 1
def small_3588509_left_count : Nat := 1
def small_3588509_left_encoded : String := "00000000"
theorem small_3588509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588509_left_root small_3588509_left_fuel small_3588509_left_count small_3588509_left_encoded = true := by
  decide +kernel
theorem small_3588509_left_covered : CoveredBy scale carrier boxes small_3588509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588509_left_root small_3588509_left_fuel small_3588509_left_count small_3588509_left_encoded small_3588509_left_checked

theorem cover_3588509 : CoveredBy scale carrier boxes root_3588509 := by
  apply coveredBy_split_literal root_3588509 small_3588509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588515 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3588509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588515
#print axioms cover_3588509

def root_3588405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588405_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588405_left_fuel : Nat := 18
def small_3588405_left_count : Nat := 47
def small_3588405_left_encoded : String := "120700F608A91303120700F8000000050000000112073CF80000000108A91307120701060000000308A9130912070108000000040000000A12073D0805000104135D44FB0000000500000002135D80FB0000000204548A01138670F60CFD9C03000000050000000A000000001386ACF6000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A0713867106000000030CFD9C09000000050F350D0800000005000000040000000A000000040000000A00000000"
theorem small_3588405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588405_left_root small_3588405_left_fuel small_3588405_left_count small_3588405_left_encoded = true := by
  decide +kernel
theorem small_3588405_left_covered : CoveredBy scale carrier boxes small_3588405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588405_left_root small_3588405_left_fuel small_3588405_left_count small_3588405_left_encoded small_3588405_left_checked

theorem cover_3588405 : CoveredBy scale carrier boxes root_3588405 := by
  apply coveredBy_split_literal root_3588405 small_3588405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588509 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3588405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588509
#print axioms cover_3588405

def root_3588400 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588400_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588400_right_fuel : Nat := 1
def small_3588400_right_count : Nat := 1
def small_3588400_right_encoded : String := "00000004"
theorem small_3588400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588400_right_root small_3588400_right_fuel small_3588400_right_count small_3588400_right_encoded = true := by
  decide +kernel
theorem small_3588400_right_covered : CoveredBy scale carrier boxes small_3588400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588400_right_root small_3588400_right_fuel small_3588400_right_count small_3588400_right_encoded small_3588400_right_checked

theorem cover_3588400 : CoveredBy scale carrier boxes root_3588400 := by
  apply coveredBy_split_literal root_3588400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588405 small_3588400_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588405
  · exact small_3588400_right_covered
#print axioms cover_3588400

def root_3586092 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3586092 : CoveredBy scale carrier boxes root_3586092 := by
  apply coveredBy_split_literal root_3586092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1356.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3588400 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1356.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3588400
#print axioms cover_3586092

def root_3586087 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3586087_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3586087_right_fuel : Nat := 1
def small_3586087_right_count : Nat := 1
def small_3586087_right_encoded : String := "00000003"
theorem small_3586087_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3586087_right_root small_3586087_right_fuel small_3586087_right_count small_3586087_right_encoded = true := by
  decide +kernel
theorem small_3586087_right_covered : CoveredBy scale carrier boxes small_3586087_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3586087_right_root small_3586087_right_fuel small_3586087_right_count small_3586087_right_encoded small_3586087_right_checked

theorem cover_3586087 : CoveredBy scale carrier boxes root_3586087 := by
  apply coveredBy_split_literal root_3586087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3586092 small_3586087_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3586092
  · exact small_3586087_right_covered
#print axioms cover_3586087

def root_3585839 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585839_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585839_left_fuel : Nat := 18
def small_3585839_left_count : Nat := 115
def small_3585839_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A91303000000050000000A0000000012073CF60000000008A91303120700F805000104135D44FB05000106135D45070000000300000007135D81070500010800000005000000070000000300000002135D80FB0000000205000106135D45070000000300000007135D810705000108135D4509000000040000000800000007000000030000000112073CF80000000105000104135D44FB050001060000000A135D810705000108135D4509000000040CFD9C010000000A0F350CF600000000000000090000000A0000000300000002135D80FB0000000205000106135D45070000000305000108135D4509000000040CFD9C010000000A0F350CF600000000000000090000000A135D810705000108135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F800000008000000010000000A000000000F350CF6000000000CFD9C030F34D0F8000000080000000100000008135D81090CFD9C010000000A0F350CF6000000000CFD9C030F34D0F800000007000000010000000A00000004000000031152250908A913010000000A12073CF60000000008A91303120700F800000007000000010000000A00000004"
theorem small_3585839_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585839_left_root small_3585839_left_fuel small_3585839_left_count small_3585839_left_encoded = true := by
  decide +kernel
theorem small_3585839_left_covered : CoveredBy scale carrier boxes small_3585839_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585839_left_root small_3585839_left_fuel small_3585839_left_count small_3585839_left_encoded small_3585839_left_checked

theorem cover_3585839 : CoveredBy scale carrier boxes root_3585839 := by
  apply coveredBy_split_literal root_3585839 small_3585839_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3586087 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3585839_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3586087
#print axioms cover_3585839

def root_3585834 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585834_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585834_right_fuel : Nat := 1
def small_3585834_right_count : Nat := 1
def small_3585834_right_encoded : String := "00000002"
theorem small_3585834_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585834_right_root small_3585834_right_fuel small_3585834_right_count small_3585834_right_encoded = true := by
  decide +kernel
theorem small_3585834_right_covered : CoveredBy scale carrier boxes small_3585834_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585834_right_root small_3585834_right_fuel small_3585834_right_count small_3585834_right_encoded small_3585834_right_checked

theorem cover_3585834 : CoveredBy scale carrier boxes root_3585834 := by
  apply coveredBy_split_literal root_3585834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3585839 small_3585834_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3585839
  · exact small_3585834_right_covered
#print axioms cover_3585834

def root_3607411 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607411_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607411_left_fuel : Nat := 21
def small_3607411_left_count : Nat := 263
def small_3607411_left_encoded : String := "120700F808A912FB12073D0408A91307120701060000000305000108135D4509000000040CFD9C010F34D0F604548A03000000051386ACF8000000010CFD9BFB000000050F34D1040000000200000009000000000F350CF60000000004548A03138670F80CFD9BFB000000080F34D104000000020000000A000000011386ACF8000000010CFD9BFB0F350D0404548A0713867106000000030000000800000008000000020F34D104000000020000000A135D81090CFD9C010F34D0F604548A03138670F80CFD9BFB0000000500000009000000011386ACF8000000010CFD9BFB0F350D04000000050000000200000009000000000F350CF60000000004548A03138670F80CFD9BFB0F350D0404548A07000000051386AD060000000700000003000000020F34D1040000000200000009000000011386ACF8000000010CFD9BFB0F350D0404548A0713867106000000030C9A86F60F878D010C9A87040000000500000009000000000F875101000000000C9A87040000000A000000081386AD060C9A86F60F878D010C9A87040F8750FB00000005000000020F878CFB00000002078001080000000800000007000000000F875101000000000000000800000003000000020F34D1040000000204548A07000000091386AD060C9A86F60000000900000007000000030000000412073D0605000108135D4509000000040CFD9C010F34D0F604548A03138670F80CFD9BFB0F350D0400000005000000020F34D1040000000200000007000000011386ACF8000000010CFD9BFB0F350D040CFD9C070000000500000008000000020F34D104000000020CFD9C070F34D10600000003028001080000000813D7ED090AD3578100000007000000070000000400000008000000000F350CF60000000004548A03138670F80CFD9BFB0000000800000007000000011386ACF8000000010CFD9BFB000000080F34D1040000000200000008135D81090CFD9C010F34D0F604548A03138670F80CFD9BFB0F350D04000000070000000200000007000000011386ACF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB00000005000000020F878CFB000000020000000700000007000000020F34D1040000000200000007000000000F350CF60000000004548A03138670F800000007000000011386ACF8000000010CFD9BFB0F350D040CFD9C070F34D1060000000300000007000000070000000200000007000000040000000300000002120701040000000208A91307120701060000000305000108135D4509000000040CFD9C0100000009000000090000000912073D0605000108135D4509000000040CFD9C010F34D0F604548A03000000071386ACF800000001045489FB1386AD040CFD9C0700000006000000070000000200000006000000000F350CF60000000000000007000000070000000300000001"
theorem small_3607411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3607411_left_root small_3607411_left_fuel small_3607411_left_count small_3607411_left_encoded = true := by
  decide +kernel
theorem small_3607411_left_covered : CoveredBy scale carrier boxes small_3607411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3607411_left_root small_3607411_left_fuel small_3607411_left_count small_3607411_left_encoded small_3607411_left_checked

theorem cover_3607411 : CoveredBy scale carrier boxes root_3607411 := by
  apply coveredBy_split_literal root_3607411 small_3607411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1365.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3607411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1365.covered
#print axioms cover_3607411

def root_3607405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607405_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607405_left_fuel : Nat := 1
def small_3607405_left_count : Nat := 1
def small_3607405_left_encoded : String := "00000000"
theorem small_3607405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3607405_left_root small_3607405_left_fuel small_3607405_left_count small_3607405_left_encoded = true := by
  decide +kernel
theorem small_3607405_left_covered : CoveredBy scale carrier boxes small_3607405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3607405_left_root small_3607405_left_fuel small_3607405_left_count small_3607405_left_encoded small_3607405_left_checked

theorem cover_3607405 : CoveredBy scale carrier boxes root_3607405 := by
  apply coveredBy_split_literal root_3607405 small_3607405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3607411 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3607405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3607411
#print axioms cover_3607405

def root_3605961 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3605961 : CoveredBy scale carrier boxes root_3605961 := by
  apply coveredBy_split_literal root_3605961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1364.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3607405 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1364.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3607405
#print axioms cover_3605961

def root_3605955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605955_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605955_left_fuel : Nat := 1
def small_3605955_left_count : Nat := 1
def small_3605955_left_encoded : String := "00000004"
theorem small_3605955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3605955_left_root small_3605955_left_fuel small_3605955_left_count small_3605955_left_encoded = true := by
  decide +kernel
theorem small_3605955_left_covered : CoveredBy scale carrier boxes small_3605955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3605955_left_root small_3605955_left_fuel small_3605955_left_count small_3605955_left_encoded small_3605955_left_checked

theorem cover_3605955 : CoveredBy scale carrier boxes root_3605955 := by
  apply coveredBy_split_literal root_3605955 small_3605955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3605961 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3605955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3605961
#print axioms cover_3605955

def root_3613539 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613539_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613539_left_fuel : Nat := 25
def small_3613539_left_count : Nat := 459
def small_3613539_left_encoded : String := "0F34D0F60CFD9C030F34D0F80CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D108000000040C9A870400000009000000090F350D080C9A87040F8750FB0C9A870800000005000000090000000200000009000000041386AD060CFD9C090F34D108000000040C9A8704000000070F878CFB00000002000000070F350D080C9A87040F8750FB0C9A87080F875109000000040AD357810000000510D13CF6000000000AD357830000000510D13CF800000001067ECE870000000512EA950600000007000000030F878D090AD3578110D100F6000000050000000010D13CF6000000000000000700000004000000020F878CFB000000020C9A87080F875109000000040AD3578100000009000000090F878D090AD357810000000900000009000000040000000400000003000000020F34D1040000000204548A07000000091386AD060CFD9C090F34D10800000004000000070000000900000003000000010F350CF8000000010CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D108000000040C9A86F80F878D030C9A87040F8750FB0AD3578110D100F60000000900000000000000090000000200000009000000010F875103000000010C9A87040F8750FB0AD357810000000810D13CF600000000022A4587000000080000000A00000002000000090F350D080C9A86F80F878D030C9A87040F8750FB0C9A87080F875109000000040000000900000009000000020F878CFB0000000200000009000000010F875103000000010C9A87040F8750FB0C9A87080F875109000000040AD3578110D100F6000000090000000010D13CF600000000022A45870000000913E201060B4D43F80000000900000006000000030F878D090AD3578110D100F6000000080000000010D13CF600000000022A45870000000913E201060B4D43F8000000091080110300000001000000090000000300000004000000020F878CFB000000020C9A87080F875109000000040000000600000009000000041386AD060CFD9C090F34D108000000040C9A86F80F878D030C9A87040F8750FB0000000A000000020F878CFB000000020AD3578110D100F60000000A0000000010D13CF600000000067ECE870000000900000007000000010F875103000000010C9A87040F8750FB0000000A000000020F878CFB000000020AD357810000000A10D13CF600000000067ECE87000000090000000A0F350D080C9A86F80F878D030C9A87040F8750FB0C9A87080F875109000000040AD3578110D100F6067ECE8712EA590600000003000000090000000A0000000010D13CF600000000067ECE8712EA5906000000030DE7C9F8000000090E5FD903000000010B4D4404108010FB0B4D44080000000900000009000000020000000912EA95060DE7C9F80E6015030B4D4404108010FB0000000A0000000210804CFB000000020B4D44080000000900000007000000010E5FD903000000010B4D44040000000A10804CFB000000020B4D44080000000600000009000000030F878D090AD357810000000A10D13CF600000000067ECE8712EA5906000000030DE7C9F8000000090E5FD903000000010B4D44040000000A000000090000000A00000004000000020F878CFB000000020C9A87080F875109000000040AD3578110D100F6000000090000000010D13CF600000000067ECE870000000912EA95060DE7C9F8000000090E5FD9030000000100000006000000030F878D090AD3578110D100F6000000090000000010D13CF600000000067ECE870000000912EA95060DE7C9F8000000070E5FD90300000001000000090000000300000004000000010F875103000000010C9A87040F8750FB0C9A87080F875109000000040AD3578110D100F6067ECE8712EA5906000000030B4D43F800000006000000060000000A0000000010D13CF600000000067ECE8712EA5906000000030B4D43F810804D030B4D440400000006000000060000000110801103000000010000000612EA95060B4D43F810804D030B4D4404000000060000000600000001108011030000000100000006000000030F878D090AD357810000000A10D13CF600000000067ECE8712EA5906000000030B4D43F80000000A10801103000000010000000A0000000A00000004000000020F878CFB000000020C9A87080F875109000000040AD357810000000610D13CF600000000000000060F878D090AD3578110D100F6067ECE87000000090000000A0000000010D13CF600000000067ECE870000000912EA95060B4D43F810804D030DE7CA0400000006000000060000000110801103000000010000000600000003000000040000000400000003000000020F34D1040000000204548A0713867106000000030CFD9C090F34D1080000000400000009000000091386AD060CFD9C090F34D108000000040C9A86F8000000090F87510300000001000000090F350D080C9A86F80F878D0300000009000000010F875103000000010C9A87080000000600000009000000040000000300000000"
theorem small_3613539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3613539_left_root small_3613539_left_fuel small_3613539_left_count small_3613539_left_encoded = true := by
  decide +kernel
theorem small_3613539_left_covered : CoveredBy scale carrier boxes small_3613539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3613539_left_root small_3613539_left_fuel small_3613539_left_count small_3613539_left_encoded small_3613539_left_checked

theorem cover_3613539 : CoveredBy scale carrier boxes root_3613539 := by
  apply coveredBy_split_literal root_3613539 small_3613539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1367.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3613539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1367.covered
#print axioms cover_3613539

def root_3613534 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613534_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613534_right_fuel : Nat := 1
def small_3613534_right_count : Nat := 1
def small_3613534_right_encoded : String := "00000004"
theorem small_3613534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3613534_right_root small_3613534_right_fuel small_3613534_right_count small_3613534_right_encoded = true := by
  decide +kernel
theorem small_3613534_right_covered : CoveredBy scale carrier boxes small_3613534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3613534_right_root small_3613534_right_fuel small_3613534_right_count small_3613534_right_encoded small_3613534_right_checked

theorem cover_3613534 : CoveredBy scale carrier boxes root_3613534 := by
  apply coveredBy_split_literal root_3613534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3613539 small_3613534_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3613539
  · exact small_3613534_right_covered
#print axioms cover_3613534

def root_3612958 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612958_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612958_left_fuel : Nat := 23
def small_3612958_left_count : Nat := 271
def small_3612958_left_encoded : String := "12070108000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9BFB0F350D0404548A07138671060000000304548A0913867108000000040C9A870400000005000000091386AD080C9A87040F8750FB000000050000000200000009000000041386AD0604548A09000000070000000700000003000000020F34D1040000000204548A070000000900000007000000010F350CF8000000010CFD9BFB0F350D0404548A07138671060000000304548A0913867108000000040C9A86F80F878D030C9A87040F8750FB0000000A0000000200000009000000010F87510300000001000000081386AD080C9A86F80F878D030C9A87040F8750FB0000000A0000000200000009000000010F8751030000000100000008000000041386AD0604548A0913867108000000040000000A1386AD080C9A86F80000000A0F875103000000010000000A0000000400000003000000020F34D1040000000204548A07000000091386AD0604548A0913867108000000040C9A86F8000000090F875103000000010AD357810000000A000000091386AD080C9A86F8000000090F87510300000001000000090000000400000003000000000F350CF6000000000CFD9C030F34D0F80CFD9BFB0F350D0404548A07138671060000000304548A09000000070000000700000007000000020F34D1040000000200000007000000010F350CF8000000010CFD9BFB0F350D0404548A07138671060000000304548A0913867108000000040C9A86F60F878D010C9A86F80F878D030C9A87040000000700000009000000010F875103000000010C9A87040F8750FB022A45870000000800000007000000020F878CFB0000000200000009000000000F875101000000000C9A86F8000000070F875103000000010C9A8704000000070F878CFB00000002000000071386AD080C9A86F60F878D010C9A86F80F878D030C9A87040F8750FB022A458700000009000000070000000200000009000000010F875103000000010C9A87040F8750FB022A45870000000813E20106067ECE8912EA5908000000040000000712EA95080DE7C9F6000000080000000700000004000000030000000200000009000000000F875101000000000C9A86F80F878D0300000007000000010F875103000000010C9A87040F8750FB022A458713E1C50600000003067ECE89000000070000000700000007000000020F878CFB0000000200000005000000041386AD0604548A0913867108000000040C9A86F60F878D010C9A86F8000000070F875103000000010C9A8704000000070000000700000000000000071386AD080C9A86F60F878D010C9A86F80F878D0300000007000000010F875103000000010C9A8704000000070F878CFB000000020000000700000000000000070000000400000003000000020F34D1040000000204548A07138671060000000304548A09138671080000000400000009000000091386AD0604548A09000000070000000700000003"
theorem small_3612958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612958_left_root small_3612958_left_fuel small_3612958_left_count small_3612958_left_encoded = true := by
  decide +kernel
theorem small_3612958_left_covered : CoveredBy scale carrier boxes small_3612958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612958_left_root small_3612958_left_fuel small_3612958_left_count small_3612958_left_encoded small_3612958_left_checked

theorem cover_3612958 : CoveredBy scale carrier boxes root_3612958 := by
  apply coveredBy_split_literal root_3612958 small_3612958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3613534 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3612958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3613534
#print axioms cover_3612958

def root_3612952 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612952_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612952_left_fuel : Nat := 1
def small_3612952_left_count : Nat := 1
def small_3612952_left_encoded : String := "00000003"
theorem small_3612952_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612952_left_root small_3612952_left_fuel small_3612952_left_count small_3612952_left_encoded = true := by
  decide +kernel
theorem small_3612952_left_covered : CoveredBy scale carrier boxes small_3612952_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612952_left_root small_3612952_left_fuel small_3612952_left_count small_3612952_left_encoded small_3612952_left_checked

theorem cover_3612952 : CoveredBy scale carrier boxes root_3612952 := by
  apply coveredBy_split_literal root_3612952 small_3612952_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612958 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3612952_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612958
#print axioms cover_3612952

def root_3612951 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612951_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612951_right_fuel : Nat := 27
def small_3612951_right_count : Nat := 439
def small_3612951_right_encoded : String := "12073D0608A9130912070108000000040CFD9C010F34D0F60CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFB0000000A0F34D104000000020CFD9C070F34D1060000000304548A09000000070000000700000007000000000F350CF6000000000CFD9C03000000070F350CF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030000000700000007000000020000000712073D080CFD9C010F34D0F60CFD9C030F34D0F80CFD9BFB0F350D040CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A87040F8750FB0C9A87080F875109000000040000000700000007000000020F878CFB000000020C9A87080F875109000000040000000700000007000000040F350D060CFD9C09000000070000000700000003000000020F34D104000000020CFD9C070F34D106000000030CFD9C09000000070000000700000007000000010F350CF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D080C9A86F80F878D030C9A87040F8750FB0000000A000000020F878CFB000000020C9A87080F875109000000040AD3578110D100F60AD3578710D10106000000030DE7C9F80000000A0E5FD9030000000100000006000000070000000010D13CF6000000000AD3578710D10106000000030DE7C9F8000000070E5FD9030000000100000006000000070F878D090AD35781000000070000000700000004000000010F875103000000010C9A87040F8750FB0000000A000000020F878CFB000000020C9A87080F875109000000040AD3578110D100F60000000A0000000010D13CF6000000000AD3578700000006000000060000000A000000040F350D060000000A00000003000000020F34D104000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F8000000070F875103000000010AD3578110D100F60000000A00000000000000070F350D080C9A86F80F878D030C9A87080F875109000000040AD3578110D100F60AD3577B10D13D040000000600000002000000060000000010D13CF600000000000000070F878D090000000700000004000000010F875103000000010C9A8708000000060F878D090AD357810000000610D13CF6000000000000000600000004000000040F350D060CFD9C090F34D10800000004000000070F350D080C9A86F80F878D0300000007000000010F875103000000010C9A8706000000060F878D070C9A87080000000600000007000000030000000400000003000000000F350CF6000000000CFD9C030F34D0F80CFD9BFB0F350D040CFD9C070F34D106000000030CFD9C09000000070F350D080C9A86F60F878D010000000700000000000000070000000400000007000000020F34D104000000020CFD9C070F34D106000000030000000700000007000000010F350CF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010C9A86F8000000070F875103000000010C9A8704000000070000000700000000000000070F350D080C9A86F60F878D010C9A86F80F878D030C9A87040F8750FB0C9A87080F875109000000040AD3578710D10106000000030DE7C9F60E6015010000000700000000000000070000000700000007000000020F878CFB000000020C9A87080F875109000000040000000700000007000000010F875103000000010C9A87040F8750FB0C9A87080F875109000000040AD3578710D10106000000030DE7C9F60E6015010B4D43F80000000600000006000000000E5FD901000000000B4D43F8000000060000000610D13D060000000A000000030000000A000000020F878CFB000000020C9A87080F875109000000040AD3578700000006000000050F878D090AD3578710D1010600000003000000070000000500000004000000000F875101000000000C9A86F80F878D030C9A87040000000700000007000000010F875103000000010C9A87040F8750FB0C9A87080F875109000000040AD3578710D1010600000003000000050000000500000007000000020F878CFB0000000200000005000000040F350D060CFD9C090F34D10800000004000000070F350D080C9A86F60F878D010C9A86F80F878D0300000007000000010F875103000000010C9A87040000000A0F878CFB0000000200000007000000000F87510100000000000000070000000400000003000000020F34D104000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A86F60F878D010C9A86F80F878D0300000007000000010F8751030000000100000005000000000F8751010000000000000005000000040F350D060CFD9C090000000700000007000000030000000400000003"
theorem small_3612951_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612951_right_root small_3612951_right_fuel small_3612951_right_count small_3612951_right_encoded = true := by
  decide +kernel
theorem small_3612951_right_covered : CoveredBy scale carrier boxes small_3612951_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612951_right_root small_3612951_right_fuel small_3612951_right_count small_3612951_right_encoded small_3612951_right_checked

theorem cover_3612951 : CoveredBy scale carrier boxes root_3612951 := by
  apply coveredBy_split_literal root_3612951 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612952 small_3612951_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612952
  · exact small_3612951_right_covered
#print axioms cover_3612951

def root_3612946 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612946_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612946_right_fuel : Nat := 1
def small_3612946_right_count : Nat := 1
def small_3612946_right_encoded : String := "00000002"
theorem small_3612946_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612946_right_root small_3612946_right_fuel small_3612946_right_count small_3612946_right_encoded = true := by
  decide +kernel
theorem small_3612946_right_covered : CoveredBy scale carrier boxes small_3612946_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612946_right_root small_3612946_right_fuel small_3612946_right_count small_3612946_right_encoded small_3612946_right_checked

theorem cover_3612946 : CoveredBy scale carrier boxes root_3612946 := by
  apply coveredBy_split_literal root_3612946 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612951 small_3612946_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612951
  · exact small_3612946_right_covered
#print axioms cover_3612946

def root_3612945 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612945_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612945_right_fuel : Nat := 17
def small_3612945_right_count : Nat := 165
def small_3612945_right_encoded : String := "120701040000000208A91307120701060000000308A9130912070108000000040CFD9C010F34D0F60CFD9C030F34D0F8000000090000000100000009000000000F350CF6000000000CFD9C03000000070F350CF800000001045489FB1386AD0404548A070000000900000007000000020000000712073D080CFD9C010F34D0F60CFD9C030F34D0F800000009000000010F350CF800000001045489FB1386AD0404548A07000000091386AD060CFD9C090F34D108000000040000000900000009000000030000000200000009000000000F350CF6000000000CFD9C030F34D0F8045489FB1386AD0404548A0700000009000000070000000200000009000000010F350CF800000001045489FB1386AD0404548A07000000091386AD060CFD9C090F34D10800000004000000050000000500000003000000021386710400000002000000090000000412073D0608A9130912070108000000040CFD9C010F34D0F60CFD9C030F34D0F8045489FB0000000700000007000000010F350CF800000001045489FB1386AD040CFD9C0700000007000000070000000213867104000000020CFD9C070000000600000006000000000F350CF6000000000000000712073D080CFD9C010F34D0F60CFD9C030F34D0F800000007000000010F350CF800000001045489FB1386AD040CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A86F80000000600000006000000040F350D060CFD9C090000000700000007000000030000000213867104000000020CFD9C070000000600000007000000000F350CF6000000000CFD9C03000000070F350CF800000001045489FB1386AD040CFD9C070F34D106000000030CFD9C0900000007000000050000000700000002000000070000000400000003"
theorem small_3612945_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612945_right_root small_3612945_right_fuel small_3612945_right_count small_3612945_right_encoded = true := by
  decide +kernel
theorem small_3612945_right_covered : CoveredBy scale carrier boxes small_3612945_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612945_right_root small_3612945_right_fuel small_3612945_right_count small_3612945_right_encoded small_3612945_right_checked

theorem cover_3612945 : CoveredBy scale carrier boxes root_3612945 := by
  apply coveredBy_split_literal root_3612945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612946 small_3612945_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612946
  · exact small_3612945_right_covered
#print axioms cover_3612945

def root_3612939 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612939_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612939_left_fuel : Nat := 1
def small_3612939_left_count : Nat := 1
def small_3612939_left_encoded : String := "00000001"
theorem small_3612939_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612939_left_root small_3612939_left_fuel small_3612939_left_count small_3612939_left_encoded = true := by
  decide +kernel
theorem small_3612939_left_covered : CoveredBy scale carrier boxes small_3612939_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612939_left_root small_3612939_left_fuel small_3612939_left_count small_3612939_left_encoded small_3612939_left_checked

theorem cover_3612939 : CoveredBy scale carrier boxes root_3612939 := by
  apply coveredBy_split_literal root_3612939 small_3612939_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612945 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3612939_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612945
#print axioms cover_3612939

def root_3612519 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612519_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612519_left_fuel : Nat := 22
def small_3612519_left_count : Nat := 195
def small_3612519_left_encoded : String := "120700F808A912FB12073D0408A91307120701060000000308A9130912070108000000040CFD9C010F34D0F604548A03000000071386ACF8000000010CFD9BFB0F350D04000000070000000200000007000000000F350CF6000000000000000712073D080CFD9C010F34D0F604548A03138670F80CFD9BFB0F350D0404548A070000000500000007000000020F34D1040000000200000009000000011386ACF8000000010CFD9BFB0F350D0404548A0713867106000000030CFD9C0900000005000000091386AD060CFD9C090F34D10800000004000000070F350D080C9A8704000000050F878CFB00000002000000070000000400000003000000020F34D1040000000204548A07000000091386AD060CFD9C09000000070000000700000003000000000F350CF60000000004548A03138670F80CFD9BFB0F350D0404548A0713867106000000030CFD9C090000000700000007000000070000000200000007000000011386ACF8000000010CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D10800000004000000070F350D080C9A86F60F878D010C9A87040F8750FB000000050000000200000009000000000F875101000000000C9A87040000000700000007000000041386AD060CFD9C09000000070000000700000003000000020F34D1040000000204548A07138671060000000300000009000000070000000412073D0608A9130912070108000000040000000712073D080CFD9C010F34D0F604548A03000000071386ACF8000000010CFD9BFB0F350D040CFD9C070F34D1060000000300000007000000070000000200000007000000000F350CF60000000004548A03000000071386ACF8000000010CFD9BFB0F350D04000000070000000200000007000000040000000300000002120701040000000208A91307120701060000000308A9130912070108000000040CFD9C010F34D0F600000007000000000000000712073D080CFD9C010F34D0F600000009000000000F350CF600000000000000070000000412073D0608A91309120701080000000400000007000000070000000300000001"
theorem small_3612519_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612519_left_root small_3612519_left_fuel small_3612519_left_count small_3612519_left_encoded = true := by
  decide +kernel
theorem small_3612519_left_covered : CoveredBy scale carrier boxes small_3612519_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612519_left_root small_3612519_left_fuel small_3612519_left_count small_3612519_left_encoded small_3612519_left_checked

theorem cover_3612519 : CoveredBy scale carrier boxes root_3612519 := by
  apply coveredBy_split_literal root_3612519 small_3612519_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612939 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3612519_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612939
#print axioms cover_3612519

def root_3612513 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612513_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3612513_left_fuel : Nat := 1
def small_3612513_left_count : Nat := 1
def small_3612513_left_encoded : String := "00000000"
theorem small_3612513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3612513_left_root small_3612513_left_fuel small_3612513_left_count small_3612513_left_encoded = true := by
  decide +kernel
theorem small_3612513_left_covered : CoveredBy scale carrier boxes small_3612513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3612513_left_root small_3612513_left_fuel small_3612513_left_count small_3612513_left_encoded small_3612513_left_checked

theorem cover_3612513 : CoveredBy scale carrier boxes root_3612513 := by
  apply coveredBy_split_literal root_3612513 small_3612513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612519 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3612513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612519
#print axioms cover_3612513

def root_3610951 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3610951 : CoveredBy scale carrier boxes root_3610951 := by
  apply coveredBy_split_literal root_3610951 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1366.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3612513 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1366.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3612513
#print axioms cover_3610951

def root_3610946 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3610946_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3610946_right_fuel : Nat := 1
def small_3610946_right_count : Nat := 1
def small_3610946_right_encoded : String := "00000004"
theorem small_3610946_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3610946_right_root small_3610946_right_fuel small_3610946_right_count small_3610946_right_encoded = true := by
  decide +kernel
theorem small_3610946_right_covered : CoveredBy scale carrier boxes small_3610946_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3610946_right_root small_3610946_right_fuel small_3610946_right_count small_3610946_right_encoded small_3610946_right_checked

theorem cover_3610946 : CoveredBy scale carrier boxes root_3610946 := by
  apply coveredBy_split_literal root_3610946 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3610951 small_3610946_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3610951
  · exact small_3610946_right_covered
#print axioms cover_3610946

def root_3605954 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3605954 : CoveredBy scale carrier boxes root_3605954 := by
  apply coveredBy_split_literal root_3605954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3605955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3610946 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3605955
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3610946
#print axioms cover_3605954

def root_3605949 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605949_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605949_right_fuel : Nat := 1
def small_3605949_right_count : Nat := 1
def small_3605949_right_encoded : String := "00000003"
theorem small_3605949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3605949_right_root small_3605949_right_fuel small_3605949_right_count small_3605949_right_encoded = true := by
  decide +kernel
theorem small_3605949_right_covered : CoveredBy scale carrier boxes small_3605949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3605949_right_root small_3605949_right_fuel small_3605949_right_count small_3605949_right_encoded small_3605949_right_checked

theorem cover_3605949 : CoveredBy scale carrier boxes root_3605949 := by
  apply coveredBy_split_literal root_3605949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3605954 small_3605949_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3605954
  · exact small_3605949_right_covered
#print axioms cover_3605949

def root_3605117 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605117_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605117_left_fuel : Nat := 24
def small_3605117_left_count : Nat := 387
def small_3605117_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A91303120700F808A912FB12073D040500010600000007135D810705000108135D45090000000404548A010000000500000007000000070000000300000002000000070000000112073CF80000000108A912FB12073D0405000106135D45070000000305000108135D45090000000404548A010000000A1386ACF6000000000CFD9C030F34D0F80000000A000000010000000A0000000A135D810705000108135D45090000000404548A01138670F60CFD9C030F34D0F80000000A000000010000000A000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350D040000000A0000000200000006000000010F350CF8000000010CFD9BFB0000000A0F34D104000000020C9A86F8000000060F8751030000000100000006135D810904548A010000000A1386ACF6000000000CFD9C030F34D0F800000007000000010000000A000000040000000300000002120701040000000205000106135D45070000000305000108135D45090000000404548A01000000070000000700000007135D810705000108135D45090000000404548A01138670F60CFD9C03000000070F350CF800000001045489FB1386AD040C9A86F80F878D0300000007000000010F87510300000001078001060000000A128A7D0700000006000000030000000200000007000000001386ACF6000000000CFD9C03000000070F350CF800000001045489FB1386AD040C9A86F8000000060F87510300000001000000050000000200000005135D81090000000700000004000000030000000012073CF60000000008A91303120700F808A912FB12073D0405000106135D45070000000300000007135D810705000108135D4509000000040CFD9C010000000700000007000000070000000300000002000000070000000112073CF80000000108A912FB12073D0405000106135D45070000000305000108135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFB0000000A00000006000000000F350CF6000000000CFD9C030F34D0F8000000060000000100000006135D81090CFD9C010F34D0F60CFD9C03000000070000000A000000000F350CF6000000000CFD9C03000000070F350CF8000000010000000600000004135D810705000108135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9BFB0000000800000006000000010F350CF8000000010CFD9BFB0F350D04000000060000000200000006000000000F350CF6000000000CFD9C030F34D0F800000008000000010F350CF80000000100000006135D81090CFD9C010F34D0F60CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFB0000000A00000006000000000F350CF6000000000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFB0F350D040C9A86F60F878D010C9A86F8000000070F875103000000010000000600000000000000060000000200000006000000040000000300000002120701040000000205000106135D45070000000305000108135D4509000000040000000700000007135D810705000108135D4509000000040CFD9C010F34D0F60CFD9C030000000700000005000000000000000500000007000000031152250908A91301120700F608A91303120700F808A912FB12073D040000000700000002120701040000000208A91309120701080000000400000007000000070000000112073CF80000000108A912FB0000000A120701040000000208A9130912070108000000040000000A12073D0800000007000000040000000012073CF60000000008A91303120700F8000000070000000112073CF80000000108A912FB12073D0408A9130912070108000000040000000712073D0805000106135D4507000000030CFD9C01000000070F350CF60000000000000007135D81070CFD9C010F34D0F60CFD9C03000000070000000A000000000F350CF6000000000CFD9C03000000070F350CF8000000010CFD9BFB0F350D04000000070000000200000007000000030000000400000002120701040000000208A913091207010800000004000000070000000700000004"
theorem small_3605117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3605117_left_root small_3605117_left_fuel small_3605117_left_count small_3605117_left_encoded = true := by
  decide +kernel
theorem small_3605117_left_covered : CoveredBy scale carrier boxes small_3605117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3605117_left_root small_3605117_left_fuel small_3605117_left_count small_3605117_left_encoded small_3605117_left_checked

theorem cover_3605117 : CoveredBy scale carrier boxes root_3605117 := by
  apply coveredBy_split_literal root_3605117 small_3605117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3605949 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3605117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3605949
#print axioms cover_3605117

def root_3605111 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605111_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605111_left_fuel : Nat := 1
def small_3605111_left_count : Nat := 1
def small_3605111_left_encoded : String := "00000002"
theorem small_3605111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3605111_left_root small_3605111_left_fuel small_3605111_left_count small_3605111_left_encoded = true := by
  decide +kernel
theorem small_3605111_left_covered : CoveredBy scale carrier boxes small_3605111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3605111_left_root small_3605111_left_fuel small_3605111_left_count small_3605111_left_encoded small_3605111_left_checked

theorem cover_3605111 : CoveredBy scale carrier boxes root_3605111 := by
  apply coveredBy_split_literal root_3605111 small_3605111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3605117 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3605111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3605117
#print axioms cover_3605111

def root_3585833 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3585833 : CoveredBy scale carrier boxes root_3585833 := by
  apply coveredBy_split_literal root_3585833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3585834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3605111 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3585834
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3605111
#print axioms cover_3585833

def root_3585828 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585828_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585828_right_fuel : Nat := 1
def small_3585828_right_count : Nat := 1
def small_3585828_right_encoded : String := "00000001"
theorem small_3585828_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585828_right_root small_3585828_right_fuel small_3585828_right_count small_3585828_right_encoded = true := by
  decide +kernel
theorem small_3585828_right_covered : CoveredBy scale carrier boxes small_3585828_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585828_right_root small_3585828_right_fuel small_3585828_right_count small_3585828_right_encoded small_3585828_right_checked

theorem cover_3585828 : CoveredBy scale carrier boxes root_3585828 := by
  apply coveredBy_split_literal root_3585828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3585833 small_3585828_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3585833
  · exact small_3585828_right_covered
#print axioms cover_3585828

def root_3623221 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623221_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623221_left_fuel : Nat := 23
def small_3623221_left_count : Nat := 313
def small_3623221_left_encoded : String := "0F878D010C9A87080F87510900000004078000F8128A7D0307800104128A40FB022A458713E1C506000000030DE7C9F60E6015010B4D44080000000610804D0908C000F811FC2503064001040000000500000006000000010000000600000004000000000E5FD901000000000B4D440810801109000000040000000610804D0908C000F811FC25030640010412FF70FB01152347000000060000000600000002000000060000000111FBE90300000001000000060000000413E201060DE7C9F60E6015010B4D440810801109000000040000000610804D0908C000F80000000A0000000A00000004000000000E5FD901000000000B4D440810801109000000040000000610804D0908C000F811FC25030640010412FF70FB0000000A00000002000000060000000111FBE9030000000100000006000000040000000300000002128A7CFB00000002022A458713E1C506000000030DE7C9F60E60150100000006000000000000000613E201060DE7C9F60E6015010000000600000000000000060000000300000001128A41030000000107800104128A40FB022A45870000000713E201060DE7C9F60E6015010000000600000000000000060000000300000002128A7CFB00000002000000060F878D09078000F8128A7D0307800104128A40FB022A458713E1C506000000030DE7C9F60E6015010DE7CA080E5FD909000000040000000800000008000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC25030640010412FF70FB0115234713F85906000000030D412876000000080EFA1101000000000D41288800000007000000080000000A0000000212FFACFB000000020115234713F85906000000030D412876000000080000000613F895060D4128760EFA4D01000000060000000000000006000000030000000111FBE903000000010640010412FF70FB01152347000000070000000A00000002000000060E60150908C000F811FC25030000000800000001000000080000000413E201060DE7C9F60000000A0E5FD901000000000DE7CA080E5FD9090000000408C000F80000000A11FBE903000000010000000A0000000A0000000300000002128A7CFB00000002022A458713E1C506000000030DE7C9F60E6015010DE7CA080E5FD909000000040000000800000008000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060E601509000000080000000413E201060DE7C9F60E6015010DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060000000A000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060E60150908C000F811FC250308C0010411FBE8FB0000000A0000000211FC24FB00000002033F67C700000006000000060000000111FBE9030000000108C001040000000800000005000000040000000300000001128A41030000000107800104128A40FB022A45870000000813E201060DE7C9F60000000A0E5FD901000000000DE7CA080E5FD90900000004064000F80000000600000006000000080000000300000002128A7CFB00000002022A45870000000813E201060DE7C9F60E60150100000008000000000E5FD901000000000DE7CA080000000600000005000000030000000400000000"
theorem small_3623221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3623221_left_root small_3623221_left_fuel small_3623221_left_count small_3623221_left_encoded = true := by
  decide +kernel
theorem small_3623221_left_covered : CoveredBy scale carrier boxes small_3623221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3623221_left_root small_3623221_left_fuel small_3623221_left_count small_3623221_left_encoded small_3623221_left_checked

theorem cover_3623221 : CoveredBy scale carrier boxes root_3623221 := by
  apply coveredBy_split_literal root_3623221 small_3623221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1370.root coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3623221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1370.covered
#print axioms cover_3623221

def root_3623216 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623216_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623216_right_fuel : Nat := 1
def small_3623216_right_count : Nat := 1
def small_3623216_right_encoded : String := "00000004"
theorem small_3623216_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3623216_right_root small_3623216_right_fuel small_3623216_right_count small_3623216_right_encoded = true := by
  decide +kernel
theorem small_3623216_right_covered : CoveredBy scale carrier boxes small_3623216_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3623216_right_root small_3623216_right_fuel small_3623216_right_count small_3623216_right_encoded small_3623216_right_checked

theorem cover_3623216 : CoveredBy scale carrier boxes root_3623216 := by
  apply coveredBy_split_literal root_3623216 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3623221 small_3623216_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3623221
  · exact small_3623216_right_covered
#print axioms cover_3623216

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089

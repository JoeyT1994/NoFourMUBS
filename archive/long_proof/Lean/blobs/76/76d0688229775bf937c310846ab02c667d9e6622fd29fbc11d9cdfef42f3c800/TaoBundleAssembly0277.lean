import TaoBundleAssembly0276
import TaoBundleChunkBatch0360
import TaoBundleChunkBatch0362
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277
def root_3834003 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3834003_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3834003_left_fuel : Nat := 31
def small_3834003_left_count : Nat := 477
def small_3834003_left_encoded : String := "0F34D1040000000204548A0713867106000000030C9A86F60F878D010C9A86F80F878D0307800108128A40FF0AD357850000000510D13D04022A458700000005000000080000000200000004128A7CFF000000040AD3578510D1010400000002022A458713E1C506000000030DE7C9F6000000090E5FD90100000000000000090000000610D13D04022A458713E1C506000000030DE7C9F6000000090E5FD901000000000000000913E201060DE7C9F60E60150100000006000000000E5FD901000000000DE7C9F800000008000000060000000300000002000000010F8751030000000107800108128A40FF0AD3578510D10104000000020000000610D13D04022A458713E1C506000000030DE7C9F6000000060E5FD901000000000B4D43F810804D030640010800000005000000060000000100000006000000060000000200000004128A7CFF000000040AD3578510D10104000000020000000610D13D04022A458713E1C506000000030DE7C9F6000000060E5FD901000000000B4D43F800000009000000060000000600000002000000000F875101000000000C9A86F80F878D0307800108128A40FF0AD357850000000810D13D04022A458713E1C506000000030B4D43F6000000080000000A000000080000000200000004128A7CFF000000040AD3578510D1010400000002022A45870000000A0000000810D13D04022A458713E1C506000000030B4D43F610804D010DE7C9F8000000090E5FD90300000001000000090000000010801101000000000000000A13E201060B4D43F6000000081080110100000000000000080000000300000002000000010F8751030000000107800108128A40FF0AD3578510D1010400000002022A458713E1C506000000030B4D43F610804D010B4D43F800000008000000060000000010801101000000000B4D43F80000000810801103000000010640010800000006000000060000000610D13D04022A458713E1C506000000030B4D43F610804D010B4D43F810804D030640010812FF70FF000000080000000412FFACFF000000040BE879C51011710400000002000000061011AD04011523470000000900000006000000020000000110801103000000010640010812FF70FF0BE879C500000006000000060000000412FFACFF00000004000000060000000010801101000000000B4D43F810804D03064001080000000812FFACFF000000040BE879C51011710400000002000000081011AD04011523470000000A00000008000000020000000110801103000000010640010812FF70FF0BE879C51011710400000002000000081011AD040115234713F85906000000030AA6A27610EDAD010AA6A27810EDAD030000000800000001000000060000000010ED7101000000000AA6A27810EDAD03000000080000000110ED71030000000105A00108133134FF0000000800000004133170FF000000040C730AE5000000060000000600000008000000020000000412FFACFF000000040BE879C51011710400000002000000061011AD040115234713F85906000000030AA6A27610EDAD010AA6A27800000009000000060000000010ED7101000000000AA6A2780000000A10ED71030000000106E001080000000612C820FF000000040000000613F895060AA6A2760000000610ED7101000000000AA6A27810EDAD03000000060000000100000006000000030000000213E201060B4D43F610804D010B4D43F800000008000000060000000010801101000000000B4D43F8000000081080110300000001064001080000000600000006000000030000000200000004128A7CFF000000040AD3578510D1010400000002022A458713E1C506000000030B4D43F610804D010B4D43F800000009000000060000000010801101000000000B4D43F80000000A1080110300000001000000060000000610D13D04022A458713E1C506000000030B4D43F610804D010B4D43F810804D0308C0010811FBE8FF0BE879C510117104000000020000000600000009000000040000000900000001108011030000000108C0010800000006000000090000000010801101000000000B4D43F810804D0308C0010811FBE8FF0BE879C510117104000000020000000A1011AD04011523470000000913F895060AA6A276000000090000000A0000000300000002000000040000000900000001108011030000000108C0010811FBE8FF0BE879C51011710400000002000000061011AD04011523470000000900000006000000020000000411FC24FF000000040BE879C51011710400000002000000050000000513E201060B4D43F610804D010B4D43F810804D030000000600000001000000060000000010801101000000000B4D43F810804D0308C0010811FBE8FF000000080000000411FC24FF000000040BE879C5000000060000000600000001108011030000000108C00108000000060000000500000003000000021386AD060C9A86F60F878D010C9A86F80F878D0300000008000000010F8751030000000100000006000000000F875101000000000C9A86F80F878D0300000008000000010F8751030000000107800108128A40FF0000000800000004128A7CFF000000040AD35785000000060000000600000003"
theorem small_3834003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3834003_left_root small_3834003_left_fuel small_3834003_left_count small_3834003_left_encoded = true := by
  decide +kernel
theorem small_3834003_left_covered : CoveredBy scale carrier boxes small_3834003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3834003_left_root small_3834003_left_fuel small_3834003_left_count small_3834003_left_encoded small_3834003_left_checked

theorem cover_3834003 : CoveredBy scale carrier boxes root_3834003 := by
  apply coveredBy_split_literal root_3834003 small_3834003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0276.root_3835017 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3834003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0276.cover_3835017
#print axioms cover_3834003

def root_3833997 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833997_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833997_left_fuel : Nat := 1
def small_3833997_left_count : Nat := 1
def small_3833997_left_encoded : String := "00000001"
theorem small_3833997_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3833997_left_root small_3833997_left_fuel small_3833997_left_count small_3833997_left_encoded = true := by
  decide +kernel
theorem small_3833997_left_covered : CoveredBy scale carrier boxes small_3833997_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3833997_left_root small_3833997_left_fuel small_3833997_left_count small_3833997_left_encoded small_3833997_left_checked

theorem cover_3833997 : CoveredBy scale carrier boxes root_3833997 := by
  apply coveredBy_split_literal root_3833997 small_3833997_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3834003 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3833997_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3834003
#print axioms cover_3833997

def root_3833699 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833699_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833699_left_fuel : Nat := 21
def small_3833699_left_count : Nat := 141
def small_3833699_left_encoded : String := "0F34D0F80CFD9C050F34D1040000000204548A0713867106000000030C9A86F6000000080F8751010000000000000008000000080F350D0404548A0713867106000000030C9A86F60F878D010C9A8704000000050F878D050000000500000002000000000F875101000000000C9A87040F8751050000000207800108128A40FF0000000500000004128A7CFF000000040AD3578310D100F8000000050000000110D13CF800000001022A458713E1C506000000030B4D43F60000000510801101000000000B4D4404000000050000000913E201060B4D43F610804D010B4D44040000000510804D0500000005000000020000000010801101000000000B4D44040000000710804D0508C00108000000070000000700000002000000030F878D0507800108128A40FF0000000800000004128A7CFF000000040AD357830000000810D13CF800000001022A458713E1C506000000030B4D43F6000000090000000A00000008000000021386AD060C9A86F60F878D010C9A87040F875105000000020780010800000005128A7CFF000000040AD357830000000810D13CF800000001067ECE8712EA5906000000030DE7C9F6000000050E5FD90100000000000000080000000800000008000000000F875101000000000C9A87040F875105000000020780010800000008128A7CFF000000040AD357830000000810D13CF800000001067ECE8712EA5906000000030B4D43F6000000081080110100000000000000080000000800000008000000030000000200000001"
theorem small_3833699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3833699_left_root small_3833699_left_fuel small_3833699_left_count small_3833699_left_encoded = true := by
  decide +kernel
theorem small_3833699_left_covered : CoveredBy scale carrier boxes small_3833699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3833699_left_root small_3833699_left_fuel small_3833699_left_count small_3833699_left_encoded small_3833699_left_checked

theorem cover_3833699 : CoveredBy scale carrier boxes root_3833699 := by
  apply coveredBy_split_literal root_3833699 small_3833699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3833997 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3833699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3833997
#print axioms cover_3833699

def root_3833693 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833693_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833693_left_fuel : Nat := 1
def small_3833693_left_count : Nat := 1
def small_3833693_left_encoded : String := "00000000"
theorem small_3833693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3833693_left_root small_3833693_left_fuel small_3833693_left_count small_3833693_left_encoded = true := by
  decide +kernel
theorem small_3833693_left_covered : CoveredBy scale carrier boxes small_3833693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3833693_left_root small_3833693_left_fuel small_3833693_left_count small_3833693_left_encoded small_3833693_left_checked

theorem cover_3833693 : CoveredBy scale carrier boxes root_3833693 := by
  apply coveredBy_split_literal root_3833693 small_3833693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3833699 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3833693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3833699
#print axioms cover_3833693

def root_3833405 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833405_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833405_left_fuel : Nat := 19
def small_3833405_left_count : Nat := 139
def small_3833405_left_encoded : String := "0F34D0F60CFD9C030F34D0F80CFD9C05000000050F350D0404548A07000000051386AD06000000050000000300000002000000010F350CF8000000010CFD9C050F34D1040000000204548A0713867106000000030C9A86F80F878D030780010800000005128A7CFF000000040AD357810000000510D13CF6000000000AD357850000000500000006000000010F8751030000000100000006000000060F350D0404548A0713867106000000030C9A86F80F878D030C9A8704000000050F878D050000000500000002000000010F875103000000010C9A87040F8751050000000207800108128A40FF0000000500000004128A7CFF000000040AD3578110D100F6000000050000000010D13CF600000000022A458713E1C506000000030B4D43F8000000050000000A0000000A0F878D0507800108128A40FF0AD357810000000510D13CF600000000022A4587000000050000000600000004128A7CFF000000040AD357810000000610D13CF600000000022A458713E1C506000000030B4D43F8000000090000000600000006000000021386AD060C9A86F80F878D030C9A87040F875105000000020780010800000005128A7CFF000000040AD357810000000610D13CF600000000067ECE8712EA5906000000030DE7C9F80000000500000006000000060F878D0507800108000000060000000600000002000000010F875103000000010C9A87040F8751050000000207800108000000060000000600000006000000030000000200000000"
theorem small_3833405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3833405_left_root small_3833405_left_fuel small_3833405_left_count small_3833405_left_encoded = true := by
  decide +kernel
theorem small_3833405_left_covered : CoveredBy scale carrier boxes small_3833405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3833405_left_root small_3833405_left_fuel small_3833405_left_count small_3833405_left_encoded small_3833405_left_checked

theorem cover_3833405 : CoveredBy scale carrier boxes root_3833405 := by
  apply coveredBy_split_literal root_3833405 small_3833405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3833693 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3833405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3833693
#print axioms cover_3833405

def root_3833399 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833399_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3833399_left_fuel : Nat := 1
def small_3833399_left_count : Nat := 1
def small_3833399_left_encoded : String := "00000004"
theorem small_3833399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3833399_left_root small_3833399_left_fuel small_3833399_left_count small_3833399_left_encoded = true := by
  decide +kernel
theorem small_3833399_left_covered : CoveredBy scale carrier boxes small_3833399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3833399_left_root small_3833399_left_fuel small_3833399_left_count small_3833399_left_encoded small_3833399_left_checked

theorem cover_3833399 : CoveredBy scale carrier boxes root_3833399 := by
  apply coveredBy_split_literal root_3833399 small_3833399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3833405 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3833399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3833405
#print axioms cover_3833399

def root_3831491 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3831491 : CoveredBy scale carrier boxes root_3831491 := by
  apply coveredBy_split_literal root_3831491 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1440.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3833399 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1440.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3833399
#print axioms cover_3831491

def root_3831485 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831485_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831485_left_fuel : Nat := 1
def small_3831485_left_count : Nat := 1
def small_3831485_left_encoded : String := "00000003"
theorem small_3831485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831485_left_root small_3831485_left_fuel small_3831485_left_count small_3831485_left_encoded = true := by
  decide +kernel
theorem small_3831485_left_covered : CoveredBy scale carrier boxes small_3831485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831485_left_root small_3831485_left_fuel small_3831485_left_count small_3831485_left_encoded small_3831485_left_checked

theorem cover_3831485 : CoveredBy scale carrier boxes root_3831485 := by
  apply coveredBy_split_literal root_3831485 small_3831485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831491 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3831485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831491
#print axioms cover_3831485

def root_3831484 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831484_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831484_right_fuel : Nat := 26
def small_3831484_right_count : Nat := 135
def small_3831484_right_encoded : String := "12073D0605000108135D44FF0CFD9C010F34D0F60CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030C9A86F800000008000000060000000600000002000000000000000800000004135D80FF000000040CFD9C010F34D0F60CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030C9A86F80F878D030000000600000001000000060000000600000002000000000F350CF6000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D040CFD9C070F34D106000000030C9A86F60F878D010C9A86F80F878D030C9A87040F875105000000020780010800000008128A7CFF000000040AD3578710D10106000000030DE7C9F6000000060E5FD90100000000000000080000000600000008000000010F875103000000010C9A87040F8751050000000207800108000000060000000600000006000000000F875101000000000C9A86F80F878D0300000008000000010F875103000000010C9A87040F8751050000000207800108128A40FF0000000800000004128A7CFF000000040AD3578710D10106000000030B4D43F60000000A10801101000000000B4D43F810804D0300000008000000010000000500000006000000080F350D0600000008000000030000000200000003"
theorem small_3831484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831484_right_root small_3831484_right_fuel small_3831484_right_count small_3831484_right_encoded = true := by
  decide +kernel
theorem small_3831484_right_covered : CoveredBy scale carrier boxes small_3831484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831484_right_root small_3831484_right_fuel small_3831484_right_count small_3831484_right_encoded small_3831484_right_checked

theorem cover_3831484 : CoveredBy scale carrier boxes root_3831484 := by
  apply coveredBy_split_literal root_3831484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831485 small_3831484_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831485
  · exact small_3831484_right_covered
#print axioms cover_3831484

def root_3831479 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831479_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831479_right_fuel : Nat := 1
def small_3831479_right_count : Nat := 1
def small_3831479_right_encoded : String := "00000002"
theorem small_3831479_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831479_right_root small_3831479_right_fuel small_3831479_right_count small_3831479_right_encoded = true := by
  decide +kernel
theorem small_3831479_right_covered : CoveredBy scale carrier boxes small_3831479_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831479_right_root small_3831479_right_fuel small_3831479_right_count small_3831479_right_encoded small_3831479_right_checked

theorem cover_3831479 : CoveredBy scale carrier boxes root_3831479 := by
  apply coveredBy_split_literal root_3831479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831484 small_3831479_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831484
  · exact small_3831479_right_covered
#print axioms cover_3831479

def root_3831189 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831189_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831189_left_fuel : Nat := 24
def small_3831189_left_count : Nat := 133
def small_3831189_left_encoded : String := "120701040000000208A91307120701060000000305000108135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C03000000080F350CF80000000104548A051386710400000002000000081386AD0404548A0713867106000000030C9A86F6000000080F8751010000000000000008000000080000000200000004135D80FF000000040CFD9C010F34D0F60CFD9C030F34D0F800000005000000010F350CF80000000104548A050000000600000006000000000F350CF6000000000CFD9C030F34D0F800000008000000010F350CF80000000104548A05138671040000000204548A0713867106000000030C9A86F60F878D010C9A86F80F878D03000000080000000100000006000000000F875101000000000C9A86F8000000080F87510300000001078001080000000600000006000000081386AD0404548A0713867106000000030C9A86F60F878D010C9A86F80F878D030780010800000008128A7CFF00000004067ECE850000000600000006000000010F8751030000000100000006000000000F875101000000000C9A86F80F878D0300000008000000010F8751030000000107800108128A40FF0000000800000004128A7CFF00000004067ECE850000000612EA9504022A458713E1C506000000030000000600000006000000021386AD060C9A86F6000000080F8751010000000000000008000000030000000212073D060000000800000003"
theorem small_3831189_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831189_left_root small_3831189_left_fuel small_3831189_left_count small_3831189_left_encoded = true := by
  decide +kernel
theorem small_3831189_left_covered : CoveredBy scale carrier boxes small_3831189_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831189_left_root small_3831189_left_fuel small_3831189_left_count small_3831189_left_encoded small_3831189_left_checked

theorem cover_3831189 : CoveredBy scale carrier boxes root_3831189 := by
  apply coveredBy_split_literal root_3831189 small_3831189_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831479 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3831189_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831479
#print axioms cover_3831189

def root_3831183 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831183_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831183_left_fuel : Nat := 1
def small_3831183_left_count : Nat := 1
def small_3831183_left_encoded : String := "00000001"
theorem small_3831183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831183_left_root small_3831183_left_fuel small_3831183_left_count small_3831183_left_encoded = true := by
  decide +kernel
theorem small_3831183_left_covered : CoveredBy scale carrier boxes small_3831183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831183_left_root small_3831183_left_fuel small_3831183_left_count small_3831183_left_encoded small_3831183_left_checked

theorem cover_3831183 : CoveredBy scale carrier boxes root_3831183 := by
  apply coveredBy_split_literal root_3831183 small_3831183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831189 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3831183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831189
#print axioms cover_3831183

def root_3831101 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831101_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831101_left_fuel : Nat := 15
def small_3831101_left_count : Nat := 37
def small_3831101_left_encoded : String := "120700F808A9130512070104000000020000000812073D0408A91307120701060000000305000108135D44FF0000000500000004135D80FF000000040CFD9C010F34D0F600000005000000000F350CF60000000004548A03000000081386ACF8000000010CFD9C050F34D10400000002000000080F350D0404548A07000000050000000800000002000000080000000200000001"
theorem small_3831101_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831101_left_root small_3831101_left_fuel small_3831101_left_count small_3831101_left_encoded = true := by
  decide +kernel
theorem small_3831101_left_covered : CoveredBy scale carrier boxes small_3831101_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831101_left_root small_3831101_left_fuel small_3831101_left_count small_3831101_left_encoded small_3831101_left_checked

theorem cover_3831101 : CoveredBy scale carrier boxes root_3831101 := by
  apply coveredBy_split_literal root_3831101 small_3831101_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831183 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3831101_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831183
#print axioms cover_3831101

def root_3831095 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831095_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831095_left_fuel : Nat := 1
def small_3831095_left_count : Nat := 1
def small_3831095_left_encoded : String := "00000000"
theorem small_3831095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831095_left_root small_3831095_left_fuel small_3831095_left_count small_3831095_left_encoded = true := by
  decide +kernel
theorem small_3831095_left_covered : CoveredBy scale carrier boxes small_3831095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831095_left_root small_3831095_left_fuel small_3831095_left_count small_3831095_left_encoded small_3831095_left_checked

theorem cover_3831095 : CoveredBy scale carrier boxes root_3831095 := by
  apply coveredBy_split_literal root_3831095 small_3831095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831101 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3831095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831101
#print axioms cover_3831095

def root_3830871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830871_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830871_left_fuel : Nat := 19
def small_3830871_left_count : Nat := 103
def small_3830871_left_encoded : String := "120700F608A91303120700F8000000050000000112073CF80000000108A91305120701040000000208A9130712070106000000030500010800000005135D80FF0000000404548A01000000051386ACF6000000000CFD9C0300000005000000060000000612073D0408A91307120701060000000305000108135D44FF0000000500000004135D80FF0000000404548A01138670F60CFD9C03000000050F350CF8000000010CFD9C05000000050F350D040000000500000002000000001386ACF6000000000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9C050F34D10400000002000000060F350D0404548A07000000051386AD060C9A86F80000000500000006000000030000000212073D0605000108135D44FF04548A01138670F600000005000000001386ACF6000000000CFD9C03000000080F350CF8000000010000000600000004135D80FF0000000404548A01138670F600000006000000001386ACF6000000000CFD9C030F34D0F80CFD9C050000000500000006000000010F350CF80000000100000006000000030000000200000000"
theorem small_3830871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3830871_left_root small_3830871_left_fuel small_3830871_left_count small_3830871_left_encoded = true := by
  decide +kernel
theorem small_3830871_left_covered : CoveredBy scale carrier boxes small_3830871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3830871_left_root small_3830871_left_fuel small_3830871_left_count small_3830871_left_encoded small_3830871_left_checked

theorem cover_3830871 : CoveredBy scale carrier boxes root_3830871 := by
  apply coveredBy_split_literal root_3830871 small_3830871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3831095 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3830871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3831095
#print axioms cover_3830871

def root_3830866 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830866_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830866_right_fuel : Nat := 1
def small_3830866_right_count : Nat := 1
def small_3830866_right_encoded : String := "00000004"
theorem small_3830866_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3830866_right_root small_3830866_right_fuel small_3830866_right_count small_3830866_right_encoded = true := by
  decide +kernel
theorem small_3830866_right_covered : CoveredBy scale carrier boxes small_3830866_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3830866_right_root small_3830866_right_fuel small_3830866_right_count small_3830866_right_encoded small_3830866_right_checked

theorem cover_3830866 : CoveredBy scale carrier boxes root_3830866 := by
  apply coveredBy_split_literal root_3830866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3830871 small_3830866_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3830871
  · exact small_3830866_right_covered
#print axioms cover_3830866

def root_3850635 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850635_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850635_left_fuel : Nat := 21
def small_3850635_left_count : Nat := 237
def small_3850635_left_encoded : String := "0F34D0F60CFD9C030F34D0F80CFD9C050F34D1040000000204548A0713867106000000030CFD9BFF0F350D080C9A8708000000090000000900000004000000091386AD060CFD9BFF0F350D080C9A8708000000060F878CFF00000004000000060000000400000006000000030F350D0404548A0713867106000000030CFD9BFF0F350D080C9A87040F87510500000002000000090000000900000004000000091386AD060CFD9BFF0F350D080C9A87040F875105000000020C9A87080F8750FF0AD357810000000510D13CF6000000000AD357830000000510D13CF800000001067ECE870000000512EA95060000000600000003000000040F878CFF000000040AD3578100000009000000090F878D050C9A87080F8750FF0AD357810000000610D13CF6000000000AD3578310D100F8000000050000000110D13CF80000000100000006000000040F878CFF000000040AD35781000000060000000900000002000000040F34D10800000004000000090000000300000002000000010F350CF8000000010CFD9C050F34D1040000000204548A0713867106000000030CFD9BFF0F350D080C9A86F80F878D030C9A87080F8750FF0AD3578100000006000000090000000400000009000000010F8751030000000100000006000000040F34D10800000004000000061386AD060CFD9BFF0F350D08000000060000000400000006000000030F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F80F878D030C9A87040F875105000000020C9A870800000009000000090F878D050C9A8708000000090000000900000002000000010F875103000000010C9A87040F875105000000020C9A87080F8750FF0AD3578110D100F6000000060000000010D13CF600000000022A45870000000813E201060B4D43F800000009000000060000000300000004000000090F878D050C9A8708000000060000000900000002000000040F34D10800000004000000091386AD060CFD9BFF0F350D080C9A86F80F878D030C9A87040F875105000000020C9A87080F8750FF0AD357810000000610D13CF600000000067ECE8712EA5906000000030DE7C9F8000000090000000600000006000000040F878CFF000000040AD357810000000610D13CF600000000067ECE8700000009000000060F878D050C9A8708000000060000000600000002000000010F875103000000010C9A87040F875105000000020C9A8708000000060000000600000006000000040F34D108000000040C9A86F80F878D03000000090000000100000006000000030000000200000000"
theorem small_3850635_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3850635_left_root small_3850635_left_fuel small_3850635_left_count small_3850635_left_encoded = true := by
  decide +kernel
theorem small_3850635_left_covered : CoveredBy scale carrier boxes small_3850635_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3850635_left_root small_3850635_left_fuel small_3850635_left_count small_3850635_left_encoded small_3850635_left_checked

theorem cover_3850635 : CoveredBy scale carrier boxes root_3850635 := by
  apply coveredBy_split_literal root_3850635 small_3850635_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1448.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3850635_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1448.covered
#print axioms cover_3850635

def root_3850630 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850630_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850630_right_fuel : Nat := 1
def small_3850630_right_count : Nat := 1
def small_3850630_right_encoded : String := "00000004"
theorem small_3850630_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3850630_right_root small_3850630_right_fuel small_3850630_right_count small_3850630_right_encoded = true := by
  decide +kernel
theorem small_3850630_right_covered : CoveredBy scale carrier boxes small_3850630_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3850630_right_root small_3850630_right_fuel small_3850630_right_count small_3850630_right_encoded small_3850630_right_checked

theorem cover_3850630 : CoveredBy scale carrier boxes root_3850630 := by
  apply coveredBy_split_literal root_3850630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3850635 small_3850630_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3850635
  · exact small_3850630_right_covered
#print axioms cover_3850630

def root_3850629 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850629_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850629_right_fuel : Nat := 9
def small_3850629_right_count : Nat := 37
def small_3850629_right_encoded : String := "12070108000000040CFD9C010F34D0F60CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020000000600000009000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D104000000020000000900000009000000010F350CF8000000010CFD9C050F34D10400000002000000090F350D0404548A07000000090000000500000002"
theorem small_3850629_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3850629_right_root small_3850629_right_fuel small_3850629_right_count small_3850629_right_encoded = true := by
  decide +kernel
theorem small_3850629_right_covered : CoveredBy scale carrier boxes small_3850629_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3850629_right_root small_3850629_right_fuel small_3850629_right_count small_3850629_right_encoded small_3850629_right_checked

theorem cover_3850629 : CoveredBy scale carrier boxes root_3850629 := by
  apply coveredBy_split_literal root_3850629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3850630 small_3850629_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3850630
  · exact small_3850629_right_covered
#print axioms cover_3850629

def root_3850623 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850623_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3850623_left_fuel : Nat := 1
def small_3850623_left_count : Nat := 1
def small_3850623_left_encoded : String := "00000003"
theorem small_3850623_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3850623_left_root small_3850623_left_fuel small_3850623_left_count small_3850623_left_encoded = true := by
  decide +kernel
theorem small_3850623_left_covered : CoveredBy scale carrier boxes small_3850623_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3850623_left_root small_3850623_left_fuel small_3850623_left_count small_3850623_left_encoded small_3850623_left_checked

theorem cover_3850623 : CoveredBy scale carrier boxes root_3850623 := by
  apply coveredBy_split_literal root_3850623 small_3850623_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.root_3850629 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3850623_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277.cover_3850629
#print axioms cover_3850623

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0277

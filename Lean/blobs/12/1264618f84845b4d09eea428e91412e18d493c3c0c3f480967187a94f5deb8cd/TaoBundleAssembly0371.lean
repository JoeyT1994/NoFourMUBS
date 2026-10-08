import TaoBundleAssembly0370
import TaoBundleChunkBatch0493
import TaoBundleChunkBatch0494
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371
def root_5254388 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254388_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254388_right_fuel : Nat := 29
def small_5254388_right_count : Nat := 457
def small_5254388_right_encoded : String := "0F34D106000000030C9A86F80F878CF9000000010C9A86FA0F878CFB0000000207800108128A410900000004022A45770000000900000005128A7D09022A457713E201000AD3577D10D13D060DE7C9F80E6014F900000001000000070E5FD8F90DE7C9FA0000000900000007000000010000000310D1010600000003000000070000000013E1C500000000000AD3577D10D13D060DE7C9F8000000060E5FD8F900000006000000010000000310D10106000000030DE7C9F8000000060E5FD8F90000000600000001000000040F8750FB07800108128A410900000004022A45770000000713E1C500000000000AD3577D10D13D060DE7C9F8000000070E5FD8F90B4D43FA10804CFB0000000206400108000000050000000700000007000000010000000310D101060000000300000007128A7D09022A45770000000713E1C500000000000AD3577D10D13D060DE7C9F8000000070E5FD8F90B4D43FA0000000600000007000000010000000310D10106000000030000000700000004000000020F8750F90C9A86FA0F878CFB0000000207800108128A410900000004022A45770000000913E1C500000000000AD3577D10D13D060B4D43F8000000090000000A0000000300000009128A7D09022A457713E201000AD3577D10D13D060B4D43F800000009108010F900000009000000010000000310D1010600000003000000090000000013E1C500000000000AD3577D10D13D060B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0000000600000002108010F90000000A000000010000000310D10106000000030000000A000000040F8750FB07800108128A410900000004022A457713E201000AD3577D10D13D060B4D43F810804CF9000000010B4D43FA0000000900000007108010F90B4D43FA00000009108010FB06400108000000070000000700000002000000010000000310D1010600000003000000070000000013E1C500000000000AD3577D10D13D060B4D43F810804CF9000000010B4D43FA10804CFB000000020640010812FF7109000000040000000912FFAD09011523370000000713F85900000000000BE879BD0000000610117106000000030000000600000004108010FB0640010812FF710900000004011523370000000713F85900000000000BE879BD000000070000000712FFAD09000000070000000400000002108010F90B4D43FA10804CFB00000002064001080000000912FFAD0901152337000000090000000A00000004108010FB0640010812FF710900000004011523370000000913F85900000000000BE879BD1011AD060AA6A27810EDACF9000000010AA6A27A10EDACFB00000002000000090000000710ED70F90AA6A27A10EDACFB000000020000000910ED70FB05A0010813313509000000040000000913317109008A9217000000070000000A0000000400000002000000010000000310117106000000030000000912FFAD090115233713F895000BE879BD1011AD060AA6A2780000000710ED70F90AA6A27A10EDACFB0000000200000007000000070000000100000003000000070000000013F85900000000000BE879BD1011AD060AA6A27810EDACF9000000010AA6A27A000000060000000710ED70F90AA6A27A0000000A10ED70FB06E001080000000712C8210900000007000000040000000200000001000000031011710600000003000000070000000400000002000000010000000310D10106000000030B4D43F810804CF9000000010B4D43FA0000000900000007108010F90B4D43FA00000009108010FB0640010800000007000000070000000200000001128A7D09022A457713E201000AD3577D10D13D060B4D43F810804CF9000000010B4D43FA10804CFB000000020000000700000007108010F90B4D43FA10804CFB0000000208C0010811FBE909000000040000000911FC2509033F67B70000000713BBF500000000000BE879BD000000070000000700000004108010FB08C00108000000070000000500000002000000010000000310D1010600000003000000070000000013E1C500000000000AD3577D10D13D060B4D43F810804CF9000000010B4D43FA10804CFB0000000208C0010811FBE9090000000401152337000000070000000600000006108010FB08C00108000000070000000600000002108010F90B4D43FA10804CFB0000000208C0010811FBE909000000040115233713F895000BE879BD1011AD060AA6A278000000060000000A00000003101171060000000300000007000000000000000600000006108010FB08C0010811FBE909000000040115233713F895000BE879BD00000007000000070000000013F85900000000000BE879BD0000000610117106000000030000000611FC25090115233700000005000000060000000400000002000000010000000310D10106000000030B4D43F810804CF9000000010B4D43FA0000000600000007108010F90B4D43FA0000000A108010FB000000070000000200000001000000040000000200000001"
theorem small_5254388_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5254388_right_root small_5254388_right_fuel small_5254388_right_count small_5254388_right_encoded = true := by
  decide +kernel
theorem small_5254388_right_covered : CoveredBy scale carrier boxes small_5254388_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5254388_right_root small_5254388_right_fuel small_5254388_right_count small_5254388_right_encoded small_5254388_right_checked

theorem cover_5254388 : CoveredBy scale carrier boxes root_5254388 := by
  apply coveredBy_split_literal root_5254388 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0370.root_5254389 small_5254388_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0370.cover_5254389
  · exact small_5254388_right_covered
#print axioms cover_5254388

def root_5254382 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254382_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254382_left_fuel : Nat := 1
def small_5254382_left_count : Nat := 1
def small_5254382_left_encoded : String := "00000002"
theorem small_5254382_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5254382_left_root small_5254382_left_fuel small_5254382_left_count small_5254382_left_encoded = true := by
  decide +kernel
theorem small_5254382_left_covered : CoveredBy scale carrier boxes small_5254382_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5254382_left_root small_5254382_left_fuel small_5254382_left_count small_5254382_left_encoded small_5254382_left_checked

theorem cover_5254382 : CoveredBy scale carrier boxes root_5254382 := by
  apply coveredBy_split_literal root_5254382 small_5254382_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5254388 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5254382_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5254388
#print axioms cover_5254382

def root_5254381 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254381_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254381_right_fuel : Nat := 19
def small_5254381_right_count : Nat := 89
def small_5254381_right_encoded : String := "0F34D0FA0CFD9BFD0F350D060C9A86F80F878CF9000000010C9A8706000000050F878CFD00000003000000050F8750F90C9A87060F8750FD07800108128A41090000000400000005128A7D09022A457713E201000AD3577B10D13CFA000000020B4D43F810804CF9000000010B4D44060000000510804CFD0000000300000005108010F90B4D44060000000810804CFD0000000308C0010800000008000000080000000110D100FA00000005000000020000000013E1C500000000000AD3577B10D13CFA000000020B4D43F800000005108010F90B4D44060000000500000006000000010000000500000004000000030F878CFD0000000307800108128A41090000000400000009128A7D09022A45770000000913E1C500000000000AD3577B10D13CFA000000020B4D43F8000000060000000A000000090000000400000001000000030F34D106000000030C9A86F8000000090F8750F9000000090000000100000002"
theorem small_5254381_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5254381_right_root small_5254381_right_fuel small_5254381_right_count small_5254381_right_encoded = true := by
  decide +kernel
theorem small_5254381_right_covered : CoveredBy scale carrier boxes small_5254381_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5254381_right_root small_5254381_right_fuel small_5254381_right_count small_5254381_right_encoded small_5254381_right_checked

theorem cover_5254381 : CoveredBy scale carrier boxes root_5254381 := by
  apply coveredBy_split_literal root_5254381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5254382 small_5254381_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5254382
  · exact small_5254381_right_covered
#print axioms cover_5254381

def root_5254375 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254375_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254375_left_fuel : Nat := 1
def small_5254375_left_count : Nat := 1
def small_5254375_left_encoded : String := "00000001"
theorem small_5254375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5254375_left_root small_5254375_left_fuel small_5254375_left_count small_5254375_left_encoded = true := by
  decide +kernel
theorem small_5254375_left_covered : CoveredBy scale carrier boxes small_5254375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5254375_left_root small_5254375_left_fuel small_5254375_left_count small_5254375_left_encoded small_5254375_left_checked

theorem cover_5254375 : CoveredBy scale carrier boxes root_5254375 := by
  apply coveredBy_split_literal root_5254375 small_5254375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5254381 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5254375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5254381
#print axioms cover_5254375

def root_5254374 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254374_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254374_right_fuel : Nat := 17
def small_5254374_right_count : Nat := 81
def small_5254374_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000050F878CFD00000003000000050F8750FB0C9A87060F8750FD07800108128A41090000000400000005128A7D09022A457713E201000AD357790000000A000000070000000013E1C500000000000AD3577910D13CF8000000010B4D43FA000000050000000A0000000500000004000000030F878CFD0000000307800108128A410900000004022A45770000000700000005128A7D09022A45770000000713E1C500000000000AD3577910D13CF8000000010B4D43FA0000000600000007000000070000000400000002000000030F34D106000000030C9A86FA0F878CFB000000020780010800000005128A7D09022A45770000000700000005000000040F8750FB00000007000000020F34D0FA000000050000000200000001"
theorem small_5254374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5254374_right_root small_5254374_right_fuel small_5254374_right_count small_5254374_right_encoded = true := by
  decide +kernel
theorem small_5254374_right_covered : CoveredBy scale carrier boxes small_5254374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5254374_right_root small_5254374_right_fuel small_5254374_right_count small_5254374_right_encoded small_5254374_right_checked

theorem cover_5254374 : CoveredBy scale carrier boxes root_5254374 := by
  apply coveredBy_split_literal root_5254374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5254375 small_5254374_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5254375
  · exact small_5254374_right_covered
#print axioms cover_5254374

def root_5254368 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254368_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5254368_left_fuel : Nat := 1
def small_5254368_left_count : Nat := 1
def small_5254368_left_encoded : String := "00000000"
theorem small_5254368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5254368_left_root small_5254368_left_fuel small_5254368_left_count small_5254368_left_encoded = true := by
  decide +kernel
theorem small_5254368_left_covered : CoveredBy scale carrier boxes small_5254368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5254368_left_root small_5254368_left_fuel small_5254368_left_count small_5254368_left_encoded small_5254368_left_checked

theorem cover_5254368 : CoveredBy scale carrier boxes root_5254368 := by
  apply coveredBy_split_literal root_5254368 small_5254368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5254374 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5254368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5254374
#print axioms cover_5254368

def root_5252636 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5252636 : CoveredBy scale carrier boxes root_5252636 := by
  apply coveredBy_split_literal root_5252636 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1970.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5254368 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1970.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5254368
#print axioms cover_5252636

def root_5252631 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5252631_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5252631_right_fuel : Nat := 1
def small_5252631_right_count : Nat := 1
def small_5252631_right_encoded : String := "00000004"
theorem small_5252631_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5252631_right_root small_5252631_right_fuel small_5252631_right_count small_5252631_right_encoded = true := by
  decide +kernel
theorem small_5252631_right_covered : CoveredBy scale carrier boxes small_5252631_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5252631_right_root small_5252631_right_fuel small_5252631_right_count small_5252631_right_encoded small_5252631_right_checked

theorem cover_5252631 : CoveredBy scale carrier boxes root_5252631 := by
  apply coveredBy_split_literal root_5252631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5252636 small_5252631_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5252636
  · exact small_5252631_right_covered
#print axioms cover_5252631

def root_5250979 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5250979 : CoveredBy scale carrier boxes root_5250979 := by
  apply coveredBy_split_literal root_5250979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1969.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5252631 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1969.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5252631
#print axioms cover_5250979

def root_5250974 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250974_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250974_right_fuel : Nat := 1
def small_5250974_right_count : Nat := 1
def small_5250974_right_encoded : String := "00000003"
theorem small_5250974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250974_right_root small_5250974_right_fuel small_5250974_right_count small_5250974_right_encoded = true := by
  decide +kernel
theorem small_5250974_right_covered : CoveredBy scale carrier boxes small_5250974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250974_right_root small_5250974_right_fuel small_5250974_right_count small_5250974_right_encoded small_5250974_right_checked

theorem cover_5250974 : CoveredBy scale carrier boxes root_5250974 := by
  apply coveredBy_split_literal root_5250974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250979 small_5250974_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250979
  · exact small_5250974_right_covered
#print axioms cover_5250974

def root_5250973 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250973_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250973_right_fuel : Nat := 21
def small_5250973_right_count : Nat := 147
def small_5250973_right_encoded : String := "120701060000000305000108135D450900000004045489F71386AD000CFD9BF9000000090F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F8000000090F8750F900000009000000010000000300000009000000090F34D0F80000000500000001135D8109045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F8000000090F8750F9000000090000000100000003138671060000000300000009000000090F34D0F80CFD9BFB0000000700000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F80F878CF9000000010C9A86FA0F878CFB000000020780010800000009128A7D09022A45770000000713E1C50000000000067ECE7D0000000700000007000000040F8750FB00000007000000020F8750F90C9A86FA0F878CFB00000002000000090F8750FB07800108128A41090000000400000009128A7D09022A45770000000713E1C50000000000067ECE7D00000007000000070000000400000002000000010000000313867106000000030C9A86F80F878CF9000000010C9A86FA0F878CFB0000000200000009000000070F8750F90C9A86FA000000090F8750FB07800108000000070000000700000002000000010F34D0FA00000009000000020F34D0F80CFD9BFB0F350CFA00000002045489FD00000007000000070F34D0FA00000005000000020000000100000004"
theorem small_5250973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250973_right_root small_5250973_right_fuel small_5250973_right_count small_5250973_right_encoded = true := by
  decide +kernel
theorem small_5250973_right_covered : CoveredBy scale carrier boxes small_5250973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250973_right_root small_5250973_right_fuel small_5250973_right_count small_5250973_right_encoded small_5250973_right_checked

theorem cover_5250973 : CoveredBy scale carrier boxes root_5250973 := by
  apply coveredBy_split_literal root_5250973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250974 small_5250973_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250974
  · exact small_5250973_right_covered
#print axioms cover_5250973

def root_5250967 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250967_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250967_left_fuel : Nat := 1
def small_5250967_left_count : Nat := 1
def small_5250967_left_encoded : String := "00000002"
theorem small_5250967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250967_left_root small_5250967_left_fuel small_5250967_left_count small_5250967_left_encoded = true := by
  decide +kernel
theorem small_5250967_left_covered : CoveredBy scale carrier boxes small_5250967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250967_left_root small_5250967_left_fuel small_5250967_left_count small_5250967_left_encoded small_5250967_left_checked

theorem cover_5250967 : CoveredBy scale carrier boxes root_5250967 := by
  apply coveredBy_split_literal root_5250967 small_5250967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250973 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5250967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250973
#print axioms cover_5250967

def root_5250966 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250966_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250966_right_fuel : Nat := 14
def small_5250966_right_count : Nat := 37
def small_5250966_right_encoded : String := "120700FA08A912FD12073D0605000108135D45090000000400000005135D8109045489F71386AD000CFD9BF9000000090F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350D060000000500000003000000050000000500000005000000040000000312070106000000030000000900000002"
theorem small_5250966_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250966_right_root small_5250966_right_fuel small_5250966_right_count small_5250966_right_encoded = true := by
  decide +kernel
theorem small_5250966_right_covered : CoveredBy scale carrier boxes small_5250966_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250966_right_root small_5250966_right_fuel small_5250966_right_count small_5250966_right_encoded small_5250966_right_checked

theorem cover_5250966 : CoveredBy scale carrier boxes root_5250966 := by
  apply coveredBy_split_literal root_5250966 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250967 small_5250966_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250967
  · exact small_5250966_right_covered
#print axioms cover_5250966

def root_5250960 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250960_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250960_left_fuel : Nat := 1
def small_5250960_left_count : Nat := 1
def small_5250960_left_encoded : String := "00000001"
theorem small_5250960_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250960_left_root small_5250960_left_fuel small_5250960_left_count small_5250960_left_encoded = true := by
  decide +kernel
theorem small_5250960_left_covered : CoveredBy scale carrier boxes small_5250960_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250960_left_root small_5250960_left_fuel small_5250960_left_count small_5250960_left_encoded small_5250960_left_checked

theorem cover_5250960 : CoveredBy scale carrier boxes root_5250960 := by
  apply coveredBy_split_literal root_5250960 small_5250960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250966 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5250960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250966
#print axioms cover_5250960

def root_5250959 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250959_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250959_right_fuel : Nat := 17
def small_5250959_right_count : Nat := 63
def small_5250959_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073D0605000108135D45090000000400000005135D8109045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA000000050000000700000003000000070F34D0FA0000000500000002138670F80000000500000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000500000003000000050000000500000005000000040000000312070106000000030500010800000005135D8109045489F7000000070000000500000004120700FA000000050000000200000001"
theorem small_5250959_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250959_right_root small_5250959_right_fuel small_5250959_right_count small_5250959_right_encoded = true := by
  decide +kernel
theorem small_5250959_right_covered : CoveredBy scale carrier boxes small_5250959_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250959_right_root small_5250959_right_fuel small_5250959_right_count small_5250959_right_encoded small_5250959_right_checked

theorem cover_5250959 : CoveredBy scale carrier boxes root_5250959 := by
  apply coveredBy_split_literal root_5250959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250960 small_5250959_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250960
  · exact small_5250959_right_covered
#print axioms cover_5250959

def root_5250953 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250953_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250953_left_fuel : Nat := 1
def small_5250953_left_count : Nat := 1
def small_5250953_left_encoded : String := "00000000"
theorem small_5250953_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250953_left_root small_5250953_left_fuel small_5250953_left_count small_5250953_left_encoded = true := by
  decide +kernel
theorem small_5250953_left_covered : CoveredBy scale carrier boxes small_5250953_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250953_left_root small_5250953_left_fuel small_5250953_left_count small_5250953_left_encoded small_5250953_left_checked

theorem cover_5250953 : CoveredBy scale carrier boxes root_5250953 := by
  apply coveredBy_split_literal root_5250953 small_5250953_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250959 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5250953_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250959
#print axioms cover_5250953

def root_5250539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250539_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250539_left_fuel : Nat := 32
def small_5250539_left_count : Nat := 193
def small_5250539_left_encoded : String := "12073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073D0605000108135D4509000000040CFD9BF7000000090F34D100000000000CFD9BF9000000090F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA000000090000000700000003000000070000000900000001135D81090CFD9BF70F350D000CFD9BF9000000090F34D0F80CFD9BFB0F350CFA00000002000000070000000900000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87060F8750FD0780010800000009128A7D090AD357770000000710D10100000000000DE7C9F8000000070E5FD8F900000009000000010000000400000003000000090F8750FB0C9A87060F8750FD0780010800000007000000070000000300000007000000020F8750F90C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD07800108128A41090000000400000009128A7D090AD357770000000710D10100000000000B4D43F80000000A108010F90B4D43FA10804CFB000000020000000900000005000000010000000400000003000000090000000200000001000000030F34D10600000003000000090F34D0FA00000009000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB00000002000000070000000700000003000000070F34D0FA0000000900000002000000010000000400000003120701060000000300000009120700FA0000000900000002120700F808A912FB12073CFA0000000208A912FD12073D0605000108135D4509000000040CFD9BF7000000070F34D10000000000045489F91386ACF8000000010CFD9BFB000000070000000500000005135D81090CFD9BF7000000070F34D10000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000700000007000000070000000400000003120701060000000300000007120700FA00000005000000020000000100000000"
theorem small_5250539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250539_left_root small_5250539_left_fuel small_5250539_left_count small_5250539_left_encoded = true := by
  decide +kernel
theorem small_5250539_left_covered : CoveredBy scale carrier boxes small_5250539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250539_left_root small_5250539_left_fuel small_5250539_left_count small_5250539_left_encoded small_5250539_left_checked

theorem cover_5250539 : CoveredBy scale carrier boxes root_5250539 := by
  apply coveredBy_split_literal root_5250539 small_5250539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250953 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5250539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250953
#print axioms cover_5250539

def root_5250533 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250533_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250533_left_fuel : Nat := 1
def small_5250533_left_count : Nat := 1
def small_5250533_left_encoded : String := "00000004"
theorem small_5250533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250533_left_root small_5250533_left_fuel small_5250533_left_count small_5250533_left_encoded = true := by
  decide +kernel
theorem small_5250533_left_covered : CoveredBy scale carrier boxes small_5250533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250533_left_root small_5250533_left_fuel small_5250533_left_count small_5250533_left_encoded small_5250533_left_checked

theorem cover_5250533 : CoveredBy scale carrier boxes root_5250533 := by
  apply coveredBy_split_literal root_5250533 small_5250533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250539 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5250533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250539
#print axioms cover_5250533

def root_5267782 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5267782 : CoveredBy scale carrier boxes root_5267782 := by
  apply coveredBy_split_literal root_5267782 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1975.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1976.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1975.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1976.covered
#print axioms cover_5267782

def root_5267777 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267777_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267777_right_fuel : Nat := 1
def small_5267777_right_count : Nat := 1
def small_5267777_right_encoded : String := "00000004"
theorem small_5267777_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267777_right_root small_5267777_right_fuel small_5267777_right_count small_5267777_right_encoded = true := by
  decide +kernel
theorem small_5267777_right_covered : CoveredBy scale carrier boxes small_5267777_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267777_right_root small_5267777_right_fuel small_5267777_right_count small_5267777_right_encoded small_5267777_right_checked

theorem cover_5267777 : CoveredBy scale carrier boxes root_5267777 := by
  apply coveredBy_split_literal root_5267777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5267782 small_5267777_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5267782
  · exact small_5267777_right_covered
#print axioms cover_5267777

def root_5267675 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267675_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267675_left_fuel : Nat := 10
def small_5267675_left_count : Nat := 45
def small_5267675_left_encoded : String := "1207010800000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000050F34D10600000003000000050F34D0FA0CFD9BFD000000060F34D1060000000300000006000000020F34D0F80CFD9BFB0F350CFA00000002000000070F34D0FA0000000600000002000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA00000006000000020F34D0F80000000600000001"
theorem small_5267675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267675_left_root small_5267675_left_fuel small_5267675_left_count small_5267675_left_encoded = true := by
  decide +kernel
theorem small_5267675_left_covered : CoveredBy scale carrier boxes small_5267675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267675_left_root small_5267675_left_fuel small_5267675_left_count small_5267675_left_encoded small_5267675_left_checked

theorem cover_5267675 : CoveredBy scale carrier boxes root_5267675 := by
  apply coveredBy_split_literal root_5267675 small_5267675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5267777 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5267675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5267777
#print axioms cover_5267675

def root_5267670 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267670_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267670_right_fuel : Nat := 1
def small_5267670_right_count : Nat := 1
def small_5267670_right_encoded : String := "00000003"
theorem small_5267670_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267670_right_root small_5267670_right_fuel small_5267670_right_count small_5267670_right_encoded = true := by
  decide +kernel
theorem small_5267670_right_covered : CoveredBy scale carrier boxes small_5267670_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267670_right_root small_5267670_right_fuel small_5267670_right_count small_5267670_right_encoded small_5267670_right_checked

theorem cover_5267670 : CoveredBy scale carrier boxes root_5267670 := by
  apply coveredBy_split_literal root_5267670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5267675 small_5267670_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5267675
  · exact small_5267670_right_covered
#print axioms cover_5267670

def root_5267669 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267669_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267669_right_fuel : Nat := 25
def small_5267669_right_count : Nat := 335
def small_5267669_right_encoded : String := "120701060000000308A913091207010800000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA00000006000000020F34D0F80CFD9BFB000000060F34D0FA0000000600000002000000010000000013867100000000000CFD9BF9000000060F34D0F8000000060000000112073D08045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9C090F34D10800000004000000070F350D080C9A86F80F878CF900000001000000070F8750F90C9A86FA0F878CFB000000020C9A8708000000070F878D0900000007000000040000000700000001000000040000000313867106000000030CFD9C09000000070F350D080C9A86F8000000070F8750F90C9A86FA0F878CFB000000020C9A870800000007000000070000000700000001000000040F34D0FA045489FD1386AD060CFD9C090F34D108000000040C9A86F8000000060F8750F900000006000000010F350D080C9A86F8000000090F8750F90000000900000001000000040000000313867106000000030CFD9C090F34D108000000040C9A86F8000000060F8750F9067ECE770000000900000006000000010F350D080000000900000004000000020F34D0F80CFD9BFB0F350CFA00000002000000070F34D0FA045489FD1386AD060CFD9C09000000070F350D0800000007000000040000000313867106000000030CFD9C09000000070F350D08000000070000000400000002000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87080F87510900000004022A45770000000700000006000000060F8750FB00000007000000020F8750F90C9A86FA0F878CFB000000020C9A87080F87510900000004022A457713E20100067ECE7D12EA95060B4D43F8000000060000000A0000000312EA590600000003000000070000000000000006000000060F8750FB0C9A87080F87510900000004022A45770000000713E1C50000000000067ECE7D00000006000000070F878D0900000005000000040000000200000001000000040000000313867106000000030CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87080000000700000006000000070F8750F90C9A86FA0F878CFB000000020C9A87080F87510900000004022A4577000000070000000A0F878D0900000006000000040F8750FB0C9A8708000000070F878D0900000007000000040000000200000001000000040F34D0FA045489FD1386AD060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A87080F8751090000000400000009000000060F8750F90000000A00000001000000040000000313867106000000030CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A87080F8751090000000400000009000000060F8750F90000000A0000000100000004000000020F34D0F80CFD9BFB0F350CFA00000002045489FD1386AD060CFD9C09000000070F350D0800000007000000040000000313867106000000030CFD9C09000000070F350D0800000007000000040F34D0FA045489FD1386AD060CFD9C09000000060F350D080C9A87080F875109000000040000000500000006000000040000000313867106000000030CFD9C09000000060F350D080C9A8708000000050000000600000004000000020000000100000004"
theorem small_5267669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267669_right_root small_5267669_right_fuel small_5267669_right_count small_5267669_right_encoded = true := by
  decide +kernel
theorem small_5267669_right_covered : CoveredBy scale carrier boxes small_5267669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267669_right_root small_5267669_right_fuel small_5267669_right_count small_5267669_right_encoded small_5267669_right_checked

theorem cover_5267669 : CoveredBy scale carrier boxes root_5267669 := by
  apply coveredBy_split_literal root_5267669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5267670 small_5267669_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5267670
  · exact small_5267669_right_covered
#print axioms cover_5267669

def root_5267663 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267663_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267663_left_fuel : Nat := 1
def small_5267663_left_count : Nat := 1
def small_5267663_left_encoded : String := "00000002"
theorem small_5267663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267663_left_root small_5267663_left_fuel small_5267663_left_count small_5267663_left_encoded = true := by
  decide +kernel
theorem small_5267663_left_covered : CoveredBy scale carrier boxes small_5267663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267663_left_root small_5267663_left_fuel small_5267663_left_count small_5267663_left_encoded small_5267663_left_checked

theorem cover_5267663 : CoveredBy scale carrier boxes root_5267663 := by
  apply coveredBy_split_literal root_5267663 small_5267663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5267669 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5267663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5267669
#print axioms cover_5267663

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371

import TaoBundleAssembly0566
import TaoBundleChunkBatch0771
import TaoBundleChunkBatch0772
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567
def root_8220709 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220709_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220709_right_fuel : Nat := 29
def small_8220709_right_count : Nat := 415
def small_8220709_right_encoded : String := "0F34D106000000030C9A86F80F878CF9000000010C9A87040F8750FB07800100128A410100000000028001080000000513D7ED090AD3577D10D13D060DE7C9F8000000050E5FD8F9000000080000000100000003000000080000000400000008000000020F878CFB0000000207800100128A410100000000028001080000000813D7ED090AD3577D10D13D060DE7C9F8000000070E5FD8F90DE7CA040E5FD8FB00000008000000020000000700000001000000030000000700000004128A7D01028001080000000800000007000000000F8750F90C9A87040F8750FB07800100128A4101000000000280010813D7B109000000040AD3577D10D13D0600000008000000030000000813D7ED090AD3577D10D13D060B4D43F810804CF9000000010B4D4404108010FB0640010000000005000000080000000210804CFB000000020640010012FF7101000000000000000800000008108010F90B4D4404108010FB0640010012FF71010000000003C00108000000080000000612FFAD0103C001080000000800000009000000000000000210804CFB000000020640010012FF71010000000003C001080000000813A54D090BE879BD1011AD060AA6A2780000000810ED70F90BF3E58400000006100928FB0000000205A0010000000006000000080000000100000003000000080000000412FFAD0103C001080000000813A54D090BE879BD1011AD060AA6A278000000080000000900000003000000080000000400000000000000010000000310D10106000000030000000800000004128A7D010280010813D7B109000000040000000813D7ED090AD3577D10D13D060B4D43F810804CF9000000010B4D4404108010FB000000080000000200000008108010F90B4D4404108010FB000000090000000210804CFB0000000208C0010011FBE9010000000003C00108000000080000000900000009000000010000000310D1010600000003000000080000000400000000000000020F878CFB0000000207800100128A4101000000000280010813D7B109000000040AD3577D10D13D060B4D43F800000008108010F90DE7CA040E5FD8FB00000008000000020000000800000001000000030000000813D7ED090AD3577D10D13D060B4D43F810804CF9000000010DE7CA040E5FD8FB0640010012FF7101000000000000000800000008000000020E6014FB00000002064001000000000700000007108010F90DE7CA040E5FD8FB0640010012FF71010000000003C001080000000813A54D090BE879BD1011AD060AA6A27810EDACF9000000010D4128840EFA10FB00000008000000020000000810ED70F90D4128840EFA10FB05A001000000000800000008000000020EFA4CFB0000000205A001001331350100000000000000080000000800000001000000031011710600000003000000080000000412FFAD0103C001080000000813A54D090BE879BD1011AD060AA6A27810EDACF9000000010000000810ED70F90D4128840EFA10FB00000008000000020EFA4CFB0000000206E0010000000008000000080000000100000003000000080000000400000000000000020E6014FB000000020640010012FF71010000000003C0010813A51109000000040BE879BD1011AD060DAED87B000000080E9625040000000200000007000000030000000813A54D090BE879BD1011AD060DAED87B0E9661040AA6A2780000000710ED70F905A00100133135010000000004600108000000080000000713317101000000070000000000000001000000020000000700000003000000070000000412FFAD0103C0010813A51109000000040BE879BD1011AD060000000800000003000000070000000700000000000000010000000310D10106000000030B4D43F800000007108010F90DE7CA040E5FD8FB0000000800000002000000070000000100000004128A7D010280010813D7B109000000040AD3577D10D13D060B4D43F800000008108010F90DE7CA040E5FD8FB00000008000000020000000800000001000000030000000813D7ED090AD3577D10D13D060B4D43F810804CF9000000010DE7CA040E5FD8FB08C0010000000007000000070000000200000007108010F90DE7CA040E5FD8FB08C0010011FBE9010000000003C001080000000813A54D090BE879BD1011AD060AA6A278000000070000000900000003000000070000000411FC250103C00108000000080000000500000000000000020E6014FB0000000200000007000000010000000310D101060000000300000007000000040000000000000001"
theorem small_8220709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8220709_right_root small_8220709_right_fuel small_8220709_right_count small_8220709_right_encoded = true := by
  decide +kernel
theorem small_8220709_right_covered : CoveredBy scale carrier boxes small_8220709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8220709_right_root small_8220709_right_fuel small_8220709_right_count small_8220709_right_encoded small_8220709_right_checked

theorem cover_8220709 : CoveredBy scale carrier boxes root_8220709 := by
  apply coveredBy_split_literal root_8220709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0566.root_8220710 small_8220709_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0566.cover_8220710
  · exact small_8220709_right_covered
#print axioms cover_8220709

def root_8220704 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220704_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220704_right_fuel : Nat := 1
def small_8220704_right_count : Nat := 1
def small_8220704_right_encoded : String := "00000002"
theorem small_8220704_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8220704_right_root small_8220704_right_fuel small_8220704_right_count small_8220704_right_encoded = true := by
  decide +kernel
theorem small_8220704_right_covered : CoveredBy scale carrier boxes small_8220704_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8220704_right_root small_8220704_right_fuel small_8220704_right_count small_8220704_right_encoded small_8220704_right_checked

theorem cover_8220704 : CoveredBy scale carrier boxes root_8220704 := by
  apply coveredBy_split_literal root_8220704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8220709 small_8220704_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8220709
  · exact small_8220704_right_covered
#print axioms cover_8220704

def root_8220703 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220703_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220703_right_fuel : Nat := 27
def small_8220703_right_count : Nat := 255
def small_8220703_right_encoded : String := "0F34D104000000020CFD9BFD0F350D060C9A86F80F878CF9000000010C9A87060F8750FD07800100128A410100000000028001080000000513D7ED090AD3577B10D13D040DE7C9F800000005000000060000000200000006000000040000000A000000030F878CFD0000000307800100128A4101000000000280010813D7B109000000040AD3577B10D13D040DE7C9F80000000500000006000000020000000613D7ED090AD3577B10D13D040DE7C9F8000000070E5FD8F90DE7CA060E5FD8FD0640010012FF71010000000003C00108000000050000000700000007000000030000000700000001000000020000000700000004128A7D01028001080000000600000007000000000F8750F90C9A87060F8750FD07800100128A410100000000028001080000000613D7ED090AD3577B10D13D040B4D43F80000000A0000000600000002000000060000000400000006000000030F878CFD0000000307800100128A4101000000000280010813D7B109000000040AD3577B10D13D040B4D43F810804CF9000000010000000600000006000000020000000613D7ED090AD3577B10D13D040B4D43F810804CF9000000010DE7CA060E5FD8FD0640010012FF71010000000003C001080000000613A54D090BE879BB1011AD040BF3E5780000000A000000060000000200000006000000040000000A000000030E6014FD00000003064001000000000700000007108010F90DE7CA060E5FD8FD0640010012FF71010000000003C001080000000613A54D090BE879BB1011AD040AA6A2780000000A0000000600000002000000060000000400000006000000030E6014FD000000030640010012FF71010000000003C0010813A51109000000040BE879BB1011AD040DAED87D0000000600000006000000020000000613A54D090BE879BB1011AD040DAED87D0E9661060AA6A2780000000700000006000000030000000700000002000000070000000412FFAD0103C00108000000060000000700000000000000010000000210D10104000000020B4D43F8000000070000000600000004128A7D01028001080000000613D7ED090AD3577B10D13D040B4D43F810804CF9000000010DE7CA060000000600000007108010F90DE7CA06000000060E6014FD0000000300000006000000010000000200000006000000040000000000000001000000030F34D106000000030C9A86F8000000070F8750F907800100128A4101000000000280010813D7B109000000040AD3577B10D13D040AD3577D10D13D060B4D43F800000007108010F90640010012FF7101000000000000000800000008000000010000000300000007000000020000000713D7ED090AD3577B000000070000000700000004128A7D010280010800000007000000070000000000000001"
theorem small_8220703_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8220703_right_root small_8220703_right_fuel small_8220703_right_count small_8220703_right_encoded = true := by
  decide +kernel
theorem small_8220703_right_covered : CoveredBy scale carrier boxes small_8220703_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8220703_right_root small_8220703_right_fuel small_8220703_right_count small_8220703_right_encoded small_8220703_right_checked

theorem cover_8220703 : CoveredBy scale carrier boxes root_8220703 := by
  apply coveredBy_split_literal root_8220703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8220704 small_8220703_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8220704
  · exact small_8220703_right_covered
#print axioms cover_8220703

def root_8220697 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220697_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220697_left_fuel : Nat := 1
def small_8220697_left_count : Nat := 1
def small_8220697_left_encoded : String := "00000001"
theorem small_8220697_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8220697_left_root small_8220697_left_fuel small_8220697_left_count small_8220697_left_encoded = true := by
  decide +kernel
theorem small_8220697_left_covered : CoveredBy scale carrier boxes small_8220697_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8220697_left_root small_8220697_left_fuel small_8220697_left_count small_8220697_left_encoded small_8220697_left_checked

theorem cover_8220697 : CoveredBy scale carrier boxes root_8220697 := by
  apply coveredBy_split_literal root_8220697 small_8220697_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8220703 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8220697_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8220703
#print axioms cover_8220697

def root_8220696 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220696_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220696_right_fuel : Nat := 13
def small_8220696_right_count : Nat := 51
def small_8220696_right_encoded : String := "0F34D0F80CFD9BFB0F350D040CFD9BFD0F350D060C9A8704000000050F878CFB000000020C9A8706000000050F878CFD000000030780010000000005128A7D0102800108000000050000000700000000000000030F34D106000000030C9A87040F8750FB00000008000000020F878CFB0000000200000007000000020F34D104000000020CFD9BFD0F350D060C9A87060F8750FD0780010000000005128A7D0102800108000000050000000700000000000000030F878CFD0000000300000007000000030000000700000001"
theorem small_8220696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8220696_right_root small_8220696_right_fuel small_8220696_right_count small_8220696_right_encoded = true := by
  decide +kernel
theorem small_8220696_right_covered : CoveredBy scale carrier boxes small_8220696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8220696_right_root small_8220696_right_fuel small_8220696_right_count small_8220696_right_encoded small_8220696_right_checked

theorem cover_8220696 : CoveredBy scale carrier boxes root_8220696 := by
  apply coveredBy_split_literal root_8220696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8220697 small_8220696_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8220697
  · exact small_8220696_right_covered
#print axioms cover_8220696

def root_8220690 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220690_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8220690_left_fuel : Nat := 1
def small_8220690_left_count : Nat := 1
def small_8220690_left_encoded : String := "00000004"
theorem small_8220690_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8220690_left_root small_8220690_left_fuel small_8220690_left_count small_8220690_left_encoded = true := by
  decide +kernel
theorem small_8220690_left_covered : CoveredBy scale carrier boxes small_8220690_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8220690_left_root small_8220690_left_fuel small_8220690_left_count small_8220690_left_encoded small_8220690_left_checked

theorem cover_8220690 : CoveredBy scale carrier boxes root_8220690 := by
  apply coveredBy_split_literal root_8220690 small_8220690_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8220696 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8220690_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8220696
#print axioms cover_8220690

def root_8232672 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8232672 : CoveredBy scale carrier boxes root_8232672 := by
  apply coveredBy_split_literal root_8232672 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3084.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3085.root coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3084.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3085.covered
#print axioms cover_8232672

def root_8232666 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232666_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232666_left_fuel : Nat := 1
def small_8232666_left_count : Nat := 1
def small_8232666_left_encoded : String := "00000004"
theorem small_8232666_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8232666_left_root small_8232666_left_fuel small_8232666_left_count small_8232666_left_encoded = true := by
  decide +kernel
theorem small_8232666_left_covered : CoveredBy scale carrier boxes small_8232666_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8232666_left_root small_8232666_left_fuel small_8232666_left_count small_8232666_left_encoded small_8232666_left_checked

theorem cover_8232666 : CoveredBy scale carrier boxes root_8232666 := by
  apply coveredBy_split_literal root_8232666 small_8232666_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8232672 coord4 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_8232666_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8232672
#print axioms cover_8232666

def root_8232665 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232665_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232665_right_fuel : Nat := 20
def small_8232665_right_count : Nat := 225
def small_8232665_right_encoded : String := "128A7D090B4D43F810804CF9000000010DE7CA040E5FD8FB0DE7CA060E5FD8FD0640010012FF71010000000008C0010811FBE909000000040BF3E578000000061008ECF90D4128840000000600000006000000010000000612FFAD0108C0010811FBE909000000040BF3E578100928F9000000010D4128840EFA10FB00000006000000020EFA4CFB00000002000000071008ECF90D4128840EFA10FB00000006000000020EFA4CFB000000020D4128860EFA10FD06E001000000000812C821010000000700000000000000030EFA4CFD00000003000000060000000111FC2509000000060000000400000000000000030E6014FD000000030640010012FF7101000000000000000612FFAD010000000700000000000000020E6014FB000000020DE7CA060E5FD8FD0640010012FF71010000000008C0010811FBE909000000040DAED87B0E9661040BF3E578000000071008ECF90D4128860EFA10FD05A001000000000800000007000000030000000700000001000000020000000711FC2509000000070000000412FFAD010000000700000000000000030E6014FD0000000300000007108010F90DE7CA040E5FD8FB0DE7CA060E5FD8FD0640010012FF71010000000008C0010811FBE909000000040AA6A27810EDACF9000000010D412884000000060EFA4CFB000000020D4128860EFA10FD00000006000000030000000610ED70F90D412884000000060EFA4CFB000000020D4128860000000800000006000000010000000612FFAD0108C0010811FBE909000000040AA6A27810EDACF9000000010D4128840EFA10FB00000006000000020EFA4CFB000000020D4128860EFA10FD00000005000000030000000510ED70F90D4128840EFA10FB000000050000000200000005000000010000000500000000000000030E6014FD000000030640010012FF71010000000008C0010811FBE90900000004000000060000000500000005000000020E6014FB000000020DE7CA060E5FD8FD0640010012FF71010000000008C0010811FBE909000000040DAED87B0E9661040AA6A27810EDACF9000000010D4128860EFA10FD00000008000000030EFA4CFD0000000305A00100000000070000000510ED70F90D412886000000080000000500000001000000020E962504000000020AA6A27810EDACF9000000010D4128860EFA10FD00000007000000030000000500000005000000050000000500000003000000050000000100000004"
theorem small_8232665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8232665_right_root small_8232665_right_fuel small_8232665_right_count small_8232665_right_encoded = true := by
  decide +kernel
theorem small_8232665_right_covered : CoveredBy scale carrier boxes small_8232665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8232665_right_root small_8232665_right_fuel small_8232665_right_count small_8232665_right_encoded small_8232665_right_checked

theorem cover_8232665 : CoveredBy scale carrier boxes root_8232665 := by
  apply coveredBy_split_literal root_8232665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8232666 small_8232665_right_root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8232666
  · exact small_8232665_right_covered
#print axioms cover_8232665

def root_8232659 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232659_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232659_left_fuel : Nat := 1
def small_8232659_left_count : Nat := 1
def small_8232659_left_encoded : String := "00000000"
theorem small_8232659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8232659_left_root small_8232659_left_fuel small_8232659_left_count small_8232659_left_encoded = true := by
  decide +kernel
theorem small_8232659_left_covered : CoveredBy scale carrier boxes small_8232659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8232659_left_root small_8232659_left_fuel small_8232659_left_count small_8232659_left_encoded small_8232659_left_checked

theorem cover_8232659 : CoveredBy scale carrier boxes root_8232659 := by
  apply coveredBy_split_literal root_8232659 small_8232659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8232665 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_8232659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8232665
#print axioms cover_8232659

def root_8232658 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232658_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232658_right_fuel : Nat := 23
def small_8232658_right_count : Nat := 271
def small_8232658_right_encoded : String := "128A7D0107800108128A4109000000040B4D43F810804CF9000000010DE7CA040E5FD8FB0DE7CA060E5FD8FD08C0010011FBE901000000000640010812FF7109000000040BF3E5780000000A1008ECF90D4128840EFA10FB0000000A000000020000000A0000000112FFAD090BF3E578100928F9000000010D4128840EFA10FB0D4128860000000A0EFA4CFD0000000300000007000000020EFA4CFB00000002000000071008ECF90D4128840EFA10FB0D4128860000000A0EFA4CFD000000030820010012465D010000000006E00108000000090000000700000009000000020EFA4CFB000000020D4128860000000A0000000A000000010000000411FC25010000000A00000000000000030E6014FD0000000308C0010011FBE901000000000640010812FF7109000000040DAED87D0E9661060BF3E578000000071008ECF90D4128840EFA10FB0820010012465D010000000005A00108000000070000000700000007000000020000000700000001000000030000000712FFAD09000000070000000411FC25010000000700000000000000020E6014FB000000020DE7CA060E5FD8FD08C0010011FBE901000000000640010812FF7109000000040000000A12FFAD0900000007000000040000000A000000030E6014FD0000000300000007108010F90DE7CA040E5FD8FB0DE7CA060E5FD8FD08C0010011FBE901000000000640010812FF7109000000040AA6A27810EDACF9000000010D4128840EFA10FB0000000A000000020000000A10ED70F90D4128840EFA10FB00000009000000020000000A0000000112FFAD090AA6A27810EDACF9000000010D4128840EFA10FB0D4128860000000900000005000000020EFA4CFB000000020D4128860000000A0000000510ED70F90D4128840EFA10FB000000050000000200000005000000010000000411FC2501064001080000000A0000000500000000000000030E6014FD0000000308C0010011FBE901000000000640010812FF7109000000040DAED87D0E9661060AA6A27810EDACF9000000010D4128840EFA10FB00000009000000020EFA4CFB0000000208200100000000070000000510ED70F90D412884000000090000000500000001000000030E962506000000030AA6A27810EDACF9000000010D4128840EFA10FB000000070000000200000005000000050000000500000005000000020E6014FB000000020DE7CA060E5FD8FD08C0010011FBE901000000000640010812FF7109000000040000000A0000000500000005000000030000000500000001128A7D090B4D43F810804CF9000000010DE7CA040E5FD8FB0DE7CA060E5FD8FD08C0010011FBE9010000000008C0010811FBE909000000040BF3E578100928F900000001000000071008ECF90D4128840EFA10FB0D4128860EFA10FD000000050000000300000005000000020000000500000001000000050000000500000003000000050000000200000005000000050000000400000000"
theorem small_8232658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8232658_right_root small_8232658_right_fuel small_8232658_right_count small_8232658_right_encoded = true := by
  decide +kernel
theorem small_8232658_right_covered : CoveredBy scale carrier boxes small_8232658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8232658_right_root small_8232658_right_fuel small_8232658_right_count small_8232658_right_encoded small_8232658_right_checked

theorem cover_8232658 : CoveredBy scale carrier boxes root_8232658 := by
  apply coveredBy_split_literal root_8232658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8232659 small_8232658_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8232659
  · exact small_8232658_right_covered
#print axioms cover_8232658

def root_8232652 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232652_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8232652_left_fuel : Nat := 1
def small_8232652_left_count : Nat := 1
def small_8232652_left_encoded : String := "00000003"
theorem small_8232652_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8232652_left_root small_8232652_left_fuel small_8232652_left_count small_8232652_left_encoded = true := by
  decide +kernel
theorem small_8232652_left_covered : CoveredBy scale carrier boxes small_8232652_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8232652_left_root small_8232652_left_fuel small_8232652_left_count small_8232652_left_encoded small_8232652_left_checked

theorem cover_8232652 : CoveredBy scale carrier boxes root_8232652 := by
  apply coveredBy_split_literal root_8232652 small_8232652_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8232658 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8232652_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8232658
#print axioms cover_8232652

def root_8231236 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8231236 : CoveredBy scale carrier boxes root_8231236 := by
  apply coveredBy_split_literal root_8231236 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3083.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8232652 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3083.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8232652
#print axioms cover_8231236

def root_8231230 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8231230_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8231230_left_fuel : Nat := 1
def small_8231230_left_count : Nat := 1
def small_8231230_left_encoded : String := "00000002"
theorem small_8231230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8231230_left_root small_8231230_left_fuel small_8231230_left_count small_8231230_left_encoded = true := by
  decide +kernel
theorem small_8231230_left_covered : CoveredBy scale carrier boxes small_8231230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8231230_left_root small_8231230_left_fuel small_8231230_left_count small_8231230_left_encoded small_8231230_left_checked

theorem cover_8231230 : CoveredBy scale carrier boxes root_8231230 := by
  apply coveredBy_split_literal root_8231230 small_8231230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8231236 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8231230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8231236
#print axioms cover_8231230

def root_8228856 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8228856 : CoveredBy scale carrier boxes root_8228856 := by
  apply coveredBy_split_literal root_8228856 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3082.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8231230 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3082.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8231230
#print axioms cover_8228856

def root_8228851 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8228851_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8228851_right_fuel : Nat := 1
def small_8228851_right_count : Nat := 1
def small_8228851_right_encoded : String := "00000001"
theorem small_8228851_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8228851_right_root small_8228851_right_fuel small_8228851_right_count small_8228851_right_encoded = true := by
  decide +kernel
theorem small_8228851_right_covered : CoveredBy scale carrier boxes small_8228851_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8228851_right_root small_8228851_right_fuel small_8228851_right_count small_8228851_right_encoded small_8228851_right_checked

theorem cover_8228851 : CoveredBy scale carrier boxes root_8228851 := by
  apply coveredBy_split_literal root_8228851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8228856 small_8228851_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8228856
  · exact small_8228851_right_covered
#print axioms cover_8228851

def root_8226067 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8226067 : CoveredBy scale carrier boxes root_8226067 := by
  apply coveredBy_split_literal root_8226067 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3081.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8228851 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3081.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8228851
#print axioms cover_8226067

def root_8226062 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8226062_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8226062_right_fuel : Nat := 1
def small_8226062_right_count : Nat := 1
def small_8226062_right_encoded : String := "00000003"
theorem small_8226062_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8226062_right_root small_8226062_right_fuel small_8226062_right_count small_8226062_right_encoded = true := by
  decide +kernel
theorem small_8226062_right_covered : CoveredBy scale carrier boxes small_8226062_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8226062_right_root small_8226062_right_fuel small_8226062_right_count small_8226062_right_encoded small_8226062_right_checked

theorem cover_8226062 : CoveredBy scale carrier boxes root_8226062 := by
  apply coveredBy_split_literal root_8226062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.root_8226067 small_8226062_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567.cover_8226067
  · exact small_8226062_right_covered
#print axioms cover_8226062

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0567

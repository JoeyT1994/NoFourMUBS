import TaoBundleAssembly0479
import TaoBundleChunkBatch0657
import TaoBundleChunkBatch0658
import TaoBundleChunkBatch0659
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480
def root_6977729 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6977729_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6977729_left_fuel : Nat := 33
def small_6977729_left_count : Nat := 473
def small_6977729_left_encoded : String := "0F34D104000000020CFD9C070F34D0FC0CFD9C09000000090F350D080C9A87080F875109000000040000000A0F878D09000000090000000400000004000000030F350CFC000000030CFD9C090F34D108000000040C9A86FC000000090F8751070000000307800100128A40F70280010213D7B0F90AD357850000000910D13D040AD357890000000910D13D080B4D43FC0000000910801107000000030640010012FF70F70000000A000000000000000A00000004000000020000000113D7ECF9000000010AD35785000000090000000900000000128A7CF7000000000280010200000009000000090F350D080C9A86FC0F878D070C9A87080F8751090000000407800100128A40F7028001020000000513D7ECF9000000010AD357850000000A10D13D040DE7C9FC000000050E5FD907000000030000000A00000002000000000000000A0F878D0907800100128A40F7028001020000000A13D7ECF9000000010AD357850000000910D13D040DE7C9FC000000090E5FD907000000030DE7CA080E5FD909000000040000000A000000090000000200000000128A7CF700000000028001020000000A0000000900000004000000030F875107000000030C9A87080F8751090000000407800100128A40F70280010213D7B0F90AD357850000000A10D13D040000000A000000020000000113D7ECF9000000010AD3578510D10104000000020000000A10D13D040B4D43FC10804D070B4D4408108011090000000406400100000000050000000A10804D090640010012FF70F70000000A000000000000000A000000040000000310801107000000030B4D440810801109000000040640010012FF70F703C001020000000A000000060000000012FFACF70000000003C00102000000080000000810804D090640010012FF70F703C001020000000A13A54CF9000000010BE879C50000000A1011AD040AA6A27C0000000A10ED7107000000030BF3E588000000061009290905A00100000000060000000800000004000000020000000012FFACF70000000003C001020000000A13A54CF9000000010BE879C5000000081011AD040AA6A27C0000000A0000000800000002000000040000000200000000128A7CF7000000000280010213D7B0F90000000A0000000113D7ECF9000000010AD3578510D10104000000020000000A10D13D040B4D43FC10804D070B4D440810801109000000040000000A0000000A0000000310801107000000030B4D440810801109000000040000000810804D0908C0010011FBE8F703C001020000000800000008000000000000000800000004000000020F878D0907800100128A40F70280010213D7B0F90AD357850000000A10D13D040B4D43FC0000000A10801107000000030DE7CA080E5FD909000000040000000A0000000A000000020000000113D7ECF9000000010AD3578510D10104000000020B4D43FC0000000910801107000000030DE7CA080E5FD909000000040000000A0000000910D13D040B4D43FC10804D070DE7CA080E5FD909000000040640010012FF70F70000000A000000000000000A0E601509064001000000000900000009000000040000000310801107000000030DE7CA080E5FD909000000040640010012FF70F703C001020000000A13A54CF9000000010BE879C510117104000000020000000A1011AD040AA6A27C10EDAD070D4128880EFA1109000000040000000A0000000A0000000310ED7107000000030D4128880EFA11090000000405A001000000000A0000000A0EFA4D0905A00100133134F70000000A000000000000000A00000004000000020000000012FFACF70000000003C001020000000A13A54CF9000000010BE879C50000000A1011AD040AA6A27C10EDAD070000000A0000000310ED7107000000030D4128880EFA110900000004000000080EFA4D0906E001000000000A0000000A00000004000000020E6015090640010012FF70F703C0010213A510F90BE879C50000000A1011AD040DAED8890E96250800000004000000090000000A000000020000000113A54CF9000000010BE879C5000000091011AD040DAED889000000090E9661080AA6A27C0000000910ED71070000000305A00100133134F7046001020000000A0000000900000000133170F7000000000000000900000004000000020000000012FFACF70000000003C0010213A510F90BE879C5000000091011AD040000000A000000020000000100000009000000040000000200000000128A7CF7000000000280010213D7B0F90AD357850000000A10D13D040B4D43FC0000000A10801107000000030DE7CA080E5FD909000000040000000A0000000A000000020000000113D7ECF9000000010AD3578510D10104000000020000000910D13D040B4D43FC10804D070DE7CA080E5FD9090000000408C001000000000900000009000000090000000310801107000000030DE7CA080E5FD9090000000408C0010011FBE8F703C001020000000A13A54CF9000000010BE879C5000000091011AD040AA6A27C0000000900000008000000020000000011FC24F70000000003C0010200000008000000050E6015090000000900000004000000020000000400000004"
theorem small_6977729_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6977729_left_root small_6977729_left_fuel small_6977729_left_count small_6977729_left_encoded = true := by
  decide +kernel
theorem small_6977729_left_covered : CoveredBy scale carrier boxes small_6977729_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6977729_left_root small_6977729_left_fuel small_6977729_left_count small_6977729_left_encoded small_6977729_left_checked

theorem cover_6977729 : CoveredBy scale carrier boxes root_6977729 := by
  apply coveredBy_split_literal root_6977729 small_6977729_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0479.root_6978727 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6977729_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0479.cover_6978727
#print axioms cover_6977729

def root_6977724 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6977724_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6977724_right_fuel : Nat := 1
def small_6977724_right_count : Nat := 1
def small_6977724_right_encoded : String := "00000001"
theorem small_6977724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6977724_right_root small_6977724_right_fuel small_6977724_right_count small_6977724_right_encoded = true := by
  decide +kernel
theorem small_6977724_right_covered : CoveredBy scale carrier boxes small_6977724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6977724_right_root small_6977724_right_fuel small_6977724_right_count small_6977724_right_encoded small_6977724_right_checked

theorem cover_6977724 : CoveredBy scale carrier boxes root_6977724 := by
  apply coveredBy_split_literal root_6977724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6977729 small_6977724_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6977729
  · exact small_6977724_right_covered
#print axioms cover_6977724

def root_6985996 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6985996 : CoveredBy scale carrier boxes root_6985996 := by
  apply coveredBy_split_literal root_6985996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2626.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2627.root coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2626.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2627.covered
#print axioms cover_6985996

def root_6985990 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985990_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985990_left_fuel : Nat := 1
def small_6985990_left_count : Nat := 1
def small_6985990_left_encoded : String := "00000002"
theorem small_6985990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6985990_left_root small_6985990_left_fuel small_6985990_left_count small_6985990_left_encoded = true := by
  decide +kernel
theorem small_6985990_left_covered : CoveredBy scale carrier boxes small_6985990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6985990_left_root small_6985990_left_fuel small_6985990_left_count small_6985990_left_encoded small_6985990_left_checked

theorem cover_6985990 : CoveredBy scale carrier boxes root_6985990 := by
  apply coveredBy_split_literal root_6985990 small_6985990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6985996 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6985990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6985996
#print axioms cover_6985990

def root_6994624 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6994624 : CoveredBy scale carrier boxes root_6994624 := by
  apply coveredBy_split_literal root_6994624 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2631.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2632.root coord4 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2631.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2632.covered
#print axioms cover_6994624

def root_6994618 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6994618_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6994618_left_fuel : Nat := 1
def small_6994618_left_count : Nat := 1
def small_6994618_left_encoded : String := "00000003"
theorem small_6994618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6994618_left_root small_6994618_left_fuel small_6994618_left_count small_6994618_left_encoded = true := by
  decide +kernel
theorem small_6994618_left_covered : CoveredBy scale carrier boxes small_6994618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6994618_left_root small_6994618_left_fuel small_6994618_left_count small_6994618_left_encoded small_6994618_left_checked

theorem cover_6994618 : CoveredBy scale carrier boxes root_6994618 := by
  apply coveredBy_split_literal root_6994618 small_6994618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6994624 coord3 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_6994618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6994624
#print axioms cover_6994618

def root_6992498 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6992498 : CoveredBy scale carrier boxes root_6992498 := by
  apply coveredBy_split_literal root_6992498 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2630.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6994618 coord3 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2630.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6994618
#print axioms cover_6992498

def root_6992492 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992492_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (12058112)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992492_left_fuel : Nat := 1
def small_6992492_left_count : Nat := 1
def small_6992492_left_encoded : String := "00000002"
theorem small_6992492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6992492_left_root small_6992492_left_fuel small_6992492_left_count small_6992492_left_encoded = true := by
  decide +kernel
theorem small_6992492_left_covered : CoveredBy scale carrier boxes small_6992492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6992492_left_root small_6992492_left_fuel small_6992492_left_count small_6992492_left_encoded small_6992492_left_checked

theorem cover_6992492 : CoveredBy scale carrier boxes root_6992492 := by
  apply coveredBy_split_literal root_6992492 small_6992492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992498 coord2 true (12058112)
  · decide +kernel
  · decide +kernel
  · exact small_6992492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992498
#print axioms cover_6992492

def root_6992491 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6992491 : CoveredBy scale carrier boxes root_6992491 := by
  apply coveredBy_split_literal root_6992491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992492 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2633.root coord2 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992492
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2633.covered
#print axioms cover_6992491

def root_6992486 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992486_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992486_right_fuel : Nat := 1
def small_6992486_right_count : Nat := 1
def small_6992486_right_encoded : String := "00000001"
theorem small_6992486_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6992486_right_root small_6992486_right_fuel small_6992486_right_count small_6992486_right_encoded = true := by
  decide +kernel
theorem small_6992486_right_covered : CoveredBy scale carrier boxes small_6992486_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6992486_right_root small_6992486_right_fuel small_6992486_right_count small_6992486_right_encoded small_6992486_right_checked

theorem cover_6992486 : CoveredBy scale carrier boxes root_6992486 := by
  apply coveredBy_split_literal root_6992486 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992491 small_6992486_right_root coord1 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992491
  · exact small_6992486_right_covered
#print axioms cover_6992486

def root_6992485 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992485_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992485_right_fuel : Nat := 20
def small_6992485_right_count : Nat := 207
def small_6992485_right_encoded : String := "128A7CF9000000010DE7CA040E5FD905000000020B4D43FC10804D070DE7CA080E5FD909000000040640010012FF70F708C0010211FBE8F90D4128840EFA1105000000020BF3E57C000000061008ED0700000003000000060000000600000001000000060000000012FFACF70000000008C0010211FBE8F90D4128840EFA1105000000020BF3E57C100929070D412888000000060EFA4D090000000900000004000000031008ED07000000030D412888000000060EFA4D0906E001000000000A12C820F70000000000000009000000040EFA4D050BF3E57C000000061008ED07000000030D4128880000000600000006000000020000000111FC24F900000001000000060E6015090640010012FF70F708C0010211FBE8F90DAED889000000090E9661080D4128840EFA1105000000020BF3E57C000000091008ED070000000305A001000000000A0000000900000009000000040000000111FC24F900000001000000090000000012FFACF70000000000000009000000040000000310801107000000030DE7CA080E5FD909000000040640010012FF70F708C0010211FBE8F90D4128840EFA1105000000020AA6A27C000000060000000A0EFA4D05000000060000000200000001000000060000000012FFACF70000000008C0010211FBE8F90D4128840EFA1105000000020AA6A27C10EDAD070D4128880000000A0000000500000003000000050EFA4D050AA6A27C10EDAD070D412888000000060000000500000003000000050000000200000001000000050E6015090640010012FF70F708C0010211FBE8F90DAED8890E962508000000040D4128840EFA1105000000020000000A000000050E9661080D4128840EFA1105000000020000000A0EFA4D050AA6A27C10EDAD0705A0010000000009000000050000000300000005000000020000000400000001000000050000000000000005000000040E6015050B4D43FC10804D070DE7CA080E5FD909000000040640010012FF70F7000000060000000012FFACF700000000000000090E60150900000009000000040000000310801107000000030DE7CA080E5FD909000000040640010012FF70F708C0010211FBE8F900000006000000010000000500000000000000050000000500000002"
theorem small_6992485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6992485_right_root small_6992485_right_fuel small_6992485_right_count small_6992485_right_encoded = true := by
  decide +kernel
theorem small_6992485_right_covered : CoveredBy scale carrier boxes small_6992485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6992485_right_root small_6992485_right_fuel small_6992485_right_count small_6992485_right_encoded small_6992485_right_checked

theorem cover_6992485 : CoveredBy scale carrier boxes root_6992485 := by
  apply coveredBy_split_literal root_6992485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992486 small_6992485_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992486
  · exact small_6992485_right_covered
#print axioms cover_6992485

def root_6992480 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992480_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992480_right_fuel : Nat := 1
def small_6992480_right_count : Nat := 1
def small_6992480_right_encoded : String := "00000000"
theorem small_6992480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6992480_right_root small_6992480_right_fuel small_6992480_right_count small_6992480_right_encoded = true := by
  decide +kernel
theorem small_6992480_right_covered : CoveredBy scale carrier boxes small_6992480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6992480_right_root small_6992480_right_fuel small_6992480_right_count small_6992480_right_encoded small_6992480_right_checked

theorem cover_6992480 : CoveredBy scale carrier boxes root_6992480 := by
  apply coveredBy_split_literal root_6992480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992485 small_6992480_right_root coord0 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992485
  · exact small_6992480_right_covered
#print axioms cover_6992480

def root_6992479 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992479_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992479_right_fuel : Nat := 23
def small_6992479_right_count : Nat := 263
def small_6992479_right_encoded : String := "128A7CF70000000007800102128A40F90DE7CA040E5FD905000000020B4D43FC10804D070DE7CA080E5FD9090000000408C0010011FBE8F70640010212FF70F90D412884000000070EFA4D050BF3E57C000000071008ED070000000300000007000000020000000112FFACF9000000010D4128840EFA1105000000020BF3E57C000000071008ED0700000003000000070EFA4D050BF3E57C000000091008ED07000000030D4128880EFA1109000000040820010012465CF706E00102000000080000000900000000000000070EFA4D090000000700000004000000020000000011FC24F700000000000000070E60150908C0010011FBE8F70640010212FF70F9000000070000000112FFACF900000001000000090000000000000007000000040000000310801107000000030DE7CA080E5FD9090000000408C0010011FBE8F70640010212FF70F90D4128840EFA110500000002000000070EFA4D050AA6A27C10EDAD070D4128880EFA11090000000400000007000000070000000310ED7107000000030D4128880000000800000007000000020000000112FFACF9000000010D4128840EFA1105000000020AA6A27C00000007000000050EFA4D050AA6A27C10EDAD070D4128880EFA11090000000400000005000000050000000300000005000000020000000011FC24F7000000000640010200000007000000050E60150908C0010011FBE8F70640010212FF70F90000000700000001000000050000000000000005000000040E6015050B4D43FC10804D070DE7CA080E5FD9090000000408C0010011FBE8F70640010212FF70F90DAED885000000090E9661040BF3E57C000000091008ED07000000030D4128880EFA1109000000040820010012465CF705A001020000000800000008000000000000000800000009000000020000000112FFACF900000001000000090000000011FC24F700000000000000090E60150900000009000000040000000310801107000000030DE7CA080E5FD9090000000408C0010011FBE8F70640010212FF70F90DAED8850E962504000000020AA6A27C10EDAD070D4128880EFA110900000004000000080000000500000003000000050E9661040AA6A27C10EDAD070D4128880EFA110900000004000000080EFA4D09082001000000000900000005000000040000000310ED7107000000030D41288800000008000000050000000200000001000000050000000000000005000000050000000200000001128A7CF9000000010DE7CA040E5FD905000000020B4D43FC10804D070DE7CA080E5FD9090000000408C0010011FBE8F708C0010211FBE8F90D4128840EFA1105000000020BF3E57C000000091008ED07000000030D4128880EFA11090000000400000005000000050EFA4D0500000009000000020000000100000005000000000000000500000005000000030000000500000005"
theorem small_6992479_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6992479_right_root small_6992479_right_fuel small_6992479_right_count small_6992479_right_encoded = true := by
  decide +kernel
theorem small_6992479_right_covered : CoveredBy scale carrier boxes small_6992479_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6992479_right_root small_6992479_right_fuel small_6992479_right_count small_6992479_right_encoded small_6992479_right_checked

theorem cover_6992479 : CoveredBy scale carrier boxes root_6992479 := by
  apply coveredBy_split_literal root_6992479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992480 small_6992479_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992480
  · exact small_6992479_right_covered
#print axioms cover_6992479

def root_6992474 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992474_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6992474_right_fuel : Nat := 1
def small_6992474_right_count : Nat := 1
def small_6992474_right_encoded : String := "00000004"
theorem small_6992474_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6992474_right_root small_6992474_right_fuel small_6992474_right_count small_6992474_right_encoded = true := by
  decide +kernel
theorem small_6992474_right_covered : CoveredBy scale carrier boxes small_6992474_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6992474_right_root small_6992474_right_fuel small_6992474_right_count small_6992474_right_encoded small_6992474_right_checked

theorem cover_6992474 : CoveredBy scale carrier boxes root_6992474 := by
  apply coveredBy_split_literal root_6992474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992479 small_6992474_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992479
  · exact small_6992474_right_covered
#print axioms cover_6992474

def root_6991078 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6991078 : CoveredBy scale carrier boxes root_6991078 := by
  apply coveredBy_split_literal root_6991078 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2629.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6992474 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2629.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6992474
#print axioms cover_6991078

def root_6991072 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6991072_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6991072_left_fuel : Nat := 1
def small_6991072_left_count : Nat := 1
def small_6991072_left_encoded : String := "00000003"
theorem small_6991072_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6991072_left_root small_6991072_left_fuel small_6991072_left_count small_6991072_left_encoded = true := by
  decide +kernel
theorem small_6991072_left_covered : CoveredBy scale carrier boxes small_6991072_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6991072_left_root small_6991072_left_fuel small_6991072_left_count small_6991072_left_encoded small_6991072_left_checked

theorem cover_6991072 : CoveredBy scale carrier boxes root_6991072 := by
  apply coveredBy_split_literal root_6991072 small_6991072_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6991078 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6991072_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6991078
#print axioms cover_6991072

def root_6989728 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6989728 : CoveredBy scale carrier boxes root_6989728 := by
  apply coveredBy_split_literal root_6989728 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2628.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6991072 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2628.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6991072
#print axioms cover_6989728

def root_6989723 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6989723_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6989723_right_fuel : Nat := 1
def small_6989723_right_count : Nat := 1
def small_6989723_right_encoded : String := "00000002"
theorem small_6989723_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6989723_right_root small_6989723_right_fuel small_6989723_right_count small_6989723_right_encoded = true := by
  decide +kernel
theorem small_6989723_right_covered : CoveredBy scale carrier boxes small_6989723_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6989723_right_root small_6989723_right_fuel small_6989723_right_count small_6989723_right_encoded small_6989723_right_checked

theorem cover_6989723 : CoveredBy scale carrier boxes root_6989723 := by
  apply coveredBy_split_literal root_6989723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6989728 small_6989723_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6989728
  · exact small_6989723_right_covered
#print axioms cover_6989723

def root_6985989 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6985989 : CoveredBy scale carrier boxes root_6985989 := by
  apply coveredBy_split_literal root_6985989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6985990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6989723 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6985990
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6989723
#print axioms cover_6985989

def root_6985984 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985984_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985984_right_fuel : Nat := 1
def small_6985984_right_count : Nat := 1
def small_6985984_right_encoded : String := "00000004"
theorem small_6985984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6985984_right_root small_6985984_right_fuel small_6985984_right_count small_6985984_right_encoded = true := by
  decide +kernel
theorem small_6985984_right_covered : CoveredBy scale carrier boxes small_6985984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6985984_right_root small_6985984_right_fuel small_6985984_right_count small_6985984_right_encoded small_6985984_right_checked

theorem cover_6985984 : CoveredBy scale carrier boxes root_6985984 := by
  apply coveredBy_split_literal root_6985984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6985989 small_6985984_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6985989
  · exact small_6985984_right_covered
#print axioms cover_6985984

def root_6985178 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985178_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985178_left_fuel : Nat := 30
def small_6985178_left_count : Nat := 385
def small_6985178_left_encoded : String := "0F34D108000000040C9A87040F875105000000020C9A86FC0F878D0707800100128A40F707800102128A40F90AD3578910D10108000000040000000910D13D080B4D440410801105000000020DE7C9FC000000070E5FD907000000030000000710804D050DE7C9FC000000090E5FD907000000030640010012FF70F70640010200000008000000080000000000000007000000020000000400000001128A7CF9000000010AD357890000000910D13D080B4D440410801105000000020DE7C9FC000000090E5FD90700000003064001000000000800000007000000090000000400000000128A7CF70000000007800102128A40F90AD35789000000090000000700000001128A7CF90000000100000009000000030F8751070000000307800100128A40F707800102128A40F90AD3578910D10108000000040B4D44040000000610804D050B4D43FC00000006000000060000000210D13D080B4D440410801105000000020B4D43FC0000000710801107000000030000000710804D050B4D43FC10804D070640010012FF70F70640010212FF70F9000000070000000112FFACF9000000010BE879C9000000081011AD080BF3E584000000071009290500000009000000020000000400000000000000070000000310801107000000030640010012FF70F70640010212FF70F90BE879C900000006000000070000000112FFACF9000000010BE879C90000000A1011AD080BF3E58400000007100929050AA6A27C000000070000000A00000002000000040000000000000007000000020000000400000001128A7CF9000000010AD3578910D10108000000040B4D440410801105000000020B4D43FC000000080000000A10804D05000000090000000210D13D080B4D440410801105000000020B4D43FC10804D07064001000000000A00000007000000030000000A10804D050B4D43FC10804D070640010012FF70F708C0010211FBE8F90BE879C9000000081011AD080BF3E5840000000A000000080000000400000001000000090000000012FFACF700000000000000090000000310801107000000030640010012FF70F708C0010211FBE8F90000000A00000001000000050000000000000005000000020000000400000000128A7CF70000000007800102128A40F90AD3578910D1010800000004000000060000000700000001128A7CF9000000010AD3578910D10108000000040000000510D13D080B4D440410801105000000020000000700000005000000040F878D050C9A86FC0F878D0707800100128A40F70780010200000009000000090000000000000009000000030F8751070000000307800100128A40F707800102128A40F90AD3578910D10108000000040000000910D13D080DE7CA040E5FD905000000020B4D43FC10804D070640010012FF70F70640010212FF70F90BE879C90000000900000009000000010000000900000000000000090000000310801107000000030640010012FF70F70640010212FF70F90BE879C910117108000000040D41288400000006000000091011AD080D4128840EFA1105000000020AA6A27C0000000710ED710700000003000000070EFA4D050AA6A27C0000000910ED71070000000305A00100133134F705A00102133134F90000000600000001133170F9000000010000000900000000133170F7000000000000000700000002000000040000000112FFACF9000000010BE879C9000000091011AD080D4128840EFA1105000000020AA6A27C0000000910ED71070000000305A001000000000A000000050EFA4D050000000900000002000000040000000012FFACF7000000000640010212FF70F90BE879C9000000060000000700000001000000050E6015050B4D43FC0000000910801107000000030640010012FF70F70640010200000009000000050000000000000005000000020000000400000001128A7CF9000000010AD357890000000910D13D080DE7CA040E5FD905000000020B4D43FC0000000900000005000000050000000400000000128A7CF70000000007800102128A40F90AD357890000000910D13D080DE7CA040E5FD905000000020B4D43FC00000009000000050000000500000004000000010000000500000002"
theorem small_6985178_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6985178_left_root small_6985178_left_fuel small_6985178_left_count small_6985178_left_encoded = true := by
  decide +kernel
theorem small_6985178_left_covered : CoveredBy scale carrier boxes small_6985178_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6985178_left_root small_6985178_left_fuel small_6985178_left_count small_6985178_left_encoded small_6985178_left_checked

theorem cover_6985178 : CoveredBy scale carrier boxes root_6985178 := by
  apply coveredBy_split_literal root_6985178 small_6985178_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6985984 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6985178_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6985984
#print axioms cover_6985178

def root_6985172 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985172_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6985172_left_fuel : Nat := 1
def small_6985172_left_count : Nat := 1
def small_6985172_left_encoded : String := "00000003"
theorem small_6985172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6985172_left_root small_6985172_left_fuel small_6985172_left_count small_6985172_left_encoded = true := by
  decide +kernel
theorem small_6985172_left_covered : CoveredBy scale carrier boxes small_6985172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6985172_left_root small_6985172_left_fuel small_6985172_left_count small_6985172_left_encoded small_6985172_left_checked

theorem cover_6985172 : CoveredBy scale carrier boxes root_6985172 := by
  apply coveredBy_split_literal root_6985172 small_6985172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6985178 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6985172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6985178
#print axioms cover_6985172

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480

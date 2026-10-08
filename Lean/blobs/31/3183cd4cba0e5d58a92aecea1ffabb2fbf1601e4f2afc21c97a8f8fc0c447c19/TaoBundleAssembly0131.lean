import TaoBundleAssembly0129
import TaoBundleAssembly0130
import TaoBundleChunkBatch0491
import TaoBundleChunkBatch0492
import TaoBundleChunkBatch0495
import TaoBundleChunkBatch0496
import TaoBundleChunkBatch0497
import TaoBundleChunkBatch0498
import TaoBundleChunkBatch0499
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131
def root_5272940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272940_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272940_left_fuel : Nat := 24
def small_5272940_left_count : Nat := 389
def small_5272940_left_encoded : String := "1151E8FD0A0001081151E9090000000408A912F712073D0008A912F912073CF800000001050000FA135D80FB0000000205000106135D44FD0000000A00000003135D80FD0000000305000108135D4509000000040CFD9BF70F350D000CFD9BF90000000600000006000000000F34D100000000000000000A135D81090CFD9BF70F350D000CFD9BF90000000A0F34D0F80000000700000001000000000F34D100000000000CFD9BF90000000A0000000A00000004135D44FB050001060000000A135D80FD0000000305000108135D450900000004000000060000000A00000002120700F8050000FA135D80FB00000002050001060000000A135D80FD000000030500010800000007000000070000000A0000000100000000120701000000000008A912F912073CF800000001050000FA135D80FB00000002050001060000000A135D80FD0000000305000108135D450900000004045489F70000000A13867100000000000000000A135D8109045489F71386AD000CFD9BF90000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90000000A0F34D0F80000000A00000001000000040000000A120700F8050000FA0000000A0000000A000000011152250908A912F712073D0008A912F912073CF80000000108A913091207010800000004050000FA135D80FB000000020500010600000008000000050000000512073D08050000FA135D80FB0000000205000106135D44FD0CFD9BF70F350D000CFD9BF90000000A0000000A000000000F34D100000000000CFD9BF90000000A0F34D0F80000000A0000000100000003135D80FD000000030CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C09000000050F350D080C9A87000F8750F700000005000000000000000A000000040F34D0F80000000700000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350D080C9A86F80000000A0F8750F90000000500000001000000040F34D0F80CFD9C09000000070000000A00000001135D44FB05000106135D44FD0CFD9BF70000000A0F34D100000000000000000A00000003135D80FD000000030CFD9BF70F350D0000000007000000000F34D100000000000CFD9BF9000000050F34D0F800000007000000010000000200000004120700F808A913090000000712073D08050000FA135D80FB00000002050001060000000A0000000700000007000000040000000100000000120701000000000008A912F912073CF80000000108A913091207010800000004050000FA000000090000000812073D08050000FA135D80FB0000000205000106135D44FD045489F71386AD000CFD9BF90F350CF8000000010CFD9C09000000080000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF800000001000000090000000900000003135D80FD00000003045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000050F350D080C9A86F80000000A0F8750F90C9A87080F875109000000040000000A0000000500000001000000040F34D0F80CFD9C090F34D10800000004000000070000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C09000000090F350D080C9A86F80F878CF9000000010000000900000009000000040F34D0F80CFD9C09000000090F350D080C9A870800000009000000090000000400000001135D44FB05000106135D44FD045489F70000000A13867100000000000000000900000003135D80FD00000003045489F71386AD000CFD9BF90F350CF800000001000000050F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF800000001000000090F34D0F80000000A000000010000000200000004120700F808A9130912070108000000040000000912073D08050000FA135D80FB0000000205000106135D44FD0000000A00000003135D80FD00000003045489F71386AD00045489F90000000A00000007000000001386710000000000045489F91386ACF8000000010CFD9C09000000090000000A00000009135D44FB050001060000000A135D80FD00000003000000070000000200000004000000010000000400000003"
theorem small_5272940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5272940_left_root small_5272940_left_fuel small_5272940_left_count small_5272940_left_encoded = true := by
  decide +kernel
theorem small_5272940_left_covered : CoveredBy scale carrier boxes small_5272940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5272940_left_root small_5272940_left_fuel small_5272940_left_count small_5272940_left_encoded small_5272940_left_checked

theorem cover_5272940 : CoveredBy scale carrier boxes root_5272940 := by
  apply coveredBy_split_literal root_5272940 small_5272940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0130.root_5273774 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5272940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0130.cover_5273774
#print axioms cover_5272940

def root_5272935 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272935_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272935_right_fuel : Nat := 1
def small_5272935_right_count : Nat := 1
def small_5272935_right_encoded : String := "00000002"
theorem small_5272935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5272935_right_root small_5272935_right_fuel small_5272935_right_count small_5272935_right_encoded = true := by
  decide +kernel
theorem small_5272935_right_covered : CoveredBy scale carrier boxes small_5272935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5272935_right_root small_5272935_right_fuel small_5272935_right_count small_5272935_right_encoded small_5272935_right_checked

theorem cover_5272935 : CoveredBy scale carrier boxes root_5272935 := by
  apply coveredBy_split_literal root_5272935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5272940 small_5272935_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5272940
  · exact small_5272935_right_covered
#print axioms cover_5272935

def root_5243125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243125 : CoveredBy scale carrier boxes root_5243125 := by
  apply coveredBy_split_literal root_5243125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0130.root_5243126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5272935 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0130.cover_5243126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5272935
#print axioms cover_5243125

def root_5243119 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243119_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243119_left_fuel : Nat := 1
def small_5243119_left_count : Nat := 1
def small_5243119_left_encoded : String := "00000001"
theorem small_5243119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243119_left_root small_5243119_left_fuel small_5243119_left_count small_5243119_left_encoded = true := by
  decide +kernel
theorem small_5243119_left_covered : CoveredBy scale carrier boxes small_5243119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243119_left_root small_5243119_left_fuel small_5243119_left_count small_5243119_left_encoded small_5243119_left_checked

theorem cover_5243119 : CoveredBy scale carrier boxes root_5243119 := by
  apply coveredBy_split_literal root_5243119 small_5243119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5243125 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5243119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5243125
#print axioms cover_5243119

def root_5284155 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284155_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284155_right_fuel : Nat := 28
def small_5284155_right_count : Nat := 231
def small_5284155_right_encoded : String := "0F34D106000000030C9A86FA0F878CFB00000002078000F8128A7CF90000000107800108128A41090000000400000009128A7D09022A457713E201000AD3577D10D13D060DE7C9FA000000090E5FD8FB00000009000000020000000300000009000000000000000A000000040000000A0F8750FB078000F8128A7CF90000000107800108128A410900000004022A457713E201000AD3577D10D13D060B4D43FA00000009108010FB08C000F80000000911FBE8F90000000900000001000000020000000310D1010600000003000000090000000013E1C500000000000AD3577D10D13D060B4D43FA10804CFB0000000208C000F811FC24F9000000010000000A0000000A108010FB08C000F811FC24F9000000010640010812FF710900000004011523370000000913F85900000000000BE879BD1011AD060AA6A27A0000000A10ED70FB096000F811AABCF90000000105A0010800000009133171090000000A000000040000000A00000002000000030000000A12FFAD090115233713F895000BE879BD1011AD060AA6A27A10EDACFB00000002096000F8000000090000000500000005000000031011710600000003000000090000000013F85900000000000BE879BD1011AD060AA6A27A0000000A10ED70FB0000000500000002000000030000000A0000000411FBE8F90640010812FF71090000000401152337000000090000000A12FFAD0901152337000000050000000A0000000400000001000000020000000310D10106000000030000000A128A7D09022A457713E201000AD3577D10D13D060B4D43FA10804CFB0000000208C000F811FC24F90000000108C0010811FBE90900000004000000090000000500000005000000050000000310D10106000000030B4D43FA10804CFB0000000200000009000000050000000013E1C500000000000AD3577D10D13D060B4D43FA10804CFB0000000208C000F811FC24F9000000010000000A0000000A108010FB08C000F811FC24F90000000108C0010811FBE90900000004011523370000000513F85900000000000BE879BD000000050000000A0000000500000005000000020000000310D10106000000030000000A00000004128A40F907800108128A410900000004022A457713E201000AD3577D10D13D060B4D43FA000000090000000500000003000000090000000013E1C500000000000AD3577D0000000A0000000A128A7D09022A45770000000513E1C500000000000AD3577D000000050000000A000000040000000100000002"
theorem small_5284155_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284155_right_root small_5284155_right_fuel small_5284155_right_count small_5284155_right_encoded = true := by
  decide +kernel
theorem small_5284155_right_covered : CoveredBy scale carrier boxes small_5284155_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284155_right_root small_5284155_right_fuel small_5284155_right_count small_5284155_right_encoded small_5284155_right_checked

theorem cover_5284155 : CoveredBy scale carrier boxes root_5284155 := by
  apply coveredBy_split_literal root_5284155 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1980.root small_5284155_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1980.covered
  · exact small_5284155_right_covered
#print axioms cover_5284155

def root_5284149 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284149_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284149_left_fuel : Nat := 1
def small_5284149_left_count : Nat := 1
def small_5284149_left_encoded : String := "00000002"
theorem small_5284149_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284149_left_root small_5284149_left_fuel small_5284149_left_count small_5284149_left_encoded = true := by
  decide +kernel
theorem small_5284149_left_covered : CoveredBy scale carrier boxes small_5284149_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284149_left_root small_5284149_left_fuel small_5284149_left_count small_5284149_left_encoded small_5284149_left_checked

theorem cover_5284149 : CoveredBy scale carrier boxes root_5284149 := by
  apply coveredBy_split_literal root_5284149 small_5284149_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5284155 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5284149_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5284155
#print axioms cover_5284149

def root_5284148 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284148_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284148_right_fuel : Nat := 15
def small_5284148_right_count : Nat := 69
def small_5284148_right_encoded : String := "0F34D0FA0CFD9BFD0F350D060C9A87060F8750FD078000F8128A7CF90000000107800108128A410900000004022A45770000000913E1C500000000000AD3577B10D13CFA000000020B4D4406000000050000000A00000005128A7D09022A457713E201000AD3577B10D13CFA0000000200000008000000080000000013E1C500000000000AD3577B10D13CFA00000002000000080000000800000004128A40F907800108128A410900000004022A45770000000900000007128A7D09000000080000000400000001000000030F878CFD00000003078000F8128A7CF9000000010780010800000009128A7D09022A4577000000090000000A000000040000000A000000030F34D106000000030000000900000002"
theorem small_5284148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284148_right_root small_5284148_right_fuel small_5284148_right_count small_5284148_right_encoded = true := by
  decide +kernel
theorem small_5284148_right_covered : CoveredBy scale carrier boxes small_5284148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284148_right_root small_5284148_right_fuel small_5284148_right_count small_5284148_right_encoded small_5284148_right_checked

theorem cover_5284148 : CoveredBy scale carrier boxes root_5284148 := by
  apply coveredBy_split_literal root_5284148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5284149 small_5284148_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5284149
  · exact small_5284148_right_covered
#print axioms cover_5284148

def root_5284142 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284142_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5284142_left_fuel : Nat := 1
def small_5284142_left_count : Nat := 1
def small_5284142_left_encoded : String := "00000000"
theorem small_5284142_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5284142_left_root small_5284142_left_fuel small_5284142_left_count small_5284142_left_encoded = true := by
  decide +kernel
theorem small_5284142_left_covered : CoveredBy scale carrier boxes small_5284142_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5284142_left_root small_5284142_left_fuel small_5284142_left_count small_5284142_left_encoded small_5284142_left_checked

theorem cover_5284142 : CoveredBy scale carrier boxes root_5284142 := by
  apply coveredBy_split_literal root_5284142 small_5284142_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5284148 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5284142_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5284148
#print axioms cover_5284142

def root_5283482 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283482_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283482_left_fuel : Nat := 23
def small_5283482_left_count : Nat := 311
def small_5283482_left_encoded : String := "1386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD078000F8128A7CF90000000107800108128A410900000004067ECE770000000912EA5900000000000DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D4406108010FD00000008000000030000000900000002128A7D09067ECE7712EA95000DE7C9FA0E6014FB0000000200000008000000080000000012EA5900000000000DE7C9FA0E6014FB00000002000000080000000800000004128A40F907800108128A410900000004067ECE770000000912EA5900000000000DE7C9FA0E6014FB000000020000000800000008128A7D09067ECE7700000008000000080000000400000001000000030F878CFD00000003078000F8128A7CF9000000010780010800000009128A7D09067ECE770000000912EA5900000000000DE7C9FA0E6014FB00000002000000090E5FD8FB0DE7CA060E5FD8FD08C000F811FC24F90000000108C0010800000008000000080000000800000003000000090000000200000004128A40F90780010800000009128A7D09067ECE770000000912EA5900000000000DE7C9FA000000090E5FD8FB000000050000000200000004000000010F8750FB0C9A87060F8750FD078000F8128A7CF90000000107800108128A410900000004067ECE7712EA95000B4D43FA10804CFB000000020B4D44060000000600000009000000060000000012EA5900000000000B4D43FA10804CFB000000020B4D4406108010FD000000080000000310804CFD0000000308C000F811FC24F90000000106400108000000090000000811FBE8F90000000800000001108010FB0B4D4406108010FD000000080000000310804CFD0000000308C000F80000000A0000000500000002128A7D09067ECE770000000512EA5900000000000B4D43FA10804CFB00000002000000080000000500000004128A40F907800108128A410900000004067ECE770000000512EA5900000000000B4D43FA10804CFB0000000200000008000000050000000500000001000000030F878CFD00000003078000F8128A7CF90000000107800108128A410900000004067ECE770000000912EA5900000000000B4D43FA10804CFB0000000200000009108010FB0DE7CA060E5FD8FD08C000F811FC24F90000000106400108000000060000000500000005000000030000000900000002128A7D09067ECE770000000512EA5900000000000B4D43FA10804CFB000000020DE7CA060E5FD8FD0000000500000003000000050000000500000004128A40F907800108128A410900000004067ECE770000000512EA5900000000000B4D43FA10804CFB000000020000000900000005000000050000000100000002000000030F34D106000000030C9A86FA0F878CFB00000002000000090F8750FB078000F8128A7CF9000000010780010800000009128A7D09067ECE770000000912EA5900000000000AD3577D10D13D060B4D43FA10804CFB0000000200000009000000050000000310D10106000000030000000900000004128A40F907800108000000090000000500000001000000020F34D0FA0CFD9BFD0F350D060C9A87060F8750FD078000F800000009128A40F90780010800000009128A7D09067ECE77000000090000000800000004000000010000000300000009000000030F34D10600000003000000090000000200000000"
theorem small_5283482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5283482_left_root small_5283482_left_fuel small_5283482_left_count small_5283482_left_encoded = true := by
  decide +kernel
theorem small_5283482_left_covered : CoveredBy scale carrier boxes small_5283482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5283482_left_root small_5283482_left_fuel small_5283482_left_count small_5283482_left_encoded small_5283482_left_checked

theorem cover_5283482 : CoveredBy scale carrier boxes root_5283482 := by
  apply coveredBy_split_literal root_5283482 small_5283482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5284142 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5283482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5284142
#print axioms cover_5283482

def root_5283477 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283477_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5283477_right_fuel : Nat := 1
def small_5283477_right_count : Nat := 1
def small_5283477_right_encoded : String := "00000004"
theorem small_5283477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5283477_right_root small_5283477_right_fuel small_5283477_right_count small_5283477_right_encoded = true := by
  decide +kernel
theorem small_5283477_right_covered : CoveredBy scale carrier boxes small_5283477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5283477_right_root small_5283477_right_fuel small_5283477_right_count small_5283477_right_encoded small_5283477_right_checked

theorem cover_5283477 : CoveredBy scale carrier boxes root_5283477 := by
  apply coveredBy_split_literal root_5283477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5283482 small_5283477_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5283482
  · exact small_5283477_right_covered
#print axioms cover_5283477

def root_5281465 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5281465 : CoveredBy scale carrier boxes root_5281465 := by
  apply coveredBy_split_literal root_5281465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1979.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5283477 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1979.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5283477
#print axioms cover_5281465

def root_5281459 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281459_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281459_left_fuel : Nat := 1
def small_5281459_left_count : Nat := 1
def small_5281459_left_encoded : String := "00000001"
theorem small_5281459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281459_left_root small_5281459_left_fuel small_5281459_left_count small_5281459_left_encoded = true := by
  decide +kernel
theorem small_5281459_left_covered : CoveredBy scale carrier boxes small_5281459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281459_left_root small_5281459_left_fuel small_5281459_left_count small_5281459_left_encoded small_5281459_left_checked

theorem cover_5281459 : CoveredBy scale carrier boxes root_5281459 := by
  apply coveredBy_split_literal root_5281459 small_5281459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281465 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5281459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281465
#print axioms cover_5281459

def root_5281458 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281458_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281458_right_fuel : Nat := 21
def small_5281458_right_count : Nat := 253
def small_5281458_right_encoded : String := "135D44F905000108135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000060000000900000006000000030F34D10600000003000000090F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD028000F813D7ECF90000000102800108000000070000000700000007000000030F878CFD000000030000000A0F8750FB0C9A87060F8750FD028000F813D7ECF900000001028001080000000613D7ED09022A457700000006000000070000000400000006000000030F878CFD00000003028000F813D7ECF900000001028001080000000613D7ED09022A45770000000613E1C500000000000B4D43FA0000000A00000006000000040000000600000002000000030F34D106000000030000000A0F34D0FA0CFD9BFD0F350D060C9A87060F8750FD028000F800000009000000070000000300000009000000030000000900000002135D8109045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD028000F813D7ECF90000000107800108128A410900000004067ECE7700000006000000080000000813D7B0F907800108000000060000000500000001000000030F878CFD00000003028000F813D7ECF9000000010780010800000009128A7D09000000050000000413D7B0F9078001080000000600000005000000010F8750FB0C9A87060F8750FD00000005000000030000000500000002000000030F34D106000000030C9A86FA0F878CFB00000002000000090F8750FB00000005000000020F34D0FA0CFD9BFD0F350D060C9A87060F8750FD028000F813D7ECF9000000010780010800000009128A7D0900000008000000040000000A0000000300000009000000030F34D1060000000300000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD028000F813D7ECF90000000107800108000000080000000800000007000000030F878CFD000000030000000A0F8750FB0C9A87060F8750FD028000F813D7ECF90000000107800108000000080000000500000005000000030F878CFD00000003028000F813D7ECF90000000107800108128A410900000004022A45770000000513E1C5000000000000000005000000050000000500000002000000030F34D106000000030C9A86FA0000000A0F8750FB028000F813D7ECF900000001078001080000000A0000000500000005000000020F34D0FA0CFD9BFD0000000A0000000A000000020000000400000001"
theorem small_5281458_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281458_right_root small_5281458_right_fuel small_5281458_right_count small_5281458_right_encoded = true := by
  decide +kernel
theorem small_5281458_right_covered : CoveredBy scale carrier boxes small_5281458_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281458_right_root small_5281458_right_fuel small_5281458_right_count small_5281458_right_encoded small_5281458_right_checked

theorem cover_5281458 : CoveredBy scale carrier boxes root_5281458 := by
  apply coveredBy_split_literal root_5281458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281459 small_5281458_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281459
  · exact small_5281458_right_covered
#print axioms cover_5281458

def root_5281453 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281453_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281453_right_fuel : Nat := 1
def small_5281453_right_count : Nat := 1
def small_5281453_right_encoded : String := "00000003"
theorem small_5281453_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281453_right_root small_5281453_right_fuel small_5281453_right_count small_5281453_right_encoded = true := by
  decide +kernel
theorem small_5281453_right_covered : CoveredBy scale carrier boxes small_5281453_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281453_right_root small_5281453_right_fuel small_5281453_right_count small_5281453_right_encoded small_5281453_right_checked

theorem cover_5281453 : CoveredBy scale carrier boxes root_5281453 := by
  apply coveredBy_split_literal root_5281453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281458 small_5281453_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281458
  · exact small_5281453_right_covered
#print axioms cover_5281453

def root_5281452 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281452_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281452_right_fuel : Nat := 19
def small_5281452_right_count : Nat := 63
def small_5281452_right_encoded : String := "1207010600000003050000F8135D80F90000000105000108135D45090000000400000009135D8109045489F70000000913867100000000000CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB000000020000000A0F8750FB078000F8128A7CF90000000107800108128A41090000000400000009128A7D09022A4577000000090000000A000000040000000A000000020000000313867106000000030C9A86FA000000090F8750FB078000F8000000090000000A000000020000000900000004135D44F905000108135D45090000000400000009135D8109045489F70000000913867100000000000000000A0000000400000001"
theorem small_5281452_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281452_right_root small_5281452_right_fuel small_5281452_right_count small_5281452_right_encoded = true := by
  decide +kernel
theorem small_5281452_right_covered : CoveredBy scale carrier boxes small_5281452_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281452_right_root small_5281452_right_fuel small_5281452_right_count small_5281452_right_encoded small_5281452_right_checked

theorem cover_5281452 : CoveredBy scale carrier boxes root_5281452 := by
  apply coveredBy_split_literal root_5281452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281453 small_5281452_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281453
  · exact small_5281452_right_covered
#print axioms cover_5281452

def root_5281446 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281446_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281446_left_fuel : Nat := 1
def small_5281446_left_count : Nat := 1
def small_5281446_left_encoded : String := "00000002"
theorem small_5281446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281446_left_root small_5281446_left_fuel small_5281446_left_count small_5281446_left_encoded = true := by
  decide +kernel
theorem small_5281446_left_covered : CoveredBy scale carrier boxes small_5281446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281446_left_root small_5281446_left_fuel small_5281446_left_count small_5281446_left_encoded small_5281446_left_checked

theorem cover_5281446 : CoveredBy scale carrier boxes root_5281446 := by
  apply coveredBy_split_literal root_5281446 small_5281446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281452 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5281446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281452
#print axioms cover_5281446

def root_5281445 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281445_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281445_right_fuel : Nat := 7
def small_5281445_right_count : Nat := 15
def small_5281445_right_encoded : String := "120700FA08A912FD12073D06050000F800000009135D44F905000108000000090000000A000000010000000312070106000000030000000900000002"
theorem small_5281445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281445_right_root small_5281445_right_fuel small_5281445_right_count small_5281445_right_encoded = true := by
  decide +kernel
theorem small_5281445_right_covered : CoveredBy scale carrier boxes small_5281445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281445_right_root small_5281445_right_fuel small_5281445_right_count small_5281445_right_encoded small_5281445_right_checked

theorem cover_5281445 : CoveredBy scale carrier boxes root_5281445 := by
  apply coveredBy_split_literal root_5281445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281446 small_5281445_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281446
  · exact small_5281445_right_covered
#print axioms cover_5281445

def root_5281439 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281439_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281439_left_fuel : Nat := 1
def small_5281439_left_count : Nat := 1
def small_5281439_left_encoded : String := "00000000"
theorem small_5281439_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281439_left_root small_5281439_left_fuel small_5281439_left_count small_5281439_left_encoded = true := by
  decide +kernel
theorem small_5281439_left_covered : CoveredBy scale carrier boxes small_5281439_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281439_left_root small_5281439_left_fuel small_5281439_left_count small_5281439_left_encoded small_5281439_left_checked

theorem cover_5281439 : CoveredBy scale carrier boxes root_5281439 := by
  apply coveredBy_split_literal root_5281439 small_5281439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281445 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5281439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281445
#print axioms cover_5281439

def root_5281233 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281233_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281233_left_fuel : Nat := 25
def small_5281233_left_count : Nat := 97
def small_5281233_left_encoded : String := "12073D0008A912FB12073CFA0000000208A912FD12073D06050000F8135D80F90000000105000108135D45090000000400000009135D81090CFD9BF7000000090F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD078000F800000009128A40F9000000090000000100000003000000090F8750FB0C9A87060F8750FD078000F8128A7CF9000000010780010800000006128A7D090AD3577700000005000000080000000400000006000000030F878CFD00000003078000F8000000090000000600000002000000030F34D10600000003000000090000000900000004135D44F905000108135D45090000000400000009135D81090CFD9BF7000000090F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000060000000900000006000000030F34D1060000000300000009000000090000000400000001000000031207010600000003000000090000000900000000"
theorem small_5281233_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281233_left_root small_5281233_left_fuel small_5281233_left_count small_5281233_left_encoded = true := by
  decide +kernel
theorem small_5281233_left_covered : CoveredBy scale carrier boxes small_5281233_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281233_left_root small_5281233_left_fuel small_5281233_left_count small_5281233_left_encoded small_5281233_left_checked

theorem cover_5281233 : CoveredBy scale carrier boxes root_5281233 := by
  apply coveredBy_split_literal root_5281233 small_5281233_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281439 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5281233_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281439
#print axioms cover_5281233

def root_5281227 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281227_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281227_left_fuel : Nat := 1
def small_5281227_left_count : Nat := 1
def small_5281227_left_encoded : String := "00000004"
theorem small_5281227_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281227_left_root small_5281227_left_fuel small_5281227_left_count small_5281227_left_encoded = true := by
  decide +kernel
theorem small_5281227_left_covered : CoveredBy scale carrier boxes small_5281227_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281227_left_root small_5281227_left_fuel small_5281227_left_count small_5281227_left_encoded small_5281227_left_checked

theorem cover_5281227 : CoveredBy scale carrier boxes root_5281227 := by
  apply coveredBy_split_literal root_5281227 small_5281227_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281233 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5281227_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281233
#print axioms cover_5281227

def root_5281226 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5281226 : CoveredBy scale carrier boxes root_5281226 := by
  apply coveredBy_split_literal root_5281226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1981.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281227
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1981.covered
#print axioms cover_5281226

def root_5281220 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5281220_left_fuel : Nat := 1
def small_5281220_left_count : Nat := 1
def small_5281220_left_encoded : String := "00000003"
theorem small_5281220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5281220_left_root small_5281220_left_fuel small_5281220_left_count small_5281220_left_encoded = true := by
  decide +kernel
theorem small_5281220_left_covered : CoveredBy scale carrier boxes small_5281220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5281220_left_root small_5281220_left_fuel small_5281220_left_count small_5281220_left_encoded small_5281220_left_checked

theorem cover_5281220 : CoveredBy scale carrier boxes root_5281220 := by
  apply coveredBy_split_literal root_5281220 small_5281220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281226 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5281220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281226
#print axioms cover_5281220

def root_5278068 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5278068 : CoveredBy scale carrier boxes root_5278068 := by
  apply coveredBy_split_literal root_5278068 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1978.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5281220 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1978.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5281220
#print axioms cover_5278068

def root_5278062 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278062_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278062_left_fuel : Nat := 1
def small_5278062_left_count : Nat := 1
def small_5278062_left_encoded : String := "00000002"
theorem small_5278062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5278062_left_root small_5278062_left_fuel small_5278062_left_count small_5278062_left_encoded = true := by
  decide +kernel
theorem small_5278062_left_covered : CoveredBy scale carrier boxes small_5278062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5278062_left_root small_5278062_left_fuel small_5278062_left_count small_5278062_left_encoded small_5278062_left_checked

theorem cover_5278062 : CoveredBy scale carrier boxes root_5278062 := by
  apply coveredBy_split_literal root_5278062 small_5278062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5278068 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5278062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5278068
#print axioms cover_5278062

def root_5291258 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291258_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291258_left_fuel : Nat := 18
def small_5291258_left_count : Nat := 129
def small_5291258_left_encoded : String := "1151E8FD0A0001081151E9090000000408A912F712073D00050000F8135D80F900000001050000FA135D80FB000000020500010600000006135D80FD000000030500010800000006000000060000000600000006000000001207010000000000050000F8135D80F900000001050000FA135D80FB00000002050001060000000A135D80FD0000000305000108135D450900000004045489F70000000613867100000000000000000A135D8109045489F71386AD00078000F80000000A128A40F90000000800000001000000001386710000000000078000F80000000A128A40F90000000800000001000000040000000A135D44F9050000FA135D80FB0000000205000106135D44FD0000000800000003135D80FD0000000305000108135D45090000000400000006135D8109045489F7000000050000000800000004135D44FB05000106000000060000000600000002000000011152250908A912F712073D0008A913090000000512073D08050000F8135D80F900000001050000FA135D80FB0000000205000106000000080000000500000005000000050000000400000000120701000000000008A913090000000512073D08050000F8135D80F900000001050000FA135D80FB000000020500010600000008135D80FD00000003045489F7000000050000000800000008135D44F90000000500000001000000040000000400000003"
theorem small_5291258_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5291258_left_root small_5291258_left_fuel small_5291258_left_count small_5291258_left_encoded = true := by
  decide +kernel
theorem small_5291258_left_covered : CoveredBy scale carrier boxes small_5291258_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5291258_left_root small_5291258_left_fuel small_5291258_left_count small_5291258_left_encoded small_5291258_left_checked

theorem cover_5291258 : CoveredBy scale carrier boxes root_5291258 := by
  apply coveredBy_split_literal root_5291258 small_5291258_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1982.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5291258_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1982.covered
#print axioms cover_5291258

def root_5291253 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291253_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5291253_right_fuel : Nat := 1
def small_5291253_right_count : Nat := 1
def small_5291253_right_encoded : String := "00000002"
theorem small_5291253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5291253_right_root small_5291253_right_fuel small_5291253_right_count small_5291253_right_encoded = true := by
  decide +kernel
theorem small_5291253_right_covered : CoveredBy scale carrier boxes small_5291253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5291253_right_root small_5291253_right_fuel small_5291253_right_count small_5291253_right_encoded small_5291253_right_checked

theorem cover_5291253 : CoveredBy scale carrier boxes root_5291253 := by
  apply coveredBy_split_literal root_5291253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5291258 small_5291253_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5291258
  · exact small_5291253_right_covered
#print axioms cover_5291253

def root_5278061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5278061 : CoveredBy scale carrier boxes root_5278061 := by
  apply coveredBy_split_literal root_5278061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5278062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5291253 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5278062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5291253
#print axioms cover_5278061

def root_5278056 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5278056_right_fuel : Nat := 1
def small_5278056_right_count : Nat := 1
def small_5278056_right_encoded : String := "00000001"
theorem small_5278056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5278056_right_root small_5278056_right_fuel small_5278056_right_count small_5278056_right_encoded = true := by
  decide +kernel
theorem small_5278056_right_covered : CoveredBy scale carrier boxes small_5278056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5278056_right_root small_5278056_right_fuel small_5278056_right_count small_5278056_right_encoded small_5278056_right_checked

theorem cover_5278056 : CoveredBy scale carrier boxes root_5278056 := by
  apply coveredBy_split_literal root_5278056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5278061 small_5278056_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5278061
  · exact small_5278056_right_covered
#print axioms cover_5278056

def root_5243118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243118 : CoveredBy scale carrier boxes root_5243118 := by
  apply coveredBy_split_literal root_5243118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5243119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5278056 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5243119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5278056
#print axioms cover_5243118

def root_5243112 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243112_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243112_left_fuel : Nat := 1
def small_5243112_left_count : Nat := 1
def small_5243112_left_encoded : String := "00000000"
theorem small_5243112_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243112_left_root small_5243112_left_fuel small_5243112_left_count small_5243112_left_encoded = true := by
  decide +kernel
theorem small_5243112_left_covered : CoveredBy scale carrier boxes small_5243112_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243112_left_root small_5243112_left_fuel small_5243112_left_count small_5243112_left_encoded small_5243112_left_checked

theorem cover_5243112 : CoveredBy scale carrier boxes root_5243112 := by
  apply coveredBy_split_literal root_5243112 small_5243112_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5243118 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5243112_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5243118
#print axioms cover_5243112

def root_5241104 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5241104 : CoveredBy scale carrier boxes root_5241104 := by
  apply coveredBy_split_literal root_5241104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1965.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5243112 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1965.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5243112
#print axioms cover_5241104

def root_5239052 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5239052 : CoveredBy scale carrier boxes root_5239052 := by
  apply coveredBy_split_literal root_5239052 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1964.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5241104 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1964.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5241104
#print axioms cover_5239052

def root_5197646 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197646 : CoveredBy scale carrier boxes root_5197646 := by
  apply coveredBy_split_literal root_5197646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5197647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5239052 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5197647
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5239052
#print axioms cover_5197646

def root_5294556 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294556 : CoveredBy scale carrier boxes root_5294556 := by
  apply coveredBy_split_literal root_5294556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1983.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1984.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1983.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1984.covered
#print axioms cover_5294556

def root_5294550 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294550_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294550_left_fuel : Nat := 1
def small_5294550_left_count : Nat := 1
def small_5294550_left_encoded : String := "00000001"
theorem small_5294550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5294550_left_root small_5294550_left_fuel small_5294550_left_count small_5294550_left_encoded = true := by
  decide +kernel
theorem small_5294550_left_covered : CoveredBy scale carrier boxes small_5294550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5294550_left_root small_5294550_left_fuel small_5294550_left_count small_5294550_left_encoded small_5294550_left_checked

theorem cover_5294550 : CoveredBy scale carrier boxes root_5294550 := by
  apply coveredBy_split_literal root_5294550 small_5294550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5294556 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5294550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5294556
#print axioms cover_5294550

def root_5294549 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294549_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294549_right_fuel : Nat := 12
def small_5294549_right_count : Nat := 59
def small_5294549_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF00000004000000091151E8FF08A912FB000000060000000900000004115225070A0000FE115224FF0000000408A912FB12073CFA0000000208A9130712070106000000030000000700000007000000091151E8FF08A912FB12073CFA0000000208A913070000000500000007120700FA000000090000000200000004000000031151E8FB0A0001061151E9070000000300000006115225070A0000FE115224FF0000000408A9130700000006000000061151E8FF0000000500000004000000030000000200000001"
theorem small_5294549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5294549_right_root small_5294549_right_fuel small_5294549_right_count small_5294549_right_encoded = true := by
  decide +kernel
theorem small_5294549_right_covered : CoveredBy scale carrier boxes small_5294549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5294549_right_root small_5294549_right_fuel small_5294549_right_count small_5294549_right_encoded small_5294549_right_checked

theorem cover_5294549 : CoveredBy scale carrier boxes root_5294549 := by
  apply coveredBy_split_literal root_5294549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5294550 small_5294549_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5294550
  · exact small_5294549_right_covered
#print axioms cover_5294549

def root_5294544 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294544_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5294544_right_fuel : Nat := 1
def small_5294544_right_count : Nat := 1
def small_5294544_right_encoded : String := "00000000"
theorem small_5294544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5294544_right_root small_5294544_right_fuel small_5294544_right_count small_5294544_right_encoded = true := by
  decide +kernel
theorem small_5294544_right_covered : CoveredBy scale carrier boxes small_5294544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5294544_right_root small_5294544_right_fuel small_5294544_right_count small_5294544_right_encoded small_5294544_right_checked

theorem cover_5294544 : CoveredBy scale carrier boxes root_5294544 := by
  apply coveredBy_split_literal root_5294544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5294549 small_5294544_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5294549
  · exact small_5294544_right_covered
#print axioms cover_5294544

def root_5299104 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5299104 : CoveredBy scale carrier boxes root_5299104 := by
  apply coveredBy_split_literal root_5299104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1985.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1986.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1985.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1986.covered
#print axioms cover_5299104

def root_5299098 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299098_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299098_left_fuel : Nat := 1
def small_5299098_left_count : Nat := 1
def small_5299098_left_encoded : String := "00000001"
theorem small_5299098_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5299098_left_root small_5299098_left_fuel small_5299098_left_count small_5299098_left_encoded = true := by
  decide +kernel
theorem small_5299098_left_covered : CoveredBy scale carrier boxes small_5299098_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5299098_left_root small_5299098_left_fuel small_5299098_left_count small_5299098_left_encoded small_5299098_left_checked

theorem cover_5299098 : CoveredBy scale carrier boxes root_5299098 := by
  apply coveredBy_split_literal root_5299098 small_5299098_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5299104 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5299098_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5299104
#print axioms cover_5299098

def root_5299097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299097_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299097_right_fuel : Nat := 20
def small_5299097_right_count : Nat := 147
def small_5299097_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F7000000091207010000000000000000091151E8FF08A912F712073D0008A912FB00000009000000090000000012070100000000000000000900000004115225070A0000FE115224FF0000000408A912F712073D0008A912FB12073CFA0000000208A913070000000700000009120700FA000000090000000200000000120701000000000008A912FB0000000A0000000A1151E8FF08A912F712073D0008A912FB12073CFA0000000208A913070000000712073D06050000F8135D80F900000001050000FE00000009135D44FF0CFD9BF7000000090F34D1000000000000000009000000040000000900000003120700FA08A91307120701060000000300000009000000090000000200000000120701000000000008A912FB12073CFA0000000208A913070000000712073D06050000F8135D80F900000001050000FE00000007135D44FF045489F7000000090000000A000000040000000900000003120700FA08A913070000000A000000090000000200000004000000031151E8FB0A0001061151E907000000030A0000FE115224FF00000004000000061151E8FF08A912F70000000612070100000000000000000900000004115225070A0000FE115224FF0000000408A912F712073D0008A9130712070106000000030000000700000007000000001207010000000000000000071151E8FF08A912F712073D0008A913070000000500000007000000000000000700000004000000030000000200000001"
theorem small_5299097_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5299097_right_root small_5299097_right_fuel small_5299097_right_count small_5299097_right_encoded = true := by
  decide +kernel
theorem small_5299097_right_covered : CoveredBy scale carrier boxes small_5299097_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5299097_right_root small_5299097_right_fuel small_5299097_right_count small_5299097_right_encoded small_5299097_right_checked

theorem cover_5299097 : CoveredBy scale carrier boxes root_5299097 := by
  apply coveredBy_split_literal root_5299097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5299098 small_5299097_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5299098
  · exact small_5299097_right_covered
#print axioms cover_5299097

def root_5299091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299091_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5299091_left_fuel : Nat := 1
def small_5299091_left_count : Nat := 1
def small_5299091_left_encoded : String := "00000000"
theorem small_5299091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5299091_left_root small_5299091_left_fuel small_5299091_left_count small_5299091_left_encoded = true := by
  decide +kernel
theorem small_5299091_left_covered : CoveredBy scale carrier boxes small_5299091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5299091_left_root small_5299091_left_fuel small_5299091_left_count small_5299091_left_encoded small_5299091_left_checked

theorem cover_5299091 : CoveredBy scale carrier boxes root_5299091 := by
  apply coveredBy_split_literal root_5299091 small_5299091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5299097 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5299091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5299097
#print axioms cover_5299091

def root_5294543 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294543 : CoveredBy scale carrier boxes root_5294543 := by
  apply coveredBy_split_literal root_5294543 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5294544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5299091 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5294544
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5299091
#print axioms cover_5294543

def root_5294542 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294542 : CoveredBy scale carrier boxes root_5294542 := by
  apply coveredBy_split_literal root_5294542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5294543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1987.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5294543
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1987.covered
#print axioms cover_5294542

def root_5317523 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5317523 : CoveredBy scale carrier boxes root_5317523 := by
  apply coveredBy_split_literal root_5317523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1993.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1994.root coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1993.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1994.covered
#print axioms cover_5317523

def root_5317517 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5317517_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5317517_left_fuel : Nat := 1
def small_5317517_left_count : Nat := 1
def small_5317517_left_encoded : String := "00000000"
theorem small_5317517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5317517_left_root small_5317517_left_fuel small_5317517_left_count small_5317517_left_encoded = true := by
  decide +kernel
theorem small_5317517_left_covered : CoveredBy scale carrier boxes small_5317517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5317517_left_root small_5317517_left_fuel small_5317517_left_count small_5317517_left_encoded small_5317517_left_checked

theorem cover_5317517 : CoveredBy scale carrier boxes root_5317517 := by
  apply coveredBy_split_literal root_5317517 small_5317517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5317523 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5317517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5317523
#print axioms cover_5317517

def root_5316577 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5316577_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5316577_left_fuel : Nat := 24
def small_5316577_left_count : Nat := 447
def small_5316577_left_encoded : String := "13E201000B4D43F810804CF9000000010B4D43FA10804CFB000000020DE7CA080E5FD8FF0640010612FF710700000003033F67B70000000A13BBF500000000000BF3E578100928F900000001000000051008ECF90BF3E57A100928FB00000002000000051008ECFB0D4128880EFA10FF00000009000000040000000A000000020000000112FFAD07033F67B713BC31000BF3E578100928F9000000010000000A1008ECF900000008000000010000000013BBF500000000000BF3E578100928F9000000010BF3E57A100928FB000000020D412888000000050000000A1008ECFB0D4128880EFA10FF06E0010612C7E507000000030000000A12C8210702B4D6970000000A0000000600000003000000040000000A000000021008ECF90BF3E57A100928FB000000020D41288800000009000000081008ECFB0D4128880EFA10FF00000009000000040EFA4CFF0000000406E001060000000800000008000000020000000100000003000000040E6014FF00000004064001060000000A12FFAD07033F67B70000000813BBF500000000000DAED87F0E9661080BF3E5780000000A00000008000000040000000800000003108010FB0DE7CA080E5FD8FF0640010612FF710700000003033F67B70000000A13BBF500000000000BF3E5780000000A1008ECF90AA6A27A10EDACFB000000020D4128880EFA10FF05A001060000000A133171070000000A00000003000000040000000A10ED70FB0000000A000000020000000112FFAD07033F67B713BC31000BF3E578100928F9000000010000000A1008ECF90AA6A27A10EDACFB000000020D4128880EFA10FF00000009000000040000000A10ED70FB0000000A00000002000000010000000013BBF500000000000BF3E578100928F9000000010AA6A27A10EDACFB000000020D4128880EFA10FF06E001060000000A00000007000000040000000A10ED70FB0D412888000000070000000A000000021008ECF90AA6A27A10EDACFB000000020D4128880EFA10FF06E0010612C7E5070000000302B4D697000000070000000700000007000000040EFA4CFF0000000406E0010612C7E507000000030000000A12C8210702B4D6970000000813D0D100000000000BA094B8104604F90000000100000007000000070000000310ED70FB0D412888000000070EFA4CFF0000000406E001060000000A00000007000000020000000100000003000000040E6014FF00000004064001060000000A12FFAD07033F67B70000000A13BBF500000000000DAED87F0E9661080BF3E5780000000A1008ECF90AA6A27A0000000A0000000A00000001000000040000000A0000000300000002108010F90B4D43FA10804CFB000000020DE7CA080E5FD8FF0640010612FF710700000003033F67B70000000813BBF500000000000AA6A27810EDACF9000000010BF3E57A000000091008ECFB00000009000000020000000912FFAD07033F67B70000000813BBF500000000000AA6A27810EDACF9000000010BF3E57A000000091008ECFB0D4128880000000900000008000000020000000900000003000000040E6014FF00000004064001060000000800000008108010FB0DE7CA080E5FD8FF0640010612FF710700000003033F67B713BC31000AA6A27810EDACF9000000010AA6A27A000000090000000A000000090000000013BBF500000000000AA6A27810EDACF9000000010AA6A27A10EDACFB000000020D412888000000090EFA4CFF0000000405A001060000000A1331710702B4D6970000000813D0D100000000000AF9F33800000009000000080000000310ED70FB0D4128880EFA10FF00000009000000040000000A0000000210ED70F90AA6A27A0000000910ED70FB00000009000000020000000112FFAD07033F67B713BC31000AA6A27810EDACF9000000010AA6A27A10EDACFB000000020000000910ED70FB0D41288800000007000000050000000210ED70F900000009000000010000000013BBF500000000000AA6A27810EDACF9000000010AA6A27A10EDACFB000000020D412888000000090EFA4CFF0000000406E001060000000812C82107000000080000000310ED70FB0D412888000000070EFA4CFF0000000406E0010612C7E5070000000302B4D6970000000700000007000000070000000210ED70F90AA6A27A0000000910ED70FB0D4128880000000700000005000000020000000100000003000000040E6014FF000000040640010612FF710700000003033F67B70000000813BBF500000000000DAED87F0E9661080AA6A2780000000A10ED70F90000000800000001000000040E962508000000040000000812FFAD07033F67B70000000813BBF500000000000DAED87F0E9661080AA6A27810EDACF9000000010AA6A27A0000000810ED70FB06E0010600000008000000050000000200000008000000040E962508000000040000000800000003000000020000000100000000"
theorem small_5316577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5316577_left_root small_5316577_left_fuel small_5316577_left_count small_5316577_left_encoded = true := by
  decide +kernel
theorem small_5316577_left_covered : CoveredBy scale carrier boxes small_5316577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5316577_left_root small_5316577_left_fuel small_5316577_left_count small_5316577_left_encoded small_5316577_left_checked

theorem cover_5316577 : CoveredBy scale carrier boxes root_5316577 := by
  apply coveredBy_split_literal root_5316577 small_5316577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5317517 coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_5316577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5317517
#print axioms cover_5316577

def root_5316571 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5316571_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5316571_left_fuel : Nat := 1
def small_5316571_left_count : Nat := 1
def small_5316571_left_encoded : String := "00000003"
theorem small_5316571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5316571_left_root small_5316571_left_fuel small_5316571_left_count small_5316571_left_encoded = true := by
  decide +kernel
theorem small_5316571_left_covered : CoveredBy scale carrier boxes small_5316571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5316571_left_root small_5316571_left_fuel small_5316571_left_count small_5316571_left_encoded small_5316571_left_checked

theorem cover_5316571 : CoveredBy scale carrier boxes root_5316571 := by
  apply coveredBy_split_literal root_5316571 small_5316571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5316577 coord3 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_5316571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5316577
#print axioms cover_5316571

def root_5316570 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5316570 : CoveredBy scale carrier boxes root_5316570 := by
  apply coveredBy_split_literal root_5316570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5316571 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1995.root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5316571
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1995.covered
#print axioms cover_5316570

def root_5316564 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5316564_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5316564_left_fuel : Nat := 1
def small_5316564_left_count : Nat := 1
def small_5316564_left_encoded : String := "00000004"
theorem small_5316564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5316564_left_root small_5316564_left_fuel small_5316564_left_count small_5316564_left_encoded = true := by
  decide +kernel
theorem small_5316564_left_covered : CoveredBy scale carrier boxes small_5316564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5316564_left_root small_5316564_left_fuel small_5316564_left_count small_5316564_left_encoded small_5316564_left_checked

theorem cover_5316564 : CoveredBy scale carrier boxes root_5316564 := by
  apply coveredBy_split_literal root_5316564 small_5316564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5316570 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_5316564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5316570
#print axioms cover_5316564

def root_5315574 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5315574_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5315574_left_fuel : Nat := 23
def small_5315574_left_count : Nat := 473
def small_5315574_left_encoded : String := "0F8750FF07800106128A410700000003022A457713E201000B4D43F810804CF9000000010B4D43FA10804CFB000000020B4D44080000000910804CFF000000040640010612FF710700000003033F67B70000000913BBF500000000000BF3E578000000050000000912FFAD07033F67B70000000913BBF500000000000BF3E578100928F9000000010BF3E57A000000091008ECFB0BF3E58800000007100928FF0000000400000009000000020000000900000003108010FB0B4D4408108010FF000000090000000410804CFF000000040640010612FF710700000003033F67B713BC31000BF3E578100928F9000000010000000A000000090000000013BBF500000000000BF3E578100928F9000000010AA6A27A10EDACFB000000020BF3E588000000050000000A10ED70FB0BF3E588000000070000000A000000021008ECF90AA6A27A0000000910ED70FB00000009000000020000000112FFAD07033F67B713BC31000BF3E578100928F90000000100000007000000070000000013BBF500000000000BF3E578100928F900000001000000071008ECF90AA6A27A0000000700000007000000010000000300000002108010F90B4D43FA00000009108010FB0000000900000002000000010000000013E1C500000000000B4D43F810804CF9000000010B4D43FA10804CFB000000020B4D4408108010FF0640010600000005000000090000000410804CFF000000040640010612FF7107000000030000000512FFAD070115233713F895000BF3E578100928F9000000010BF3E57A000000051008ECFB0BF3E58800000005100928FF0000000400000005000000021008ECF90BF3E57A000000091008ECFB0000000900000002000000010000000013F85900000000000BF3E578000000051008ECF90BF3E57A000000051008ECFB0BF3E5880000000500000006000000020000000100000003108010FB0B4D4408108010FF0640010612FF710700000003011523370000000900000007000000070000000410804CFF000000040640010612FF7107000000030115233713F895000BF3E578100928F9000000010AA6A27A10EDACFB000000020000000510ED70FB0BF3E58800000007100928FF0000000400000007000000021008ECF90AA6A27A0000000910ED70FB0BF3E58800000007100928FF000000040000000700000002000000010000000013F85900000000000BF3E578100928F900000001000000051008ECF90AA6A27A10EDACFB000000020000000510ED70FB0BF3E58800000007100928FF0000000400000007000000020000000112FFAD070115233713F895000BF3E578100928F9000000010AA6A27A00000007000000071008ECF90AA6A27A0000000700000007000000010000000013F85900000000000BF3E578100928F9000000010AA6A27A00000007000000071008ECF90AA6A27A0000000700000007000000010000000300000002108010F90B4D43FA10804CFB000000020B4D44080000000910804CFF000000040640010612FF7107000000030000000900000009108010FB0B4D44080000000910804CFF000000040640010612FF710700000003011523370000000913F85900000000000AA6A27810EDACF9000000010AA6A27A0000000910ED70FB0BF3E58800000007100928FF0000000405A001060000000700000007000000020000000912FFAD070115233713F895000AA6A27810EDACF9000000010AA6A27A0000000700000007000000090000000013F85900000000000AA6A27810EDACF9000000010AA6A27A00000007000000070000000A000000030000000200000001128A7D07022A457713E201000B4D43F810804CF9000000010B4D43FA10804CFB000000020B4D4408108010FF000000090000000410804CFF0000000408C0010611FBE90700000003033F67B713BC31000BF3E578100928F9000000010BF3E57A0000000900000007000000090000000013BBF500000000000BF3E578100928F9000000010BF3E57A00000009000000071008ECF9000000090000000111FC2507033F67B7000000070000000700000003108010FB0B4D44080000000710804CFF0000000408C00106000000070000000700000002108010F90B4D43FA10804CFB000000020B4D44080000000910804CFF0000000400000009108010FB0B4D44080000000710804CFF0000000408C00106000000070000000500000002000000010000000013E1C500000000000B4D43F810804CF9000000010B4D43FA10804CFB000000020B4D4408108010FF08C0010611FBE90700000003011523370000000700000006000000060000000410804CFF0000000408C0010611FBE907000000030115233713F895000BF3E578000000061008ECF90BF3E57A000000061008ECFB000000060000000200000001000000000000000600000006108010FB0B4D44080000000710804CFF0000000408C00106000000070000000700000002108010F90B4D43FA10804CFB000000020B4D44080000000910804CFF0000000408C0010611FBE907000000030000000A0000000A108010FB0B4D44080000000710804CFF0000000408C00106000000070000000700000002000000010000000300000004"
theorem small_5315574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5315574_left_root small_5315574_left_fuel small_5315574_left_count small_5315574_left_encoded = true := by
  decide +kernel
theorem small_5315574_left_covered : CoveredBy scale carrier boxes small_5315574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5315574_left_root small_5315574_left_fuel small_5315574_left_count small_5315574_left_encoded small_5315574_left_checked

theorem cover_5315574 : CoveredBy scale carrier boxes root_5315574 := by
  apply coveredBy_split_literal root_5315574 small_5315574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5316564 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5315574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5316564
#print axioms cover_5315574

def root_5315569 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5315569_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5315569_right_fuel : Nat := 1
def small_5315569_right_count : Nat := 1
def small_5315569_right_encoded : String := "00000002"
theorem small_5315569_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5315569_right_root small_5315569_right_fuel small_5315569_right_count small_5315569_right_encoded = true := by
  decide +kernel
theorem small_5315569_right_covered : CoveredBy scale carrier boxes small_5315569_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5315569_right_root small_5315569_right_fuel small_5315569_right_count small_5315569_right_encoded small_5315569_right_checked

theorem cover_5315569 : CoveredBy scale carrier boxes root_5315569 := by
  apply coveredBy_split_literal root_5315569 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5315574 small_5315569_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5315574
  · exact small_5315569_right_covered
#print axioms cover_5315569

def root_5314931 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5314931_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5314931_left_fuel : Nat := 20
def small_5314931_left_count : Nat := 297
def small_5314931_left_encoded : String := "0F878CFB000000020C9A87080F8750FF07800106128A410700000003022A457713E201000B4D43F810804CF9000000010DE7C9FA000000090E5FD8FB0B4D44080000000910804CFF000000040000000900000002000000090000000013E1C500000000000B4D43F810804CF90000000100000005108010F90DE7C9FA000000090E5FD8FB000000090000000200000001128A7D07022A457713E201000B4D43F810804CF9000000010DE7C9FA0E6014FB000000020B4D44080000000910804CFF00000004000000090E5FD8FB0B4D44080000000910804CFF0000000408C0010611FBE90700000003033F67B70000000913BBF500000000000000000911FC2507033F67B700000009000000060000000300000002108010F900000009000000010000000013E1C500000000000B4D43F810804CF9000000010DE7C9FA0E6014FB00000002000000060E5FD8FB0B4D4408108010FF00000006000000040000000600000002108010F90DE7C9FA000000090E5FD8FB0000000A000000020000000100000003000000040F878CFF0000000407800106128A410700000003022A457713E201000B4D43F810804CF9000000010DE7C9FA0E6014FB00000002000000080E5FD8FB0DE7CA080E5FD8FF0640010612FF7107000000030000000512FFAD07033F67B70000000813BBF500000000000BF3E578000000050000000800000003000000040E6014FF000000040000000800000002108010F90DE7C9FA000000080E5FD8FB0DE7CA080E5FD8FF00000009000000040000000800000002000000010000000013E1C500000000000B4D43F810804CF9000000010DE7C9FA000000050E5FD8FB0DE7CA08000000050E6014FF00000004064001060000000512FFAD070115233700000008000000050000000300000002108010F90DE7C9FA0E6014FB000000020DE7CA0800000005000000080E5FD8FB0DE7CA080E5FD8FF0640010612FF71070000000301152337000000090000000512FFAD070115233713F895000AA6A27810EDACF90000000100000008000000080000000013F85900000000000AA6A2780000000610ED70F9000000090000000100000003000000040E6014FF00000004064001060000000812FFAD0700000008000000030000000200000001128A7D07022A457713E201000B4D43F810804CF9000000010DE7C9FA0E6014FB00000002000000080E5FD8FB0DE7CA080E5FD8FF08C0010611FBE90700000003033F67B70000000813BBF500000000000BF3E578000000060000000811FC25070000000800000003000000040E6014FF000000040000000800000002108010F90DE7C9FA000000080E5FD8FB0DE7CA080E5FD8FF00000008000000040000000800000002000000010000000013E1C500000000000B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0DE7CA080E5FD8FF00000006000000040000000600000002108010F90DE7C9FA0E6014FB000000020DE7CA080E5FD8FF0000000600000004000000060E5FD8FB0DE7CA080E5FD8FF08C0010611FBE907000000030115233713F895000AA6A2780000000600000008000000000000000600000006000000040E6014FF0000000408C001060000000800000006000000020000000100000003"
theorem small_5314931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5314931_left_root small_5314931_left_fuel small_5314931_left_count small_5314931_left_encoded = true := by
  decide +kernel
theorem small_5314931_left_covered : CoveredBy scale carrier boxes small_5314931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5314931_left_root small_5314931_left_fuel small_5314931_left_count small_5314931_left_encoded small_5314931_left_checked

theorem cover_5314931 : CoveredBy scale carrier boxes root_5314931 := by
  apply coveredBy_split_literal root_5314931 small_5314931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5315569 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5314931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5315569
#print axioms cover_5314931

def root_5314926 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5314926_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5314926_right_fuel : Nat := 1
def small_5314926_right_count : Nat := 1
def small_5314926_right_encoded : String := "00000001"
theorem small_5314926_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5314926_right_root small_5314926_right_fuel small_5314926_right_count small_5314926_right_encoded = true := by
  decide +kernel
theorem small_5314926_right_covered : CoveredBy scale carrier boxes small_5314926_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5314926_right_root small_5314926_right_fuel small_5314926_right_count small_5314926_right_encoded small_5314926_right_checked

theorem cover_5314926 : CoveredBy scale carrier boxes root_5314926 := by
  apply coveredBy_split_literal root_5314926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5314931 small_5314926_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5314931
  · exact small_5314926_right_covered
#print axioms cover_5314926

def root_5313234 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5313234 : CoveredBy scale carrier boxes root_5313234 := by
  apply coveredBy_split_literal root_5313234 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1992.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5314926 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1992.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5314926
#print axioms cover_5313234

def root_5313229 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313229_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313229_right_fuel : Nat := 1
def small_5313229_right_count : Nat := 1
def small_5313229_right_encoded : String := "00000004"
theorem small_5313229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313229_right_root small_5313229_right_fuel small_5313229_right_count small_5313229_right_encoded = true := by
  decide +kernel
theorem small_5313229_right_covered : CoveredBy scale carrier boxes small_5313229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313229_right_root small_5313229_right_fuel small_5313229_right_count small_5313229_right_encoded small_5313229_right_checked

theorem cover_5313229 : CoveredBy scale carrier boxes root_5313229 := by
  apply coveredBy_split_literal root_5313229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313234 small_5313229_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313234
  · exact small_5313229_right_covered
#print axioms cover_5313229

def root_5313228 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313228_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313228_right_fuel : Nat := 29
def small_5313228_right_count : Nat := 445
def small_5313228_right_encoded : String := "0F34D108000000040C9A86F80F878CF9000000010C9A86FA0F878CFB0000000207800106128A410700000003022A45770000000A00000005128A7D07022A457713E201000AD3577F10D13D080DE7C9F80E6014F9000000010000000A000000080000000410D1010800000004000000080000000013E1C500000000000AD3577F10D13D080DE7C9F8000000060E5FD8F900000006000000010000000410D10108000000040DE7C9F80000000600000008000000030F8750FB07800106128A410700000003022A45770000000A13E1C500000000000AD3577F10D13D080DE7C9F80000000A0E5FD8F90B4D43FA0000000A0000000900000001000000040000000A128A7D07022A457713E201000AD3577F10D13D080DE7C9F80000000A0E5FD8F90B4D43FA0000000A108010FB0000000A00000002000000010000000410D10108000000040000000A0000000013E1C500000000000AD3577F10D13D080DE7C9F80E6014F900000001000000090E5FD8F90B4D43FA0000000600000009000000010000000410D10108000000040000000900000003000000020F8750F90C9A86FA0F878CFB0000000207800106128A410700000003022A45770000000813E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010DE7C9FA000000050E5FD8FB06400106000000050000000800000002000000080000000410D101080000000400000008128A7D07022A45770000000813E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0000000600000002000000080000000410D101080000000400000008000000030F8750FB07800106128A410700000003022A457713E201000AD3577F10D13D080B4D43F810804CF9000000010000000A108010F90B4D43FA00000008108010FB06400106000000080000000800000002000000010000000410D1010800000004000000080000000013E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010B4D43FA10804CFB000000020640010612FF7107000000030000000A12FFAD07011523370000000813F85900000000000BE879BF0000000610117108000000040000000600000003108010FB064001060000000A12FFAD07011523370000000A000000090000000300000002108010F90B4D43FA10804CFB000000020640010612FF710700000003011523370000000813F85900000000000BE879BF000000080000000812FFAD070000000800000003108010FB0640010612FF710700000003011523370000000A13F85900000000000BE879BF1011AD080AA6A27810EDACF9000000010AA6A27A0000000A0000000910ED70F90AA6A27A0000000810ED70FB05A0010613313507000000030000000A13317107008A921700000008000000090000000300000002000000010000000410117108000000040000000A12FFAD070115233713F895000BE879BF1011AD080AA6A27810EDACF900000001000000080000000800000004000000080000000013F85900000000000BE879BF1011AD080AA6A27810EDACF9000000010AA6A27A000000060000000910ED70F90AA6A27A0000000810ED70FB06E001060000000812C8210700000008000000030000000200000001000000041011710800000004000000080000000300000002000000010000000410D10108000000040B4D43F810804CF9000000010000000A108010F90B4D43FA00000008108010FB0640010600000008000000080000000200000001128A7D07022A457713E201000AD3577F10D13D080B4D43F810804CF9000000010B4D43FA10804CFB0000000200000008108010FB08C0010611FBE907000000030000000A11FC2507033F67B70000000813BBF500000000000BE879BF00000008000000080000000300000002108010F90B4D43FA00000008108010FB08C00106000000080000000500000002000000010000000410D1010800000004000000080000000013E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010B4D43FA10804CFB0000000208C0010611FBE9070000000301152337000000080000000600000006108010FB08C0010611FBE907000000030115233713F895000BE879BF1011AD080BF3E578000000061008ECF900000006000000010000000410117108000000040000000800000000000000060000000600000002108010F90B4D43FA10804CFB0000000208C001060000000800000006108010FB08C0010611FBE907000000030115233713F895000BE879BF00000008000000080000000013F85900000000000BE879BF0000000610117108000000040000000611FC25070115233700000005000000060000000300000002000000010000000410D10108000000040B4D43F810804CF9000000010B4D43FA0000000600000009108010F90000000800000001000000030000000200000001"
theorem small_5313228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313228_right_root small_5313228_right_fuel small_5313228_right_count small_5313228_right_encoded = true := by
  decide +kernel
theorem small_5313228_right_covered : CoveredBy scale carrier boxes small_5313228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313228_right_root small_5313228_right_fuel small_5313228_right_count small_5313228_right_encoded small_5313228_right_checked

theorem cover_5313228 : CoveredBy scale carrier boxes root_5313228 := by
  apply coveredBy_split_literal root_5313228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313229 small_5313228_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313229
  · exact small_5313228_right_covered
#print axioms cover_5313228

def root_5313222 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313222_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313222_left_fuel : Nat := 1
def small_5313222_left_count : Nat := 1
def small_5313222_left_encoded : String := "00000002"
theorem small_5313222_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313222_left_root small_5313222_left_fuel small_5313222_left_count small_5313222_left_encoded = true := by
  decide +kernel
theorem small_5313222_left_covered : CoveredBy scale carrier boxes small_5313222_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313222_left_root small_5313222_left_fuel small_5313222_left_count small_5313222_left_encoded small_5313222_left_checked

theorem cover_5313222 : CoveredBy scale carrier boxes root_5313222 := by
  apply coveredBy_split_literal root_5313222 small_5313222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313228 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5313222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313228
#print axioms cover_5313222

def root_5313221 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313221_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313221_right_fuel : Nat := 15
def small_5313221_right_count : Nat := 75
def small_5313221_right_encoded : String := "0F34D0FA0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000050F878CFF00000004000000050F8750F90C9A87080F8750FF07800106128A41070000000300000005128A7D07022A457713E201000AD3577B00000009000000080000000013E1C500000000000AD3577B10D13CFA000000020B4D43F800000005000000090000000500000003000000040F878CFF0000000407800106128A410700000003022A45770000000800000005128A7D07022A45770000000813E1C500000000000AD3577B10D13CFA000000020B4D43F80000000600000008000000080000000300000001000000040F34D108000000040C9A86F80F878CF9000000010780010600000005128A7D07022A45770000000800000005000000030F8750F9000000080000000100000002"
theorem small_5313221_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313221_right_root small_5313221_right_fuel small_5313221_right_count small_5313221_right_encoded = true := by
  decide +kernel
theorem small_5313221_right_covered : CoveredBy scale carrier boxes small_5313221_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313221_right_root small_5313221_right_fuel small_5313221_right_count small_5313221_right_encoded small_5313221_right_checked

theorem cover_5313221 : CoveredBy scale carrier boxes root_5313221 := by
  apply coveredBy_split_literal root_5313221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313222 small_5313221_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313222
  · exact small_5313221_right_covered
#print axioms cover_5313221

def root_5313215 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313215_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313215_left_fuel : Nat := 1
def small_5313215_left_count : Nat := 1
def small_5313215_left_encoded : String := "00000001"
theorem small_5313215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313215_left_root small_5313215_left_fuel small_5313215_left_count small_5313215_left_encoded = true := by
  decide +kernel
theorem small_5313215_left_covered : CoveredBy scale carrier boxes small_5313215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313215_left_root small_5313215_left_fuel small_5313215_left_count small_5313215_left_encoded small_5313215_left_checked

theorem cover_5313215 : CoveredBy scale carrier boxes root_5313215 := by
  apply coveredBy_split_literal root_5313215 small_5313215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313221 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5313215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313221
#print axioms cover_5313215

def root_5313214 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313214_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313214_right_fuel : Nat := 21
def small_5313214_right_count : Nat := 95
def small_5313214_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A8708000000050F878CFF00000004000000050F8750FB0C9A87080F8750FF07800106128A41070000000300000005128A7D07022A457713E201000AD3577910D13CF8000000010B4D43FA10804CFB000000020B4D44080000000510804CFF0000000400000005108010FB0B4D44080000000710804CFF0000000408C0010600000007000000070000000210D100F800000005000000010000000013E1C500000000000AD3577910D13CF8000000010B4D43FA00000005108010FB0B4D44080000000500000006000000020000000500000003000000040F878CFF0000000407800106128A4107000000030000000A128A7D07022A45770000000A13E1C500000000000AD3577910D13CF8000000010B4D43FA0000000600000009000000090000000300000002000000040F34D108000000040C9A86FA0000000A0F8750FB0000000A000000020F34D0FA000000050000000200000001"
theorem small_5313214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313214_right_root small_5313214_right_fuel small_5313214_right_count small_5313214_right_encoded = true := by
  decide +kernel
theorem small_5313214_right_covered : CoveredBy scale carrier boxes small_5313214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313214_right_root small_5313214_right_fuel small_5313214_right_count small_5313214_right_encoded small_5313214_right_checked

theorem cover_5313214 : CoveredBy scale carrier boxes root_5313214 := by
  apply coveredBy_split_literal root_5313214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313215 small_5313214_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313215
  · exact small_5313214_right_covered
#print axioms cover_5313214

def root_5313208 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313208_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313208_left_fuel : Nat := 1
def small_5313208_left_count : Nat := 1
def small_5313208_left_encoded : String := "00000000"
theorem small_5313208_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313208_left_root small_5313208_left_fuel small_5313208_left_count small_5313208_left_encoded = true := by
  decide +kernel
theorem small_5313208_left_covered : CoveredBy scale carrier boxes small_5313208_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313208_left_root small_5313208_left_fuel small_5313208_left_count small_5313208_left_encoded small_5313208_left_checked

theorem cover_5313208 : CoveredBy scale carrier boxes root_5313208 := by
  apply coveredBy_split_literal root_5313208 small_5313208_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313214 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5313208_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313214
#print axioms cover_5313208

def root_5311496 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5311496 : CoveredBy scale carrier boxes root_5311496 := by
  apply coveredBy_split_literal root_5311496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1991.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5313208 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1991.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5313208
#print axioms cover_5311496

def root_5311491 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5311491_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5311491_right_fuel : Nat := 1
def small_5311491_right_count : Nat := 1
def small_5311491_right_encoded : String := "00000003"
theorem small_5311491_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5311491_right_root small_5311491_right_fuel small_5311491_right_count small_5311491_right_encoded = true := by
  decide +kernel
theorem small_5311491_right_covered : CoveredBy scale carrier boxes small_5311491_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5311491_right_root small_5311491_right_fuel small_5311491_right_count small_5311491_right_encoded small_5311491_right_checked

theorem cover_5311491 : CoveredBy scale carrier boxes root_5311491 := by
  apply coveredBy_split_literal root_5311491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5311496 small_5311491_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5311496
  · exact small_5311491_right_covered
#print axioms cover_5311491

def root_5309869 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5309869 : CoveredBy scale carrier boxes root_5309869 := by
  apply coveredBy_split_literal root_5309869 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1990.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5311491 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1990.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5311491
#print axioms cover_5309869

def root_5309864 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309864_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309864_right_fuel : Nat := 1
def small_5309864_right_count : Nat := 1
def small_5309864_right_encoded : String := "00000004"
theorem small_5309864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309864_right_root small_5309864_right_fuel small_5309864_right_count small_5309864_right_encoded = true := by
  decide +kernel
theorem small_5309864_right_covered : CoveredBy scale carrier boxes small_5309864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309864_right_root small_5309864_right_fuel small_5309864_right_count small_5309864_right_encoded small_5309864_right_checked

theorem cover_5309864 : CoveredBy scale carrier boxes root_5309864 := by
  apply coveredBy_split_literal root_5309864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309869 small_5309864_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309869
  · exact small_5309864_right_covered
#print axioms cover_5309864

def root_5309863 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309863_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309863_right_fuel : Nat := 21
def small_5309863_right_count : Nat := 149
def small_5309863_right_encoded : String := "120701080000000405000106135D450700000003045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0000000A000000080000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80000000A0F8750F90C9A86FA000000070F8750FB0000000A0000000200000001000000040000000A0F34D0FA00000005000000020F34D0F80000000500000001135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80000000A000000080000000413867108000000040000000A0F34D0FA00000008000000020F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB00000002078001060000000A128A7D07022A45770000000813E1C50000000000067ECE7F0000000800000008000000030F8750FB0000000A000000020F8750F90C9A86FA0F878CFB00000002000000080F8750FB07800106128A4107000000030000000A128A7D07022A45770000000813E1C50000000000067ECE7F00000008000000080000000300000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FA0000000A0000000A0F8750F90C9A86FA000000080F8750FB07800106000000080000000800000002000000010F34D0FA045489FF0000000800000008000000020F34D0F80CFD9BFB0000000A0F34D0FA00000005000000020000000100000003"
theorem small_5309863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309863_right_root small_5309863_right_fuel small_5309863_right_count small_5309863_right_encoded = true := by
  decide +kernel
theorem small_5309863_right_covered : CoveredBy scale carrier boxes small_5309863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309863_right_root small_5309863_right_fuel small_5309863_right_count small_5309863_right_encoded small_5309863_right_checked

theorem cover_5309863 : CoveredBy scale carrier boxes root_5309863 := by
  apply coveredBy_split_literal root_5309863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309864 small_5309863_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309864
  · exact small_5309863_right_covered
#print axioms cover_5309863

def root_5309857 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309857_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309857_left_fuel : Nat := 1
def small_5309857_left_count : Nat := 1
def small_5309857_left_encoded : String := "00000002"
theorem small_5309857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309857_left_root small_5309857_left_fuel small_5309857_left_count small_5309857_left_encoded = true := by
  decide +kernel
theorem small_5309857_left_covered : CoveredBy scale carrier boxes small_5309857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309857_left_root small_5309857_left_fuel small_5309857_left_count small_5309857_left_encoded small_5309857_left_checked

theorem cover_5309857 : CoveredBy scale carrier boxes root_5309857 := by
  apply coveredBy_split_literal root_5309857 small_5309857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309863 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5309857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309863
#print axioms cover_5309857

def root_5309856 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309856_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309856_right_fuel : Nat := 15
def small_5309856_right_count : Nat := 55
def small_5309856_right_encoded : String := "120700FA08A912FF12073D0805000106135D45070000000300000005135D8107045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFF0F350D080C9A86F800000005000000080000000400000008000000080F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFF0F350D080000000500000004000000050000000500000005000000030000000412070108000000040500010600000005135D8107045489F700000008000000050000000300000002"
theorem small_5309856_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309856_right_root small_5309856_right_fuel small_5309856_right_count small_5309856_right_encoded = true := by
  decide +kernel
theorem small_5309856_right_covered : CoveredBy scale carrier boxes small_5309856_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309856_right_root small_5309856_right_fuel small_5309856_right_count small_5309856_right_encoded small_5309856_right_checked

theorem cover_5309856 : CoveredBy scale carrier boxes root_5309856 := by
  apply coveredBy_split_literal root_5309856 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309857 small_5309856_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309857
  · exact small_5309856_right_covered
#print axioms cover_5309856

def root_5309850 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309850_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309850_left_fuel : Nat := 1
def small_5309850_left_count : Nat := 1
def small_5309850_left_encoded : String := "00000001"
theorem small_5309850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309850_left_root small_5309850_left_fuel small_5309850_left_count small_5309850_left_encoded = true := by
  decide +kernel
theorem small_5309850_left_covered : CoveredBy scale carrier boxes small_5309850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309850_left_root small_5309850_left_fuel small_5309850_left_count small_5309850_left_encoded small_5309850_left_checked

theorem cover_5309850 : CoveredBy scale carrier boxes root_5309850 := by
  apply coveredBy_split_literal root_5309850 small_5309850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309856 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5309850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309856
#print axioms cover_5309850

def root_5309849 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309849_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309849_right_fuel : Nat := 16
def small_5309849_right_count : Nat := 47
def small_5309849_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FF12073D0805000106135D45070000000300000005135D8107045489F71386AD00045489F91386ACF8000000010CFD9BFB0000000A0F34D0FA00000005000000020000000A000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFF0F350D080000000500000004000000050000000500000005000000030000000412070108000000040000000A120700FA000000050000000200000001"
theorem small_5309849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309849_right_root small_5309849_right_fuel small_5309849_right_count small_5309849_right_encoded = true := by
  decide +kernel
theorem small_5309849_right_covered : CoveredBy scale carrier boxes small_5309849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309849_right_root small_5309849_right_fuel small_5309849_right_count small_5309849_right_encoded small_5309849_right_checked

theorem cover_5309849 : CoveredBy scale carrier boxes root_5309849 := by
  apply coveredBy_split_literal root_5309849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309850 small_5309849_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309850
  · exact small_5309849_right_covered
#print axioms cover_5309849

def root_5309843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309843_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309843_left_fuel : Nat := 1
def small_5309843_left_count : Nat := 1
def small_5309843_left_encoded : String := "00000000"
theorem small_5309843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309843_left_root small_5309843_left_fuel small_5309843_left_count small_5309843_left_encoded = true := by
  decide +kernel
theorem small_5309843_left_covered : CoveredBy scale carrier boxes small_5309843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309843_left_root small_5309843_left_fuel small_5309843_left_count small_5309843_left_encoded small_5309843_left_checked

theorem cover_5309843 : CoveredBy scale carrier boxes root_5309843 := by
  apply coveredBy_split_literal root_5309843 small_5309843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309849 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5309843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309849
#print axioms cover_5309843

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131

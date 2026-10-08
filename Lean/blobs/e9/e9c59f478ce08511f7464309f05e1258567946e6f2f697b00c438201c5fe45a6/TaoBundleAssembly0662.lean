import TaoBundleAssembly0661
import TaoBundleChunkBatch0915
import TaoBundleChunkBatch0916
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662
def root_9760492 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760492_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760492_left_fuel : Nat := 25
def small_9760492_left_count : Nat := 193
def small_9760492_left_encoded : String := "120701040000000208A91307120700FC08A913090000000512073CFE000000040500010200000005135D80F90000000104548A0100000005000000090000000312073CFC0000000308A91309120700FE000000080000000412073CFE0000000405000102135D44F904548A01138671000000000004548A0513867104000000020CFD9C070F34D0FC0000000500000003000000081386AD040CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86FC000000080F8751070000000300000008000000021386AD0004548A051386710400000002000000081386AD040CFD9C070F34D0FC000000050000000300000008000000020000000000000001135D80F90000000104548A01138671000000000004548A0513867104000000020CFD9C070F34D0FC0CFD9C09000000050000000A000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000080000000400000009000000030F875107000000030C9A86FE000000080F875109000000040780010200000008000000091386AD040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE0000000400000009000000030F350CFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090780010200000008128A7CF900000001022A458113E1C50000000000067ECE85000000090000000900000008000000040F8751090000000400000009000000030F875107000000030C9A86FE0F878D0900000008000000040F8751090000000407800102128A40F90000000800000001128A7CF900000001022A458113E1C50000000000067ECE85000000090000000900000009000000021386AD0004548A0513867104000000020CFD9C070F34D0FC0000000900000003000000081386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86FC000000080F87510700000003000000080000000200000000"
theorem small_9760492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760492_left_root small_9760492_left_fuel small_9760492_left_count small_9760492_left_encoded = true := by
  decide +kernel
theorem small_9760492_left_covered : CoveredBy scale carrier boxes small_9760492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760492_left_root small_9760492_left_fuel small_9760492_left_count small_9760492_left_encoded small_9760492_left_checked

theorem cover_9760492 : CoveredBy scale carrier boxes root_9760492 := by
  apply coveredBy_split_literal root_9760492 small_9760492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9760910 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9760492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9760910
#print axioms cover_9760492

def root_9760486 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760486_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760486_left_fuel : Nat := 1
def small_9760486_left_count : Nat := 1
def small_9760486_left_encoded : String := "00000000"
theorem small_9760486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760486_left_root small_9760486_left_fuel small_9760486_left_count small_9760486_left_encoded = true := by
  decide +kernel
theorem small_9760486_left_covered : CoveredBy scale carrier boxes small_9760486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760486_left_root small_9760486_left_fuel small_9760486_left_count small_9760486_left_encoded small_9760486_left_checked

theorem cover_9760486 : CoveredBy scale carrier boxes root_9760486 := by
  apply coveredBy_split_literal root_9760486 small_9760486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9760492 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9760486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9760492
#print axioms cover_9760486

def root_9760485 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760485_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760485_right_fuel : Nat := 32
def small_9760485_right_count : Nat := 207
def small_9760485_right_encoded : String := "12073D0008A91305120701040000000208A91307120700FC08A913090000000500000009000000030000000812073D0408A91307120700FC08A91309120700FE000000050000000412073CFE0000000405000102135D44F90CFD9C010F34D100000000000CFD9C0500000005000000090000000900000001135D80F9000000010CFD9C010F34D100000000000CFD9C05000000090F350D0404548A07000000091386ACFC000000030CFD9C09000000090000000900000002000000090000000312073CFC0000000308A91309120700FE000000080000000412073CFE0000000405000102135D44F90CFD9C010F34D100000000000CFD9C050F34D10400000002000000080F350D040CFD9C070F34D0FC0CFD9C09000000080F350CFE000000040C9A87040F875105000000020C9A86FE0000000800000009000000080000000300000008000000020000000800000001135D80F9000000010CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC0000000900000003000000080F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0900000009000000040000000900000009000000030F350CFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87040F875105000000020C9A86FC0F878D070C9A86FE0F878D090780010200000008128A7CF9000000010AD3578110D10100000000000B4D440410801105000000020DE7C9FC000000070E5FD90700000003000000080000000800000008000000040F87510900000004078001020000000900000009000000030F875107000000030C9A86FE0F878D0900000008000000040F8751090000000407800102128A40F90000000800000001128A7CF9000000010AD3578110D10100000000000B4D44040000000710804D050000000900000002000000090F878D050C9A86FC0F878D070C9A86FE0000000800000009000000030F875107000000030000000800000002000000020F350D000CFD9C050F34D10400000002000000080F350D040CFD9C070F34D0FC0CFD9C090000000800000009000000030000000800000002000000000000000200000000"
theorem small_9760485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760485_right_root small_9760485_right_fuel small_9760485_right_count small_9760485_right_encoded = true := by
  decide +kernel
theorem small_9760485_right_covered : CoveredBy scale carrier boxes small_9760485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760485_right_root small_9760485_right_fuel small_9760485_right_count small_9760485_right_encoded small_9760485_right_checked

theorem cover_9760485 : CoveredBy scale carrier boxes root_9760485 := by
  apply coveredBy_split_literal root_9760485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9760486 small_9760485_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9760486
  · exact small_9760485_right_covered
#print axioms cover_9760485

def root_9760480 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760480_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760480_right_fuel : Nat := 1
def small_9760480_right_count : Nat := 1
def small_9760480_right_encoded : String := "00000004"
theorem small_9760480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760480_right_root small_9760480_right_fuel small_9760480_right_count small_9760480_right_encoded = true := by
  decide +kernel
theorem small_9760480_right_covered : CoveredBy scale carrier boxes small_9760480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760480_right_root small_9760480_right_fuel small_9760480_right_count small_9760480_right_encoded small_9760480_right_checked

theorem cover_9760480 : CoveredBy scale carrier boxes root_9760480 := by
  apply coveredBy_split_literal root_9760480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9760485 small_9760480_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9760485
  · exact small_9760480_right_covered
#print axioms cover_9760480

def root_9777627 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9777627 : CoveredBy scale carrier boxes root_9777627 := by
  apply coveredBy_split_literal root_9777627 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3660.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3661.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3660.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3661.covered
#print axioms cover_9777627

def root_9777621 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777621_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777621_left_fuel : Nat := 1
def small_9777621_left_count : Nat := 1
def small_9777621_left_encoded : String := "00000003"
theorem small_9777621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777621_left_root small_9777621_left_fuel small_9777621_left_count small_9777621_left_encoded = true := by
  decide +kernel
theorem small_9777621_left_covered : CoveredBy scale carrier boxes small_9777621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777621_left_root small_9777621_left_fuel small_9777621_left_count small_9777621_left_encoded small_9777621_left_checked

theorem cover_9777621 : CoveredBy scale carrier boxes root_9777621 := by
  apply coveredBy_split_literal root_9777621 small_9777621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777627 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9777621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777627
#print axioms cover_9777621

def root_9777565 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777565_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777565_left_fuel : Nat := 9
def small_9777565_left_count : Nat := 27
def small_9777565_left_encoded : String := "120700FC05000102135D44F9050000FE135D810904548A0113867100000000000000000A00000009000000040000000900000001135D80F900000001050000FE135D810904548A0113867100000000000CFD9C05000000090000000900000009000000040000000900000003"
theorem small_9777565_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777565_left_root small_9777565_left_fuel small_9777565_left_count small_9777565_left_encoded = true := by
  decide +kernel
theorem small_9777565_left_covered : CoveredBy scale carrier boxes small_9777565_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777565_left_root small_9777565_left_fuel small_9777565_left_count small_9777565_left_encoded small_9777565_left_checked

theorem cover_9777565 : CoveredBy scale carrier boxes root_9777565 := by
  apply coveredBy_split_literal root_9777565 small_9777565_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777621 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9777565_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777621
#print axioms cover_9777565

def root_9777560 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777560_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777560_right_fuel : Nat := 1
def small_9777560_right_count : Nat := 1
def small_9777560_right_encoded : String := "00000002"
theorem small_9777560_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777560_right_root small_9777560_right_fuel small_9777560_right_count small_9777560_right_encoded = true := by
  decide +kernel
theorem small_9777560_right_covered : CoveredBy scale carrier boxes small_9777560_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777560_right_root small_9777560_right_fuel small_9777560_right_count small_9777560_right_encoded small_9777560_right_checked

theorem cover_9777560 : CoveredBy scale carrier boxes root_9777560 := by
  apply coveredBy_split_literal root_9777560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777565 small_9777560_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777565
  · exact small_9777560_right_covered
#print axioms cover_9777560

def root_9777446 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777446_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777446_left_fuel : Nat := 17
def small_9777446_left_count : Nat := 57
def small_9777446_left_encoded : String := "120701040000000208A913070000000912073CFC0000000305000102135D44F9050000FE135D810904548A01138671000000000004548A05000000091386AD040CFD9C07000000090F350CFC000000030C9A86FC000000090F875107000000030280010200000009000000090000000200000009000000040000000900000001135D80F900000001050000FE135D810904548A01138671000000000004548A05000000091386AD040CFD9C07000000090F350CFC000000030C9A86FC000000090F8751070000000307800102000000090000000900000002000000090000000400000009"
theorem small_9777446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777446_left_root small_9777446_left_fuel small_9777446_left_count small_9777446_left_encoded = true := by
  decide +kernel
theorem small_9777446_left_covered : CoveredBy scale carrier boxes small_9777446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777446_left_root small_9777446_left_fuel small_9777446_left_count small_9777446_left_encoded small_9777446_left_checked

theorem cover_9777446 : CoveredBy scale carrier boxes root_9777446 := by
  apply coveredBy_split_literal root_9777446 small_9777446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777560 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9777446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777560
#print axioms cover_9777446

def root_9777440 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777440_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777440_left_fuel : Nat := 1
def small_9777440_left_count : Nat := 1
def small_9777440_left_encoded : String := "00000000"
theorem small_9777440_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777440_left_root small_9777440_left_fuel small_9777440_left_count small_9777440_left_encoded = true := by
  decide +kernel
theorem small_9777440_left_covered : CoveredBy scale carrier boxes small_9777440_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777440_left_root small_9777440_left_fuel small_9777440_left_count small_9777440_left_encoded small_9777440_left_checked

theorem cover_9777440 : CoveredBy scale carrier boxes root_9777440 := by
  apply coveredBy_split_literal root_9777440 small_9777440_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777446 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9777440_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777446
#print axioms cover_9777440

def root_9777439 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777439_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777439_right_fuel : Nat := 20
def small_9777439_right_count : Nat := 97
def small_9777439_right_encoded : String := "12073D0008A9130512070104000000020000000912073D0408A91307120700FC000000090000000312073CFC0000000305000102135D44F9050000FE135D81090CFD9C010F34D100000000000CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87040F87510500000002000000070F878D050000000900000002000000020F350D000CFD9C0500000009000000090000000000000004135D4509000000040CFD9C010F34D10000000000000000090000000600000001135D80F900000001050000FE135D81090CFD9C010F34D100000000000CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87040F875105000000020C9A86FC000000070F87510700000003000000070F878D050000000900000002000000020F350D000CFD9C0500000009000000090000000000000004135D4509000000040CFD9C010F34D1000000000000000009000000090000000200000000"
theorem small_9777439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777439_right_root small_9777439_right_fuel small_9777439_right_count small_9777439_right_encoded = true := by
  decide +kernel
theorem small_9777439_right_covered : CoveredBy scale carrier boxes small_9777439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777439_right_root small_9777439_right_fuel small_9777439_right_count small_9777439_right_encoded small_9777439_right_checked

theorem cover_9777439 : CoveredBy scale carrier boxes root_9777439 := by
  apply coveredBy_split_literal root_9777439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777440 small_9777439_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777440
  · exact small_9777439_right_covered
#print axioms cover_9777439

def root_9777433 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777433_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777433_left_fuel : Nat := 1
def small_9777433_left_count : Nat := 1
def small_9777433_left_encoded : String := "00000004"
theorem small_9777433_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777433_left_root small_9777433_left_fuel small_9777433_left_count small_9777433_left_encoded = true := by
  decide +kernel
theorem small_9777433_left_covered : CoveredBy scale carrier boxes small_9777433_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777433_left_root small_9777433_left_fuel small_9777433_left_count small_9777433_left_encoded small_9777433_left_checked

theorem cover_9777433 : CoveredBy scale carrier boxes root_9777433 := by
  apply coveredBy_split_literal root_9777433 small_9777433_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777439 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9777433_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777439
#print axioms cover_9777433

def root_9760479 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9760479 : CoveredBy scale carrier boxes root_9760479 := by
  apply coveredBy_split_literal root_9760479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9760480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9777433 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9760480
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9777433
#print axioms cover_9760479

def root_9760474 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760474_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760474_right_fuel : Nat := 1
def small_9760474_right_count : Nat := 1
def small_9760474_right_encoded : String := "00000003"
theorem small_9760474_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760474_right_root small_9760474_right_fuel small_9760474_right_count small_9760474_right_encoded = true := by
  decide +kernel
theorem small_9760474_right_covered : CoveredBy scale carrier boxes small_9760474_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760474_right_root small_9760474_right_fuel small_9760474_right_count small_9760474_right_encoded small_9760474_right_checked

theorem cover_9760474 : CoveredBy scale carrier boxes root_9760474 := by
  apply coveredBy_split_literal root_9760474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9760479 small_9760474_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9760479
  · exact small_9760474_right_covered
#print axioms cover_9760474

def root_9784699 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784699_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784699_left_fuel : Nat := 22
def small_9784699_left_count : Nat := 265
def small_9784699_left_encoded : String := "0F875105000000020C9A86FE0F878D0907800102128A40F9078000FC128A7D07022A458113E1C500000000000B4D440410801105000000020DE7C9FE000000090000000A10804D050DE7C9FE0E6015090640010212FF70F9000000090000000100000009000000040E5FD909000000040640010212FF70F908C000FC11FC250701152341000000090000000A00000003000000090000000112FFACF9000000010000000A0000000213E201000B4D440410801105000000020DE7C9FE0E6015090000000A000000040000000A10804D050DE7C9FE0E601509064001020000000812FFACF9000000010000000A000000040E5FD909000000040640010212FF70F908C000FC000000080000000A0000000112FFACF9000000010000000A000000020000000000000003128A410700000003022A45810000000913E201000B4D44040000000A10804D050000000A000000020000000000000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000B4D44040000000A10804D050DE7C9FE0E6015090000000A000000040000000A0000000213E201000B4D44040000000A10804D050DE7C9FE0E6015090000000A000000040000000A000000020000000000000003128A4107000000030000000A000000040F8751090000000407800102128A40F9078000FC128A7D07022A458113E1C500000000000B4D440410801105000000020B4D43FE10804D090000000A000000040000000A10804D050B4D43FE10804D090640010212FF70F908C000FC11FC2507011523410000000913F895000000000A00000000000000030000000A0000000112FFACF9000000010000000A0000000410801109000000040640010212FF70F908C000FC11FC25070115234113F85900000000000BF3E5840000000A100929050000000A0000000213F895000BF3E58400000007100929050000000A0000000200000000000000030000000A0000000112FFACF9000000010000000A0000000213E201000B4D440410801105000000020B4D43FE10804D090000000A000000040000000A10804D050B4D43FE10804D090640010212FF70F908C000FC11FC2507033F67C10000000A0000000A000000030000000A0000000112FFACF9000000010000000A0000000410801109000000040640010212FF70F908C000FC11FC2507033F67C10000000A00000007000000030000000A0000000112FFACF9000000010000000A000000020000000000000003128A410700000003022A45810000000A13E201000B4D44040000000A10804D050000000A000000020000000000000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000B4D44040000000A10804D050000000A0000000213E201000B4D44040000000A10804D050B4D43FE10804D090000000A000000040000000A000000020000000000000003128A4107000000030000000A"
theorem small_9784699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784699_left_root small_9784699_left_fuel small_9784699_left_count small_9784699_left_encoded = true := by
  decide +kernel
theorem small_9784699_left_covered : CoveredBy scale carrier boxes small_9784699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784699_left_root small_9784699_left_fuel small_9784699_left_count small_9784699_left_encoded small_9784699_left_checked

theorem cover_9784699 : CoveredBy scale carrier boxes root_9784699 := by
  apply coveredBy_split_literal root_9784699 small_9784699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3663.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9784699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3663.covered
#print axioms cover_9784699

def root_9784693 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784693_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784693_left_fuel : Nat := 1
def small_9784693_left_count : Nat := 1
def small_9784693_left_encoded : String := "00000004"
theorem small_9784693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784693_left_root small_9784693_left_fuel small_9784693_left_count small_9784693_left_encoded = true := by
  decide +kernel
theorem small_9784693_left_covered : CoveredBy scale carrier boxes small_9784693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784693_left_root small_9784693_left_fuel small_9784693_left_count small_9784693_left_encoded small_9784693_left_checked

theorem cover_9784693 : CoveredBy scale carrier boxes root_9784693 := by
  apply coveredBy_split_literal root_9784693 small_9784693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784699 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9784693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784699
#print axioms cover_9784693

def root_9784553 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784553_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784553_left_fuel : Nat := 13
def small_9784553_left_count : Nat := 67
def small_9784553_left_encoded : String := "0F34D0FE0C9A87040F8751050000000207800102128A40F9078000FC128A7D07022A458113E1C500000000000AD357890000000510D13CFE000000040B4D440400000005000000070000000800000003128A410700000003022A4581000000070000000800000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000AD357890000000710D13CFE000000040000000A13E201000AD357890000000A10D13CFE000000040000000A0000000000000003128A4107000000030000000A0F878D0507800102128A40F9078000FC000000080000000700000001128A7CF900000001078000FC128A7D07022A4581000000070000000800000003000000070000000200000004"
theorem small_9784553_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784553_left_root small_9784553_left_fuel small_9784553_left_count small_9784553_left_encoded = true := by
  decide +kernel
theorem small_9784553_left_covered : CoveredBy scale carrier boxes small_9784553_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784553_left_root small_9784553_left_fuel small_9784553_left_count small_9784553_left_encoded small_9784553_left_checked

theorem cover_9784553 : CoveredBy scale carrier boxes root_9784553 := by
  apply coveredBy_split_literal root_9784553 small_9784553_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784693 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9784553_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784693
#print axioms cover_9784553

def root_9784548 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784548_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784548_right_fuel : Nat := 1
def small_9784548_right_count : Nat := 1
def small_9784548_right_encoded : String := "00000002"
theorem small_9784548_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784548_right_root small_9784548_right_fuel small_9784548_right_count small_9784548_right_encoded = true := by
  decide +kernel
theorem small_9784548_right_covered : CoveredBy scale carrier boxes small_9784548_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784548_right_root small_9784548_right_fuel small_9784548_right_count small_9784548_right_encoded small_9784548_right_checked

theorem cover_9784548 : CoveredBy scale carrier boxes root_9784548 := by
  apply coveredBy_split_literal root_9784548 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784553 small_9784548_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784553
  · exact small_9784548_right_covered
#print axioms cover_9784548

def root_9784048 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784048_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784048_left_fuel : Nat := 29
def small_9784048_left_count : Nat := 239
def small_9784048_left_encoded : String := "0F34D104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D0907800102128A40F9078000FC000000080000000700000001128A7CF900000001078000FC128A7D07022A45810000000713E201000AD357850000000810D13D040DE7C9FE000000070E5FD909000000040000000800000002000000000000000300000007000000040F8751090000000407800102128A40F9078000FC128A7D07022A458113E1C500000000000AD3578510D10104000000020000000710D13D040B4D43FE10804D09064001020000000712FFACF900000001000000070000000410801109000000040640010212FF70F908C000FC11FC25070115234113F85900000000000BE879C5000000071011AD040AA6A27E0000000710ED71090000000405A00102133134F9096000FC000000080000000700000001133170F9000000010000000700000002000000080000000311FBE907000000030115234100000007000000080000000112FFACF90000000108C000FC11FC25070115234113F85900000000000BE879C5000000071011AD040AA6A27E0000000710ED710900000004000000050000000213F895000BE879C51011710400000002000000071011AD040AA6A27E10EDAD0906E001020000000700000005000000040000000500000002000000000000000311FBE907000000030115234100000007000000050000000213E201000AD3578510D10104000000020000000810D13D040B4D43FE000000081080110900000004064001020000000812FFACF90000000108C000FC0000000800000005000000020000000000000003128A410700000003022A458113E1C500000000000AD35785000000070000000713E201000AD357850000000810D13D040B4D43FE0000000800000005000000020000000000000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000AD3578510D10104000000020000000710D13D040B4D43FE10804D0908C001020000000711FC24F9000000010000000700000004108011090000000408C0010211FBE8F908C000FC11FC25070115234113F85900000000000BE879C5000000070000000500000005000000030000000500000001000000050000000213E201000AD3578510D10104000000020B4D43FE10804D0900000007000000040000000510D13D040B4D43FE10804D0908C0010211FBE8F908C000FC000000080000000500000001000000050000000400000005000000020000000000000003128A410700000003022A458113E1C500000000000AD35785000000070000000500000005"
theorem small_9784048_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784048_left_root small_9784048_left_fuel small_9784048_left_count small_9784048_left_encoded = true := by
  decide +kernel
theorem small_9784048_left_covered : CoveredBy scale carrier boxes small_9784048_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784048_left_root small_9784048_left_fuel small_9784048_left_count small_9784048_left_encoded small_9784048_left_checked

theorem cover_9784048 : CoveredBy scale carrier boxes root_9784048 := by
  apply coveredBy_split_literal root_9784048 small_9784048_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784548 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9784048_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784548
#print axioms cover_9784048

def root_9784042 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784042_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784042_left_fuel : Nat := 1
def small_9784042_left_count : Nat := 1
def small_9784042_left_encoded : String := "00000000"
theorem small_9784042_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784042_left_root small_9784042_left_fuel small_9784042_left_count small_9784042_left_encoded = true := by
  decide +kernel
theorem small_9784042_left_covered : CoveredBy scale carrier boxes small_9784042_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784042_left_root small_9784042_left_fuel small_9784042_left_count small_9784042_left_encoded small_9784042_left_checked

theorem cover_9784042 : CoveredBy scale carrier boxes root_9784042 := by
  apply coveredBy_split_literal root_9784042 small_9784042_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784048 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9784042_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784048
#print axioms cover_9784042

def root_9784041 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784041_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784041_right_fuel : Nat := 23
def small_9784041_right_count : Nat := 285
def small_9784041_right_encoded : String := "1386AD000CFD9C050F34D104000000020CFD9C09000000080F350CFE000000040C9A86FE0F878D0900000008000000040F8751090000000407800102128A40F90000000800000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000AD3578510D10104000000020000000810D13D040B4D43FE10804D09000000080000000400000005000000020000000800000003128A410700000003000000050F350D040CFD9C090F34D0FE0C9A87040F875105000000020780010200000008128A7CF900000001078000FC00000008128A410700000003067ECE810000000A0000000800000008000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0907800102128A40F9078000FC128A7D07067ECE8112EA5900000000000B4D440410801105000000020DE7C9FE0E60150900000008000000040000000A000000080000000800000003128A410700000003067ECE8112EA5900000000000B4D44040000000A000000080000000800000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000B4D44040000000A10804D050DE7C9FE0E6015090000000A000000040000000A0000000212EA95000B4D44040000000A000000080000000000000003128A410700000003067ECE810000000A0000000A000000040F8751090000000407800102128A40F9078000FC128A7D07067ECE8112EA5900000000000B4D440410801105000000020B4D43FE10804D090000000A000000040000000A10804D050B4D43FE10804D090640010212FF70F908C000FC00000008000000060000000112FFACF9000000010000000A0000000410801109000000040640010200000006000000050000000212EA95000B4D44040000000610804D0500000006000000020000000000000003128A410700000003067ECE8112EA5900000000000B4D440400000006000000050000000500000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000B4D44040000000A000000050000000500000003000000050F878D050C9A86FE0F878D0907800102128A40F90000000800000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000DE7CA040E5FD905000000020DE7C9FE0E60150900000008000000040E5FD9090000000408C00102000000080000000A000000080000000800000003128A410700000003067ECE8112EA5900000000000DE7CA040E5FD905000000020000000A0000000800000008000000040F8751090000000407800102128A40F9078000FC128A7D07067ECE8112EA5900000000000DE7CA040E5FD905000000020B4D43FE10804D0900000008000000041080110900000004064001020000000600000005000000080000000800000003128A410700000003067ECE8112EA5900000000000DE7CA040E5FD9050000000200000005000000050000000500000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000DE7CA040E5FD905000000020000000500000005000000050000000300000005000000020000000200000000"
theorem small_9784041_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784041_right_root small_9784041_right_fuel small_9784041_right_count small_9784041_right_encoded = true := by
  decide +kernel
theorem small_9784041_right_covered : CoveredBy scale carrier boxes small_9784041_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784041_right_root small_9784041_right_fuel small_9784041_right_count small_9784041_right_encoded small_9784041_right_checked

theorem cover_9784041 : CoveredBy scale carrier boxes root_9784041 := by
  apply coveredBy_split_literal root_9784041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784042 small_9784041_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784042
  · exact small_9784041_right_covered
#print axioms cover_9784041

def root_9784036 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784036_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784036_right_fuel : Nat := 1
def small_9784036_right_count : Nat := 1
def small_9784036_right_encoded : String := "00000003"
theorem small_9784036_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784036_right_root small_9784036_right_fuel small_9784036_right_count small_9784036_right_encoded = true := by
  decide +kernel
theorem small_9784036_right_covered : CoveredBy scale carrier boxes small_9784036_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784036_right_root small_9784036_right_fuel small_9784036_right_count small_9784036_right_encoded small_9784036_right_checked

theorem cover_9784036 : CoveredBy scale carrier boxes root_9784036 := by
  apply coveredBy_split_literal root_9784036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784041 small_9784036_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784041
  · exact small_9784036_right_covered
#print axioms cover_9784036

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662

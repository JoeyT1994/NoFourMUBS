import TaoBundleAssembly0611
import TaoBundleChunkBatch0835
import TaoBundleChunkBatch0837
import TaoBundleChunkBatch0838
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612
def root_8946744 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946744_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946744_left_fuel : Nat := 30
def small_8946744_left_count : Nat := 487
def small_8946744_left_encoded : String := "12073CFC0000000305000100135D450100000000050000FE135D81090CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000050F34D0FC000000050000000300000009000000010F350CF80000000104548A0513867104000000020CFD9BFD000000090F34D0FC0C9A86F80F878D03028001000000000913D7ED01078000FE128A7D09022A45850000000500000009000000040000000900000000000000010F87510300000001028001000000000913D7ED01078000FE128A7D09022A458513E1C504000000020AD3577D0000000510D100FC0B4D43F8000000091080110300000001000000090000000313E201040AD3577D0000000910D100FC0B4D43F800000009000000090000000300000002000000040000000900000000000000031386AD040CFD9BFD000000090F34D0FC0C9A86F8000000090F87510300000001028001000000000913D7ED01078000FE128A7D09067ECE8512EA5904000000020000000900000008000000040000000800000000000000030000000200000004135D4509000000040CFD9C030F34D0F8000000090000000100000009135D8101050000FE135D81090CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000050F34D0FC0000000A000000031386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD0000000307800100000000090000000A0F8750FD00000005000000030F34D0FC07800100128A410100000000078000FE128A7D090000000700000004000000070000000A0000000300000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F80F878D030C9A86FC0F878CFD0000000307800100000000050000000A0F8750FD0000000500000003000000010F875103000000010C9A86FC0F878CFD0000000307800100128A41010000000000000009128A7D01078000FE128A7D09022A458500000005000000080000000400000008000000000F8750FD0780010000000008128A7D010000000800000000000000030F34D0FC0C9A86F80F878D0307800100128A410100000000078000FE128A7D09022A45850000000513E201040AD3577D0000000510D100FC0DE7C9F80000000A0E5FD903000000010640010012FF710100000000000000090000000A000000030000000200000004128A410900000004022A45850000000A000000090000000A000000010F8751030000000107800100128A410100000000078000FE128A7D09022A458513E1C504000000020AD3577D0000000510D100FC0B4D43F810804D030640010012FF71010000000008C000FE00000005000000090000000A0000000110801103000000010640010012FF71010000000008C000FE11FC2509011523450000000500000008000000040000000812FFAD0108C000FE11FC25090115234500000005000000080000000400000008000000000000000313E201040AD3577D10D13CFC000000030000000810D100FC0B4D43F810804D030640010012FF71010000000008C000FE11FC250900000009000000040000000812FFAD0108C000FE11FC2509033F67C513BBF504000000020000000A0000000800000004000000080000000000000001108011030000000100000008000000030000000200000004128A410900000004022A458513E1C504000000020AD3577D0000000810D100FC0B4D43F800000009000000080000000300000008128A7D01078000FE128A7D09022A458513E1C504000000020AD3577D0000000510D100FC0000000A0000000313E201040AD3577D10D13CFC000000030000000810D100FC0B4D43F80000000A00000008000000030000000200000004128A410900000004022A45850000000A0000000800000000000000031386AD040CFD9BFD0F350CFC000000030C9A86F80F878D030C9A86FC0F878CFD000000030780010000000009128A7D01078000FE128A7D09067ECE8512EA5904000000020DE7C9F80000000500000008000000070000000400000008000000000F8750FD0000000900000003000000010F875103000000010C9A86FC00000008000000080F34D0FC0C9A86F80F878D0307800100128A410100000000078000FE128A7D09067ECE8512EA5904000000020AD3577D000000090000000712EA95040AD3577D00000009000000070000000200000004128A41090000000400000009128A7D01078000FE128A7D09067ECE8512EA5904000000020000000700000007000000040000000700000000000000010F8751030000000107800100128A410100000000078000FE128A7D09067ECE8512EA5904000000020AD3577D0000000810D100FC0000000800000003000000080000000400000008128A7D01078000FE128A7D09067ECE8512EA5904000000020AD3577D0000000810D100FC000000080000000300000008000000040000000800000000000000030000000200000004135D4509000000040CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000090F34D0FC0000000A0000000300000009000000010F350CF80000000104548A0513867104000000020CFD9BFD000000090F34D0FC0C9A86F80F878D030000000A000000010F8751030000000100000008000000031386AD040CFD9BFD000000080F34D0FC0C9A86F80000000900000008000000030000000200000000"
theorem small_8946744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946744_left_root small_8946744_left_fuel small_8946744_left_count small_8946744_left_encoded = true := by
  decide +kernel
theorem small_8946744_left_covered : CoveredBy scale carrier boxes small_8946744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946744_left_root small_8946744_left_fuel small_8946744_left_count small_8946744_left_encoded small_8946744_left_checked

theorem cover_8946744 : CoveredBy scale carrier boxes root_8946744 := by
  apply coveredBy_split_literal root_8946744 small_8946744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8947768 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8946744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8947768
#print axioms cover_8946744

def root_8946738 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946738_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946738_left_fuel : Nat := 1
def small_8946738_left_count : Nat := 1
def small_8946738_left_encoded : String := "00000002"
theorem small_8946738_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946738_left_root small_8946738_left_fuel small_8946738_left_count small_8946738_left_encoded = true := by
  decide +kernel
theorem small_8946738_left_covered : CoveredBy scale carrier boxes small_8946738_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946738_left_root small_8946738_left_fuel small_8946738_left_count small_8946738_left_encoded small_8946738_left_checked

theorem cover_8946738 : CoveredBy scale carrier boxes root_8946738 := by
  apply coveredBy_split_literal root_8946738 small_8946738_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8946744 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8946738_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8946744
#print axioms cover_8946738

def root_8946737 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946737_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946737_right_fuel : Nat := 22
def small_8946737_right_count : Nat := 285
def small_8946737_right_encoded : String := "12073D0408A912FD12073CFC0000000305000100135D450100000000050000FE135D81090CFD9C030F34D0F80CFD9C050F34D10400000002000000090F350D040CFD9BFD000000090F34D0FC0C9A87040F87510500000002000000080F878D05028001000000000913D7ED01078000FE000000070000000700000000000000020000000300000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD000000090F34D0FC0C9A86F80F878D03028001000000000913D7ED01078000FE128A7D090AD3578510D10104000000020000000900000007000000040000000800000000000000010F8751030000000100000008000000030F350D040CFD9BFD00000008000000050000000200000004135D4509000000040CFD9C030F34D0F800000009000000010F350CF80000000100000008135D8101050000FE135D81090CFD9C030F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003078001000000000700000007000000070F34D0FC07800100128A410100000000078000FE000000070000000700000007000000030F350D040CFD9BFD0F350CFC00000003000000080F34D0FC0C9A8704000000080F878D05078001000000000700000007000000020000000300000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86F80F878D030000000800000001000000080F34D0FC0C9A86F80F878D0307800100128A410100000000078000FE128A7D090AD3578500000007000000070000000400000008128A7D010000000700000000000000010F8751030000000100000008000000030F350D040CFD9BFD000000080F34D0FC00000008000000030000000200000004135D4509000000040CFD9C030F34D0F80CFD9C050F34D10400000002000000090F350D040000000800000002000000010F350CF8000000010000000800000000120700FC05000100135D450100000000050000FE135D81090CFD9C030F34D0F80CFD9C050F34D10400000002045489FD1386ACFC000000030280010013D7B10100000000078000FE0000000700000007000000070000000500000005000000010000000500000004135D4509000000040CFD9C030F34D0F80CFD9C050F34D10400000002045489FD0000000900000005000000050000000100000005135D8101050000FE135D81090CFD9C030F34D0F80CFD9C050F34D10400000002045489FD1386ACFC0000000300000007000000070F350D04045489FD1386ACFC000000030C9A87040F87510500000002000000050F878D0500000007000000020000000500000002000000010F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC000000030C9A86F80F878D03078001000000000700000007000000010F8751030000000100000005000000050000000500000004135D4509000000040CFD9C030F34D0F80CFD9C050F34D10400000002045489FD1386ACFC0000000307800100000000070000000700000005000000050000000100000005000000000000000300000002"
theorem small_8946737_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946737_right_root small_8946737_right_fuel small_8946737_right_count small_8946737_right_encoded = true := by
  decide +kernel
theorem small_8946737_right_covered : CoveredBy scale carrier boxes small_8946737_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946737_right_root small_8946737_right_fuel small_8946737_right_count small_8946737_right_encoded small_8946737_right_checked

theorem cover_8946737 : CoveredBy scale carrier boxes root_8946737 := by
  apply coveredBy_split_literal root_8946737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8946738 small_8946737_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8946738
  · exact small_8946737_right_covered
#print axioms cover_8946737

def root_8946731 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946731_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946731_left_fuel : Nat := 1
def small_8946731_left_count : Nat := 1
def small_8946731_left_encoded : String := "00000001"
theorem small_8946731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946731_left_root small_8946731_left_fuel small_8946731_left_count small_8946731_left_encoded = true := by
  decide +kernel
theorem small_8946731_left_covered : CoveredBy scale carrier boxes small_8946731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946731_left_root small_8946731_left_fuel small_8946731_left_count small_8946731_left_encoded small_8946731_left_checked

theorem cover_8946731 : CoveredBy scale carrier boxes root_8946731 := by
  apply coveredBy_split_literal root_8946731 small_8946731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8946737 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8946731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8946737
#print axioms cover_8946731

def root_8945245 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8945245 : CoveredBy scale carrier boxes root_8945245 := by
  apply coveredBy_split_literal root_8945245 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3345.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8946731 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3345.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8946731
#print axioms cover_8945245

def root_8945239 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8945239_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8945239_left_fuel : Nat := 1
def small_8945239_left_count : Nat := 1
def small_8945239_left_encoded : String := "00000004"
theorem small_8945239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8945239_left_root small_8945239_left_fuel small_8945239_left_count small_8945239_left_encoded = true := by
  decide +kernel
theorem small_8945239_left_covered : CoveredBy scale carrier boxes small_8945239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8945239_left_root small_8945239_left_fuel small_8945239_left_count small_8945239_left_encoded small_8945239_left_checked

theorem cover_8945239 : CoveredBy scale carrier boxes root_8945239 := by
  apply coveredBy_split_literal root_8945239 small_8945239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8945245 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8945239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8945245
#print axioms cover_8945239

def root_8931209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8931209 : CoveredBy scale carrier boxes root_8931209 := by
  apply coveredBy_split_literal root_8931209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8931210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8945239 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8931210
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8945239
#print axioms cover_8931209

def root_8931203 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931203_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931203_left_fuel : Nat := 1
def small_8931203_left_count : Nat := 1
def small_8931203_left_encoded : String := "00000003"
theorem small_8931203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931203_left_root small_8931203_left_fuel small_8931203_left_count small_8931203_left_encoded = true := by
  decide +kernel
theorem small_8931203_left_covered : CoveredBy scale carrier boxes small_8931203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931203_left_root small_8931203_left_fuel small_8931203_left_count small_8931203_left_encoded small_8931203_left_checked

theorem cover_8931203 : CoveredBy scale carrier boxes root_8931203 := by
  apply coveredBy_split_literal root_8931203 small_8931203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8931209 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8931203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8931209
#print axioms cover_8931203

def root_8931202 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931202_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931202_right_fuel : Nat := 26
def small_8931202_right_count : Nat := 449
def small_8931202_right_encoded : String := "1151E8FD0A0000FE1152250908A91303120700F808A913050000000512073D0408A913090000000512073CFE0000000405000100135D450100000000050000FC135D80FD0000000304548A03000000051386ACF8000000010CFD9C05000000050F350D040CFD9C09000000050F350CFE00000004000000050000000200000005135D8101050000FC00000005135D44FD000000050000000300000000000000020000000112073CF80000000108A91305120701040000000208A913090000000512073CFE0000000405000100135D450100000000050000FC135D80FD000000030CFD9C03000000050F350CF80000000104548A05000000051386AD040CFD9C09000000050F350CFE000000040C9A86F8000000090F875103000000010000000900000002135D44FD0CFD9C03000000050F350CF80000000104548A05000000051386AD040CFD9C09000000050F350CFE00000004000000090000000200000003135D8101050000FC135D80FD000000030CFD9C03000000050F350CF80000000104548A05000000051386AD040CFD9C09000000050F350CFE000000040C9A86F80F878D0300000005000000010F875103000000010C9A86FE0F878D0900000005000000040F875109000000040780010000000008128A7D01000000080000000000000002135D44FD0CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9C09000000050F350CFE000000040C9A86F8000000050F875103000000010C9A86FE000000050F87510900000004000000091386AD040CFD9C09000000050F350CFE000000040C9A86F80F878D030C9A86FE0000000500000009000000010F875103000000010C9A86FE0F878D09078001000000000500000006000000040000000900000002000000030000000012073D0408A91309120700FE05000100135D450100000000050000FC0000000600000005000000060000000412073CFE0000000405000100135D450100000000050000FC135D80FD000000030CFD9C030F34D0F80CFD9C05000000050F350D040CFD9C09000000050F350CFE000000040000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F8000000090F87510300000001000000080F350D040CFD9C09000000060F350CFE000000040000000800000002135D44FD0CFD9C030F34D0F80CFD9C05000000050F350D040CFD9C09000000050000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE00000005000000040F350CFE00000004000000090F350D040CFD9C09000000060F350CFE00000004000000080000000200000003135D8101050000FC135D80FD000000030CFD9C030F34D0F80CFD9C050000000500000006000000010F350CF8000000010CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FE000000060F8751090000000400000008000000010F875103000000010000000600000006135D44FD0CFD9C030F34D0F80CFD9C050000000500000006000000010F350CF8000000010CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FE0000000600000009000000010F875103000000010C9A86FE000000060000000800000006000000030000000000000002000000041151E9090000000408A91303120700F808A9130512070104000000020500010000000005135D8101050000FC00000005135D44FD00000009000000030000000012073D040500010000000009135D8101050000FC135D80FD00000003050000FE135D810904548A03000000051386ACF8000000010CFD9C0500000005000000070000000400000009135D44FD050000FE00000009000000090000000300000000000000020000000112073CF80000000108A9130512070104000000020500010000000009135D8101050000FC135D80FD00000003050000FE135D81090CFD9C030F34D0F800000009000000010F350CF80000000104548A05138671040000000200000009000000090000000400000009135D44FD050000FE135D81090CFD9C030F34D0F80000000900000001000000090000000400000009000000030000000012073D0405000100135D450100000000050000FC135D80FD00000003050000FE135D81090CFD9C030F34D0F80000000900000001000000080000000400000008135D44FD0000000900000003135D8101050000FC135D80FD00000003050000FE135D81090CFD9C030F34D0F80CFD9C050F34D104000000020000000900000007000000010F350CF800000001000000080000000400000008135D44FD050000FE135D81090CFD9C030F34D0F800000009000000010F350CF80000000100000008000000040000000800000003000000000000000200000003"
theorem small_8931202_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931202_right_root small_8931202_right_fuel small_8931202_right_count small_8931202_right_encoded = true := by
  decide +kernel
theorem small_8931202_right_covered : CoveredBy scale carrier boxes small_8931202_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931202_right_root small_8931202_right_fuel small_8931202_right_count small_8931202_right_encoded small_8931202_right_checked

theorem cover_8931202 : CoveredBy scale carrier boxes root_8931202 := by
  apply coveredBy_split_literal root_8931202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8931203 small_8931202_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8931203
  · exact small_8931202_right_covered
#print axioms cover_8931202

def root_8931197 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931197_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931197_right_fuel : Nat := 1
def small_8931197_right_count : Nat := 1
def small_8931197_right_encoded : String := "00000002"
theorem small_8931197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931197_right_root small_8931197_right_fuel small_8931197_right_count small_8931197_right_encoded = true := by
  decide +kernel
theorem small_8931197_right_covered : CoveredBy scale carrier boxes small_8931197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931197_right_root small_8931197_right_fuel small_8931197_right_count small_8931197_right_encoded small_8931197_right_checked

theorem cover_8931197 : CoveredBy scale carrier boxes root_8931197 := by
  apply coveredBy_split_literal root_8931197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8931202 small_8931197_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8931202
  · exact small_8931197_right_covered
#print axioms cover_8931197

def root_8929317 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8929317 : CoveredBy scale carrier boxes root_8929317 := by
  apply coveredBy_split_literal root_8929317 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3340.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8931197 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3340.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8931197
#print axioms cover_8929317

def root_8929312 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929312_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929312_right_fuel : Nat := 1
def small_8929312_right_count : Nat := 1
def small_8929312_right_encoded : String := "00000001"
theorem small_8929312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8929312_right_root small_8929312_right_fuel small_8929312_right_count small_8929312_right_encoded = true := by
  decide +kernel
theorem small_8929312_right_covered : CoveredBy scale carrier boxes small_8929312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8929312_right_root small_8929312_right_fuel small_8929312_right_count small_8929312_right_encoded small_8929312_right_checked

theorem cover_8929312 : CoveredBy scale carrier boxes root_8929312 := by
  apply coveredBy_split_literal root_8929312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8929317 small_8929312_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8929317
  · exact small_8929312_right_covered
#print axioms cover_8929312

def root_8954456 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8954456 : CoveredBy scale carrier boxes root_8954456 := by
  apply coveredBy_split_literal root_8954456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3348.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3349.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3348.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3349.covered
#print axioms cover_8954456

def root_8954450 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954450_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954450_left_fuel : Nat := 1
def small_8954450_left_count : Nat := 1
def small_8954450_left_encoded : String := "00000002"
theorem small_8954450_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954450_left_root small_8954450_left_fuel small_8954450_left_count small_8954450_left_encoded = true := by
  decide +kernel
theorem small_8954450_left_covered : CoveredBy scale carrier boxes small_8954450_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954450_left_root small_8954450_left_fuel small_8954450_left_count small_8954450_left_encoded small_8954450_left_checked

theorem cover_8954450 : CoveredBy scale carrier boxes root_8954450 := by
  apply coveredBy_split_literal root_8954450 small_8954450_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8954456 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8954450_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8954456
#print axioms cover_8954450

def root_8954449 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954449_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954449_right_fuel : Nat := 18
def small_8954449_right_count : Nat := 155
def small_8954449_right_encoded : String := "12073D0408A912FD12073CFC0000000308A91309120700FE05000100135D450100000000050000F80000000600000006000000060000000412073CFE0000000405000100135D450100000000050000F8135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE00000004000000080F34D0FC0CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A000000040F8751090000000400000008000000030F350D040CFD9BFD0F350CFC000000030CFD9C0900000006000000080F34D0FC0000000A000000030000000200000001135D4503000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003000000080000000A0F350D040CFD9BFD000000080000000A00000002135D8101050000F8135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C0900000006000000060F34D0FC00000006000000030F350D04000000060000000200000001135D4503000000010CFD9C050F34D104000000020CFD9BFD000000060F34D0FC00000006000000030F350D04000000060000000200000000120700FC08A91309120700FE050001000000000A000000060000000412073CFE0000000405000100135D450100000000050000F8135D81030CFD9C050000000A00000005000000010000000A135D8101050000F8135D81030CFD9C050F34D10400000002045489FD00000006138670FC0CFD9C090000000600000005000000030F350D04000000060000000200000001135D4503000000010CFD9C050F34D10400000002045489FD000000060000000500000005000000000000000300000002"
theorem small_8954449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954449_right_root small_8954449_right_fuel small_8954449_right_count small_8954449_right_encoded = true := by
  decide +kernel
theorem small_8954449_right_covered : CoveredBy scale carrier boxes small_8954449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954449_right_root small_8954449_right_fuel small_8954449_right_count small_8954449_right_encoded small_8954449_right_checked

theorem cover_8954449 : CoveredBy scale carrier boxes root_8954449 := by
  apply coveredBy_split_literal root_8954449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8954450 small_8954449_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8954450
  · exact small_8954449_right_covered
#print axioms cover_8954449

def root_8954444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954444_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954444_right_fuel : Nat := 1
def small_8954444_right_count : Nat := 1
def small_8954444_right_encoded : String := "00000004"
theorem small_8954444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954444_right_root small_8954444_right_fuel small_8954444_right_count small_8954444_right_encoded = true := by
  decide +kernel
theorem small_8954444_right_covered : CoveredBy scale carrier boxes small_8954444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954444_right_root small_8954444_right_fuel small_8954444_right_count small_8954444_right_encoded small_8954444_right_checked

theorem cover_8954444 : CoveredBy scale carrier boxes root_8954444 := by
  apply coveredBy_split_literal root_8954444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8954449 small_8954444_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8954449
  · exact small_8954444_right_covered
#print axioms cover_8954444

def root_8954443 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8954443 : CoveredBy scale carrier boxes root_8954443 := by
  apply coveredBy_split_literal root_8954443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8954444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3350.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8954444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3350.covered
#print axioms cover_8954443

def root_8954437 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954437_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954437_left_fuel : Nat := 1
def small_8954437_left_count : Nat := 1
def small_8954437_left_encoded : String := "00000003"
theorem small_8954437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954437_left_root small_8954437_left_fuel small_8954437_left_count small_8954437_left_encoded = true := by
  decide +kernel
theorem small_8954437_left_covered : CoveredBy scale carrier boxes small_8954437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954437_left_root small_8954437_left_fuel small_8954437_left_count small_8954437_left_encoded small_8954437_left_checked

theorem cover_8954437 : CoveredBy scale carrier boxes root_8954437 := by
  apply coveredBy_split_literal root_8954437 small_8954437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8954443 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8954437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8954443
#print axioms cover_8954437

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612

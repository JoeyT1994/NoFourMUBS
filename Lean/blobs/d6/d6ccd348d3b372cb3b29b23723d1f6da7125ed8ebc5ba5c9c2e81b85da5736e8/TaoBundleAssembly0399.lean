import TaoBundleAssembly0396
import TaoBundleAssembly0398
import TaoBundleChunkBatch0534
import TaoBundleChunkBatch0535
import TaoBundleChunkBatch0536
import TaoBundleChunkBatch0537
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399
def root_5688704 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688704_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688704_left_fuel : Nat := 26
def small_5688704_left_count : Nat := 385
def small_5688704_left_encoded : String := "12073D080CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000009000000040F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010C9A86FC0F878CFD00000003000000090000000500000005000000000F878CF700000000000000090F34D0FC00000009000000030F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86F80F878CF9000000010C9A8704000000090F878D05000000090000000200000009000000000F878CF70000000000000009000000040F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010C9A87040F875105000000020C9A86FC0F878CFD000000030AD3577F0000000910D10108000000040B4D4400108010F70000000900000000000000090F8750FD0AD3577F10D13D08000000060000000410D10108000000040B4D44000000000710804CF7000000000DE7C9F80E6014F9000000010000000600000007000000030F878D050C9A86FC0F878CFD00000003000000090F8750FD0AD3577F000000050000000700000003000000020F8750F90C9A87040F875105000000020C9A86FC000000090F8750FD0AD3577F0000000510D101080000000400000005000000030F878D050C9A86FC00000009000000050000000200000001000000000F878CF7000000000C9A86F80F878CF9000000010C9A87040F875105000000020C9A86FC000000090F8750FD00000006000000030F878D050C9A86FC000000090F8750FD0AD3577F0000000510D10108000000040000000900000003000000020F8750F90C9A87040000000900000009000000010F34D0FC0CFD9BFF000000090F34D108000000040C9A87000F8750F700000009000000000000000900000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC000000090F8750FD00000007000000030000000000000009000000040F34D108000000040C9A87000F8750F70C9A86FC0F878CFD000000030AD3577910D13CF8000000010000000910D100F80AD357850000000710D13D040000000700000002000000010F8750FD0000000700000003000000000F878CF7000000000C9A86FC0F878CFD00000003000000090F8750FD0AD3577910D13CF8000000010000000700000007000000030F34D0FC0CFD9BFF000000090F34D1080000000400000009000000030F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F8750F70C9A87040F875105000000020C9A86FC000000060F8750FD00000006000000030F878D050C9A86FC0F878CFD000000030AD3577910D13CF8000000010AD3577F0000000910D10108000000040B4D4400108010F700000009000000000000000910D100F80AD3577F0000000610D10108000000040B4D4400108010F7000000070000000000000006000000010F8750FD0AD3577910D13CF8000000010AD3577F000000070000000710D100F800000006000000010000000300000002000000000F878CF7000000000C9A87040F87510500000002000000060F878D050C9A86FC0F878CFD000000030AD3577900000009000000060F8750FD0000000600000003000000020F34D0FC0CFD9BFF0F350D0800000009000000040F34D108000000040C9A87000F8750F70C9A8704000000090F878D050000000900000002000000000F878CF70000000000000009000000030000000200000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000090F350D040CFD9BFD0F350CFC000000030CFD9BFF000000090F34D108000000040C9A86F80F878CF9000000010C9A870400000009000000090000000900000009000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000090F34D108000000040C9A86FC000000090F8750FD0AD357770000000910D10100000000000000000900000003000000090F350D040CFD9BFD000000060F34D0FC0000000900000003000000020000000100000004"
theorem small_5688704_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688704_left_root small_5688704_left_fuel small_5688704_left_count small_5688704_left_encoded = true := by
  decide +kernel
theorem small_5688704_left_covered : CoveredBy scale carrier boxes small_5688704_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688704_left_root small_5688704_left_fuel small_5688704_left_count small_5688704_left_encoded small_5688704_left_checked

theorem cover_5688704 : CoveredBy scale carrier boxes root_5688704 := by
  apply coveredBy_split_literal root_5688704 small_5688704_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5689542 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5688704_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5689542
#print axioms cover_5688704

def root_5688698 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688698_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688698_left_fuel : Nat := 1
def small_5688698_left_count : Nat := 1
def small_5688698_left_encoded : String := "00000003"
theorem small_5688698_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688698_left_root small_5688698_left_fuel small_5688698_left_count small_5688698_left_encoded = true := by
  decide +kernel
theorem small_5688698_left_covered : CoveredBy scale carrier boxes small_5688698_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688698_left_root small_5688698_left_fuel small_5688698_left_count small_5688698_left_encoded small_5688698_left_checked

theorem cover_5688698 : CoveredBy scale carrier boxes root_5688698 := by
  apply coveredBy_split_literal root_5688698 small_5688698_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688704 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5688698_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688704
#print axioms cover_5688698

def root_5688697 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688697_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688697_right_fuel : Nat := 18
def small_5688697_right_count : Nat := 105
def small_5688697_right_encoded : String := "120700FC08A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF800000001000000090F34D0F80CFD9C05000000090F350D04000000090000000200000001000000000F34D10000000000000000090000000412070108000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC00000003045489FF000000090000000A000000090F350D04045489FD1386ACFC00000003045489FF0000000913867108000000040C9A87000F8750F70C9A86F80000000A0F8750F90000000900000001000000000F878CF70000000000000009138670FC0000000900000003000000020F34D0F80CFD9C050F34D104000000020000000A0F350D04045489FD1386ACFC00000003045489FF1386AD080C9A870000000005000000090000000400000005000000050000000200000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C05000000090F350D0400000009000000020F34D0F80CFD9C05000000090F350D04045489FD1386ACFC00000003045489FF000000090000000500000005000000020000000100000003"
theorem small_5688697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688697_right_root small_5688697_right_fuel small_5688697_right_count small_5688697_right_encoded = true := by
  decide +kernel
theorem small_5688697_right_covered : CoveredBy scale carrier boxes small_5688697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688697_right_root small_5688697_right_fuel small_5688697_right_count small_5688697_right_encoded small_5688697_right_checked

theorem cover_5688697 : CoveredBy scale carrier boxes root_5688697 := by
  apply coveredBy_split_literal root_5688697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688698 small_5688697_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688698
  · exact small_5688697_right_covered
#print axioms cover_5688697

def root_5688692 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688692_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688692_right_fuel : Nat := 1
def small_5688692_right_count : Nat := 1
def small_5688692_right_encoded : String := "00000002"
theorem small_5688692_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688692_right_root small_5688692_right_fuel small_5688692_right_count small_5688692_right_encoded = true := by
  decide +kernel
theorem small_5688692_right_covered : CoveredBy scale carrier boxes small_5688692_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688692_right_root small_5688692_right_fuel small_5688692_right_count small_5688692_right_encoded small_5688692_right_checked

theorem cover_5688692 : CoveredBy scale carrier boxes root_5688692 := by
  apply coveredBy_split_literal root_5688692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688697 small_5688692_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688697
  · exact small_5688692_right_covered
#print axioms cover_5688692

def root_5688444 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688444_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688444_left_fuel : Nat := 17
def small_5688444_left_count : Nat := 115
def small_5688444_left_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF80000000104548A05000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040000000500000009000000020F34D0F804548A0513867104000000020CFD9BFD0F350CFC0000000300000007000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000009000000040F34D108000000040C9A8700000000070000000A0F34D0FC00000009000000030000000200000001000000000F34D100000000000CFD9BF900000009000000090000000412070108000000040CFD9BF70F350D000CFD9BF90F350CF80000000104548A0513867104000000020000000A1386AD040CFD9BFD0F350CFC00000003045489FF000000050000000A0F34D0FC0000000A00000003000000020F34D0F80000000A00000001000000000F34D100000000000CFD9BF90F350CF80000000104548A05000000091386AD040CFD9BFD0000000A00000009000000020F34D0F80000000A00000001120700FC08A912FF0000000912070108000000040CFD9BF70F350D000CFD9BF90000000900000009000000000F34D100000000000000000900000003"
theorem small_5688444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688444_left_root small_5688444_left_fuel small_5688444_left_count small_5688444_left_encoded = true := by
  decide +kernel
theorem small_5688444_left_covered : CoveredBy scale carrier boxes small_5688444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688444_left_root small_5688444_left_fuel small_5688444_left_count small_5688444_left_encoded small_5688444_left_checked

theorem cover_5688444 : CoveredBy scale carrier boxes root_5688444 := by
  apply coveredBy_split_literal root_5688444 small_5688444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688692 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5688444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688692
#print axioms cover_5688444

def root_5688438 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688438_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688438_left_fuel : Nat := 1
def small_5688438_left_count : Nat := 1
def small_5688438_left_encoded : String := "00000001"
theorem small_5688438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688438_left_root small_5688438_left_fuel small_5688438_left_count small_5688438_left_encoded = true := by
  decide +kernel
theorem small_5688438_left_covered : CoveredBy scale carrier boxes small_5688438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688438_left_root small_5688438_left_fuel small_5688438_left_count small_5688438_left_encoded small_5688438_left_checked

theorem cover_5688438 : CoveredBy scale carrier boxes root_5688438 := by
  apply coveredBy_split_literal root_5688438 small_5688438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688444 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5688438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688444
#print axioms cover_5688438

def root_5688437 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688437_right_fuel : Nat := 24
def small_5688437_right_count : Nat := 479
def small_5688437_right_encoded : String := "120700F808A91305120701040000000208A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350D00045489F91386ACF80000000104548A0513867104000000020CFD9BFD00000007000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000700000004000000070F34D0FC000000090000000300000002138670F804548A0513867104000000020CFD9BFD000000070F34D0FC0000000A000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000600000004000000070F34D0FC0CFD9BFF000000090000000A000000030000000200000001000000000F34D10000000000045489F91386ACF80000000104548A0513867104000000020CFD9BFD00000007000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF00000006000000070000000900000002138670F804548A0513867104000000020CFD9BFD000000070F34D0FC00000007000000031386AD040CFD9BFD000000060F34D0FC0CFD9BFF00000006000000090000000300000002000000010000000412070108000000040CFD9BF70F350D00045489F90000000A0000000A000000000F34D100000000000000000A120700FC08A912FF12073D080CFD9BF70F350D0000000009000000000F34D10000000000045489F900000009138670F800000009000000010000000412070108000000040000000A0000000312073D0408A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F8750F70C9A86FC0F878CFD00000003067ECE790000000A000000070F8750FD0000000700000003000000000F878CF7000000000C9A86FC0F878CFD00000003067ECE790000000A000000060F8750FD00000006000000030F34D0FC0CFD9BFF000000090F34D108000000040C9A87000F8750F70000000A0000000000000009000000030F350D040CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040C9A87000F8750F70C9A8704000000060F878D05067ECE7900000009000000060000000200000000000000060000000300000002138670F80CFD9C050F34D104000000020CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040C9A87000F8750F70000000A0000000000000006000000030000000600000001000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000060000000900000006000000060000000412070108000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8750F70000000A000000000000000A000000040000000A0F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A87040F875105000000020C9A86FC000000060F8750FD00000006000000030F878D050C9A86FC0000000A0F8750FD000000070000000300000002000000000F878CF7000000000C9A8704000000060F878D050C9A86FC000000060F8750FD0000000600000003000000020000000413867108000000040C9A87000F8750F70C9A87040F875105000000020C9A86FC000000050F8750FD00000008000000030000000A000000000F878CF7000000000C9A87040F875105000000020C9A86FC00000005000000080000000A0F34D0FC045489FF1386AD080C9A8700000000050F878CF7000000000C9A8704000000050000000A00000004000000050000000300000002138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A8700000000070000000800000004000000080F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A870000000005000000080F34D0FC00000005000000030000000200000001000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0000000A0F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A8704000000080F878D0500000008000000020F34D0FC045489FF00000006000000050000000300000002138670F80CFD9C050F34D104000000020CFD9BFD0000000A0F34D0FC0000000A000000030F350D040CFD9BFD000000060F34D0FC00000005000000030000000200000001120700FC08A912FF12073D080CFD9BF70F350D00045489F91386ACF8000000010CFD9C05000000090F350D04045489FD1386ACFC000000030CFD9BFF00000006000000050000000500000002138670F80CFD9C05000000090000000500000001000000000F34D10000000000000000090000000412070108000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020000000A0000000500000005000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D10400000002000000090000000500000005000000030000000200000001"
theorem small_5688437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688437_right_root small_5688437_right_fuel small_5688437_right_count small_5688437_right_encoded = true := by
  decide +kernel
theorem small_5688437_right_covered : CoveredBy scale carrier boxes small_5688437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688437_right_root small_5688437_right_fuel small_5688437_right_count small_5688437_right_encoded small_5688437_right_checked

theorem cover_5688437 : CoveredBy scale carrier boxes root_5688437 := by
  apply coveredBy_split_literal root_5688437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688438 small_5688437_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688438
  · exact small_5688437_right_covered
#print axioms cover_5688437

def root_5688432 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688432_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688432_right_fuel : Nat := 1
def small_5688432_right_count : Nat := 1
def small_5688432_right_encoded : String := "00000000"
theorem small_5688432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688432_right_root small_5688432_right_fuel small_5688432_right_count small_5688432_right_encoded = true := by
  decide +kernel
theorem small_5688432_right_covered : CoveredBy scale carrier boxes small_5688432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688432_right_root small_5688432_right_fuel small_5688432_right_count small_5688432_right_encoded small_5688432_right_checked

theorem cover_5688432 : CoveredBy scale carrier boxes root_5688432 := by
  apply coveredBy_split_literal root_5688432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688437 small_5688432_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688437
  · exact small_5688432_right_covered
#print axioms cover_5688432

def root_5688431 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5688431 : CoveredBy scale carrier boxes root_5688431 := by
  apply coveredBy_split_literal root_5688431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688432 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2135.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2135.covered
#print axioms cover_5688431

def root_5688425 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688425_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688425_left_fuel : Nat := 1
def small_5688425_left_count : Nat := 1
def small_5688425_left_encoded : String := "00000004"
theorem small_5688425_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688425_left_root small_5688425_left_fuel small_5688425_left_count small_5688425_left_encoded = true := by
  decide +kernel
theorem small_5688425_left_covered : CoveredBy scale carrier boxes small_5688425_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688425_left_root small_5688425_left_fuel small_5688425_left_count small_5688425_left_encoded small_5688425_left_checked

theorem cover_5688425 : CoveredBy scale carrier boxes root_5688425 := by
  apply coveredBy_split_literal root_5688425 small_5688425_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688431 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5688425_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688431
#print axioms cover_5688425

def root_5688257 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688257_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688257_left_fuel : Nat := 17
def small_5688257_left_count : Nat := 79
def small_5688257_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073CF80000000108A913050000000912073D0408A912FD12073CFC0000000305000108135D44FF0CFD9BF70F350D000CFD9BF90000000900000006000000000000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350CF800000001000000090F34D0F80CFD9C05000000090000000600000001000000000F34D1000000000000000009120700FC000000090000000300000002120700F808A91305120701040000000208A912FD12073CFC00000003000000090000000912073D0408A912FD00000006120700FC0000000600000003000000020000000100000000120701000000000008A912F912073CF80000000108A913050000000900000009120700F808A91305120701040000000208A912FD0000000600000009000000060000000100000004"
theorem small_5688257_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688257_left_root small_5688257_left_fuel small_5688257_left_count small_5688257_left_encoded = true := by
  decide +kernel
theorem small_5688257_left_covered : CoveredBy scale carrier boxes small_5688257_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688257_left_root small_5688257_left_fuel small_5688257_left_count small_5688257_left_encoded small_5688257_left_checked

theorem cover_5688257 : CoveredBy scale carrier boxes root_5688257 := by
  apply coveredBy_split_literal root_5688257 small_5688257_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688425 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5688257_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688425
#print axioms cover_5688257

def root_5688251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688251_left_fuel : Nat := 1
def small_5688251_left_count : Nat := 1
def small_5688251_left_encoded : String := "00000003"
theorem small_5688251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688251_left_root small_5688251_left_fuel small_5688251_left_count small_5688251_left_encoded = true := by
  decide +kernel
theorem small_5688251_left_covered : CoveredBy scale carrier boxes small_5688251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688251_left_root small_5688251_left_fuel small_5688251_left_count small_5688251_left_encoded small_5688251_left_checked

theorem cover_5688251 : CoveredBy scale carrier boxes root_5688251 := by
  apply coveredBy_split_literal root_5688251 small_5688251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688257 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5688251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688257
#print axioms cover_5688251

def root_5688250 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5688250 : CoveredBy scale carrier boxes root_5688250 := by
  apply coveredBy_split_literal root_5688250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688251 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2136.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688251
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2136.covered
#print axioms cover_5688250

def root_5688245 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688245_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688245_right_fuel : Nat := 1
def small_5688245_right_count : Nat := 1
def small_5688245_right_encoded : String := "00000002"
theorem small_5688245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688245_right_root small_5688245_right_fuel small_5688245_right_count small_5688245_right_encoded = true := by
  decide +kernel
theorem small_5688245_right_covered : CoveredBy scale carrier boxes small_5688245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688245_right_root small_5688245_right_fuel small_5688245_right_count small_5688245_right_encoded small_5688245_right_checked

theorem cover_5688245 : CoveredBy scale carrier boxes root_5688245 := by
  apply coveredBy_split_literal root_5688245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688250 small_5688245_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688250
  · exact small_5688245_right_covered
#print axioms cover_5688245

def root_5665971 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5665971 : CoveredBy scale carrier boxes root_5665971 := by
  apply coveredBy_split_literal root_5665971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5665972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5688245 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5665972
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5688245
#print axioms cover_5665971

def root_5665965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665965_left_fuel : Nat := 1
def small_5665965_left_count : Nat := 1
def small_5665965_left_encoded : String := "00000001"
theorem small_5665965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665965_left_root small_5665965_left_fuel small_5665965_left_count small_5665965_left_encoded = true := by
  decide +kernel
theorem small_5665965_left_covered : CoveredBy scale carrier boxes small_5665965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665965_left_root small_5665965_left_fuel small_5665965_left_count small_5665965_left_encoded small_5665965_left_checked

theorem cover_5665965 : CoveredBy scale carrier boxes root_5665965 := by
  apply coveredBy_split_literal root_5665965 small_5665965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5665971 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5665965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5665971
#print axioms cover_5665965

def root_5698127 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698127_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698127_right_fuel : Nat := 20
def small_5698127_right_count : Nat := 65
def small_5698127_right_encoded : String := "120701000000000008A912FD12073CFC0000000308A912FF000000091207010800000004050000F8135D80F90000000105000104135D450500000002045489F71386AD000CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A86FC000000070F8750FD078000F8000000070000000900000003000000090000000000000009135D8105045489F71386AD000CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A86FC000000090F8750FD078000F8128A7CF900000001000000090000000900000003000000090000000013867100000000000000000900000002135D44F90000000900000001120700FC0000000900000003"
theorem small_5698127_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698127_right_root small_5698127_right_fuel small_5698127_right_count small_5698127_right_encoded = true := by
  decide +kernel
theorem small_5698127_right_covered : CoveredBy scale carrier boxes small_5698127_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698127_right_root small_5698127_right_fuel small_5698127_right_count small_5698127_right_encoded small_5698127_right_checked

theorem cover_5698127 : CoveredBy scale carrier boxes root_5698127 := by
  apply coveredBy_split_literal root_5698127 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2137.root small_5698127_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2137.covered
  · exact small_5698127_right_covered
#print axioms cover_5698127

def root_5698121 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698121_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698121_left_fuel : Nat := 1
def small_5698121_left_count : Nat := 1
def small_5698121_left_encoded : String := "00000004"
theorem small_5698121_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698121_left_root small_5698121_left_fuel small_5698121_left_count small_5698121_left_encoded = true := by
  decide +kernel
theorem small_5698121_left_covered : CoveredBy scale carrier boxes small_5698121_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698121_left_root small_5698121_left_fuel small_5698121_left_count small_5698121_left_encoded small_5698121_left_checked

theorem cover_5698121 : CoveredBy scale carrier boxes root_5698121 := by
  apply coveredBy_split_literal root_5698121 small_5698121_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698127 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5698121_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698127
#print axioms cover_5698121

def root_5698059 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698059_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698059_left_fuel : Nat := 10
def small_5698059_left_count : Nat := 29
def small_5698059_left_encoded : String := "1151E8FF08A912F712073D0008A912FD12073CFC00000003050000F8135D80F900000001050001040000000600000009135D44F905000104135D450500000002000000060000000900000001120700FC050000F8000000090000000A000000030000000012070100000000000000000900000004"
theorem small_5698059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698059_left_root small_5698059_left_fuel small_5698059_left_count small_5698059_left_encoded = true := by
  decide +kernel
theorem small_5698059_left_covered : CoveredBy scale carrier boxes small_5698059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698059_left_root small_5698059_left_fuel small_5698059_left_count small_5698059_left_encoded small_5698059_left_checked

theorem cover_5698059 : CoveredBy scale carrier boxes root_5698059 := by
  apply coveredBy_split_literal root_5698059 small_5698059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698121 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5698059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698121
#print axioms cover_5698059

def root_5698053 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698053_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698053_left_fuel : Nat := 1
def small_5698053_left_count : Nat := 1
def small_5698053_left_encoded : String := "00000003"
theorem small_5698053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698053_left_root small_5698053_left_fuel small_5698053_left_count small_5698053_left_encoded = true := by
  decide +kernel
theorem small_5698053_left_covered : CoveredBy scale carrier boxes small_5698053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698053_left_root small_5698053_left_fuel small_5698053_left_count small_5698053_left_encoded small_5698053_left_checked

theorem cover_5698053 : CoveredBy scale carrier boxes root_5698053 := by
  apply coveredBy_split_literal root_5698053 small_5698053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698059 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5698053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698059
#print axioms cover_5698053

def root_5698052 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5698052 : CoveredBy scale carrier boxes root_5698052 := by
  apply coveredBy_split_literal root_5698052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698053 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2138.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698053
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2138.covered
#print axioms cover_5698052

def root_5698046 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698046_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698046_left_fuel : Nat := 1
def small_5698046_left_count : Nat := 1
def small_5698046_left_encoded : String := "00000002"
theorem small_5698046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698046_left_root small_5698046_left_fuel small_5698046_left_count small_5698046_left_encoded = true := by
  decide +kernel
theorem small_5698046_left_covered : CoveredBy scale carrier boxes small_5698046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698046_left_root small_5698046_left_fuel small_5698046_left_count small_5698046_left_encoded small_5698046_left_checked

theorem cover_5698046 : CoveredBy scale carrier boxes root_5698046 := by
  apply coveredBy_split_literal root_5698046 small_5698046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698052 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5698046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698052
#print axioms cover_5698046

def root_5698045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5698045 : CoveredBy scale carrier boxes root_5698045 := by
  apply coveredBy_split_literal root_5698045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698046 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2139.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698046
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2139.covered
#print axioms cover_5698045

def root_5698040 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698040_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698040_right_fuel : Nat := 1
def small_5698040_right_count : Nat := 1
def small_5698040_right_encoded : String := "00000001"
theorem small_5698040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698040_right_root small_5698040_right_fuel small_5698040_right_count small_5698040_right_encoded = true := by
  decide +kernel
theorem small_5698040_right_covered : CoveredBy scale carrier boxes small_5698040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698040_right_root small_5698040_right_fuel small_5698040_right_count small_5698040_right_encoded small_5698040_right_checked

theorem cover_5698040 : CoveredBy scale carrier boxes root_5698040 := by
  apply coveredBy_split_literal root_5698040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698045 small_5698040_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698045
  · exact small_5698040_right_covered
#print axioms cover_5698040

def root_5665964 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5665964 : CoveredBy scale carrier boxes root_5665964 := by
  apply coveredBy_split_literal root_5665964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5665965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5698040 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5665965
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5698040
#print axioms cover_5665964

def root_5665958 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665958_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665958_left_fuel : Nat := 1
def small_5665958_left_count : Nat := 1
def small_5665958_left_encoded : String := "00000000"
theorem small_5665958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665958_left_root small_5665958_left_fuel small_5665958_left_count small_5665958_left_encoded = true := by
  decide +kernel
theorem small_5665958_left_covered : CoveredBy scale carrier boxes small_5665958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665958_left_root small_5665958_left_fuel small_5665958_left_count small_5665958_left_encoded small_5665958_left_checked

theorem cover_5665958 : CoveredBy scale carrier boxes root_5665958 := by
  apply coveredBy_split_literal root_5665958 small_5665958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5665964 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5665958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5665964
#print axioms cover_5665958

def root_5652744 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652744 : CoveredBy scale carrier boxes root_5652744 := by
  apply coveredBy_split_literal root_5652744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0396.root_5652745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5665958 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0396.cover_5652745
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5665958
#print axioms cover_5652744

def root_5711187 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711187_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711187_right_fuel : Nat := 14
def small_5711187_right_count : Nat := 39
def small_5711187_right_encoded : String := "120701000000000008A912F912073CF80000000108A91309120701080000000405000104135D450500000002050000FC135D80FD00000003045489F7000000080000000800000008135D8105050000FC135D80FD00000003045489F71386AD000CFD9BF90F350CF800000001000000080000000800000000138671000000000000000008000000080000000200000008120700F80000000800000001"
theorem small_5711187_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711187_right_root small_5711187_right_fuel small_5711187_right_count small_5711187_right_encoded = true := by
  decide +kernel
theorem small_5711187_right_covered : CoveredBy scale carrier boxes small_5711187_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711187_right_root small_5711187_right_fuel small_5711187_right_count small_5711187_right_encoded small_5711187_right_checked

theorem cover_5711187 : CoveredBy scale carrier boxes root_5711187 := by
  apply coveredBy_split_literal root_5711187 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2142.root small_5711187_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2142.covered
  · exact small_5711187_right_covered
#print axioms cover_5711187

def root_5711182 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711182_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711182_right_fuel : Nat := 1
def small_5711182_right_count : Nat := 1
def small_5711182_right_encoded : String := "00000004"
theorem small_5711182_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711182_right_root small_5711182_right_fuel small_5711182_right_count small_5711182_right_encoded = true := by
  decide +kernel
theorem small_5711182_right_covered : CoveredBy scale carrier boxes small_5711182_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711182_right_root small_5711182_right_fuel small_5711182_right_count small_5711182_right_encoded small_5711182_right_checked

theorem cover_5711182 : CoveredBy scale carrier boxes root_5711182 := by
  apply coveredBy_split_literal root_5711182 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5711187 small_5711182_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5711187
  · exact small_5711182_right_covered
#print axioms cover_5711182

def root_5711150 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711150_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711150_left_fuel : Nat := 7
def small_5711150_left_count : Nat := 15
def small_5711150_left_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF800000001050001040000000500000008120700F800000005000000010000000000000008"
theorem small_5711150_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711150_left_root small_5711150_left_fuel small_5711150_left_count small_5711150_left_encoded = true := by
  decide +kernel
theorem small_5711150_left_covered : CoveredBy scale carrier boxes small_5711150_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711150_left_root small_5711150_left_fuel small_5711150_left_count small_5711150_left_encoded small_5711150_left_checked

theorem cover_5711150 : CoveredBy scale carrier boxes root_5711150 := by
  apply coveredBy_split_literal root_5711150 small_5711150_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5711182 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5711150_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5711182
#print axioms cover_5711150

def root_5711145 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711145_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711145_right_fuel : Nat := 1
def small_5711145_right_count : Nat := 1
def small_5711145_right_encoded : String := "00000003"
theorem small_5711145_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711145_right_root small_5711145_right_fuel small_5711145_right_count small_5711145_right_encoded = true := by
  decide +kernel
theorem small_5711145_right_covered : CoveredBy scale carrier boxes small_5711145_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711145_right_root small_5711145_right_fuel small_5711145_right_count small_5711145_right_encoded small_5711145_right_checked

theorem cover_5711145 : CoveredBy scale carrier boxes root_5711145 := by
  apply coveredBy_split_literal root_5711145 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5711150 small_5711145_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5711150
  · exact small_5711145_right_covered
#print axioms cover_5711145

def root_5708131 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5708131 : CoveredBy scale carrier boxes root_5708131 := by
  apply coveredBy_split_literal root_5708131 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2141.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5711145 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2141.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5711145
#print axioms cover_5708131

def root_5708125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708125_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708125_left_fuel : Nat := 1
def small_5708125_left_count : Nat := 1
def small_5708125_left_encoded : String := "00000002"
theorem small_5708125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5708125_left_root small_5708125_left_fuel small_5708125_left_count small_5708125_left_encoded = true := by
  decide +kernel
theorem small_5708125_left_covered : CoveredBy scale carrier boxes small_5708125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5708125_left_root small_5708125_left_fuel small_5708125_left_count small_5708125_left_encoded small_5708125_left_checked

theorem cover_5708125 : CoveredBy scale carrier boxes root_5708125 := by
  apply coveredBy_split_literal root_5708125 small_5708125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5708131 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5708125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5708131
#print axioms cover_5708125

def root_5708124 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5708124 : CoveredBy scale carrier boxes root_5708124 := by
  apply coveredBy_split_literal root_5708124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5708125 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2143.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5708125
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2143.covered
#print axioms cover_5708124

def root_5708118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708118_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708118_left_fuel : Nat := 1
def small_5708118_left_count : Nat := 1
def small_5708118_left_encoded : String := "00000001"
theorem small_5708118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5708118_left_root small_5708118_left_fuel small_5708118_left_count small_5708118_left_encoded = true := by
  decide +kernel
theorem small_5708118_left_covered : CoveredBy scale carrier boxes small_5708118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5708118_left_root small_5708118_left_fuel small_5708118_left_count small_5708118_left_encoded small_5708118_left_checked

theorem cover_5708118 : CoveredBy scale carrier boxes root_5708118 := by
  apply coveredBy_split_literal root_5708118 small_5708118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5708124 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5708118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5708124
#print axioms cover_5708118

def root_5716064 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5716064 : CoveredBy scale carrier boxes root_5716064 := by
  apply coveredBy_split_literal root_5716064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2144.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2145.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2144.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2145.covered
#print axioms cover_5716064

def root_5716058 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716058_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716058_left_fuel : Nat := 1
def small_5716058_left_count : Nat := 1
def small_5716058_left_encoded : String := "00000001"
theorem small_5716058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716058_left_root small_5716058_left_fuel small_5716058_left_count small_5716058_left_encoded = true := by
  decide +kernel
theorem small_5716058_left_covered : CoveredBy scale carrier boxes small_5716058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716058_left_root small_5716058_left_fuel small_5716058_left_count small_5716058_left_encoded small_5716058_left_checked

theorem cover_5716058 : CoveredBy scale carrier boxes root_5716058 := by
  apply coveredBy_split_literal root_5716058 small_5716058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5716064 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5716058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5716064
#print axioms cover_5716058

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399

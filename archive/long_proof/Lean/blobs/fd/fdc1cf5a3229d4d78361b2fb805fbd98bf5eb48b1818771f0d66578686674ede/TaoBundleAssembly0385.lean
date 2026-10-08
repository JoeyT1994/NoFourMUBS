import TaoBundleAssembly0384
import TaoBundleChunkBatch0510
import TaoBundleChunkBatch0511
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385
def root_5441772 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441772_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441772_right_fuel : Nat := 26
def small_5441772_right_count : Nat := 175
def small_5441772_right_encoded : String := "12073CFA0000000208A91309120701080000000405000100135D44F7050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A0913867108000000040C9A86F80F878CF900000001000000050F8750F9028001000000000913D7ECF700000000078000FC128A7CFD0000000300000005000000090000000100000005000000020000000500000005135D44FD0CFD9BF90F350CF8000000010CFD9C050F34D0FA0000000900000002000000090F34D0F800000005000000010000000300000000135D80F700000000050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A0913867108000000040C9A86F80F878CF900000001000000050F8750F907800100128A40F7078000FC128A7CFD0000000300000005128A40FD000000090000000300000000128A7CF700000000078000FC128A7CFD0000000300000005128A40FD0AD3578510D100FA022A458913E1C508000000040B4D43F810804CF90000000100000005108010F90000000A00000001000000050000000200000005000000030000000100000005000000020F350CFA0000000204548A0913867108000000040C9A86F8000000050F8750F90C9A86FA000000050F875105000000020000000500000001000000050F34D0F80000000500000001135D44FD0CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A0913867108000000040C9A86F80F878CF9000000010780010000000009128A7CF700000000028000FC13D7ECFD000000030AD3578510D100FA000000050000000200000005000000090F8750F9000000090000000100000009000000020F350CFA0000000204548A0913867108000000040C9A86F8000000090F8750F90000000900000001000000090F34D0F80CFD9C050F34D0FA000000050000000200000005000000010000000312073D080000000500000004"
theorem small_5441772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441772_right_root small_5441772_right_fuel small_5441772_right_count small_5441772_right_encoded = true := by
  decide +kernel
theorem small_5441772_right_covered : CoveredBy scale carrier boxes small_5441772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441772_right_root small_5441772_right_fuel small_5441772_right_count small_5441772_right_encoded small_5441772_right_checked

theorem cover_5441772 : CoveredBy scale carrier boxes root_5441772 := by
  apply coveredBy_split_literal root_5441772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5441773 small_5441772_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5441773
  · exact small_5441772_right_covered
#print axioms cover_5441772

def root_5441766 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441766_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441766_left_fuel : Nat := 1
def small_5441766_left_count : Nat := 1
def small_5441766_left_encoded : String := "00000001"
theorem small_5441766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441766_left_root small_5441766_left_fuel small_5441766_left_count small_5441766_left_encoded = true := by
  decide +kernel
theorem small_5441766_left_covered : CoveredBy scale carrier boxes small_5441766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441766_left_root small_5441766_left_fuel small_5441766_left_count small_5441766_left_encoded small_5441766_left_checked

theorem cover_5441766 : CoveredBy scale carrier boxes root_5441766 := by
  apply coveredBy_split_literal root_5441766 small_5441766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5441772 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5441766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5441772
#print axioms cover_5441766

def root_5441765 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441765_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441765_right_fuel : Nat := 13
def small_5441765_right_count : Nat := 31
def small_5441765_right_encoded : String := "120700F808A91305120700FA08A91309120701080000000405000100135D44F7050000FC135D80FD00000003045489F91386ACF80000000104548A050000000700000005000000050000000700000000135D80F700000000050000FC00000005135D44FD000000070000000300000005000000020000000500000001"
theorem small_5441765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441765_right_root small_5441765_right_fuel small_5441765_right_count small_5441765_right_encoded = true := by
  decide +kernel
theorem small_5441765_right_covered : CoveredBy scale carrier boxes small_5441765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441765_right_root small_5441765_right_fuel small_5441765_right_count small_5441765_right_encoded small_5441765_right_checked

theorem cover_5441765 : CoveredBy scale carrier boxes root_5441765 := by
  apply coveredBy_split_literal root_5441765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5441766 small_5441765_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5441766
  · exact small_5441765_right_covered
#print axioms cover_5441765

def root_5441760 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441760_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441760_right_fuel : Nat := 1
def small_5441760_right_count : Nat := 1
def small_5441760_right_encoded : String := "00000004"
theorem small_5441760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441760_right_root small_5441760_right_fuel small_5441760_right_count small_5441760_right_encoded = true := by
  decide +kernel
theorem small_5441760_right_covered : CoveredBy scale carrier boxes small_5441760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441760_right_root small_5441760_right_fuel small_5441760_right_count small_5441760_right_encoded small_5441760_right_checked

theorem cover_5441760 : CoveredBy scale carrier boxes root_5441760 := by
  apply coveredBy_split_literal root_5441760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5441765 small_5441760_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5441765
  · exact small_5441760_right_covered
#print axioms cover_5441760

def root_5441744 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441744_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441744_left_fuel : Nat := 4
def small_5441744_left_count : Nat := 7
def small_5441744_left_encoded : String := "1151E9090000000408A912F912073CF8000000010000000500000005"
theorem small_5441744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441744_left_root small_5441744_left_fuel small_5441744_left_count small_5441744_left_encoded = true := by
  decide +kernel
theorem small_5441744_left_covered : CoveredBy scale carrier boxes small_5441744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441744_left_root small_5441744_left_fuel small_5441744_left_count small_5441744_left_encoded small_5441744_left_checked

theorem cover_5441744 : CoveredBy scale carrier boxes root_5441744 := by
  apply coveredBy_split_literal root_5441744 small_5441744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5441760 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5441744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5441760
#print axioms cover_5441744

def root_5441739 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441739_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441739_right_fuel : Nat := 1
def small_5441739_right_count : Nat := 1
def small_5441739_right_encoded : String := "00000003"
theorem small_5441739_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441739_right_root small_5441739_right_fuel small_5441739_right_count small_5441739_right_encoded = true := by
  decide +kernel
theorem small_5441739_right_covered : CoveredBy scale carrier boxes small_5441739_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441739_right_root small_5441739_right_fuel small_5441739_right_count small_5441739_right_encoded small_5441739_right_checked

theorem cover_5441739 : CoveredBy scale carrier boxes root_5441739 := by
  apply coveredBy_split_literal root_5441739 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5441744 small_5441739_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5441744
  · exact small_5441739_right_covered
#print axioms cover_5441739

def root_5439585 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5439585 : CoveredBy scale carrier boxes root_5439585 := by
  apply coveredBy_split_literal root_5439585 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2037.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5441739 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2037.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5441739
#print axioms cover_5439585

def root_5439580 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439580_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439580_right_fuel : Nat := 1
def small_5439580_right_count : Nat := 1
def small_5439580_right_encoded : String := "00000002"
theorem small_5439580_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439580_right_root small_5439580_right_fuel small_5439580_right_count small_5439580_right_encoded = true := by
  decide +kernel
theorem small_5439580_right_covered : CoveredBy scale carrier boxes small_5439580_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439580_right_root small_5439580_right_fuel small_5439580_right_count small_5439580_right_encoded small_5439580_right_checked

theorem cover_5439580 : CoveredBy scale carrier boxes root_5439580 := by
  apply coveredBy_split_literal root_5439580 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5439585 small_5439580_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5439585
  · exact small_5439580_right_covered
#print axioms cover_5439580

def root_5439579 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439579_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439579_right_fuel : Nat := 24
def small_5439579_right_count : Nat := 95
def small_5439579_right_encoded : String := "1151E905000000020A0000FC115224FD00000003000000051151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A91309120701080000000405000100135D44F7050000FA135D8105050000FC000000050000000900000002135D4505000000020000000900000000135D80F700000000050000FA135D8105050000FC135D80FD000000030CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000050F8750F90780010000000005128A7CF70000000000000005000000010000000500000005135D44FD0CFD9BF9000000090F34D0F800000005000000010000000300000002135D450500000002050000FC135D80FD000000030CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000050F8750F900000009000000010000000500000005135D44FD000000090000000312073D080500010000000005135D80F7000000000000000500000004120700F800000005000000010000000400000003"
theorem small_5439579_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439579_right_root small_5439579_right_fuel small_5439579_right_count small_5439579_right_encoded = true := by
  decide +kernel
theorem small_5439579_right_covered : CoveredBy scale carrier boxes small_5439579_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439579_right_root small_5439579_right_fuel small_5439579_right_count small_5439579_right_encoded small_5439579_right_checked

theorem cover_5439579 : CoveredBy scale carrier boxes root_5439579 := by
  apply coveredBy_split_literal root_5439579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5439580 small_5439579_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5439580
  · exact small_5439579_right_covered
#print axioms cover_5439579

def root_5439573 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439573_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439573_left_fuel : Nat := 1
def small_5439573_left_count : Nat := 1
def small_5439573_left_encoded : String := "00000001"
theorem small_5439573_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439573_left_root small_5439573_left_fuel small_5439573_left_count small_5439573_left_encoded = true := by
  decide +kernel
theorem small_5439573_left_covered : CoveredBy scale carrier boxes small_5439573_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439573_left_root small_5439573_left_fuel small_5439573_left_count small_5439573_left_encoded small_5439573_left_checked

theorem cover_5439573 : CoveredBy scale carrier boxes root_5439573 := by
  apply coveredBy_split_literal root_5439573 small_5439573_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5439579 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5439573_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5439579
#print axioms cover_5439573

def root_5453373 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453373_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453373_right_fuel : Nat := 25
def small_5453373_right_count : Nat := 339
def small_5453373_right_encoded : String := "128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003022A458513E1C4FA022A458913E1C5080000000408C0010011FBE8F708C000F800000008000000050000000011FC24F7000000000000000913E2010808C0010011FBE8F708C000F80000000811FBE8F908C000FC0000000700000008000000010000000011FC24F70000000000000007000000040000000213E200FA00000002022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F90000000108C000FC11FC24FD00000003033F67C5000000080000000711FBE8FD033F67C50000000813BC30FA000000020115234913F859080000000408200100000000080000000813F8950800000008000000040000000311FBE8F908C000FC0000000711FBE8FD033F67C50000000513BC30FA0000000201152349000000050000000700000003000000010000000011FC24F70000000008C000F811FC24F90000000108C000FC000000070000000811FBE8F9000000070000000113E2010808C0010011FBE8F708C000F811FC24F90000000108C000FC0000000711FBE8FD033F67C50000000813BC30FA00000002033F67C900000008000000070000000311FBE8F90000000700000001000000000000000700000004128A40FD022A458513E1C4FA022A45890000000513E2010808C0010011FBE8F708C000F80000000811FBE8F900000005000000010000000011FC24F70000000000000008000000040000000213E200FA00000002022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD00000003033F67C50000000513BC30FA0000000201152349000000050000000812FF70FD000000050000000311FBE8F900000005000000010000000011FC24F70000000008C000F811FC24F9000000010000000811FBE8F9064000FC12FFACFD00000003033F67C5000000050000000A000000050000000113E2010808C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD00000003033F67C50000000813BC30FA00000002033F67C9000000080000000812FF70FD033F67C50000000813BC30FA00000002033F67C900000008000000080000000311FBE8F9064000FC12FFACFD00000003033F67C513BBF4FA033F67C90000000513BC3108082001000000000800000007000000040000000213BC30FA00000002033F67C913BBF508000000040820010012465CF7082000F8124698F90000000106E000FC00000007000000080000000A00000000000000070000000712FF70FD033F67C513BBF4FA033F67C900000005000000080000000213BC30FA00000002033F67C90000000A0000000900000003000000010000000011FC24F70000000008C000F811FC24F900000001064000FC000000080000000811FBE8F9064000FC12FFACFD000000030000000712FF70FD033F67C5000000080000000A00000003000000010000000400000003128A40F9078000FC128A7CFD00000003022A458513E1C4FA022A458900000005000000070000000213E200FA00000002022A458913E1C5080000000408C0010011FBE8F7064000F812FFACF90000000108C000FC0000000711FBE8FD000000050000000312FF70F90000000500000001000000000000000700000007128A40FD022A45850000000513E200FA00000002022A45890000000513E2010808C0010011FBE8F7064000F812FFACF900000001064000FC12FFACFD00000003033F67C5000000050000000712FF70FD0000000A0000000312FF70F90000000A000000010000000011FC24F700000000064000F812FFACF900000001064000FC000000070000000A0000000A000000040000000300000001"
theorem small_5453373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453373_right_root small_5453373_right_fuel small_5453373_right_count small_5453373_right_encoded = true := by
  decide +kernel
theorem small_5453373_right_covered : CoveredBy scale carrier boxes small_5453373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453373_right_root small_5453373_right_fuel small_5453373_right_count small_5453373_right_encoded small_5453373_right_checked

theorem cover_5453373 : CoveredBy scale carrier boxes root_5453373 := by
  apply coveredBy_split_literal root_5453373 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2043.root small_5453373_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2043.covered
  · exact small_5453373_right_covered
#print axioms cover_5453373

def root_5453367 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453367_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453367_left_fuel : Nat := 1
def small_5453367_left_count : Nat := 1
def small_5453367_left_encoded : String := "00000004"
theorem small_5453367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453367_left_root small_5453367_left_fuel small_5453367_left_count small_5453367_left_encoded = true := by
  decide +kernel
theorem small_5453367_left_covered : CoveredBy scale carrier boxes small_5453367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453367_left_root small_5453367_left_fuel small_5453367_left_count small_5453367_left_encoded small_5453367_left_checked

theorem cover_5453367 : CoveredBy scale carrier boxes root_5453367 := by
  apply coveredBy_split_literal root_5453367 small_5453367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5453373 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5453367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5453373
#print axioms cover_5453367

def root_5453366 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453366_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453366_right_fuel : Nat := 21
def small_5453366_right_count : Nat := 345
def small_5453366_right_encoded : String := "1386AD0807800100128A40F7078000F8128A7CF900000001078000FC128A7CFD00000003022A458513E1C4FA067ECE8912EA5908000000040640010012FF70F708C000F811FC24F90000000108C000FC0000000600000006000000060000000012FFACF70000000008C000F811FC24F90000000108C000FC0000000A0000000811FBE8F90000000600000001000000060000000213E200FA00000002067ECE8912EA5908000000040640010012FF70F708C000F811FC24F90000000108C000FC11FC24FD000000030000000600000009000000060000000012FFACF70000000008C000F811FC24F90000000108C000FC11FC24FD000000030000000711FBE8FD033F67C513BBF4FA0569AC49000000080000000600000002000000090000000311FBE8F908C000FC0000000611FBE8FD033F67C50000000600000006000000030000000112EA9508064001000000000512FFACF7000000000000000500000004128A40FD022A458513E1C4FA067ECE8912EA5908000000040640010012FF70F708C000F80000000911FBE8F900000009000000010000000012FFACF70000000008C000F811FC24F900000001064000FC000000080000000811FBE8F9064000FC12FFACFD00000003011523450000000600000006000000090000000100000009000000020000000900000003128A40F9078000FC128A7CFD00000003022A45850000000600000006128A40FD022A458513E1C4FA067ECE8912EA590800000004064001000000000612FFACF700000000064000F812FFACF9000000010000000600000006000000060000000213E200FA00000002067ECE8912EA590800000004064001000000000612FFACF700000000064000F8000000090000000600000006000000030000000100000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F708C000F80000000811FBE8F900000007000000010000000000000007000000070000000213E200FA00000002067ECE8912EA59080000000408C00100000000070000000700000007128A40FD022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F708C000F80000000811FBE8F9064000FC12FFACFD000000030000000800000008000000010000000011FC24F7000000000000000812EA950808C0010011FBE8F708C000F80000000811FBE8F900000009000000010000000011FC24F70000000000000008000000040000000213E200FA00000002067ECE8912EA59080000000408C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD00000003033F67C500000008000000090000000911FBE8F9064000FC12FFACFD00000003033F67C513BBF4FA00000007000000020000000700000009000000010000000011FC24F70000000008C000F811FC24F9000000010000000811FBE8F9064000FC0000000712FF70FD033F67C50000000800000007000000030000000112EA9508000000090000000400000003128A40F9078000FC128A7CFD00000003022A45850000000700000007128A40FD022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F7064000F812FFACF900000001064000FC0000000712FF70FD0115234500000005000000090000000312FF70F900000006000000010000000011FC24F7000000000000000712EA950808C001000000000600000007000000040000000213E200FA00000002067ECE8912EA59080000000408C0010011FBE8F7064000F812FFACF900000001064000FC000000070000000912FF70F9064000FC000000060000000600000001000000000000000712EA950808C00100000000090000000700000004000000030000000100000004"
theorem small_5453366_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453366_right_root small_5453366_right_fuel small_5453366_right_count small_5453366_right_encoded = true := by
  decide +kernel
theorem small_5453366_right_covered : CoveredBy scale carrier boxes small_5453366_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453366_right_root small_5453366_right_fuel small_5453366_right_count small_5453366_right_encoded small_5453366_right_checked

theorem cover_5453366 : CoveredBy scale carrier boxes root_5453366 := by
  apply coveredBy_split_literal root_5453366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5453367 small_5453366_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5453367
  · exact small_5453366_right_covered
#print axioms cover_5453366

def root_5453361 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453361_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453361_right_fuel : Nat := 1
def small_5453361_right_count : Nat := 1
def small_5453361_right_encoded : String := "00000002"
theorem small_5453361_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453361_right_root small_5453361_right_fuel small_5453361_right_count small_5453361_right_encoded = true := by
  decide +kernel
theorem small_5453361_right_covered : CoveredBy scale carrier boxes small_5453361_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453361_right_root small_5453361_right_fuel small_5453361_right_count small_5453361_right_encoded small_5453361_right_checked

theorem cover_5453361 : CoveredBy scale carrier boxes root_5453361 := by
  apply coveredBy_split_literal root_5453361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5453366 small_5453361_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5453366
  · exact small_5453361_right_covered
#print axioms cover_5453361

def root_5457497 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457497_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457497_right_fuel : Nat := 25
def small_5457497_right_count : Nat := 351
def small_5457497_right_encoded : String := "128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8512EA58FA022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F90000000108C000FC11FC24FD000000030569AC45000000070000000711FBE8FD0569AC451340D4FA0115234913F85908000000040820010012465CF7096000F811AABCF9000000010000000611AA80F90000000A0000000100000000124698F7000000000000000613F895080820010012465CF7096000F811AABCF9000000010000000811AA80F9000000070000000100000000000000070000000400000002134110FA000000020115234913F8590800000004082001000000000A0000000A13F895080820010012465CF7096000F811AABCF900000001082000FC000000070000000A0000000A0000000000000007000000040000000311FBE8F908C000FC0000000711FBE8FD0569AC451340D4FA011523490000000A00000007000000020000000A00000003000000010000000011FC24F70000000008C000F811FC24F90000000108C000FC0000000711FBE8FD0569AC450000000700000007000000030000000713E2010808C0010011FBE8F708C000F811FC24F90000000108C000FC0000000711FBE8FD0569AC451340D4FA033F67C913BBF50800000004000000070000000700000002000000070000000311FBE8F900000007000000010000000000000007000000040000000212EA94FA00000002022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F90000000108C000FC11FC24FD000000030000000711FBE8FD0793F0C5128220FA0000000A000000020000000A0000000311FBE8F908C000FC000000070000000A000000010000000011FC24F7000000000000000713E2010808C0010011FBE8F708C000F811FC24F9000000010000000511FBE8F90000000700000001000000000000000700000004128A40FD067ECE8512EA58FA022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD000000030569AC451340D4FA011523490000000613F895080820010012465CF7096000F8000000080000000A00000000124698F7000000000000000800000004000000020000000A0000000A0000000A0000000011FC24F70000000008C000F811FC24F900000001064000FC12FFACFD000000030569AC4500000008000000060000000A0000000A13E2010808C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD000000030569AC451340D4FA033F67C913BBF508000000040820010012465CF70000000900000000124698F700000000000000080000000900000002000000090000000911FBE8F9064000FC12FFACFD000000030569AC451340D4FA033F67C90000000A00000007000000020000000900000009000000010000000011FC24F70000000008C000F811FC24F900000001064000FC12FFACFD000000030569AC45000000080000000712FF70FD0569AC4500000008000000090000000311FBE8F9064000FC000000070000000A00000001000000040000000212EA94FA00000002022A45890000000A13E2010808C0010011FBE8F7000000090000000011FC24F70000000008C000F811FC24F900000001064000FC12FFACFD000000030793F0C5128220FA000000070000000200000005000000090000000A0000000400000003128A40F9078000FC128A7CFD00000003067ECE8512EA58FA022A458913E1C5080000000408C0010011FBE8F7064000F812FFACF90000000108C000FC000000070000000A000000070000000000000007000000070000000212EA94FA00000002022A45890000000A00000007128A40FD067ECE8512EA58FA022A45890000000A13E2010808C001000000000A0000000A00000004000000020000000A0000000300000001"
theorem small_5457497_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457497_right_root small_5457497_right_fuel small_5457497_right_count small_5457497_right_encoded = true := by
  decide +kernel
theorem small_5457497_right_covered : CoveredBy scale carrier boxes small_5457497_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457497_right_root small_5457497_right_fuel small_5457497_right_count small_5457497_right_encoded small_5457497_right_checked

theorem cover_5457497 : CoveredBy scale carrier boxes root_5457497 := by
  apply coveredBy_split_literal root_5457497 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2044.root small_5457497_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2044.covered
  · exact small_5457497_right_covered
#print axioms cover_5457497

def root_5457491 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457491_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457491_left_fuel : Nat := 1
def small_5457491_left_count : Nat := 1
def small_5457491_left_encoded : String := "00000004"
theorem small_5457491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457491_left_root small_5457491_left_fuel small_5457491_left_count small_5457491_left_encoded = true := by
  decide +kernel
theorem small_5457491_left_covered : CoveredBy scale carrier boxes small_5457491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457491_left_root small_5457491_left_fuel small_5457491_left_count small_5457491_left_encoded small_5457491_left_checked

theorem cover_5457491 : CoveredBy scale carrier boxes root_5457491 := by
  apply coveredBy_split_literal root_5457491 small_5457491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5457497 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5457491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5457497
#print axioms cover_5457491

def root_5457490 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457490_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457490_right_fuel : Nat := 17
def small_5457490_right_count : Nat := 107
def small_5457490_right_encoded : String := "1386AD0807800100128A40F7078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8512EA58FA067ECE8912EA5908000000040640010012FF70F7000000090000000012FFACF70000000008C000F80000000511FBE8F908C000FC00000005000000090000000100000005000000020000000500000009128A40F9078000FC128A7CFD00000003067ECE8512EA58FA067ECE8912EA59080000000400000006000000060000000200000009000000090000000100000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8512EA58FA067ECE8912EA59080000000400000007000000050000000200000005128A40FD067ECE8512EA58FA067ECE8912EA59080000000408C001000000000911FC24F70000000008C000F80000000911FBE8F9000000090000000100000009000000020000000900000003128A40F9078000FC128A7CFD00000003067ECE850000000700000007128A40FD067ECE8512EA58FA067ECE8912EA59080000000408C0010011FBE8F7000000090000000000000007000000090000000200000009000000030000000100000004"
theorem small_5457490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457490_right_root small_5457490_right_fuel small_5457490_right_count small_5457490_right_encoded = true := by
  decide +kernel
theorem small_5457490_right_covered : CoveredBy scale carrier boxes small_5457490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457490_right_root small_5457490_right_fuel small_5457490_right_count small_5457490_right_encoded small_5457490_right_checked

theorem cover_5457490 : CoveredBy scale carrier boxes root_5457490 := by
  apply coveredBy_split_literal root_5457490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5457491 small_5457490_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5457491
  · exact small_5457490_right_covered
#print axioms cover_5457490

def root_5457484 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457484_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457484_left_fuel : Nat := 1
def small_5457484_left_count : Nat := 1
def small_5457484_left_encoded : String := "00000002"
theorem small_5457484_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457484_left_root small_5457484_left_fuel small_5457484_left_count small_5457484_left_encoded = true := by
  decide +kernel
theorem small_5457484_left_covered : CoveredBy scale carrier boxes small_5457484_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457484_left_root small_5457484_left_fuel small_5457484_left_count small_5457484_left_encoded small_5457484_left_checked

theorem cover_5457484 : CoveredBy scale carrier boxes root_5457484 := by
  apply coveredBy_split_literal root_5457484 small_5457484_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5457490 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5457484_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5457490
#print axioms cover_5457484

def root_5453360 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5453360 : CoveredBy scale carrier boxes root_5453360 := by
  apply coveredBy_split_literal root_5453360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5453361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5457484 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5453361
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5457484
#print axioms cover_5453360

def root_5453354 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453354_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453354_left_fuel : Nat := 1
def small_5453354_left_count : Nat := 1
def small_5453354_left_encoded : String := "00000003"
theorem small_5453354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453354_left_root small_5453354_left_fuel small_5453354_left_count small_5453354_left_encoded = true := by
  decide +kernel
theorem small_5453354_left_covered : CoveredBy scale carrier boxes small_5453354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453354_left_root small_5453354_left_fuel small_5453354_left_count small_5453354_left_encoded small_5453354_left_checked

theorem cover_5453354 : CoveredBy scale carrier boxes root_5453354 := by
  apply coveredBy_split_literal root_5453354 small_5453354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5453360 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5453354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5453360
#print axioms cover_5453354

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385

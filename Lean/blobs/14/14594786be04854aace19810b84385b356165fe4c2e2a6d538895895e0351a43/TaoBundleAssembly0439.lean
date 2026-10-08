import TaoBundleAssembly0438
import TaoBundleChunkBatch0598
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439
def root_6355615 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6355615_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6355615_left_fuel : Nat := 19
def small_6355615_left_count : Nat := 303
def small_6355615_left_encoded : String := "120700F808A91305120701040000000208A912FD12073D0608A91309120700FE045489F71386AD000000000500000000000000050000000412073CFE00000004045489F71386AD0004548A03138670F804548A0513867104000000020CFD9BFD00000007000000071386AD040CFD9BFD000000070000000700000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D0FE0000000500000004000000071386AD040CFD9BFD0F350D0600000007000000030F34D106000000030CFD9C090F34D0FE0000000500000004000000070000000200000000138671000000000004548A03000000071386ACF80000000104548A0513867104000000020CFD9BFD0F350D060000000700000003000000070000000700000003120701060000000308A91309120700FE045489F7000000051386710000000000000000080000000412073CFE00000004045489F71386AD0004548A03138670F804548A051386710400000002045489FD1386AD060CFD9C090F34D0FE00000005000000040000000600000003000000061386AD04045489FD1386AD060CFD9C090F34D0FE0000000500000004000000070000000313867106000000030CFD9C090F34D0FE00000007000000040000000700000002000000011386ACF80000000104548A05000000081386AD04045489FD1386AD060CFD9C090F34D0FE0000000800000004000000070000000313867106000000030CFD9C090F34D0FE0000000800000004000000080000000200000000138671000000000004548A03138670F804548A050000000700000007000000011386ACF80000000104548A05000000081386AD04045489FD00000007000000070000000212073D0408A912FD12073D0608A91309120700FE000000050000000412073CFE00000004045489F71386AD0004548A03138670F80CFD9C050000000700000007000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9C090F34D0FE0000000500000004000000070F350D0400000007000000020000000013867100000000000000000700000003120701060000000308A91309120700FE045489F71386AD0004548A03000000051386ACF8000000010CFD9C05000000050F350D04045489FD000000050000000A0000000200000000138671000000000004548A03138670F80CFD9C05000000050F350D040000000500000002000000011386ACF8000000010CFD9C050F34D10400000002045489FD1386AD060000000500000003000000080F350D04045489FD0000000613867106000000030000000A000000020000000412073CFE00000004045489F71386AD0004548A03138670F800000009000000011386ACF8000000010CFD9C050F34D10400000002045489FD1386AD060CFD9C090F34D0FE067ECE77000000090000000700000004000000070000000313867106000000030CFD9C090F34D0FE067ECE77000000090000000700000004000000070F350D04000000090000000200000000138671000000000004548A03000000071386ACF8000000010CFD9C050F34D10400000002045489FD00000007000000070F350D0400000007000000020000000200000001"
theorem small_6355615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6355615_left_root small_6355615_left_fuel small_6355615_left_count small_6355615_left_encoded = true := by
  decide +kernel
theorem small_6355615_left_covered : CoveredBy scale carrier boxes small_6355615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6355615_left_root small_6355615_left_fuel small_6355615_left_count small_6355615_left_encoded small_6355615_left_checked

theorem cover_6355615 : CoveredBy scale carrier boxes root_6355615 := by
  apply coveredBy_split_literal root_6355615 small_6355615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2390.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6355615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2390.covered
#print axioms cover_6355615

def root_6355609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6355609_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6355609_left_fuel : Nat := 1
def small_6355609_left_count : Nat := 1
def small_6355609_left_encoded : String := "00000000"
theorem small_6355609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6355609_left_root small_6355609_left_fuel small_6355609_left_count small_6355609_left_encoded = true := by
  decide +kernel
theorem small_6355609_left_covered : CoveredBy scale carrier boxes small_6355609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6355609_left_root small_6355609_left_fuel small_6355609_left_count small_6355609_left_encoded small_6355609_left_checked

theorem cover_6355609 : CoveredBy scale carrier boxes root_6355609 := by
  apply coveredBy_split_literal root_6355609 small_6355609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6355615 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6355609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6355615
#print axioms cover_6355609

def root_6338725 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6338725 : CoveredBy scale carrier boxes root_6338725 := by
  apply coveredBy_split_literal root_6338725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0438.root_6338726 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6355609 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0438.cover_6338726
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6355609
#print axioms cover_6338725

def root_6338720 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6338720_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6338720_right_fuel : Nat := 1
def small_6338720_right_count : Nat := 1
def small_6338720_right_encoded : String := "00000004"
theorem small_6338720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6338720_right_root small_6338720_right_fuel small_6338720_right_count small_6338720_right_encoded = true := by
  decide +kernel
theorem small_6338720_right_covered : CoveredBy scale carrier boxes small_6338720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6338720_right_root small_6338720_right_fuel small_6338720_right_count small_6338720_right_encoded small_6338720_right_checked

theorem cover_6338720 : CoveredBy scale carrier boxes root_6338720 := by
  apply coveredBy_split_literal root_6338720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6338725 small_6338720_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6338725
  · exact small_6338720_right_covered
#print axioms cover_6338720

def root_6359308 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359308_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359308_right_fuel : Nat := 30
def small_6359308_right_count : Nat := 197
def small_6359308_right_encoded : String := "0F34D100000000000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060000000700000003000000071386AD040CFD9BFD000000070000000700000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A8706000000070F878CFD0000000300000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090AD3577710D13D00022A458513E1C504000000020B4D43F80000000A10801103000000010B4D44060000000710804CFD0000000300000007000000070000000010D1010000000000000000070000000400000007000000030F878CFD00000003078000FE128A7D090AD3577710D13D00022A458513E1C504000000020B4D43F810804D030DE7CA0600000007000000070000000110801103000000010DE7CA060E5FD8FD08C000FE11FC2509000000070000000400000007000000030E6014FD0000000308C000FE11FC25090BE879B71011AD000115234513F85904000000020DAED87D0E9661060000000700000003000000070000000700000000000000070000000400000005000000070000000010D1010000000000000000070000000400000007000000030F34D106000000030C9A86F80F878D03078000FE128A7D090AD3577710D13D00022A458513E1C504000000020AD3577D00000007000000070000000700000000000000070000000400000007000000010F87510300000001078000FE128A7D090AD3577710D13D00022A458513E1C504000000020AD3577D10D13D060B4D43F810804D030000000700000001000000050000000310D10106000000030000000513E201040AD3577D10D13D06000000070000000300000007000000020000000010D10100000000000000000500000004000000051386AD040CFD9BFD0F350D060C9A86F8000000070F875103000000010C9A87060000000700000007000000030F34D106000000030C9A86F80F878D0300000007000000010F87510300000001078000FE128A7D090AD3577710D13D00067ECE8500000007000000070000000000000007000000040000000500000002"
theorem small_6359308_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359308_right_root small_6359308_right_fuel small_6359308_right_count small_6359308_right_encoded = true := by
  decide +kernel
theorem small_6359308_right_covered : CoveredBy scale carrier boxes small_6359308_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359308_right_root small_6359308_right_fuel small_6359308_right_count small_6359308_right_encoded small_6359308_right_checked

theorem cover_6359308 : CoveredBy scale carrier boxes root_6359308 := by
  apply coveredBy_split_literal root_6359308 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2391.root small_6359308_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2391.covered
  · exact small_6359308_right_covered
#print axioms cover_6359308

def root_6359303 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359303_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359303_right_fuel : Nat := 1
def small_6359303_right_count : Nat := 1
def small_6359303_right_encoded : String := "00000004"
theorem small_6359303_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359303_right_root small_6359303_right_fuel small_6359303_right_count small_6359303_right_encoded = true := by
  decide +kernel
theorem small_6359303_right_covered : CoveredBy scale carrier boxes small_6359303_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359303_right_root small_6359303_right_fuel small_6359303_right_count small_6359303_right_encoded small_6359303_right_checked

theorem cover_6359303 : CoveredBy scale carrier boxes root_6359303 := by
  apply coveredBy_split_literal root_6359303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359308 small_6359303_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359308
  · exact small_6359303_right_covered
#print axioms cover_6359303

def root_6359302 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359302_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359302_right_fuel : Nat := 17
def small_6359302_right_count : Nat := 113
def small_6359302_right_encoded : String := "135D4509000000040CFD9BF70F350D000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D0600000007000000030F34D10600000003000000061386AD040000000900000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A86F80F878D0300000009000000010F875103000000010C9A87060F8750FD028000FE0000000900000007000000030F878CFD00000003028000FE0000000900000007000000000F878CF7000000000C9A86F8000000070F875103000000010C9A8706000000070F878CFD0000000300000007000000030F34D106000000030C9A87000F8750F70C9A86F8000000090F87510300000001028000FE0000000900000005000000000F878CF7000000000C9A86F80F878D030000000600000001000000051386AD040CFD9BFD0F350D060C9A87000F8750F7000000090000000000000007000000030F34D106000000030C9A8700000000090F878CF7000000000C9A86F8000000090000000700000002000000000F34D100000000000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D0600000007000000030000000700000007"
theorem small_6359302_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359302_right_root small_6359302_right_fuel small_6359302_right_count small_6359302_right_encoded = true := by
  decide +kernel
theorem small_6359302_right_covered : CoveredBy scale carrier boxes small_6359302_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359302_right_root small_6359302_right_fuel small_6359302_right_count small_6359302_right_encoded small_6359302_right_checked

theorem cover_6359302 : CoveredBy scale carrier boxes root_6359302 := by
  apply coveredBy_split_literal root_6359302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359303 small_6359302_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359303
  · exact small_6359302_right_covered
#print axioms cover_6359302

def root_6359297 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359297_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359297_right_fuel : Nat := 1
def small_6359297_right_count : Nat := 1
def small_6359297_right_encoded : String := "00000003"
theorem small_6359297_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359297_right_root small_6359297_right_fuel small_6359297_right_count small_6359297_right_encoded = true := by
  decide +kernel
theorem small_6359297_right_covered : CoveredBy scale carrier boxes small_6359297_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359297_right_root small_6359297_right_fuel small_6359297_right_count small_6359297_right_encoded small_6359297_right_checked

theorem cover_6359297 : CoveredBy scale carrier boxes root_6359297 := by
  apply coveredBy_split_literal root_6359297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359302 small_6359297_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359302
  · exact small_6359297_right_covered
#print axioms cover_6359297

def root_6359296 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359296_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359296_right_fuel : Nat := 23
def small_6359296_right_count : Nat := 255
def small_6359296_right_encoded : String := "1207010600000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F804548A051386710400000002045489FD000000060000000600000009000000010F350CF80000000104548A051386710400000002045489FD1386AD060C9A87000F8750F70C9A86F80F878D0300000009000000010F87510300000001078000FE128A7D09022A458513E1C50400000002067ECE7D00000006000000060000000900000004128A410900000004022A45850000000600000009000000000F878CF7000000000C9A86F80F878D03078000FE128A7D09022A45850000000613E20104067ECE7D0000000900000006000000020000000400000006000000010F87510300000001078000FE128A7D09022A458513E1C50400000002067ECE7D12EA95060DE7CA000000000600000005000000030000000513E20104067ECE7D12EA95060DE7CA000000000A0000000500000003000000050000000200000004000000050000000313867106000000030C9A87000F8750F70C9A86F8000000060F87510300000001078000FE128A7D09022A458500000006000000090000000400000005000000000F878CF7000000000C9A86F80F878D030000000600000001000000051386AD04045489FD1386AD060C9A87000F8750F700000009000000000F878CF7000000000C9A86F80F878D0300000009000000010F87510300000001078000FE128A7D090000000A00000004000000050000000313867106000000030C9A87000F8750F700000009000000000F878CF7000000000C9A86F80F878D0300000009000000010000000500000002000000000F34D100000000000CFD9C030F34D0F804548A051386710400000002045489FD00000006000000061386AD04045489FD1386AD0600000007000000031386710600000003078000FE000000070000000600000002000000010F350CF80000000104548A051386710400000002045489FD1386AD060C9A86F80F878D03078000FE128A7D090AD3577710D13D00022A4585000000060000000700000000000000070000000400000005000000010000000500000003000000051386AD04045489FD1386AD060C9A86F80F878D03078000FE128A7D090AD3577710D13D000000000700000000000000070000000400000005000000010000000500000003000000050000000200000004135D4509000000040CFD9BF70F350D000CFD9C030F34D0F804548A050000000600000009000000010F350CF80000000104548A051386710400000002045489FD1386AD060C9A8700000000060000000500000003000000061386AD04045489FD1386AD060C9A870000000009000000050000000313867106000000030000000500000002000000000F34D100000000000CFD9C030F34D0F8000000060000000100000005"
theorem small_6359296_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359296_right_root small_6359296_right_fuel small_6359296_right_count small_6359296_right_encoded = true := by
  decide +kernel
theorem small_6359296_right_covered : CoveredBy scale carrier boxes small_6359296_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359296_right_root small_6359296_right_fuel small_6359296_right_count small_6359296_right_encoded small_6359296_right_checked

theorem cover_6359296 : CoveredBy scale carrier boxes root_6359296 := by
  apply coveredBy_split_literal root_6359296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359297 small_6359296_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359297
  · exact small_6359296_right_covered
#print axioms cover_6359296

def root_6359290 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359290_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359290_left_fuel : Nat := 1
def small_6359290_left_count : Nat := 1
def small_6359290_left_encoded : String := "00000002"
theorem small_6359290_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359290_left_root small_6359290_left_fuel small_6359290_left_count small_6359290_left_encoded = true := by
  decide +kernel
theorem small_6359290_left_covered : CoveredBy scale carrier boxes small_6359290_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359290_left_root small_6359290_left_fuel small_6359290_left_count small_6359290_left_encoded small_6359290_left_checked

theorem cover_6359290 : CoveredBy scale carrier boxes root_6359290 := by
  apply coveredBy_split_literal root_6359290 small_6359290_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359296 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6359290_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359296
#print axioms cover_6359290

def root_6359289 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359289_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359289_right_fuel : Nat := 17
def small_6359289_right_count : Nat := 165
def small_6359289_right_encoded : String := "12073D0408A912FD12073D06050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000F8750F700000009000000000F878CF7000000000C9A86F80000000900000007000000030F34D106000000030C9A8700000000090F878CF700000000000000090F350D040CFD9BFD000000090F34D106000000030000000900000002000000000F34D100000000000CFD9C030F34D0F80CFD9C050000000700000007000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD00000007000000070F350D04000000070000000200000004135D4509000000040CFD9BF70F350D000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350D0600000007000000030F34D10600000003000000090F350D040000000900000002000000000F34D100000000000CFD9C03000000070F350CF80000000100000007000000031207010600000003050000FE135D81090CFD9BF70F350D000CFD9C03000000090F350CF8000000010CFD9C050F34D10400000002045489FD0000000913867106000000030000000900000009000000000F34D100000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D10400000002045489FD1386AD060C9A86F80F878D03000000070000000100000005000000031386710600000003000000050000000A00000004135D4509000000040CFD9BF70F350D000CFD9C03000000090F350CF8000000010CFD9C050F34D104000000020000000900000009000000000F34D100000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C05000000070000000500000002"
theorem small_6359289_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359289_right_root small_6359289_right_fuel small_6359289_right_count small_6359289_right_encoded = true := by
  decide +kernel
theorem small_6359289_right_covered : CoveredBy scale carrier boxes small_6359289_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359289_right_root small_6359289_right_fuel small_6359289_right_count small_6359289_right_encoded small_6359289_right_checked

theorem cover_6359289 : CoveredBy scale carrier boxes root_6359289 := by
  apply coveredBy_split_literal root_6359289 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359290 small_6359289_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359290
  · exact small_6359289_right_covered
#print axioms cover_6359289

def root_6359283 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359283_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359283_left_fuel : Nat := 1
def small_6359283_left_count : Nat := 1
def small_6359283_left_encoded : String := "00000001"
theorem small_6359283_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359283_left_root small_6359283_left_fuel small_6359283_left_count small_6359283_left_encoded = true := by
  decide +kernel
theorem small_6359283_left_covered : CoveredBy scale carrier boxes small_6359283_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359283_left_root small_6359283_left_fuel small_6359283_left_count small_6359283_left_encoded small_6359283_left_checked

theorem cover_6359283 : CoveredBy scale carrier boxes root_6359283 := by
  apply coveredBy_split_literal root_6359283 small_6359283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359289 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6359283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359289
#print axioms cover_6359283

def root_6359121 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359121_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359121_left_fuel : Nat := 16
def small_6359121_left_count : Nat := 77
def small_6359121_left_encoded : String := "120700F808A91305120701040000000208A912FD12073D06050000FE135D81090CFD9BF70F350D0004548A03000000091386ACF80000000104548A0513867104000000020CFD9BFD000000090F34D106000000030000000600000009000000000F34D100000000000000000700000004135D4509000000040CFD9BF70F350D0004548A0300000007000000090000000000000007000000031207010600000003050000FE135D81090CFD9BF7000000090F34D1000000000004548A03000000061386ACF80000000104548A050000000600000007000000040000000612073D0408A912FD12073D06050000FE135D81090CFD9BF7000000090F34D100000000000000000700000004135D4509000000040CFD9BF70000000900000007000000031207010600000003000000090000000200000001"
theorem small_6359121_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359121_left_root small_6359121_left_fuel small_6359121_left_count small_6359121_left_encoded = true := by
  decide +kernel
theorem small_6359121_left_covered : CoveredBy scale carrier boxes small_6359121_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359121_left_root small_6359121_left_fuel small_6359121_left_count small_6359121_left_encoded small_6359121_left_checked

theorem cover_6359121 : CoveredBy scale carrier boxes root_6359121 := by
  apply coveredBy_split_literal root_6359121 small_6359121_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359283 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6359121_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359283
#print axioms cover_6359121

def root_6359116 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359116_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359116_right_fuel : Nat := 1
def small_6359116_right_count : Nat := 1
def small_6359116_right_encoded : String := "00000000"
theorem small_6359116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359116_right_root small_6359116_right_fuel small_6359116_right_count small_6359116_right_encoded = true := by
  decide +kernel
theorem small_6359116_right_covered : CoveredBy scale carrier boxes small_6359116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359116_right_root small_6359116_right_fuel small_6359116_right_count small_6359116_right_encoded small_6359116_right_checked

theorem cover_6359116 : CoveredBy scale carrier boxes root_6359116 := by
  apply coveredBy_split_literal root_6359116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359121 small_6359116_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359121
  · exact small_6359116_right_covered
#print axioms cover_6359116

def root_6359115 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359115_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359115_right_fuel : Nat := 21
def small_6359115_right_count : Nat := 103
def small_6359115_right_encoded : String := "120701000000000008A91303120700F808A91305120701040000000208A912FD000000070000000712073D0408A912FD0000000700000007000000020000000112073CF80000000108A91305120701040000000208A912FD12073D06050000FE135D8109045489F71386AD000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F8000000070F875103000000010C9A870600000007000000070000000300000007000000070000000013867100000000000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D06000000070000000300000007000000070000000400000007000000031207010600000003050000FE135D8109045489F71386AD000CFD9C03000000070F350CF800000001000000050000000000000007000000040000000512073D0408A912FD12073D06050000FE0000000700000007000000031207010600000003050000FE135D8109045489F71386AD000CFD9C03000000070F350CF800000001000000070000000000000007000000040000000700000002"
theorem small_6359115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359115_right_root small_6359115_right_fuel small_6359115_right_count small_6359115_right_encoded = true := by
  decide +kernel
theorem small_6359115_right_covered : CoveredBy scale carrier boxes small_6359115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359115_right_root small_6359115_right_fuel small_6359115_right_count small_6359115_right_encoded small_6359115_right_checked

theorem cover_6359115 : CoveredBy scale carrier boxes root_6359115 := by
  apply coveredBy_split_literal root_6359115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359116 small_6359115_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359116
  · exact small_6359115_right_covered
#print axioms cover_6359115

def root_6359109 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359109_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6359109_left_fuel : Nat := 1
def small_6359109_left_count : Nat := 1
def small_6359109_left_encoded : String := "00000004"
theorem small_6359109_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6359109_left_root small_6359109_left_fuel small_6359109_left_count small_6359109_left_encoded = true := by
  decide +kernel
theorem small_6359109_left_covered : CoveredBy scale carrier boxes small_6359109_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6359109_left_root small_6359109_left_fuel small_6359109_left_count small_6359109_left_encoded small_6359109_left_checked

theorem cover_6359109 : CoveredBy scale carrier boxes root_6359109 := by
  apply coveredBy_split_literal root_6359109 small_6359109_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359115 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6359109_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359115
#print axioms cover_6359109

def root_6338719 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6338719 : CoveredBy scale carrier boxes root_6338719 := by
  apply coveredBy_split_literal root_6338719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6338720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6359109 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6338720
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6359109
#print axioms cover_6338719

def root_6338713 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6338713_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6338713_left_fuel : Nat := 1
def small_6338713_left_count : Nat := 1
def small_6338713_left_encoded : String := "00000003"
theorem small_6338713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6338713_left_root small_6338713_left_fuel small_6338713_left_count small_6338713_left_encoded = true := by
  decide +kernel
theorem small_6338713_left_covered : CoveredBy scale carrier boxes small_6338713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6338713_left_root small_6338713_left_fuel small_6338713_left_count small_6338713_left_encoded small_6338713_left_checked

theorem cover_6338713 : CoveredBy scale carrier boxes root_6338713 := by
  apply coveredBy_split_literal root_6338713 small_6338713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6338719 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6338713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6338719
#print axioms cover_6338713

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439

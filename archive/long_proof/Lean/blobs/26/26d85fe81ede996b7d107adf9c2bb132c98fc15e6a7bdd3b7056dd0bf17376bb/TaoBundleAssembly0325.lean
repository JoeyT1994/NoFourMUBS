import TaoBundleAssembly0324
import TaoBundleChunkBatch0426
import TaoBundleChunkBatch0427
import TaoBundleChunkBatch0428
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325
def root_4530926 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530926_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530926_left_fuel : Nat := 27
def small_4530926_left_count : Nat := 393
def small_4530926_left_encoded : String := "1151E9090000000408A91301120700F608A91305120700FA08A912FD00000007120700FC00000007000000030000000212073CFA0000000208A912FD12073CFC0000000305000102135D45030000000105000108135D45090000000404548A01138670F60CFD9C05000000070F350CFA000000020CFD9BFD000000070F34D0FC00000007000000030000000000000007135D810904548A01138670F60CFD9C050F34D0FA0CFD9BFD0000000700000006000000020F350CFA000000020CFD9BFD0F350CFC000000030C9A86FA0F878D050C9A86FC0000000700000006000000020F87510500000002000000090F34D0FC0C9A86FA0F878D05028001020000000600000007000000020F875105000000020280010213D7B1030000000107800108128A410900000004022A458100000009000000060000000613D7ED0307800108128A41090000000400000007000000060000000100000003000000001386ACF6000000000CFD9C05000000070F350CFA000000020CFD9BFD000000070F34D0FC0C9A86FA000000070F875105000000020280010213D7B10300000001078001080000000700000006000000070000000300000004135D81030500010800000007135D810904548A01138670F60CFD9C05000000070F350CFA000000020CFD9BFD000000070F34D0FC000000070000000300000000000000070000000400000001120700FC05000102135D45030000000105000108135D45090000000404548A01138670F60CFD9C05000000080F350CFA00000002045489FD1386ACFC000000030C9A86FA0F878D0500000007000000020F8751050000000202800102000000050000000700000005000000001386ACF60000000000000008135D810904548A01138670F60CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386ACFC000000030C9A86FA0F878D05028001020000000600000006000000020F875105000000020280010213D7B1030000000107800108128A410900000004022A458113E1C4F6067ECE7D000000060000000500000000000000050000000613D7ED0307800108128A410900000004022A458113E1C4F6067ECE7D000000070000000500000000000000050000000600000001138670FC0C9A86FA0F878D0500000006000000020F875105000000020000000500000003000000001386ACF6000000000CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386ACFC000000030C9A86FA0F878D0500000006000000020F87510500000002000000050000000500000004135D810305000108135D45090000000404548A01138670F60CFD9C05000000070F350CFA00000002045489FD00000007138670FC0C9A86FA000000070F8751050000000200000005000000030000000000000007135D810904548A01138670F60CFD9C050F34D0FA00000007000000020F350CFA00000002045489FD1386ACFC000000030C9A86FA000000070F8751050000000207800102128A41030000000107800108128A410900000004000000070000000600000007138670FC0C9A86FA0F878D05078001020000000600000006000000020F8751050000000207800102128A410300000001078001080000000500000006128A7D0307800108128A41090000000400000007000000060000000100000003000000001386ACF6000000000CFD9C05000000070F350CFA00000002045489FD00000007138670FC0C9A86FA000000070F8751050000000200000005000000030000000400000001000000030000000012073CF60000000008A91305120700FA000000070000000212073CFA0000000208A912FD12073CFC0000000305000102135D45030000000105000108135D45090000000400000007135D81090CFD9C010F34D0F60CFD9C05000000070F350CFA000000020CFD9BFD000000070F34D0FC0000000700000003000000000F350CF6000000000CFD9C05000000070F350CFA000000020CFD9BFD00000007000000050000000400000007120700FC05000102135D4503000000010500010800000008135D81090CFD9C010F34D0F60CFD9C050000000800000005000000000000000500000004135D81030500010800000007135D81090CFD9C010F34D0F6000000070000000000000007000000040000000100000003"
theorem small_4530926_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4530926_left_root small_4530926_left_fuel small_4530926_left_count small_4530926_left_encoded = true := by
  decide +kernel
theorem small_4530926_left_covered : CoveredBy scale carrier boxes small_4530926_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4530926_left_root small_4530926_left_fuel small_4530926_left_count small_4530926_left_encoded small_4530926_left_checked

theorem cover_4530926 : CoveredBy scale carrier boxes root_4530926 := by
  apply coveredBy_split_literal root_4530926 small_4530926_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4531756 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4530926_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4531756
#print axioms cover_4530926

def root_4530920 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530920_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530920_left_fuel : Nat := 1
def small_4530920_left_count : Nat := 1
def small_4530920_left_encoded : String := "00000003"
theorem small_4530920_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4530920_left_root small_4530920_left_fuel small_4530920_left_count small_4530920_left_encoded = true := by
  decide +kernel
theorem small_4530920_left_covered : CoveredBy scale carrier boxes small_4530920_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4530920_left_root small_4530920_left_fuel small_4530920_left_count small_4530920_left_encoded small_4530920_left_checked

theorem cover_4530920 : CoveredBy scale carrier boxes root_4530920 := by
  apply coveredBy_split_literal root_4530920 small_4530920_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530926 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4530920_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530926
#print axioms cover_4530920

def root_4530919 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530919_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530919_right_fuel : Nat := 26
def small_4530919_right_count : Nat := 365
def small_4530919_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F608A913050000000712073CFA0000000205000102135D450300000001050000FC135D80FD000000030500010800000007135D810904548A01138670F60CFD9C05000000050F350CFA0000000200000005000000000000000700000004135D44FD05000108135D45090000000400000007135D810904548A0100000005000000070000000400000003000000070000000012073CF60000000008A913050000000712073CFA0000000205000102135D450300000001050000FC00000007135D44FD0000000700000003000000071152250908A91301120700F608A913050000000512073CFA0000000208A913090000000512073D0805000102135D450300000001050000FC135D80FD0000000304548A01000000051386ACF6000000000CFD9C05000000050F350CFA000000020000000500000005135D8103050000FC00000005135D44FD000000050000000300000001000000040000000012073CF60000000008A91305120700FA08A913090000000512073D0805000102135D450300000001050000FC000000070000000500000007000000040000000212073CFA0000000208A91309120701080000000405000102135D450300000001050000FC135D80FD000000030CFD9C01000000050F350CF6000000000CFD9C05000000050F350CFA0000000204548A09000000051386AD080C9A86F6000000090F875101000000000000000900000004135D44FD0CFD9C01000000050F350CF6000000000CFD9C05000000050F350CFA0000000204548A09000000050000000900000003135D8103050000FC135D80FD000000030CFD9C01000000050F350CF6000000000CFD9C05000000050F350CFA0000000204548A09000000051386AD080C9A86F60F878D0100000005000000000F875101000000000C9A86FA0F878D0500000005000000020F875105000000020780010200000009128A7D030000000A0000000100000004135D44FD0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA0000000204548A0913867108000000040C9A86F6000000050F875101000000000C9A86FA000000050F87510500000002000000091386AD080C9A86F60F878D010C9A86FA0000000500000009000000000F875101000000000C9A86FA0F878D05078001020000000500000007000000020000000900000004000000030000000112073D0805000102135D450300000001050000FC135D80FD000000030CFD9C010F34D0F60CFD9C05000000050F350CFA000000020CFD9C09000000050F350D080000000900000004000000000F350CF6000000000CFD9C050F34D0FA0CFD9C090000000500000007000000020F350CFA000000020CFD9C090F34D108000000040C9A86F6000000090F87510100000000000000090F350D080000000A00000004135D44FD0CFD9C010F34D0F60CFD9C05000000050F350CFA000000020CFD9C090000000500000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C090000000500000007000000020F350CFA000000020CFD9C090F34D10800000004000000090000000A00000003135D8103050000FC135D80FD000000030CFD9C010F34D0F60CFD9C05000000050F350CFA000000020CFD9C090000000500000007000000000F350CF6000000000CFD9C05000000070F350CFA000000020CFD9C090F34D108000000040C9A86F60F878D010C9A86FA000000070F8751050000000200000009000000000F875101000000000000000700000007135D44FD0CFD9C010F34D0F60CFD9C05000000050F350CFA000000020CFD9C090000000500000007000000000F350CF6000000000CFD9C05000000070F350CFA000000020CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0000000700000009000000000F875101000000000C9A86FA000000070000000A000000070000000300000001000000040000000400000003"
theorem small_4530919_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4530919_right_root small_4530919_right_fuel small_4530919_right_count small_4530919_right_encoded = true := by
  decide +kernel
theorem small_4530919_right_covered : CoveredBy scale carrier boxes small_4530919_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4530919_right_root small_4530919_right_fuel small_4530919_right_count small_4530919_right_encoded small_4530919_right_checked

theorem cover_4530919 : CoveredBy scale carrier boxes root_4530919 := by
  apply coveredBy_split_literal root_4530919 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530920 small_4530919_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530920
  · exact small_4530919_right_covered
#print axioms cover_4530919

def root_4530914 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530914_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530914_right_fuel : Nat := 1
def small_4530914_right_count : Nat := 1
def small_4530914_right_encoded : String := "00000002"
theorem small_4530914_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4530914_right_root small_4530914_right_fuel small_4530914_right_count small_4530914_right_encoded = true := by
  decide +kernel
theorem small_4530914_right_covered : CoveredBy scale carrier boxes small_4530914_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4530914_right_root small_4530914_right_fuel small_4530914_right_count small_4530914_right_encoded small_4530914_right_checked

theorem cover_4530914 : CoveredBy scale carrier boxes root_4530914 := by
  apply coveredBy_split_literal root_4530914 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530919 small_4530914_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530919
  · exact small_4530914_right_covered
#print axioms cover_4530914

def root_4550150 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550150_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550150_right_fuel : Nat := 10
def small_4550150_right_count : Nat := 49
def small_4550150_right_encoded : String := "135D4505000000020CFD9C010F34D0F6045489FD1386ACFC0000000304548A090000000700000009138670FC04548A09000000070000000600000003000000000F350CF600000000045489FD1386ACFC0000000304548A0913867108000000040C9A86F6000000090F87510100000000000000091386AD080C9A86F6000000090F875101000000000000000500000004138670FC04548A0913867108000000040C9A86F60F878D0100000007000000000F87510100000000000000050000000500000003"
theorem small_4550150_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4550150_right_root small_4550150_right_fuel small_4550150_right_count small_4550150_right_encoded = true := by
  decide +kernel
theorem small_4550150_right_covered : CoveredBy scale carrier boxes small_4550150_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4550150_right_root small_4550150_right_fuel small_4550150_right_count small_4550150_right_encoded small_4550150_right_checked

theorem cover_4550150 : CoveredBy scale carrier boxes root_4550150 := by
  apply coveredBy_split_literal root_4550150 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1704.root small_4550150_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1704.covered
  · exact small_4550150_right_covered
#print axioms cover_4550150

def root_4550144 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550144_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550144_left_fuel : Nat := 1
def small_4550144_left_count : Nat := 1
def small_4550144_left_encoded : String := "00000001"
theorem small_4550144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4550144_left_root small_4550144_left_fuel small_4550144_left_count small_4550144_left_encoded = true := by
  decide +kernel
theorem small_4550144_left_covered : CoveredBy scale carrier boxes small_4550144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4550144_left_root small_4550144_left_fuel small_4550144_left_count small_4550144_left_encoded small_4550144_left_checked

theorem cover_4550144 : CoveredBy scale carrier boxes root_4550144 := by
  apply coveredBy_split_literal root_4550144 small_4550144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4550150 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_4550144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4550150
#print axioms cover_4550144

def root_4550143 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4550143 : CoveredBy scale carrier boxes root_4550143 := by
  apply coveredBy_split_literal root_4550143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4550144 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1705.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4550144
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1705.covered
#print axioms cover_4550143

def root_4550137 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550137_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550137_left_fuel : Nat := 1
def small_4550137_left_count : Nat := 1
def small_4550137_left_encoded : String := "00000004"
theorem small_4550137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4550137_left_root small_4550137_left_fuel small_4550137_left_count small_4550137_left_encoded = true := by
  decide +kernel
theorem small_4550137_left_covered : CoveredBy scale carrier boxes small_4550137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4550137_left_root small_4550137_left_fuel small_4550137_left_count small_4550137_left_encoded small_4550137_left_checked

theorem cover_4550137 : CoveredBy scale carrier boxes root_4550137 := by
  apply coveredBy_split_literal root_4550137 small_4550137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4550143 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4550137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4550143
#print axioms cover_4550137

def root_4550136 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550136_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550136_right_fuel : Nat := 15
def small_4550136_right_count : Nat := 109
def small_4550136_right_encoded : String := "12073D0805000102135D450300000001050000FA135D81050CFD9C010F34D0F6045489FD1386ACFC000000030CFD9C090F34D108000000040280010213D7B10300000001078000FA0000000600000006000000060000000500000005000000000000000500000002135D4505000000020CFD9C010F34D0F6045489FD1386ACFC000000030CFD9C090F34D108000000040000000900000005000000050000000000000005135D8103050000FA135D81050CFD9C010F34D0F6045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A87080F87510900000004000000050F878D09000000060000000400000004138670FC0CFD9C090F34D10800000004000000060000000500000003000000000F350CF600000000045489FD1386ACFC000000030CFD9C090F34D108000000040C9A86F60F878D01078001020000000600000006000000000F8751010000000000000005000000050000000500000002135D4505000000020CFD9C010F34D0F6045489FD1386ACFC000000030CFD9C090F34D10800000004078001020000000600000006000000050000000500000000000000050000000100000004"
theorem small_4550136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4550136_right_root small_4550136_right_fuel small_4550136_right_count small_4550136_right_encoded = true := by
  decide +kernel
theorem small_4550136_right_covered : CoveredBy scale carrier boxes small_4550136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4550136_right_root small_4550136_right_fuel small_4550136_right_count small_4550136_right_encoded small_4550136_right_checked

theorem cover_4550136 : CoveredBy scale carrier boxes root_4550136 := by
  apply coveredBy_split_literal root_4550136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4550137 small_4550136_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4550137
  · exact small_4550136_right_covered
#print axioms cover_4550136

def root_4550131 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550131_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4550131_right_fuel : Nat := 1
def small_4550131_right_count : Nat := 1
def small_4550131_right_encoded : String := "00000003"
theorem small_4550131_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4550131_right_root small_4550131_right_fuel small_4550131_right_count small_4550131_right_encoded = true := by
  decide +kernel
theorem small_4550131_right_covered : CoveredBy scale carrier boxes small_4550131_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4550131_right_root small_4550131_right_fuel small_4550131_right_count small_4550131_right_encoded small_4550131_right_checked

theorem cover_4550131 : CoveredBy scale carrier boxes root_4550131 := by
  apply coveredBy_split_literal root_4550131 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4550136 small_4550131_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4550136
  · exact small_4550131_right_covered
#print axioms cover_4550131

def root_4548751 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4548751 : CoveredBy scale carrier boxes root_4548751 := by
  apply coveredBy_split_literal root_4548751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1703.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4550131 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1703.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4550131
#print axioms cover_4548751

def root_4548745 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4548745_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4548745_left_fuel : Nat := 1
def small_4548745_left_count : Nat := 1
def small_4548745_left_encoded : String := "00000000"
theorem small_4548745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4548745_left_root small_4548745_left_fuel small_4548745_left_count small_4548745_left_encoded = true := by
  decide +kernel
theorem small_4548745_left_covered : CoveredBy scale carrier boxes small_4548745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4548745_left_root small_4548745_left_fuel small_4548745_left_count small_4548745_left_encoded small_4548745_left_checked

theorem cover_4548745 : CoveredBy scale carrier boxes root_4548745 := by
  apply coveredBy_split_literal root_4548745 small_4548745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4548751 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4548745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4548751
#print axioms cover_4548745

def root_4547205 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4547205 : CoveredBy scale carrier boxes root_4547205 := by
  apply coveredBy_split_literal root_4547205 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1702.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4548745 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1702.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4548745
#print axioms cover_4547205

def root_4547200 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4547200_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4547200_right_fuel : Nat := 1
def small_4547200_right_count : Nat := 1
def small_4547200_right_encoded : String := "00000004"
theorem small_4547200_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4547200_right_root small_4547200_right_fuel small_4547200_right_count small_4547200_right_encoded = true := by
  decide +kernel
theorem small_4547200_right_covered : CoveredBy scale carrier boxes small_4547200_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4547200_right_root small_4547200_right_fuel small_4547200_right_count small_4547200_right_encoded small_4547200_right_checked

theorem cover_4547200 : CoveredBy scale carrier boxes root_4547200 := by
  apply coveredBy_split_literal root_4547200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4547205 small_4547200_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4547205
  · exact small_4547200_right_covered
#print axioms cover_4547200

def root_4546346 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546346_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546346_left_fuel : Nat := 29
def small_4546346_left_count : Nat := 409
def small_4546346_left_encoded : String := "1151E9090000000408A91301120700F608A912FD12073CFC0000000305000102135D450300000001050000FA135D810505000108135D45090000000404548A010000000A0000000A135D810904548A01138670F60CFD9BFD000000090F34D0FC028001020000000913D7ED03078000FA128A7D05078001080000000A00000009000000020000000A0000000100000003000000001386ACF6000000000CFD9BFD000000090F34D0FC0000000A000000030000000400000002135D4505000000020000000A135D8103050000FA135D810505000108135D4509000000040000000A135D810904548A01138670F60CFD9BFD0000000A0F34D0FC07800102128A410300000001078000FA128A7D05078001080000000A128A7D09022A458113E1C4F60AD3577D0000000600000006000000000000000600000004000000020000000A128A7D030000000A0000000100000003000000001386ACF6000000000CFD9BFD000000070F34D0FC0000000A000000030000000400000002135D4505000000020000000A00000001120700FC05000102135D450300000001050000FA135D810505000108135D45090000000404548A01138670F6000000050000000000000005135D810904548A01138670F6045489FD1386ACFC000000030280010213D7B10300000001078000FA128A7D0507800108128A41090000000400000005128A7D09022A458113E1C4F6067ECE7D000000060000000500000000000000050000000400000002128A41050000000207800108128A410900000004000000050000000913D7ED03078000FA128A7D0507800108128A410900000004022A458113E1C4F6067ECE7D12EA94FC0000000303C001020000000A0000000A000000050000000000000005128A7D09022A458113E1C4F6067ECE7D000000060000000600000000000000060000000400000002128A41050000000207800108128A410900000004022A45810000000A00000005128A7D09022A458113E1C4F6067ECE7D0000000900000005000000000000000500000004000000010000000500000000000000050000000400000002135D45050000000205000108135D45090000000400000005135D810904548A01138670F6045489FD1386ACFC00000003028001020000000913D7ED03028000FA13D7ED05078001080000000A0000000900000002000000090000000100000005000000000000000500000004135D8103050000FA135D810505000108135D45090000000404548A01138670F6045489FD1386ACFC00000003078001020000000A00000007000000050000000000000005135D810904548A01138670F6045489FD1386ACFC0000000307800102128A410300000001078000FA128A7D0507800108128A410900000004022A458113E1C4F6067ECE7D00000007000000050000000000000007128A7D09022A458113E1C4F6067ECE7D12EA94FC00000003000000060000000600000000000000060000000400000002128A410500000002078001080000000A128A7D09022A458113E1C4F6067ECE7D0000000A12EA58FC0640010212FF710300000001064000FA000000050000000612FFAD03064000FA000000060000000A00000001000000030000000013E200F6000000000000000A00000004128A7D03078000FA128A7D050780010800000007128A7D09022A458113E1C4F6067ECE7D000000070000000600000000000000060000000400000002128A410500000002078001080000000A128A7D09022A458113E1C4F6067ECE7D0000000A12EA58FC0000000A00000003000000000000000A0000000400000001138670FC07800102128A41030000000100000005128A7D03078000FA128A7D0507800108128A41090000000400000005128A7D09022A458113E1C4F6022A457D000000060000000500000000000000050000000400000002128A410500000002000000050000000100000003000000001386ACF600000000045489FD1386ACFC0000000307800102128A410300000001078000FA000000050000000A128A7D03078000FA000000070000000A00000001000000050000000400000002135D45050000000205000108135D4509000000040000000A135D810904548A01138670F6045489FD1386ACFC00000003078001020000000A0000000A0000000500000000000000050000000400000001000000030000000012073CF60000000008A912FD12073CFC00000003050001020000000A135D81030000000A0000000100000005"
theorem small_4546346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4546346_left_root small_4546346_left_fuel small_4546346_left_count small_4546346_left_encoded = true := by
  decide +kernel
theorem small_4546346_left_covered : CoveredBy scale carrier boxes small_4546346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4546346_left_root small_4546346_left_fuel small_4546346_left_count small_4546346_left_encoded small_4546346_left_checked

theorem cover_4546346 : CoveredBy scale carrier boxes root_4546346 := by
  apply coveredBy_split_literal root_4546346 small_4546346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4547200 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4546346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4547200
#print axioms cover_4546346

def root_4546340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546340_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546340_left_fuel : Nat := 1
def small_4546340_left_count : Nat := 1
def small_4546340_left_encoded : String := "00000003"
theorem small_4546340_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4546340_left_root small_4546340_left_fuel small_4546340_left_count small_4546340_left_encoded = true := by
  decide +kernel
theorem small_4546340_left_covered : CoveredBy scale carrier boxes small_4546340_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4546340_left_root small_4546340_left_fuel small_4546340_left_count small_4546340_left_encoded small_4546340_left_checked

theorem cover_4546340 : CoveredBy scale carrier boxes root_4546340 := by
  apply coveredBy_split_literal root_4546340 small_4546340_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4546346 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4546340_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4546346
#print axioms cover_4546340

def root_4546339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546339_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546339_right_fuel : Nat := 18
def small_4546339_right_count : Nat := 137
def small_4546339_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F6050001020000000A0000000A000000000000000A1152250908A91301120700F608A9130912070108000000040500010200000005135D8103050000FA00000005000000090000000112073D080500010200000009135D8103050000FA135D8105050000FC135D80FD0000000304548A01000000051386ACF6000000000CFD9C090000000500000006135D44FD0000000600000003000000020000000900000001000000040000000012073CF60000000008A9130912070108000000040500010200000009135D8103050000FA135D8105050000FC135D80FD000000030CFD9C010F34D0F600000009000000000F350CF60000000004548A0913867108000000040000000900000009135D44FD0CFD9C010F34D0F60000000900000000000000090000000300000002000000090000000112073D0805000102135D450300000001050000FA135D8105050000FC135D80FD000000030CFD9C010F34D0F6000000090000000000000009135D44FD00000009000000030000000200000009135D8103050000FA135D8105050000FC135D80FD000000030CFD9C010F34D0F60CFD9C090F34D108000000040000000900000006000000000F350CF6000000000000000A135D44FD0CFD9C010F34D0F600000009000000000F350CF6000000000000000A0000000300000002135D450500000002050000FC0000000A0000000A00000001000000040000000400000003"
theorem small_4546339_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4546339_right_root small_4546339_right_fuel small_4546339_right_count small_4546339_right_encoded = true := by
  decide +kernel
theorem small_4546339_right_covered : CoveredBy scale carrier boxes small_4546339_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4546339_right_root small_4546339_right_fuel small_4546339_right_count small_4546339_right_encoded small_4546339_right_checked

theorem cover_4546339 : CoveredBy scale carrier boxes root_4546339 := by
  apply coveredBy_split_literal root_4546339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4546340 small_4546339_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4546340
  · exact small_4546339_right_covered
#print axioms cover_4546339

def root_4546333 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546333_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4546333_left_fuel : Nat := 1
def small_4546333_left_count : Nat := 1
def small_4546333_left_encoded : String := "00000002"
theorem small_4546333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4546333_left_root small_4546333_left_fuel small_4546333_left_count small_4546333_left_encoded = true := by
  decide +kernel
theorem small_4546333_left_covered : CoveredBy scale carrier boxes small_4546333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4546333_left_root small_4546333_left_fuel small_4546333_left_count small_4546333_left_encoded small_4546333_left_checked

theorem cover_4546333 : CoveredBy scale carrier boxes root_4546333 := by
  apply coveredBy_split_literal root_4546333 small_4546333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4546339 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4546333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4546339
#print axioms cover_4546333

def root_4530913 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4530913 : CoveredBy scale carrier boxes root_4530913 := by
  apply coveredBy_split_literal root_4530913 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530914 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4546333 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530914
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4546333
#print axioms cover_4530913

def root_4530907 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530907_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530907_left_fuel : Nat := 1
def small_4530907_left_count : Nat := 1
def small_4530907_left_encoded : String := "00000001"
theorem small_4530907_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4530907_left_root small_4530907_left_fuel small_4530907_left_count small_4530907_left_encoded = true := by
  decide +kernel
theorem small_4530907_left_covered : CoveredBy scale carrier boxes small_4530907_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4530907_left_root small_4530907_left_fuel small_4530907_left_count small_4530907_left_encoded small_4530907_left_checked

theorem cover_4530907 : CoveredBy scale carrier boxes root_4530907 := by
  apply coveredBy_split_literal root_4530907 small_4530907_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530913 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4530907_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530913
#print axioms cover_4530907

def root_4555535 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4555535 : CoveredBy scale carrier boxes root_4555535 := by
  apply coveredBy_split_literal root_4555535 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1706.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1707.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1706.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1707.covered
#print axioms cover_4555535

def root_4555530 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4555530_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4555530_right_fuel : Nat := 1
def small_4555530_right_count : Nat := 1
def small_4555530_right_encoded : String := "00000001"
theorem small_4555530_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4555530_right_root small_4555530_right_fuel small_4555530_right_count small_4555530_right_encoded = true := by
  decide +kernel
theorem small_4555530_right_covered : CoveredBy scale carrier boxes small_4555530_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4555530_right_root small_4555530_right_fuel small_4555530_right_count small_4555530_right_encoded small_4555530_right_checked

theorem cover_4555530 : CoveredBy scale carrier boxes root_4555530 := by
  apply coveredBy_split_literal root_4555530 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4555535 small_4555530_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4555535
  · exact small_4555530_right_covered
#print axioms cover_4555530

def root_4530906 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4530906 : CoveredBy scale carrier boxes root_4530906 := by
  apply coveredBy_split_literal root_4530906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4555530 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530907
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4555530
#print axioms cover_4530906

def root_4530901 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530901_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4530901_right_fuel : Nat := 1
def small_4530901_right_count : Nat := 1
def small_4530901_right_encoded : String := "00000000"
theorem small_4530901_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4530901_right_root small_4530901_right_fuel small_4530901_right_count small_4530901_right_encoded = true := by
  decide +kernel
theorem small_4530901_right_covered : CoveredBy scale carrier boxes small_4530901_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4530901_right_root small_4530901_right_fuel small_4530901_right_count small_4530901_right_encoded small_4530901_right_checked

theorem cover_4530901 : CoveredBy scale carrier boxes root_4530901 := by
  apply coveredBy_split_literal root_4530901 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530906 small_4530901_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530906
  · exact small_4530901_right_covered
#print axioms cover_4530901

def root_4560351 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4560351 : CoveredBy scale carrier boxes root_4560351 := by
  apply coveredBy_split_literal root_4560351 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1708.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1709.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1708.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1709.covered
#print axioms cover_4560351

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325

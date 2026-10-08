import TaoBundleAssembly0439
import TaoBundleChunkBatch0599
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440
def root_6337871 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337871_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337871_left_fuel : Nat := 30
def small_6337871_left_count : Nat := 389
def small_6337871_left_encoded : String := "1151E8FD0A0000FE1152250908A912F712073D0008A91303120700F808A91305120701040000000208A91309120700FE0500010600000005135D80FD00000003000000050000000412073CFE000000040500010600000005135D80FD000000030000000512073D0400000005000000020000000112073CF80000000108A91305120701040000000208A91309120700FE0500010600000005135D80FD00000003000000050000000412073CFE000000040500010600000005135D80FD000000030CFD9BF70F350D000CFD9C030F34D0F8000000050000000100000005000000000F34D100000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F8000000050F875103000000010C9A86FE000000050F875109000000040780010600000005128A7CFD000000030AD357770000000610D1010000000000000000061386AD040CFD9C09000000060F350CFE000000040C9A86F800000005000000060000000212073D0408A91309120700FE000000050000000412073CFE000000040500010600000005135D80FD000000030CFD9BF70F350D0000000005000000000F34D100000000000CFD9C030F34D0F80000000500000001000000060000000200000000120701000000000008A91303120700F808A91305120701040000000208A91309120700FE00000005000000040000000512073D0400000005000000020000000112073CF80000000108A91305120701040000000208A91309120700FE000000050000000412073CFE0000000405000106135D44FD045489F71386AD00000000050000000013867100000000000CFD9C030F34D0F800000005000000010000000600000003135D80FD00000003045489F71386AD000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F80F878D030C9A86FE0000000500000007000000010F875103000000010C9A86FE000000060F8751090000000400000006000000060000000013867100000000000CFD9C030F34D0F804548A050000000500000007000000010F350CF80000000104548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FE0000000600000007000000010F87510300000001000000060000000612073D040000000600000002000000041151E9090000000408A912F712073D0008A91303120700F808A91305120701040000000200000007000000070000000112073CF80000000108A91305120701040000000205000106135D44FD050000FE135D81090CFD9BF70000000A0F34D100000000000000000A00000004135D4509000000040CFD9BF7000000070000000700000003135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020C9A8700000000050000000A1386AD040C9A87000F8750F700000005000000000F878CF7000000000C9A86F80F878D0300000005000000010F875103000000010780010600000007128A7CFD000000030000000700000002000000000F34D100000000000CFD9C03000000070F350CF80000000104548A0513867104000000020000000A0000000700000004135D4509000000040CFD9BF70F350D000CFD9C03000000070F350CF80000000104548A0513867104000000020000000A00000007000000000F34D100000000000000000712073D0405000106135D44FD050000FE135D81090CFD9BF70000000700000007000000040000000700000003135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9C03000000070F350CF8000000010CFD9C050F34D104000000020C9A8700000000080000000700000007000000000F34D100000000000000000700000004000000070000000200000000120701000000000008A913030000000712073CF80000000108A91305120701040000000205000106135D44FD0000000A00000003135D80FD00000003050000FE135D8109045489F7000000070000000700000004000000070000000700000003"
theorem small_6337871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6337871_left_root small_6337871_left_fuel small_6337871_left_count small_6337871_left_encoded = true := by
  decide +kernel
theorem small_6337871_left_covered : CoveredBy scale carrier boxes small_6337871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6337871_left_root small_6337871_left_fuel small_6337871_left_count small_6337871_left_encoded small_6337871_left_checked

theorem cover_6337871 : CoveredBy scale carrier boxes root_6337871 := by
  apply coveredBy_split_literal root_6337871 small_6337871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.root_6338713 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6337871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0439.cover_6338713
#print axioms cover_6337871

def root_6337866 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337866_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337866_right_fuel : Nat := 1
def small_6337866_right_count : Nat := 1
def small_6337866_right_encoded : String := "00000002"
theorem small_6337866_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6337866_right_root small_6337866_right_fuel small_6337866_right_count small_6337866_right_encoded = true := by
  decide +kernel
theorem small_6337866_right_covered : CoveredBy scale carrier boxes small_6337866_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6337866_right_root small_6337866_right_fuel small_6337866_right_count small_6337866_right_encoded small_6337866_right_checked

theorem cover_6337866 : CoveredBy scale carrier boxes root_6337866 := by
  apply coveredBy_split_literal root_6337866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6337871 small_6337866_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6337871
  · exact small_6337866_right_covered
#print axioms cover_6337866

def root_6337520 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337520_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337520_left_fuel : Nat := 22
def small_6337520_left_count : Nat := 161
def small_6337520_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A912F712073D000000000500000000120701000000000000000006000000041151E909000000040000000700000003115224FD000000030A0000FE1152250908A912F712073D0008A91303120700F808A912FD12073D0600000005000000031207010600000003000000090000000112073CF80000000108A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000104135D4505000000020CFD9BF7000000090F34D1000000000000000006135D81050CFD9BF70F350D000CFD9C03000000090F350CF8000000010CFD9BFD000000060000000A000000000F34D100000000000CFD9C030F34D0F80CFD9BFD000000060F34D106000000030000000900000001000000060000000200000003120701060000000308A913090000000A0000000900000000120701000000000008A91303120700F808A912FD12073D0608A91309000000060000000700000003120701060000000308A91309120700FE0500010400000005135D8105045489F7000000051386710000000000000000060000000200000004000000090000000112073CF80000000108A912FD12073D060000000600000003120701060000000308A913090000000A12073CFE000000040500010400000007135D8105045489F71386AD000CFD9C03000000070000000A000000000000000700000002000000041151E9090000000408A912F712073D0008A913030000000912073CF80000000108A912FD12073D060500010400000007135D8105050000FE135D81090CFD9BF700000009000000070000000400000007000000020000000312070106000000030000000900000000120701000000000000000007"
theorem small_6337520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6337520_left_root small_6337520_left_fuel small_6337520_left_count small_6337520_left_encoded = true := by
  decide +kernel
theorem small_6337520_left_covered : CoveredBy scale carrier boxes small_6337520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6337520_left_root small_6337520_left_fuel small_6337520_left_count small_6337520_left_encoded small_6337520_left_checked

theorem cover_6337520 : CoveredBy scale carrier boxes root_6337520 := by
  apply coveredBy_split_literal root_6337520 small_6337520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6337866 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6337520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6337866
#print axioms cover_6337520

def root_6337515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337515_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6337515_right_fuel : Nat := 1
def small_6337515_right_count : Nat := 1
def small_6337515_right_encoded : String := "00000001"
theorem small_6337515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6337515_right_root small_6337515_right_fuel small_6337515_right_count small_6337515_right_encoded = true := by
  decide +kernel
theorem small_6337515_right_covered : CoveredBy scale carrier boxes small_6337515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6337515_right_root small_6337515_right_fuel small_6337515_right_count small_6337515_right_encoded small_6337515_right_checked

theorem cover_6337515 : CoveredBy scale carrier boxes root_6337515 := by
  apply coveredBy_split_literal root_6337515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6337520 small_6337515_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6337520
  · exact small_6337515_right_covered
#print axioms cover_6337515

def root_6366408 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6366408 : CoveredBy scale carrier boxes root_6366408 := by
  apply coveredBy_split_literal root_6366408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2393.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2394.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2393.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2394.covered
#print axioms cover_6366408

def root_6366403 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366403_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366403_right_fuel : Nat := 1
def small_6366403_right_count : Nat := 1
def small_6366403_right_encoded : String := "00000001"
theorem small_6366403_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366403_right_root small_6366403_right_fuel small_6366403_right_count small_6366403_right_encoded = true := by
  decide +kernel
theorem small_6366403_right_covered : CoveredBy scale carrier boxes small_6366403_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366403_right_root small_6366403_right_fuel small_6366403_right_count small_6366403_right_encoded small_6366403_right_checked

theorem cover_6366403 : CoveredBy scale carrier boxes root_6366403 := by
  apply coveredBy_split_literal root_6366403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366408 small_6366403_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366408
  · exact small_6366403_right_covered
#print axioms cover_6366403

def root_6366402 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366402_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366402_right_fuel : Nat := 17
def small_6366402_right_count : Nat := 117
def small_6366402_right_encoded : String := "135D4503000000010CFD9BF70F350D0004548A0513867104000000020CFD9BFD0F350D060CFD9C090000000A0F350CFE000000040C9A87000F8750F70C9A87060F8750FD0C9A86FE000000060F87510900000004028000F80000000600000006000000030000000A000000000F878CF7000000000C9A87060F8750FD0C9A86FE000000060F87510900000004028000F80000000600000006000000030F878CFD000000030000000A000000030F34D106000000030000000A1386AD040CFD9BFD0F350D060CFD9C090000000A0F350CFE000000040C9A87000000000A0F878CF7000000000C9A8706000000060000000A000000030000000A00000002000000000F34D1000000000004548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87060F8750FD0C9A86FE000000060F87510900000004028000F80000000600000005000000030F878CFD000000030C9A86FE0F878D09000000090000000400000005000000030F34D106000000030000000A1386AD040CFD9BFD0F350D060CFD9C09000000060F350CFE000000040C9A8706000000060F878CFD000000030C9A86FE000000060000000A000000030F34D106000000030000000A00000002"
theorem small_6366402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366402_right_root small_6366402_right_fuel small_6366402_right_count small_6366402_right_encoded = true := by
  decide +kernel
theorem small_6366402_right_covered : CoveredBy scale carrier boxes small_6366402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366402_right_root small_6366402_right_fuel small_6366402_right_count small_6366402_right_encoded small_6366402_right_checked

theorem cover_6366402 : CoveredBy scale carrier boxes root_6366402 := by
  apply coveredBy_split_literal root_6366402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366403 small_6366402_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366403
  · exact small_6366402_right_covered
#print axioms cover_6366402

def root_6366396 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366396_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366396_left_fuel : Nat := 1
def small_6366396_left_count : Nat := 1
def small_6366396_left_encoded : String := "00000004"
theorem small_6366396_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366396_left_root small_6366396_left_fuel small_6366396_left_count small_6366396_left_encoded = true := by
  decide +kernel
theorem small_6366396_left_covered : CoveredBy scale carrier boxes small_6366396_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366396_left_root small_6366396_left_fuel small_6366396_left_count small_6366396_left_encoded small_6366396_left_checked

theorem cover_6366396 : CoveredBy scale carrier boxes root_6366396 := by
  apply coveredBy_split_literal root_6366396 small_6366396_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366402 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6366396_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366402
#print axioms cover_6366396

def root_6366318 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366318_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366318_left_fuel : Nat := 9
def small_6366318_left_count : Nat := 37
def small_6366318_left_encoded : String := "120700FE050000F8135D81030CFD9BF70F350D0004548A051386710400000002000000071386AD040CFD9BFD000000060000000A00000002000000000F34D1000000000004548A0513867104000000020CFD9BFD00000006000000090000000600000001135D4503000000010CFD9BF70F350D000000000A000000000F34D1000000000004548A05000000090000000600000004"
theorem small_6366318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366318_left_root small_6366318_left_fuel small_6366318_left_count small_6366318_left_encoded = true := by
  decide +kernel
theorem small_6366318_left_covered : CoveredBy scale carrier boxes small_6366318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366318_left_root small_6366318_left_fuel small_6366318_left_count small_6366318_left_encoded small_6366318_left_checked

theorem cover_6366318 : CoveredBy scale carrier boxes root_6366318 := by
  apply coveredBy_split_literal root_6366318 small_6366318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366396 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6366318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366396
#print axioms cover_6366318

def root_6366313 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366313_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366313_right_fuel : Nat := 1
def small_6366313_right_count : Nat := 1
def small_6366313_right_encoded : String := "00000003"
theorem small_6366313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366313_right_root small_6366313_right_fuel small_6366313_right_count small_6366313_right_encoded = true := by
  decide +kernel
theorem small_6366313_right_covered : CoveredBy scale carrier boxes small_6366313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366313_right_root small_6366313_right_fuel small_6366313_right_count small_6366313_right_encoded small_6366313_right_checked

theorem cover_6366313 : CoveredBy scale carrier boxes root_6366313 := by
  apply coveredBy_split_literal root_6366313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366318 small_6366313_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366318
  · exact small_6366313_right_covered
#print axioms cover_6366313

def root_6366312 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366312_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366312_right_fuel : Nat := 15
def small_6366312_right_count : Nat := 31
def small_6366312_right_encoded : String := "120701060000000308A913090000000A12073CFE00000004050000F8135D81030CFD9BF70F350D0004548A051386710400000002045489FD1386AD060CFD9C090000000A0F350CFE000000040C9A87000000000A0000000A000000030000000A0000000A000000000F34D100000000000000000A000000010000000A"
theorem small_6366312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366312_right_root small_6366312_right_fuel small_6366312_right_count small_6366312_right_encoded = true := by
  decide +kernel
theorem small_6366312_right_covered : CoveredBy scale carrier boxes small_6366312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366312_right_root small_6366312_right_fuel small_6366312_right_count small_6366312_right_encoded small_6366312_right_checked

theorem cover_6366312 : CoveredBy scale carrier boxes root_6366312 := by
  apply coveredBy_split_literal root_6366312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366313 small_6366312_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366313
  · exact small_6366312_right_covered
#print axioms cover_6366312

def root_6366306 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366306_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366306_left_fuel : Nat := 1
def small_6366306_left_count : Nat := 1
def small_6366306_left_encoded : String := "00000002"
theorem small_6366306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366306_left_root small_6366306_left_fuel small_6366306_left_count small_6366306_left_encoded = true := by
  decide +kernel
theorem small_6366306_left_covered : CoveredBy scale carrier boxes small_6366306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366306_left_root small_6366306_left_fuel small_6366306_left_count small_6366306_left_encoded small_6366306_left_checked

theorem cover_6366306 : CoveredBy scale carrier boxes root_6366306 := by
  apply coveredBy_split_literal root_6366306 small_6366306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366312 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6366306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366312
#print axioms cover_6366306

def root_6366305 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366305_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366305_right_fuel : Nat := 20
def small_6366305_right_count : Nat := 145
def small_6366305_right_encoded : String := "12073D0408A912FD12073D0608A91309120700FE050000F8135D81030CFD9BF7000000060F34D100000000000000000600000001135D4503000000010CFD9BF7000000060F34D10000000000000000060000000412073CFE00000004050000F8135D81030CFD9BF70F350D000CFD9C050F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87000F8750F70C9A8706000000060000000A000000000F878CF7000000000C9A8706000000060F878CFD000000030000000A000000030F34D106000000030000000A0F350D040CFD9BFD0F350D060CFD9C090000000600000006000000030000000A00000002000000000F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350D060CFD9C09000000060F350CFE000000040C9A8706000000060F878CFD0000000300000006000000030F34D106000000030CFD9C090000000A0F350CFE000000040000000A0F350D040CFD9BFD000000060F34D106000000030000000A0000000200000001135D4503000000010CFD9BF70F350D000CFD9C050F34D104000000020CFD9BFD0F350D060CFD9C09000000060F350CFE000000040000000A000000030000000A0F350D040000000A00000002000000000F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350D0600000006000000030F34D106000000030000000A0F350D040CFD9BFD000000060000000A0000000200000003120701060000000308A913090000000A12073CFE00000004050000F80000000A0000000A00000002"
theorem small_6366305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366305_right_root small_6366305_right_fuel small_6366305_right_count small_6366305_right_encoded = true := by
  decide +kernel
theorem small_6366305_right_covered : CoveredBy scale carrier boxes small_6366305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366305_right_root small_6366305_right_fuel small_6366305_right_count small_6366305_right_encoded small_6366305_right_checked

theorem cover_6366305 : CoveredBy scale carrier boxes root_6366305 := by
  apply coveredBy_split_literal root_6366305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366306 small_6366305_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366306
  · exact small_6366305_right_covered
#print axioms cover_6366305

def root_6366300 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366300_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366300_right_fuel : Nat := 1
def small_6366300_right_count : Nat := 1
def small_6366300_right_encoded : String := "00000000"
theorem small_6366300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366300_right_root small_6366300_right_fuel small_6366300_right_count small_6366300_right_encoded = true := by
  decide +kernel
theorem small_6366300_right_covered : CoveredBy scale carrier boxes small_6366300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366300_right_root small_6366300_right_fuel small_6366300_right_count small_6366300_right_encoded small_6366300_right_checked

theorem cover_6366300 : CoveredBy scale carrier boxes root_6366300 := by
  apply coveredBy_split_literal root_6366300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366305 small_6366300_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366305
  · exact small_6366300_right_covered
#print axioms cover_6366300

def root_6366299 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366299_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366299_right_fuel : Nat := 29
def small_6366299_right_count : Nat := 443
def small_6366299_right_encoded : String := "120701000000000008A91305120701040000000208A912FD12073D0608A91309120700FE050000F8135D8103045489F71386AD0004548A0500000009000000060000000013867100000000000000000900000001000000090000000412073CFE00000004050000F8135D8103045489F71386AD0004548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87060F8750FD0C9A86FE0F878D0900000006000000040F87510900000004078000F8128A7D03067ECE7712EA9500022A458513E1C5040000000200000009000000060000000012EA590000000000022A4585000000090000000600000001128A410300000001067ECE770000000600000009000000030F878CFD000000030C9A86FE0F878D09078000F8128A7D03067ECE7712EA9500022A4585000000090000000600000000000000090000000100000009000000040F87510900000004078000F8128A7D03067ECE7712EA9500022A458513E1C504000000020DE7CA06000000090000000513E201040DE7CA060000000700000005000000020000000012EA590000000000000000050000000100000005000000030F34D106000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D03067ECE7712EA9500022A4585000000090000000A0000000012EA59000000000000000005000000010000000500000004000000051386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87060F8750FD00000006000000030F878CFD000000030C9A86FE0F878D0900000006000000040F87510900000004078000F8128A7D03000000070000000100000005000000030F34D106000000030CFD9C090000000A0F350CFE000000040C9A86FE0F878D09078000F8128A7D03067ECE770000000A0000000A000000010000000500000004000000050000000200000000138671000000000004548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87060F8750FD0C9A86FE000000090F87510900000004078000F8128A7D03022A457700000009000000090000000100000005000000030F878CFD000000030C9A86FE0F878D09000000090000000400000005000000030F34D106000000030CFD9C09000000090F350CFE00000004000000051386AD040CFD9BFD0F350D060CFD9C09000000060F350CFE000000040C9A87060F8750FD00000006000000030F878CFD000000030C9A86FE0F878D09000000060000000400000005000000030F34D106000000030CFD9C090F34D0FE078000F80000000A00000009000000040F350CFE00000004000000050000000200000001135D450300000001045489F71386AD0004548A0513867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A87060000000900000005000000030F34D10600000003000000051386AD040CFD9BFD0F350D060CFD9C09000000060F350CFE000000040C9A87060000000600000005000000030F34D10600000003000000050000000200000000138671000000000004548A0513867104000000020CFD9BFD0F350D060000000900000003000000091386AD040CFD9BFD0F350D060CFD9C09000000060F350CFE0000000400000005000000030F34D10600000003000000050000000200000003120701060000000308A913090000000A12073CFE00000004050000F8135D8103045489F71386AD0004548A050000000A0000000A00000000138671000000000000000005000000010000000512073D0408A912FD12073D0608A91309120700FE000000060000000412073CFE00000004050000F8135D8103045489F71386AD000CFD9C050F34D104000000020CFD9BFD0F350D0600000006000000030F34D106000000030CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A00000004000000050F350D040CFD9BFD000000060F34D106000000030000000A000000020000000013867100000000000CFD9C050F34D104000000020CFD9BFD0F350D0600000006000000030F34D106000000030CFD9C090000000A0F350CFE00000004000000050F350D04000000060000000200000001135D450300000001045489F71386AD000CFD9C050F34D104000000020CFD9BFD0F350D0600000006000000030F34D106000000030000000A0F350D040CFD9BFD0000000600000006000000020000000013867100000000000CFD9C050F34D104000000020CFD9BFD0F350D0600000006000000030F34D10600000003000000050F350D04000000060000000200000003120701060000000308A913090000000A12073CFE00000004050000F8135D8103045489F70000000A0000000A000000010000000A00000002"
theorem small_6366299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366299_right_root small_6366299_right_fuel small_6366299_right_count small_6366299_right_encoded = true := by
  decide +kernel
theorem small_6366299_right_covered : CoveredBy scale carrier boxes small_6366299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366299_right_root small_6366299_right_fuel small_6366299_right_count small_6366299_right_encoded small_6366299_right_checked

theorem cover_6366299 : CoveredBy scale carrier boxes root_6366299 := by
  apply coveredBy_split_literal root_6366299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366300 small_6366299_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366300
  · exact small_6366299_right_covered
#print axioms cover_6366299

def root_6366294 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366294_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6366294_right_fuel : Nat := 1
def small_6366294_right_count : Nat := 1
def small_6366294_right_encoded : String := "00000004"
theorem small_6366294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6366294_right_root small_6366294_right_fuel small_6366294_right_count small_6366294_right_encoded = true := by
  decide +kernel
theorem small_6366294_right_covered : CoveredBy scale carrier boxes small_6366294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6366294_right_root small_6366294_right_fuel small_6366294_right_count small_6366294_right_encoded small_6366294_right_checked

theorem cover_6366294 : CoveredBy scale carrier boxes root_6366294 := by
  apply coveredBy_split_literal root_6366294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.root_6366299 small_6366294_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440.cover_6366299
  · exact small_6366294_right_covered
#print axioms cover_6366294

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0440

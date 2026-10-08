import TaoBundleAssembly0401
import TaoBundleAssembly0404
import TaoBundleChunkBatch0541
import TaoBundleChunkBatch0542
import TaoBundleChunkBatch0543
import TaoBundleChunkBatch0544
import TaoBundleChunkBatch0545
import TaoBundleChunkBatch0546
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405
def root_5779013 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5779013_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5779013_left_fuel : Nat := 25
def small_5779013_left_count : Nat := 487
def small_5779013_left_encoded : String := "120701040000000208A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FC135D810704548A050000000A0000000600000003135D45070000000304548A0513867104000000020000000A00000006135D44F9050000FC135D810704548A05000000091386AD0404548A09000000061386AD080280010013D7B0F7028000F80000000A000000090000000000000009000000040000000200000003135D45070000000304548A05138671040000000204548A09000000091386AD080280010013D7B0F7028000F80000000A000000050000000000000005000000041386AD0404548A09000000061386AD080280010013D7B0F7028000F80000000613D7B0F9028000FC13D7ED07067ECE8500000009000000060000000300000005000000010000000013D7ECF700000000028000F8000000060000000500000004000000020000000100000000135D80F700000000050000F8135D80F900000001050000FC0000000600000006135D44F9050000FC135D81070000000900000003000000050000000112073D0805000100135D44F7050000F8135D80F900000001050000FC135D810704548A050000000A1386AD040CFD9C090F34D108000000040000000A0000000A0000000200000003135D45070000000304548A0513867104000000020CFD9C090F34D108000000040000000A0000000A1386AD040CFD9C090F34D108000000040280010013D7B0F70000000A000000000000000A0F350D080C9A87080F875109000000040000000A0F878D09028001000000000A0000000A000000040000000400000002135D44F9050000FC135D810704548A0513867104000000020CFD9C090F34D108000000040000000A0000000A1386AD040CFD9C090F34D108000000040280010013D7B0F7028000F80000000A13D7B0F9078000FC0000000A128A4107000000030000000A000000010000000013D7ECF700000000028000F80000000A13D7B0F9078000FC0000000A128A4107000000030000000A000000010F350D080C9A87080F875109000000040000000A0F878D09028001000000000A0000000A00000004000000040000000200000003135D45070000000304548A0513867104000000020CFD9C090F34D10800000004028001000000000A0000000A0F350D0800000007000000041386AD040CFD9C090F34D108000000040280010013D7B0F7028000F813D7ECF900000001028000FC0000000A13D7B10700000003067ECE850000000A12EA95040AD35789000000060000000A0000000213D7B0F9028000FC13D7ED07067ECE850000000A12EA95040AD3578910D1010800000004014001000000000A0000000A10D13D0801400100000000070000000A00000004000000020000000313D7B10700000003067ECE8512EA5904000000020000000512EA95040AD3578910D10108000000040000000510D13D08000000070000000400000002000000010000000013D7ECF700000000028000F813D7ECF900000001028000FC0000000A13D7B10700000003067ECE850000000A12EA9504000000060000000213D7B0F9028000FC13D7ED07067ECE850000000A12EA95040AD3578910D1010800000004000000050000000A000000020000000300000005000000010F350D080C9A87080F87510900000004028001000000000713D7ECF700000000028000F800000008000000070F878D090280010013D7B0F7028000F813D7ECF900000001028000FC0000000A00000007000000070000000013D7ECF700000000028000F813D7ECF900000001028000FC0000000A0000000813D7B0F9028000FC13D7ED07067ECE850000000712EA95040000000A000000020000000300000008000000010000000400000004000000020000000100000000135D80F700000000050000F8135D80F900000001050000FC135D810704548A050000000A1386AD040CFD9C090F34D108000000040000000A0000000A0000000200000003135D45070000000304548A0513867104000000020CFD9C090F34D108000000040000000A0000000A1386AD040CFD9C090F34D10800000004000000060F350D080C9A87080F87510900000004000000080F878D09078001000000000A00000008000000040000000400000002135D44F9050000FC135D810704548A0513867104000000020CFD9C090F34D10800000004000000090000000A1386AD040CFD9C090F34D1080000000407800100128A40F7028000F80000000A13D7B0F9078000FC00000009128A4107000000030000000A0000000100000000128A7CF700000000028000F80000000A13D7B0F9078000FC0000000900000005000000010F350D080C9A87080F875109000000040000000A0F878D09078001000000000A0000000A00000004000000040000000200000003135D45070000000304548A0513867104000000020CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004000000080000000A000000041386AD040CFD9C090F34D1080000000407800100128A40F7028000F813D7ECF900000001028000FC0000000A000000050000000500000000000000050F350D080C9A87080F87510900000004000000080F878D0907800100128A40F7028000F8000000080000000800000000000000080000000400000004000000020000000100000004"
theorem small_5779013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5779013_left_root small_5779013_left_fuel small_5779013_left_count small_5779013_left_encoded = true := by
  decide +kernel
theorem small_5779013_left_covered : CoveredBy scale carrier boxes small_5779013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5779013_left_root small_5779013_left_fuel small_5779013_left_count small_5779013_left_encoded small_5779013_left_checked

theorem cover_5779013 : CoveredBy scale carrier boxes root_5779013 := by
  apply coveredBy_split_literal root_5779013 small_5779013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2166.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5779013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2166.covered
#print axioms cover_5779013

def root_5779008 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5779008_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5779008_right_fuel : Nat := 1
def small_5779008_right_count : Nat := 1
def small_5779008_right_encoded : String := "00000004"
theorem small_5779008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5779008_right_root small_5779008_right_fuel small_5779008_right_count small_5779008_right_encoded = true := by
  decide +kernel
theorem small_5779008_right_covered : CoveredBy scale carrier boxes small_5779008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5779008_right_root small_5779008_right_fuel small_5779008_right_count small_5779008_right_encoded small_5779008_right_checked

theorem cover_5779008 : CoveredBy scale carrier boxes root_5779008 := by
  apply coveredBy_split_literal root_5779008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5779013 small_5779008_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5779013
  · exact small_5779008_right_covered
#print axioms cover_5779008

def root_5778726 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5778726_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5778726_left_fuel : Nat := 21
def small_5778726_left_count : Nat := 137
def small_5778726_left_encoded : String := "1151E9090000000408A91305120701040000000205000100135D44F7050000F8135D80F900000001050000FC00000005135D4507000000030500010800000005135D810904548A05000000070000000900000004135D44F9050000FC00000007000000070000000100000000135D80F700000000050000F8135D80F900000001050000FC0000000A135D45070000000305000108135D45090000000400000007135D810904548A050000000A0000000800000004135D44F9050000FC135D810705000108000000070000000A00000003135D4507000000030500010800000007000000080000000112073D0405000100135D44F7050000F800000009135D44F9000000090000000100000000135D80F700000000050000F8135D80F900000001050000FC135D81070500010800000005135D81090CFD9C050F34D1040000000207800100000000050000000A00000009000000040000000300000009135D44F9050000FC135D810705000108135D45090000000400000009135D81090CFD9C050F34D1040000000207800100128A40F7028000F813D7ECF900000001078000FC000000050000000813D7B0F9078000FC128A7D0707800108000000050000000A00000003000000080000000100000000128A7CF700000000028000F813D7ECF900000001078000FC0000000A0000000813D7B0F9078000FC128A7D0700000008000000030000000800000001000000090000000400000003000000090000000100000002"
theorem small_5778726_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5778726_left_root small_5778726_left_fuel small_5778726_left_count small_5778726_left_encoded = true := by
  decide +kernel
theorem small_5778726_left_covered : CoveredBy scale carrier boxes small_5778726_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5778726_left_root small_5778726_left_fuel small_5778726_left_count small_5778726_left_encoded small_5778726_left_checked

theorem cover_5778726 : CoveredBy scale carrier boxes root_5778726 := by
  apply coveredBy_split_literal root_5778726 small_5778726_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5779008 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5778726_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5779008
#print axioms cover_5778726

def root_5778720 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5778720_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5778720_left_fuel : Nat := 1
def small_5778720_left_count : Nat := 1
def small_5778720_left_encoded : String := "00000003"
theorem small_5778720_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5778720_left_root small_5778720_left_fuel small_5778720_left_count small_5778720_left_encoded = true := by
  decide +kernel
theorem small_5778720_left_covered : CoveredBy scale carrier boxes small_5778720_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5778720_left_root small_5778720_left_fuel small_5778720_left_count small_5778720_left_encoded small_5778720_left_checked

theorem cover_5778720 : CoveredBy scale carrier boxes root_5778720 := by
  apply coveredBy_split_literal root_5778720 small_5778720_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5778726 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5778720_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5778726
#print axioms cover_5778720

def root_5777608 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5777608 : CoveredBy scale carrier boxes root_5777608 := by
  apply coveredBy_split_literal root_5777608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2165.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5778720 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2165.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5778720
#print axioms cover_5777608

def root_5777603 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5777603_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5777603_right_fuel : Nat := 1
def small_5777603_right_count : Nat := 1
def small_5777603_right_encoded : String := "00000002"
theorem small_5777603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5777603_right_root small_5777603_right_fuel small_5777603_right_count small_5777603_right_encoded = true := by
  decide +kernel
theorem small_5777603_right_covered : CoveredBy scale carrier boxes small_5777603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5777603_right_root small_5777603_right_fuel small_5777603_right_count small_5777603_right_encoded small_5777603_right_checked

theorem cover_5777603 : CoveredBy scale carrier boxes root_5777603 := by
  apply coveredBy_split_literal root_5777603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5777608 small_5777603_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5777608
  · exact small_5777603_right_covered
#print axioms cover_5777603

def root_5777401 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5777401_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5777401_left_fuel : Nat := 20
def small_5777401_left_count : Nat := 93
def small_5777401_left_encoded : String := "1151E905000000020A0000FC115225070A000108000000051152250908A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040500010000000005135D80F700000000050000F800000005135D44F9000000060000000112073D080500010000000005135D80F700000000050000F800000005135D44F90500010400000005135D81050CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D10800000004000000060F350D08000000050000000400000002000000010000000400000004000000031151E907000000030A0001081151E90900000004000000091152250908A9130912070108000000040000000612073D0805000100135D44F7050000F800000009135D44F9000000090000000100000000135D80F700000000050000F800000006135D44F90500010400000006135D8105050000FC135D81070CFD9C090000000600000009000000030000000600000002000000010000000400000004"
theorem small_5777401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5777401_left_root small_5777401_left_fuel small_5777401_left_count small_5777401_left_encoded = true := by
  decide +kernel
theorem small_5777401_left_covered : CoveredBy scale carrier boxes small_5777401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5777401_left_root small_5777401_left_fuel small_5777401_left_count small_5777401_left_encoded small_5777401_left_checked

theorem cover_5777401 : CoveredBy scale carrier boxes root_5777401 := by
  apply coveredBy_split_literal root_5777401 small_5777401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5777603 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5777401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5777603
#print axioms cover_5777401

def root_5777396 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5777396_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5777396_right_fuel : Nat := 1
def small_5777396_right_count : Nat := 1
def small_5777396_right_encoded : String := "00000001"
theorem small_5777396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5777396_right_root small_5777396_right_fuel small_5777396_right_count small_5777396_right_encoded = true := by
  decide +kernel
theorem small_5777396_right_covered : CoveredBy scale carrier boxes small_5777396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5777396_right_root small_5777396_right_fuel small_5777396_right_count small_5777396_right_encoded small_5777396_right_checked

theorem cover_5777396 : CoveredBy scale carrier boxes root_5777396 := by
  apply coveredBy_split_literal root_5777396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5777401 small_5777396_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5777401
  · exact small_5777396_right_covered
#print axioms cover_5777396

def root_5776254 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5776254 : CoveredBy scale carrier boxes root_5776254 := by
  apply coveredBy_split_literal root_5776254 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2164.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5777396 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2164.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5777396
#print axioms cover_5776254

def root_5776249 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5776249_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5776249_right_fuel : Nat := 1
def small_5776249_right_count : Nat := 1
def small_5776249_right_encoded : String := "00000000"
theorem small_5776249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5776249_right_root small_5776249_right_fuel small_5776249_right_count small_5776249_right_encoded = true := by
  decide +kernel
theorem small_5776249_right_covered : CoveredBy scale carrier boxes small_5776249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5776249_right_root small_5776249_right_fuel small_5776249_right_count small_5776249_right_encoded small_5776249_right_checked

theorem cover_5776249 : CoveredBy scale carrier boxes root_5776249 := by
  apply coveredBy_split_literal root_5776249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5776254 small_5776249_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5776254
  · exact small_5776249_right_covered
#print axioms cover_5776249

def root_5782527 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5782527 : CoveredBy scale carrier boxes root_5782527 := by
  apply coveredBy_split_literal root_5782527 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2167.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2168.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2167.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2168.covered
#print axioms cover_5782527

def root_5782521 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5782521_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5782521_left_fuel : Nat := 1
def small_5782521_left_count : Nat := 1
def small_5782521_left_encoded : String := "00000001"
theorem small_5782521_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5782521_left_root small_5782521_left_fuel small_5782521_left_count small_5782521_left_encoded = true := by
  decide +kernel
theorem small_5782521_left_covered : CoveredBy scale carrier boxes small_5782521_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5782521_left_root small_5782521_left_fuel small_5782521_left_count small_5782521_left_encoded small_5782521_left_checked

theorem cover_5782521 : CoveredBy scale carrier boxes root_5782521 := by
  apply coveredBy_split_literal root_5782521 small_5782521_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5782527 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5782521_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5782527
#print axioms cover_5782521

def root_5787650 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5787650 : CoveredBy scale carrier boxes root_5787650 := by
  apply coveredBy_split_literal root_5787650 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2169.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2170.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2169.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2170.covered
#print axioms cover_5787650

def root_5787645 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5787645_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5787645_right_fuel : Nat := 1
def small_5787645_right_count : Nat := 1
def small_5787645_right_encoded : String := "00000002"
theorem small_5787645_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5787645_right_root small_5787645_right_fuel small_5787645_right_count small_5787645_right_encoded = true := by
  decide +kernel
theorem small_5787645_right_covered : CoveredBy scale carrier boxes small_5787645_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5787645_right_root small_5787645_right_fuel small_5787645_right_count small_5787645_right_encoded small_5787645_right_checked

theorem cover_5787645 : CoveredBy scale carrier boxes root_5787645 := by
  apply coveredBy_split_literal root_5787645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5787650 small_5787645_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5787650
  · exact small_5787645_right_covered
#print axioms cover_5787645

def root_5787045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5787045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5787045_left_fuel : Nat := 22
def small_5787045_left_count : Nat := 279
def small_5787045_left_encoded : String := "1151E905000000020A0000FC115225070A0001081151E9090000000408A912F712073D0008A91307120700FC000000050000000312073CFC00000003050000F8135D80F90000000105000104135D4505000000020500010800000005135D81090000000500000004135D81050500010800000005135D81090CFD9BF70F350D0000000005000000000F34D10000000000000000070000000400000002135D44F905000104135D450500000002050001080000000500000007135D810505000108135D4509000000040CFD9BF70F350D0000000005000000000F34D100000000000CFD9C070000000800000007135D81090CFD9BF70F350D000CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87000000000500000007000000000F34D100000000000000000700000004000000020000000100000000120701000000000008A91307120700FC0000000700000003000000071152250908A912F712073D0008A91307120700FC08A913091207010800000004050000F8135D80F9000000010500010400000005135D81050CFD9BF7000000070000000500000002135D44F9000000070000000112073D08050000F800000005135D44F90500010400000005135D81050CFD9BF70F350D000000000500000000000000070000000200000001000000040000000312073CFC0000000308A913091207010800000004050000F8135D80F9000000010500010400000007135D81050CFD9BF7000000070000000600000002135D44F90500010400000006000000070000000112073D08050000F8135D80F90000000105000104135D4505000000020CFD9BF70000000700000007135D81050CFD9BF70F350D000CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090000000600000006000000000F34D100000000000000000700000002135D44F90500010400000007135D81050CFD9BF70F350D000CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D108000000040000000600000007000000000F34D100000000000000000700000002000000010000000400000000120701000000000008A91307120700FC00000007000000030000000700000004000000031151E907000000030A0001081151E9090000000408A912F712073D00050000F8135D80F9000000010500010400000008135D8105050000FC135D810705000108135D4509000000040000000800000006000000030000000800000002135D44F905000104135D45050000000200000009135D8105050000FC135D810705000108135D45090000000400000008135D81090CFD9BF700000008000000060000000400000003000000090000000200000001000000001207010000000000050000F800000006135D44F9050001040000000600000006000000011152250908A912F712073D0008A9130912070108000000040000000612073D08050000F800000006135D44F900000006000000010000000400000000120701000000000008A91309000000060000000600000004"
theorem small_5787045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5787045_left_root small_5787045_left_fuel small_5787045_left_count small_5787045_left_encoded = true := by
  decide +kernel
theorem small_5787045_left_covered : CoveredBy scale carrier boxes small_5787045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5787045_left_root small_5787045_left_fuel small_5787045_left_count small_5787045_left_encoded small_5787045_left_checked

theorem cover_5787045 : CoveredBy scale carrier boxes root_5787045 := by
  apply coveredBy_split_literal root_5787045 small_5787045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5787645 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5787045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5787645
#print axioms cover_5787045

def root_5787040 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5787040_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5787040_right_fuel : Nat := 1
def small_5787040_right_count : Nat := 1
def small_5787040_right_encoded : String := "00000001"
theorem small_5787040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5787040_right_root small_5787040_right_fuel small_5787040_right_count small_5787040_right_encoded = true := by
  decide +kernel
theorem small_5787040_right_covered : CoveredBy scale carrier boxes small_5787040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5787040_right_root small_5787040_right_fuel small_5787040_right_count small_5787040_right_encoded small_5787040_right_checked

theorem cover_5787040 : CoveredBy scale carrier boxes root_5787040 := by
  apply coveredBy_split_literal root_5787040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5787045 small_5787040_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5787045
  · exact small_5787040_right_covered
#print axioms cover_5787040

def root_5782520 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5782520 : CoveredBy scale carrier boxes root_5782520 := by
  apply coveredBy_split_literal root_5782520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5782521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5787040 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5782521
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5787040
#print axioms cover_5782520

def root_5782514 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5782514_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5782514_left_fuel : Nat := 1
def small_5782514_left_count : Nat := 1
def small_5782514_left_encoded : String := "00000000"
theorem small_5782514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5782514_left_root small_5782514_left_fuel small_5782514_left_count small_5782514_left_encoded = true := by
  decide +kernel
theorem small_5782514_left_covered : CoveredBy scale carrier boxes small_5782514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5782514_left_root small_5782514_left_fuel small_5782514_left_count small_5782514_left_encoded small_5782514_left_checked

theorem cover_5782514 : CoveredBy scale carrier boxes root_5782514 := by
  apply coveredBy_split_literal root_5782514 small_5782514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5782520 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5782514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5782520
#print axioms cover_5782514

def root_5776248 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5776248 : CoveredBy scale carrier boxes root_5776248 := by
  apply coveredBy_split_literal root_5776248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5776249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5782514 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5776249
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5782514
#print axioms cover_5776248

def root_5772024 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5772024 : CoveredBy scale carrier boxes root_5772024 := by
  apply coveredBy_split_literal root_5772024 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0404.root_5772025 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5776248 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0404.cover_5772025
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5776248
#print axioms cover_5772024

def root_5734606 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5734606 : CoveredBy scale carrier boxes root_5734606 := by
  apply coveredBy_split_literal root_5734606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0404.root_5734607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5772024 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0404.cover_5734607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5772024
#print axioms cover_5734606

def root_5647564 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5647564 : CoveredBy scale carrier boxes root_5647564 := by
  apply coveredBy_split_literal root_5647564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5647565 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5734606 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5647565
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5734606
#print axioms cover_5647564

def root_5791092 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5791092 : CoveredBy scale carrier boxes root_5791092 := by
  apply coveredBy_split_literal root_5791092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2171.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2172.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2171.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2172.covered
#print axioms cover_5791092

def root_5791087 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5791087_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5791087_right_fuel : Nat := 1
def small_5791087_right_count : Nat := 1
def small_5791087_right_encoded : String := "00000002"
theorem small_5791087_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5791087_right_root small_5791087_right_fuel small_5791087_right_count small_5791087_right_encoded = true := by
  decide +kernel
theorem small_5791087_right_covered : CoveredBy scale carrier boxes small_5791087_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5791087_right_root small_5791087_right_fuel small_5791087_right_count small_5791087_right_encoded small_5791087_right_checked

theorem cover_5791087 : CoveredBy scale carrier boxes root_5791087 := by
  apply coveredBy_split_literal root_5791087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5791092 small_5791087_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5791092
  · exact small_5791087_right_covered
#print axioms cover_5791087

def root_5790945 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790945_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790945_left_fuel : Nat := 17
def small_5790945_left_count : Nat := 69
def small_5790945_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A912FF12073CFE0000000405000100135D44F70500010400000009135D810505000106135D44FD0CFD9BF9000000090000000600000003000000090000000200000000135D80F7000000000500010400000006135D81050500010600000006135D80FD000000030CFD9BF900000009000000060000000200000009120700F808A912FF0000000600000005000000011151E8FF08A912F912073CF800000001050001000000000A00000006000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F900000009120700F800000009000000011151E8FF0000000A00000004"
theorem small_5790945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5790945_left_root small_5790945_left_fuel small_5790945_left_count small_5790945_left_encoded = true := by
  decide +kernel
theorem small_5790945_left_covered : CoveredBy scale carrier boxes small_5790945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5790945_left_root small_5790945_left_fuel small_5790945_left_count small_5790945_left_encoded small_5790945_left_checked

theorem cover_5790945 : CoveredBy scale carrier boxes root_5790945 := by
  apply coveredBy_split_literal root_5790945 small_5790945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5791087 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5790945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5791087
#print axioms cover_5790945

def root_5790939 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790939_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790939_left_fuel : Nat := 1
def small_5790939_left_count : Nat := 1
def small_5790939_left_encoded : String := "00000001"
theorem small_5790939_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5790939_left_root small_5790939_left_fuel small_5790939_left_count small_5790939_left_encoded = true := by
  decide +kernel
theorem small_5790939_left_covered : CoveredBy scale carrier boxes small_5790939_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5790939_left_root small_5790939_left_fuel small_5790939_left_count small_5790939_left_encoded small_5790939_left_checked

theorem cover_5790939 : CoveredBy scale carrier boxes root_5790939 := by
  apply coveredBy_split_literal root_5790939 small_5790939_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5790945 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5790939_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5790945
#print axioms cover_5790939

def root_5790938 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790938_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790938_right_fuel : Nat := 23
def small_5790938_right_count : Nat := 253
def small_5790938_right_encoded : String := "1151E8F90A0001041151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A912FF12073CFE00000004050001000000000700000007000000071151E8FF000000050000000400000003115224FD000000030A0000FE000000091151E8FF08A912FD12073D0605000100000000090000000A000000030000000A00000004115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000005120700FE05000100135D44F7050000F8135D80F900000001050001060000000700000008135D44F9000000050000000100000000135D80F700000000050000F8135D80F900000001050001060000000700000008135D44F900000007000000010000000412073D0408A912FF12073CFE0000000405000100135D44F7050000F8135D80F90000000105000106135D44FD0CFD9C05000000050F350D04000000070000000200000003135D80FD000000030CFD9C050000000500000009135D44F90500010600000007135D80FD000000030CFD9C05000000050F350D0400000007000000020000000100000000135D80F700000000050000F8135D80F90000000105000106135D44FD0CFD9C05000000050000000700000003135D80FD000000030CFD9C05000000050F350D040CFD9BFF000000050000000700000002135D44F90500010600000007135D80FD000000030CFD9C05000000050000000700000001120700FE05000100135D44F700000009000000000000000700000004000000021151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073D0608A912FF12073CFE0000000405000100135D44F7000000050000000000000005120700FE0500010000000009135D80F700000000050000F800000009135D44F904548A050000000500000009000000010000000400000003120701060000000308A912FF12073CFE000000040500010000000006135D80F700000000050000F800000006000000050000000612073D0408A912FD12073D0608A912FF12073CFE0000000405000100135D44F7050000F800000009135D44F9000000090000000100000000135D80F700000000050000F8135D80F9000000010CFD9C050F34D104000000020CFD9BFD0F350D060CFD9BFF0000000500000009000000030F34D106000000030000000900000009135D44F90CFD9C050F34D104000000020000000500000009000000010000000900000003120701060000000300000009000000021151E8FF08A9130512070104000000020000000512073D0408A912FD12073D0605000100135D44F7000000050000000000000005000000030000000A00000002000000040000000200000001"
theorem small_5790938_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5790938_right_root small_5790938_right_fuel small_5790938_right_count small_5790938_right_encoded = true := by
  decide +kernel
theorem small_5790938_right_covered : CoveredBy scale carrier boxes small_5790938_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5790938_right_root small_5790938_right_fuel small_5790938_right_count small_5790938_right_encoded small_5790938_right_checked

theorem cover_5790938 : CoveredBy scale carrier boxes root_5790938 := by
  apply coveredBy_split_literal root_5790938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5790939 small_5790938_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5790939
  · exact small_5790938_right_covered
#print axioms cover_5790938

def root_5790933 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790933_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5790933_right_fuel : Nat := 1
def small_5790933_right_count : Nat := 1
def small_5790933_right_encoded : String := "00000000"
theorem small_5790933_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5790933_right_root small_5790933_right_fuel small_5790933_right_count small_5790933_right_encoded = true := by
  decide +kernel
theorem small_5790933_right_covered : CoveredBy scale carrier boxes small_5790933_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5790933_right_root small_5790933_right_fuel small_5790933_right_count small_5790933_right_encoded small_5790933_right_checked

theorem cover_5790933 : CoveredBy scale carrier boxes root_5790933 := by
  apply coveredBy_split_literal root_5790933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5790938 small_5790933_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5790938
  · exact small_5790933_right_covered
#print axioms cover_5790933

def root_5797247 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5797247 : CoveredBy scale carrier boxes root_5797247 := by
  apply coveredBy_split_literal root_5797247 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2174.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2175.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2174.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2175.covered
#print axioms cover_5797247

def root_5797242 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797242_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797242_right_fuel : Nat := 1
def small_5797242_right_count : Nat := 1
def small_5797242_right_encoded : String := "00000003"
theorem small_5797242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5797242_right_root small_5797242_right_fuel small_5797242_right_count small_5797242_right_encoded = true := by
  decide +kernel
theorem small_5797242_right_covered : CoveredBy scale carrier boxes small_5797242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5797242_right_root small_5797242_right_fuel small_5797242_right_count small_5797242_right_encoded small_5797242_right_checked

theorem cover_5797242 : CoveredBy scale carrier boxes root_5797242 := by
  apply coveredBy_split_literal root_5797242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5797247 small_5797242_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5797247
  · exact small_5797242_right_covered
#print axioms cover_5797242

def root_5797241 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5797241 : CoveredBy scale carrier boxes root_5797241 := by
  apply coveredBy_split_literal root_5797241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5797242 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2176.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5797242
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2176.covered
#print axioms cover_5797241

def root_5797235 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797235_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797235_left_fuel : Nat := 1
def small_5797235_left_count : Nat := 1
def small_5797235_left_encoded : String := "00000002"
theorem small_5797235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5797235_left_root small_5797235_left_fuel small_5797235_left_count small_5797235_left_encoded = true := by
  decide +kernel
theorem small_5797235_left_covered : CoveredBy scale carrier boxes small_5797235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5797235_left_root small_5797235_left_fuel small_5797235_left_count small_5797235_left_encoded small_5797235_left_checked

theorem cover_5797235 : CoveredBy scale carrier boxes root_5797235 := by
  apply coveredBy_split_literal root_5797235 small_5797235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5797241 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5797235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5797241
#print axioms cover_5797235

def root_5797234 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5797234 : CoveredBy scale carrier boxes root_5797234 := by
  apply coveredBy_split_literal root_5797234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5797235 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2177.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5797235
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2177.covered
#print axioms cover_5797234

def root_5797228 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797228_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797228_left_fuel : Nat := 1
def small_5797228_left_count : Nat := 1
def small_5797228_left_encoded : String := "00000001"
theorem small_5797228_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5797228_left_root small_5797228_left_fuel small_5797228_left_count small_5797228_left_encoded = true := by
  decide +kernel
theorem small_5797228_left_covered : CoveredBy scale carrier boxes small_5797228_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5797228_left_root small_5797228_left_fuel small_5797228_left_count small_5797228_left_encoded small_5797228_left_checked

theorem cover_5797228 : CoveredBy scale carrier boxes root_5797228 := by
  apply coveredBy_split_literal root_5797228 small_5797228_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5797234 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5797228_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5797234
#print axioms cover_5797228

def root_5810120 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5810120_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15868160)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5810120_left_fuel : Nat := 1
def small_5810120_left_count : Nat := 1
def small_5810120_left_encoded : String := "00000001"
theorem small_5810120_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5810120_left_root small_5810120_left_fuel small_5810120_left_count small_5810120_left_encoded = true := by
  decide +kernel
theorem small_5810120_left_covered : CoveredBy scale carrier boxes small_5810120_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5810120_left_root small_5810120_left_fuel small_5810120_left_count small_5810120_left_encoded small_5810120_left_checked

theorem cover_5810120 : CoveredBy scale carrier boxes root_5810120 := by
  apply coveredBy_split_literal root_5810120 small_5810120_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2179.root coord1 false (-15868160)
  · decide +kernel
  · decide +kernel
  · exact small_5810120_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2179.covered
#print axioms cover_5810120

def root_5813333 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5813333 : CoveredBy scale carrier boxes root_5813333 := by
  apply coveredBy_split_literal root_5813333 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2180.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2181.root coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2180.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2181.covered
#print axioms cover_5813333

def root_5813327 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5813327_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5813327_left_fuel : Nat := 1
def small_5813327_left_count : Nat := 1
def small_5813327_left_encoded : String := "00000002"
theorem small_5813327_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5813327_left_root small_5813327_left_fuel small_5813327_left_count small_5813327_left_encoded = true := by
  decide +kernel
theorem small_5813327_left_covered : CoveredBy scale carrier boxes small_5813327_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5813327_left_root small_5813327_left_fuel small_5813327_left_count small_5813327_left_encoded small_5813327_left_checked

theorem cover_5813327 : CoveredBy scale carrier boxes root_5813327 := by
  apply coveredBy_split_literal root_5813327 small_5813327_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5813333 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5813327_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5813333
#print axioms cover_5813327

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405

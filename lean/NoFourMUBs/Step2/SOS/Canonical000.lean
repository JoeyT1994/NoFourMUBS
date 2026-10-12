import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput0 : ExponentCode := ⟨2, 3, ![![-6, 2, 4], ![6, -2, -4]]⟩

def canonicalOutput0 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1

theorem canonicalSound0 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput0.moment H = canonicalOutput0.moment H :=
  canonical_of_padded canonicalInput0 canonicalOutput0 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1 : ExponentCode := ⟨2, 3, ![![-6, 3, 3], ![6, -3, -3]]⟩

def canonicalOutput1 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code2

theorem canonicalSound1 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1.moment H = canonicalOutput1.moment H :=
  canonical_of_padded canonicalInput1 canonicalOutput1 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2 : ExponentCode := ⟨2, 3, ![![-6, 4, 2], ![6, -4, -2]]⟩

def canonicalOutput2 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1

theorem canonicalSound2 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2.moment H = canonicalOutput2.moment H :=
  canonical_of_padded canonicalInput2 canonicalOutput2 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3 : ExponentCode := ⟨2, 3, ![![-5, 4, 1], ![5, -4, -1]]⟩

def canonicalOutput3 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node6⟩

theorem canonicalSound3 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3.moment H = canonicalOutput3.moment H :=
  canonical_of_padded canonicalInput3 canonicalOutput3 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4 : ExponentCode := ⟨2, 4, ![![-4, -2, 2, 4], ![4, 2, -2, -4]]⟩

def canonicalOutput4 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code17

theorem canonicalSound4 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4.moment H = canonicalOutput4.moment H :=
  canonical_of_padded canonicalInput4 canonicalOutput4 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5 : ExponentCode := ⟨2, 4, ![![-4, -2, 3, 3], ![4, 2, -3, -3]]⟩

def canonicalOutput5 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code18

theorem canonicalSound5 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5.moment H = canonicalOutput5.moment H :=
  canonical_of_padded canonicalInput5 canonicalOutput5 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6 : ExponentCode := ⟨2, 4, ![![-4, -2, 4, 2], ![4, 2, -4, -2]]⟩

def canonicalOutput6 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code17

theorem canonicalSound6 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6.moment H = canonicalOutput6.moment H :=
  canonical_of_padded canonicalInput6 canonicalOutput6 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7 : ExponentCode := ⟨3, 4, ![![-4, 0, 0, 4], ![1, -2, 2, -1], ![3, 2, -2, -3]]⟩

def canonicalOutput7 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1039

theorem canonicalSound7 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7.moment H = canonicalOutput7.moment H :=
  canonical_of_padded canonicalInput7 canonicalOutput7 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8 : ExponentCode := ⟨3, 4, ![![-4, 0, 0, 4], ![2, -2, 2, -2], ![2, 2, -2, -2]]⟩

def canonicalOutput8 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code10

theorem canonicalSound8 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8.moment H = canonicalOutput8.moment H :=
  canonical_of_padded canonicalInput8 canonicalOutput8 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9 : ExponentCode := ⟨3, 4, ![![-4, 0, 1, 3], ![-1, 2, 1, -2], ![5, -2, -2, -1]]⟩

def canonicalOutput9 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound9 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9.moment H = canonicalOutput9.moment H :=
  canonical_of_padded canonicalInput9 canonicalOutput9 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10 : ExponentCode := ⟨3, 4, ![![-4, 0, 1, 3], ![0, 2, 1, -3], ![4, -2, -2, 0]]⟩

def canonicalOutput10 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound10 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10.moment H = canonicalOutput10.moment H :=
  canonical_of_padded canonicalInput10 canonicalOutput10 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput11 : ExponentCode := ⟨3, 4, ![![-4, 0, 1, 3], ![1, 2, -3, 0], ![3, -2, 2, -3]]⟩

def canonicalOutput11 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code83

theorem canonicalSound11 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11.moment H = canonicalOutput11.moment H :=
  canonical_of_padded canonicalInput11 canonicalOutput11 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12 : ExponentCode := ⟨3, 4, ![![-4, 0, 1, 3], ![1, 2, 1, -4], ![3, -2, -2, 1]]⟩

def canonicalOutput12 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code6

theorem canonicalSound12 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12.moment H = canonicalOutput12.moment H :=
  canonical_of_padded canonicalInput12 canonicalOutput12 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13 : ExponentCode := ⟨3, 4, ![![-4, 0, 1, 3], ![2, -2, 2, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput13 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code11

theorem canonicalSound13 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13.moment H = canonicalOutput13.moment H :=
  canonical_of_padded canonicalInput13 canonicalOutput13 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![-1, 2, -2, 1], ![5, -2, 0, -3]]⟩

def canonicalOutput14 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound14 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14.moment H = canonicalOutput14.moment H :=
  canonical_of_padded canonicalInput14 canonicalOutput14 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![-1, 2, 1, -2], ![5, -2, -3, 0]]⟩

def canonicalOutput15 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound15 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15.moment H = canonicalOutput15.moment H :=
  canonical_of_padded canonicalInput15 canonicalOutput15 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![0, 3, -2, -1], ![4, -3, 0, -1]]⟩

def canonicalOutput16 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound16 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16.moment H = canonicalOutput16.moment H :=
  canonical_of_padded canonicalInput16 canonicalOutput16 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![0, 3, -1, -2], ![4, -3, -1, 0]]⟩

def canonicalOutput17 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound17 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17.moment H = canonicalOutput17.moment H :=
  canonical_of_padded canonicalInput17 canonicalOutput17 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![0, 4, -2, -2], ![4, -4, 0, 0]]⟩

def canonicalOutput18 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code5

theorem canonicalSound18 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18.moment H = canonicalOutput18.moment H :=
  canonical_of_padded canonicalInput18 canonicalOutput18 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![1, 2, -3, 0], ![3, -2, 1, -2]]⟩

def canonicalOutput19 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound19 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19.moment H = canonicalOutput19.moment H :=
  canonical_of_padded canonicalInput19 canonicalOutput19 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput20 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![1, 2, -1, -2], ![3, -2, -1, 0]]⟩

def canonicalOutput20 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound20 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20.moment H = canonicalOutput20.moment H :=
  canonical_of_padded canonicalInput20 canonicalOutput20 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![1, 2, 0, -3], ![3, -2, -2, 1]]⟩

def canonicalOutput21 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound21 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21.moment H = canonicalOutput21.moment H :=
  canonical_of_padded canonicalInput21 canonicalOutput21 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![2, -2, -2, 2], ![2, 2, 0, -4]]⟩

def canonicalOutput22 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code12

theorem canonicalSound22 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22.moment H = canonicalOutput22.moment H :=
  canonical_of_padded canonicalInput22 canonicalOutput22 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![2, -2, -1, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput23 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound23 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23.moment H = canonicalOutput23.moment H :=
  canonical_of_padded canonicalInput23 canonicalOutput23 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![2, -2, 1, -1], ![2, 2, -3, -1]]⟩

def canonicalOutput24 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound24 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24.moment H = canonicalOutput24.moment H :=
  canonical_of_padded canonicalInput24 canonicalOutput24 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![2, -2, 2, -2], ![2, 2, -4, 0]]⟩

def canonicalOutput25 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code12

theorem canonicalSound25 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25.moment H = canonicalOutput25.moment H :=
  canonical_of_padded canonicalInput25 canonicalOutput25 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26 : ExponentCode := ⟨3, 4, ![![-4, 0, 2, 2], ![3, -3, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput26 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code36

theorem canonicalSound26 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26.moment H = canonicalOutput26.moment H :=
  canonical_of_padded canonicalInput26 canonicalOutput26 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27 : ExponentCode := ⟨3, 4, ![![-4, 0, 3, 1], ![-1, 2, -2, 1], ![5, -2, -1, -2]]⟩

def canonicalOutput27 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound27 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27.moment H = canonicalOutput27.moment H :=
  canonical_of_padded canonicalInput27 canonicalOutput27 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28 : ExponentCode := ⟨3, 4, ![![-4, 0, 3, 1], ![0, 2, -3, 1], ![4, -2, 0, -2]]⟩

def canonicalOutput28 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound28 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28.moment H = canonicalOutput28.moment H :=
  canonical_of_padded canonicalInput28 canonicalOutput28 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29 : ExponentCode := ⟨3, 4, ![![-4, 0, 3, 1], ![1, 2, -4, 1], ![3, -2, 1, -2]]⟩

def canonicalOutput29 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code6

theorem canonicalSound29 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29.moment H = canonicalOutput29.moment H :=
  canonical_of_padded canonicalInput29 canonicalOutput29 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30 : ExponentCode := ⟨5, 3, ![![-4, 0, 4], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![4, -3, -1]]⟩

def canonicalOutput30 : ExponentCode := normalNode140

theorem canonicalSound30 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30.moment H = canonicalOutput30.moment H :=
  canonical_of_padded canonicalInput30 canonicalOutput30 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31 : ExponentCode := ⟨5, 3, ![![-4, 0, 4], ![0, 1, -1], ![0, 1, -1], ![1, 1, -2], ![3, -3, 0]]⟩

def canonicalOutput31 : ExponentCode := normalNode173

theorem canonicalSound31 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31.moment H = canonicalOutput31.moment H :=
  canonical_of_padded canonicalInput31 canonicalOutput31 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32 : ExponentCode := ⟨5, 3, ![![-4, 0, 4], ![0, 3, -3], ![1, -1, 0], ![1, -1, 0], ![2, -1, -1]]⟩

def canonicalOutput32 : ExponentCode := normalNode173

theorem canonicalSound32 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32.moment H = canonicalOutput32.moment H :=
  canonical_of_padded canonicalInput32 canonicalOutput32 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33 : ExponentCode := ⟨5, 3, ![![-4, 0, 4], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput33 : ExponentCode := normalNode140

theorem canonicalSound33 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33.moment H = canonicalOutput33.moment H :=
  canonical_of_padded canonicalInput33 canonicalOutput33 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput34 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code827

theorem canonicalSound34 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34.moment H = canonicalOutput34.moment H :=
  canonical_of_padded canonicalInput34 canonicalOutput34 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput35 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput35 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound35 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput35.moment H = canonicalOutput35.moment H :=
  canonical_of_padded canonicalInput35 canonicalOutput35 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput36 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, 1, -2, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput36 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound36 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput36.moment H = canonicalOutput36.moment H :=
  canonical_of_padded canonicalInput36 canonicalOutput36 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput37 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![2, -2, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput37 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound37 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput37.moment H = canonicalOutput37.moment H :=
  canonical_of_padded canonicalInput37 canonicalOutput37 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput38 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![2, -2, 1, -2, 1, 0], ![2, 1, -2, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput38 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound38 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput38.moment H = canonicalOutput38.moment H :=
  canonical_of_padded canonicalInput38 canonicalOutput38 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput39 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![2, -2, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput39 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound39 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput39.moment H = canonicalOutput39.moment H :=
  canonical_of_padded canonicalInput39 canonicalOutput39 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput40 : ExponentCode := ⟨6, 6, ![![-4, 1, 1, 1, 1, 0], ![2, -2, 1, 1, -2, 0], ![2, 1, -2, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput40 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound40 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput40.moment H = canonicalOutput40.moment H :=
  canonical_of_padded canonicalInput40 canonicalOutput40 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput41 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![-1, 1, 2, -2], ![5, -2, -3, 0]]⟩

def canonicalOutput41 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound41 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput41.moment H = canonicalOutput41.moment H :=
  canonical_of_padded canonicalInput41 canonicalOutput41 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput42 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![1, -3, 1, 1], ![3, 2, -2, -3]]⟩

def canonicalOutput42 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound42 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput42.moment H = canonicalOutput42.moment H :=
  canonical_of_padded canonicalInput42 canonicalOutput42 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput43 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![1, -2, 2, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput43 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound43 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput43.moment H = canonicalOutput43.moment H :=
  canonical_of_padded canonicalInput43 canonicalOutput43 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput44 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![1, -2, 3, -2], ![3, 1, -4, 0]]⟩

def canonicalOutput44 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code6

theorem canonicalSound44 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput44.moment H = canonicalOutput44.moment H :=
  canonical_of_padded canonicalInput44 canonicalOutput44 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput45 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![1, 1, 1, -3], ![3, -2, -2, 1]]⟩

def canonicalOutput45 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound45 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput45.moment H = canonicalOutput45.moment H :=
  canonical_of_padded canonicalInput45 canonicalOutput45 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput46 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![2, -3, 1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput46 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound46 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput46.moment H = canonicalOutput46.moment H :=
  canonical_of_padded canonicalInput46 canonicalOutput46 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput47 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![2, -3, 2, -1], ![2, 2, -3, -1]]⟩

def canonicalOutput47 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code13

theorem canonicalSound47 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput47.moment H = canonicalOutput47.moment H :=
  canonical_of_padded canonicalInput47 canonicalOutput47 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput48 : ExponentCode := ⟨3, 4, ![![-4, 1, 1, 2], ![2, -2, -2, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput48 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound48 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput48.moment H = canonicalOutput48.moment H :=
  canonical_of_padded canonicalInput48 canonicalOutput48 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput49 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![-1, 2, -2, 1], ![5, -3, 0, -2]]⟩

def canonicalOutput49 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound49 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput49.moment H = canonicalOutput49.moment H :=
  canonical_of_padded canonicalInput49 canonicalOutput49 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput50 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![0, 3, -1, -2], ![4, -4, -1, 1]]⟩

def canonicalOutput50 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound50 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput50.moment H = canonicalOutput50.moment H :=
  canonical_of_padded canonicalInput50 canonicalOutput50 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput51 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![1, -2, -1, 2], ![3, 1, -1, -3]]⟩

def canonicalOutput51 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound51 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput51.moment H = canonicalOutput51.moment H :=
  canonical_of_padded canonicalInput51 canonicalOutput51 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput52 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![1, 1, -3, 1], ![3, -2, 1, -2]]⟩

def canonicalOutput52 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound52 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput52.moment H = canonicalOutput52.moment H :=
  canonical_of_padded canonicalInput52 canonicalOutput52 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput53 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![1, 2, -1, -2], ![3, -3, -1, 1]]⟩

def canonicalOutput53 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound53 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput53.moment H = canonicalOutput53.moment H :=
  canonical_of_padded canonicalInput53 canonicalOutput53 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput54 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![1, 3, -2, -2], ![3, -4, 0, 1]]⟩

def canonicalOutput54 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code6

theorem canonicalSound54 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput54.moment H = canonicalOutput54.moment H :=
  canonical_of_padded canonicalInput54 canonicalOutput54 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput55 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![2, -3, 0, 1], ![2, 2, -2, -2]]⟩

def canonicalOutput55 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound55 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput55.moment H = canonicalOutput55.moment H :=
  canonical_of_padded canonicalInput55 canonicalOutput55 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput56 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![2, -2, 2, -2], ![2, 1, -4, 1]]⟩

def canonicalOutput56 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound56 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput56.moment H = canonicalOutput56.moment H :=
  canonical_of_padded canonicalInput56 canonicalOutput56 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput57 : ExponentCode := ⟨3, 4, ![![-4, 1, 2, 1], ![2, 1, 0, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput57 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound57 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput57.moment H = canonicalOutput57.moment H :=
  canonical_of_padded canonicalInput57 canonicalOutput57 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput58 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput58 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound58 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput58.moment H = canonicalOutput58.moment H :=
  canonical_of_padded canonicalInput58 canonicalOutput58 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput59 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput59 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound59 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput59.moment H = canonicalOutput59.moment H :=
  canonical_of_padded canonicalInput59 canonicalOutput59 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput60 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -4, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput60 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code954

theorem canonicalSound60 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput60.moment H = canonicalOutput60.moment H :=
  canonical_of_padded canonicalInput60 canonicalOutput60 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput61 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput61 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound61 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput61.moment H = canonicalOutput61.moment H :=
  canonical_of_padded canonicalInput61 canonicalOutput61 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput62 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![2, -2, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput62 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound62 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput62.moment H = canonicalOutput62.moment H :=
  canonical_of_padded canonicalInput62 canonicalOutput62 (by decide) (by decide)
    ⟨false, false, canonicalPermutation11, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput63 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![2, -2, -1, 1, 0, 0], ![2, 1, -1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput63 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound63 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput63.moment H = canonicalOutput63.moment H :=
  canonical_of_padded canonicalInput63 canonicalOutput63 (by decide) (by decide)
    ⟨true, true, canonicalPermutation12, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

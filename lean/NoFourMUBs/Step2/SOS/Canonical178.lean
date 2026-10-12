import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11392 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11392 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11392.moment H = canonicalOutput11392.moment H :=
  canonical_of_padded canonicalInput11392 canonicalOutput11392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11393 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -2, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11393 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11393.moment H = canonicalOutput11393.moment H :=
  canonical_of_padded canonicalInput11393 canonicalOutput11393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation366⟩ (by decide +kernel) hH

def canonicalInput11394 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -2, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11394.moment H = canonicalOutput11394.moment H :=
  canonical_of_padded canonicalInput11394 canonicalOutput11394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput11395 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -2, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11395 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11395.moment H = canonicalOutput11395.moment H :=
  canonical_of_padded canonicalInput11395 canonicalOutput11395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput11396 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11396 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11396.moment H = canonicalOutput11396.moment H :=
  canonical_of_padded canonicalInput11396 canonicalOutput11396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11397 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11397 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11397.moment H = canonicalOutput11397.moment H :=
  canonical_of_padded canonicalInput11397 canonicalOutput11397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11398 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -4, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11398 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11398.moment H = canonicalOutput11398.moment H :=
  canonical_of_padded canonicalInput11398 canonicalOutput11398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11399 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -4, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11399 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11399.moment H = canonicalOutput11399.moment H :=
  canonical_of_padded canonicalInput11399 canonicalOutput11399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11400 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11400 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11400.moment H = canonicalOutput11400.moment H :=
  canonical_of_padded canonicalInput11400 canonicalOutput11400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation367⟩ (by decide +kernel) hH

def canonicalInput11401 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11401 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11401.moment H = canonicalOutput11401.moment H :=
  canonical_of_padded canonicalInput11401 canonicalOutput11401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation367⟩ (by decide +kernel) hH

def canonicalInput11402 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, 1, -2, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11402 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11402.moment H = canonicalOutput11402.moment H :=
  canonical_of_padded canonicalInput11402 canonicalOutput11402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation372⟩ (by decide +kernel) hH

def canonicalInput11403 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, 1, -2, 0], ![1, 0, 0, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11403 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11403.moment H = canonicalOutput11403.moment H :=
  canonical_of_padded canonicalInput11403 canonicalOutput11403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation372⟩ (by decide +kernel) hH

def canonicalInput11404 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11404 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11404.moment H = canonicalOutput11404.moment H :=
  canonical_of_padded canonicalInput11404 canonicalOutput11404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11405 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11405 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11405.moment H = canonicalOutput11405.moment H :=
  canonical_of_padded canonicalInput11405 canonicalOutput11405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11406 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11406 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound11406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11406.moment H = canonicalOutput11406.moment H :=
  canonical_of_padded canonicalInput11406 canonicalOutput11406 (by decide) (by decide)
    ⟨false, false, canonicalPermutation105, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11407 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11407 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound11407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11407.moment H = canonicalOutput11407.moment H :=
  canonical_of_padded canonicalInput11407 canonicalOutput11407 (by decide) (by decide)
    ⟨false, false, canonicalPermutation106, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11408 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -2, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11408 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11408.moment H = canonicalOutput11408.moment H :=
  canonical_of_padded canonicalInput11408 canonicalOutput11408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11409 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -2, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11409 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11409.moment H = canonicalOutput11409.moment H :=
  canonical_of_padded canonicalInput11409 canonicalOutput11409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11410 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11410 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11410.moment H = canonicalOutput11410.moment H :=
  canonical_of_padded canonicalInput11410 canonicalOutput11410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11411 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11411 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11411.moment H = canonicalOutput11411.moment H :=
  canonical_of_padded canonicalInput11411 canonicalOutput11411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation351, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11412 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -2, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11412.moment H = canonicalOutput11412.moment H :=
  canonical_of_padded canonicalInput11412 canonicalOutput11412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11413 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -2, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11413 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11413.moment H = canonicalOutput11413.moment H :=
  canonical_of_padded canonicalInput11413 canonicalOutput11413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11414 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -3, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11414 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11414.moment H = canonicalOutput11414.moment H :=
  canonical_of_padded canonicalInput11414 canonicalOutput11414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11415 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -3, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11415 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11415.moment H = canonicalOutput11415.moment H :=
  canonical_of_padded canonicalInput11415 canonicalOutput11415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11416 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -2, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11416 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11416.moment H = canonicalOutput11416.moment H :=
  canonical_of_padded canonicalInput11416 canonicalOutput11416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation367⟩ (by decide +kernel) hH

def canonicalInput11417 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11417 : ExponentCode := normalNode4210

theorem canonicalSound11417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11417.moment H = canonicalOutput11417.moment H :=
  canonical_of_padded canonicalInput11417 canonicalOutput11417 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11418 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11418 : ExponentCode := normalNode3674

theorem canonicalSound11418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11418.moment H = canonicalOutput11418.moment H :=
  canonical_of_padded canonicalInput11418 canonicalOutput11418 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11419 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11419 : ExponentCode := normalNode4210

theorem canonicalSound11419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11419.moment H = canonicalOutput11419.moment H :=
  canonical_of_padded canonicalInput11419 canonicalOutput11419 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11420 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11420 : ExponentCode := normalNode4210

theorem canonicalSound11420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11420.moment H = canonicalOutput11420.moment H :=
  canonical_of_padded canonicalInput11420 canonicalOutput11420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11421 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11421 : ExponentCode := normalNode3674

theorem canonicalSound11421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11421.moment H = canonicalOutput11421.moment H :=
  canonical_of_padded canonicalInput11421 canonicalOutput11421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11422 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11422 : ExponentCode := normalNode4210

theorem canonicalSound11422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11422.moment H = canonicalOutput11422.moment H :=
  canonical_of_padded canonicalInput11422 canonicalOutput11422 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11423 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11423 : ExponentCode := normalNode4257

theorem canonicalSound11423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11423.moment H = canonicalOutput11423.moment H :=
  canonical_of_padded canonicalInput11423 canonicalOutput11423 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11424 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11424 : ExponentCode := normalNode4257

theorem canonicalSound11424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11424.moment H = canonicalOutput11424.moment H :=
  canonical_of_padded canonicalInput11424 canonicalOutput11424 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11425 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11425 : ExponentCode := normalNode3682

theorem canonicalSound11425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11425.moment H = canonicalOutput11425.moment H :=
  canonical_of_padded canonicalInput11425 canonicalOutput11425 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11426 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11426.moment H = canonicalOutput11426.moment H :=
  canonical_of_padded canonicalInput11426 canonicalOutput11426 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11427 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11427.moment H = canonicalOutput11427.moment H :=
  canonical_of_padded canonicalInput11427 canonicalOutput11427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation347⟩ (by decide +kernel) hH

def canonicalInput11428 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11428 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11428.moment H = canonicalOutput11428.moment H :=
  canonical_of_padded canonicalInput11428 canonicalOutput11428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation347⟩ (by decide +kernel) hH

def canonicalInput11429 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11429 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11429.moment H = canonicalOutput11429.moment H :=
  canonical_of_padded canonicalInput11429 canonicalOutput11429 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11430 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11430 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11430.moment H = canonicalOutput11430.moment H :=
  canonical_of_padded canonicalInput11430 canonicalOutput11430 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11431 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11431.moment H = canonicalOutput11431.moment H :=
  canonical_of_padded canonicalInput11431 canonicalOutput11431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation353⟩ (by decide +kernel) hH

def canonicalInput11432 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11432 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11432.moment H = canonicalOutput11432.moment H :=
  canonical_of_padded canonicalInput11432 canonicalOutput11432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation353⟩ (by decide +kernel) hH

def canonicalInput11433 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11433 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11433.moment H = canonicalOutput11433.moment H :=
  canonical_of_padded canonicalInput11433 canonicalOutput11433 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11434 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11434 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11434.moment H = canonicalOutput11434.moment H :=
  canonical_of_padded canonicalInput11434 canonicalOutput11434 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11435 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11435 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11435.moment H = canonicalOutput11435.moment H :=
  canonical_of_padded canonicalInput11435 canonicalOutput11435 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11436 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11436 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11436.moment H = canonicalOutput11436.moment H :=
  canonical_of_padded canonicalInput11436 canonicalOutput11436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation347⟩ (by decide +kernel) hH

def canonicalInput11437 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11437 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node614⟩

theorem canonicalSound11437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11437.moment H = canonicalOutput11437.moment H :=
  canonical_of_padded canonicalInput11437 canonicalOutput11437 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11438 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11438 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11438.moment H = canonicalOutput11438.moment H :=
  canonical_of_padded canonicalInput11438 canonicalOutput11438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11439 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11439 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11439.moment H = canonicalOutput11439.moment H :=
  canonical_of_padded canonicalInput11439 canonicalOutput11439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11440 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11440 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound11440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11440.moment H = canonicalOutput11440.moment H :=
  canonical_of_padded canonicalInput11440 canonicalOutput11440 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput11441 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11441 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound11441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11441.moment H = canonicalOutput11441.moment H :=
  canonical_of_padded canonicalInput11441 canonicalOutput11441 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11442 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, -2, 1, 0], ![1, -1, -2, 1, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11442 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11442.moment H = canonicalOutput11442.moment H :=
  canonical_of_padded canonicalInput11442 canonicalOutput11442 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11443 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11443 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11443.moment H = canonicalOutput11443.moment H :=
  canonical_of_padded canonicalInput11443 canonicalOutput11443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation397⟩ (by decide +kernel) hH

def canonicalInput11444 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, 1, -2, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11444.moment H = canonicalOutput11444.moment H :=
  canonical_of_padded canonicalInput11444 canonicalOutput11444 (by decide) (by decide)
    ⟨false, false, canonicalPermutation102, OAI.MUB6.Certificate.PairSemantics.permutation397⟩ (by decide +kernel) hH

def canonicalInput11445 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, -2, 1, 0], ![1, 2, -2, 1, -2, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11445 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11445.moment H = canonicalOutput11445.moment H :=
  canonical_of_padded canonicalInput11445 canonicalOutput11445 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11446 : ExponentCode := ⟨4, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, -1, -1, 1], ![0, 0, 0, -1, 2, -1], ![1, 0, -2, 2, -1, 0]]⟩

def canonicalOutput11446 : ExponentCode := normalNode4249

theorem canonicalSound11446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11446.moment H = canonicalOutput11446.moment H :=
  canonical_of_padded canonicalInput11446 canonicalOutput11446 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11447 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, 1, -2, 0], ![1, -1, -2, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11447 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11447.moment H = canonicalOutput11447.moment H :=
  canonical_of_padded canonicalInput11447 canonicalOutput11447 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11448 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11448 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11448.moment H = canonicalOutput11448.moment H :=
  canonical_of_padded canonicalInput11448 canonicalOutput11448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation397, canonicalPermutation102⟩ (by decide +kernel) hH

def canonicalInput11449 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11449 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11449.moment H = canonicalOutput11449.moment H :=
  canonical_of_padded canonicalInput11449 canonicalOutput11449 (by decide) (by decide)
    ⟨false, false, canonicalPermutation102, canonicalPermutation102⟩ (by decide +kernel) hH

def canonicalInput11450 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 1, 1, -2, 0], ![1, 2, -2, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11450 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11450.moment H = canonicalOutput11450.moment H :=
  canonical_of_padded canonicalInput11450 canonicalOutput11450 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11451 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11451 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound11451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11451.moment H = canonicalOutput11451.moment H :=
  canonical_of_padded canonicalInput11451 canonicalOutput11451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput11452 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11452 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11452.moment H = canonicalOutput11452.moment H :=
  canonical_of_padded canonicalInput11452 canonicalOutput11452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11453 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11453 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11453.moment H = canonicalOutput11453.moment H :=
  canonical_of_padded canonicalInput11453 canonicalOutput11453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11454 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11454 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound11454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11454.moment H = canonicalOutput11454.moment H :=
  canonical_of_padded canonicalInput11454 canonicalOutput11454 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11455 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11455 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound11455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11455.moment H = canonicalOutput11455.moment H :=
  canonical_of_padded canonicalInput11455 canonicalOutput11455 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

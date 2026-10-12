import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23360 : ExponentCode := ⟨5, 5, ![![-1, 1, 1, -1, 0], ![0, -1, 1, -1, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput23360 : ExponentCode := normalNode10870

theorem canonicalSound23360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23360.moment H = canonicalOutput23360.moment H :=
  canonical_of_padded canonicalInput23360 canonicalOutput23360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput23361 : ExponentCode := ⟨3, 5, ![![-1, 1, 1, 1, -2], ![-1, -3, 1, 1, 2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput23361 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1037

theorem canonicalSound23361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23361.moment H = canonicalOutput23361.moment H :=
  canonical_of_padded canonicalInput23361 canonicalOutput23361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23362 : ExponentCode := ⟨3, 5, ![![-1, 1, 1, 1, -2], ![0, -3, 1, 1, 1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput23362 : ExponentCode := normalNode215

theorem canonicalSound23362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23362.moment H = canonicalOutput23362.moment H :=
  canonical_of_padded canonicalInput23362 canonicalOutput23362 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23363 : ExponentCode := ⟨3, 5, ![![-1, 1, 1, 1, -2], ![0, -2, 1, 1, 0], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput23363 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound23363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23363.moment H = canonicalOutput23363.moment H :=
  canonical_of_padded canonicalInput23363 canonicalOutput23363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23364 : ExponentCode := ⟨3, 5, ![![-1, 1, 1, 1, -2], ![1, -2, 1, 1, -1], ![0, 1, -2, -2, 3]]⟩

def canonicalOutput23364 : ExponentCode := normalNode2999

theorem canonicalSound23364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23364.moment H = canonicalOutput23364.moment H :=
  canonical_of_padded canonicalInput23364 canonicalOutput23364 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23365 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![-1, -2, 1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23365 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound23365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23365.moment H = canonicalOutput23365.moment H :=
  canonical_of_padded canonicalInput23365 canonicalOutput23365 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23366 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![-1, -2, 1, 1, 1, 0], ![2, 1, -2, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound23366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23366.moment H = canonicalOutput23366.moment H :=
  canonical_of_padded canonicalInput23366 canonicalOutput23366 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23367 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -2, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound23367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23367.moment H = canonicalOutput23367.moment H :=
  canonical_of_padded canonicalInput23367 canonicalOutput23367 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23368 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound23368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23368.moment H = canonicalOutput23368.moment H :=
  canonical_of_padded canonicalInput23368 canonicalOutput23368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput23369 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound23369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23369.moment H = canonicalOutput23369.moment H :=
  canonical_of_padded canonicalInput23369 canonicalOutput23369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput23370 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -2, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23370.moment H = canonicalOutput23370.moment H :=
  canonical_of_padded canonicalInput23370 canonicalOutput23370 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput23371 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![2, -2, 1, -2, 1, 0], ![-1, 1, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23371 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound23371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23371.moment H = canonicalOutput23371.moment H :=
  canonical_of_padded canonicalInput23371 canonicalOutput23371 (by decide) (by decide)
    ⟨true, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23372 : ExponentCode := ⟨6, 6, ![![-1, 1, 1, 1, -2, 0], ![2, -2, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23372.moment H = canonicalOutput23372.moment H :=
  canonical_of_padded canonicalInput23372 canonicalOutput23372 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23373 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-3, 1, -1, 3], ![4, -2, -1, -1]]⟩

def canonicalOutput23373 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound23373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23373.moment H = canonicalOutput23373.moment H :=
  canonical_of_padded canonicalInput23373 canonicalOutput23373 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23374 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-3, 3, -2, 2], ![4, -4, 0, 0]]⟩

def canonicalOutput23374 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1039

theorem canonicalSound23374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23374.moment H = canonicalOutput23374.moment H :=
  canonical_of_padded canonicalInput23374 canonicalOutput23374 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23375 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-2, 1, -3, 4], ![3, -2, 1, -2]]⟩

def canonicalOutput23375 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound23375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23375.moment H = canonicalOutput23375.moment H :=
  canonical_of_padded canonicalInput23375 canonicalOutput23375 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23376 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-2, 3, -3, 2], ![3, -4, 1, 0]]⟩

def canonicalOutput23376 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code685

theorem canonicalSound23376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23376.moment H = canonicalOutput23376.moment H :=
  canonical_of_padded canonicalInput23376 canonicalOutput23376 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23377 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-2, 3, -2, 1], ![3, -4, 0, 1]]⟩

def canonicalOutput23377 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound23377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23377.moment H = canonicalOutput23377.moment H :=
  canonical_of_padded canonicalInput23377 canonicalOutput23377 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23378 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, -3, -1, 5], ![2, 2, -1, -3]]⟩

def canonicalOutput23378 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound23378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23378.moment H = canonicalOutput23378.moment H :=
  canonical_of_padded canonicalInput23378 canonicalOutput23378 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23379 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, -3, 3, 1], ![2, 2, -5, 1]]⟩

def canonicalOutput23379 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound23379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23379.moment H = canonicalOutput23379.moment H :=
  canonical_of_padded canonicalInput23379 canonicalOutput23379 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23380 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, -2, 3, 0], ![2, 1, -5, 2]]⟩

def canonicalOutput23380 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound23380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23380.moment H = canonicalOutput23380.moment H :=
  canonical_of_padded canonicalInput23380 canonicalOutput23380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23381 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput23381 : ExponentCode := normalNode2367

theorem canonicalSound23381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23381.moment H = canonicalOutput23381.moment H :=
  canonical_of_padded canonicalInput23381 canonicalOutput23381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput23382 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, 1, -4, 4], ![2, -2, 2, -2]]⟩

def canonicalOutput23382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound23382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23382.moment H = canonicalOutput23382.moment H :=
  canonical_of_padded canonicalInput23382 canonicalOutput23382 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23383 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, 1, -3, 3], ![2, -2, 1, -1]]⟩

def canonicalOutput23383 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound23383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23383.moment H = canonicalOutput23383.moment H :=
  canonical_of_padded canonicalInput23383 canonicalOutput23383 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23384 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput23384 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound23384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23384.moment H = canonicalOutput23384.moment H :=
  canonical_of_padded canonicalInput23384 canonicalOutput23384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23385 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, 2, -4, 3], ![2, -3, 2, -1]]⟩

def canonicalOutput23385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound23385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23385.moment H = canonicalOutput23385.moment H :=
  canonical_of_padded canonicalInput23385 canonicalOutput23385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23386 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, 3, -4, 2], ![2, -4, 2, 0]]⟩

def canonicalOutput23386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound23386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23386.moment H = canonicalOutput23386.moment H :=
  canonical_of_padded canonicalInput23386 canonicalOutput23386 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23387 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![-1, 3, -1, -1], ![2, -4, -1, 3]]⟩

def canonicalOutput23387 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound23387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23387.moment H = canonicalOutput23387.moment H :=
  canonical_of_padded canonicalInput23387 canonicalOutput23387 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23388 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, -4, 0, 4], ![1, 3, -2, -2]]⟩

def canonicalOutput23388 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound23388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23388.moment H = canonicalOutput23388.moment H :=
  canonical_of_padded canonicalInput23388 canonicalOutput23388 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23389 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, -4, 1, 3], ![1, 3, -3, -1]]⟩

def canonicalOutput23389 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node158⟩

theorem canonicalSound23389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23389.moment H = canonicalOutput23389.moment H :=
  canonical_of_padded canonicalInput23389 canonicalOutput23389 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23390 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, -4, 2, 2], ![1, 3, -4, 0]]⟩

def canonicalOutput23390 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound23390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23390.moment H = canonicalOutput23390.moment H :=
  canonical_of_padded canonicalInput23390 canonicalOutput23390 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23391 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -3, -1, 4], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput23391 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1087⟩

theorem canonicalSound23391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23391.moment H = canonicalOutput23391.moment H :=
  canonical_of_padded canonicalInput23391 canonicalOutput23391 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23392 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, -3, -1, 4], ![1, 2, -1, -2]]⟩

def canonicalOutput23392 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound23392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23392.moment H = canonicalOutput23392.moment H :=
  canonical_of_padded canonicalInput23392 canonicalOutput23392 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23393 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, -3, 3, 0], ![1, 2, -5, 2]]⟩

def canonicalOutput23393 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound23393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23393.moment H = canonicalOutput23393.moment H :=
  canonical_of_padded canonicalInput23393 canonicalOutput23393 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23394 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput23394 : ExponentCode := normalNode11072

theorem canonicalSound23394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23394.moment H = canonicalOutput23394.moment H :=
  canonical_of_padded canonicalInput23394 canonicalOutput23394 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23395 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput23395 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound23395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23395.moment H = canonicalOutput23395.moment H :=
  canonical_of_padded canonicalInput23395 canonicalOutput23395 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23396 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, -2, 3, -1], ![1, 1, -5, 3]]⟩

def canonicalOutput23396 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound23396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23396.moment H = canonicalOutput23396.moment H :=
  canonical_of_padded canonicalInput23396 canonicalOutput23396 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23397 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -1, -3, 4], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput23397 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound23397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23397.moment H = canonicalOutput23397.moment H :=
  canonical_of_padded canonicalInput23397 canonicalOutput23397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput23398 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -1, -2, 3], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput23398 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound23398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23398.moment H = canonicalOutput23398.moment H :=
  canonical_of_padded canonicalInput23398 canonicalOutput23398 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23399 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput23399 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound23399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23399.moment H = canonicalOutput23399.moment H :=
  canonical_of_padded canonicalInput23399 canonicalOutput23399 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23400 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput23400 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound23400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23400.moment H = canonicalOutput23400.moment H :=
  canonical_of_padded canonicalInput23400 canonicalOutput23400 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput23401 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput23401 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1231⟩

theorem canonicalSound23401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23401.moment H = canonicalOutput23401.moment H :=
  canonical_of_padded canonicalInput23401 canonicalOutput23401 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput23402 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput23402 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound23402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23402.moment H = canonicalOutput23402.moment H :=
  canonical_of_padded canonicalInput23402 canonicalOutput23402 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23403 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput23403 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2831⟩

theorem canonicalSound23403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23403.moment H = canonicalOutput23403.moment H :=
  canonical_of_padded canonicalInput23403 canonicalOutput23403 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23404 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput23404 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1261⟩

theorem canonicalSound23404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23404.moment H = canonicalOutput23404.moment H :=
  canonical_of_padded canonicalInput23404 canonicalOutput23404 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23405 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput23405 : ExponentCode := normalNode11059

theorem canonicalSound23405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23405.moment H = canonicalOutput23405.moment H :=
  canonical_of_padded canonicalInput23405 canonicalOutput23405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23406 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput23406 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1261⟩

theorem canonicalSound23406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23406.moment H = canonicalOutput23406.moment H :=
  canonical_of_padded canonicalInput23406 canonicalOutput23406 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput23407 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput23407 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound23407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23407.moment H = canonicalOutput23407.moment H :=
  canonical_of_padded canonicalInput23407 canonicalOutput23407 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23408 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput23408 : ExponentCode := normalNode11010

theorem canonicalSound23408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23408.moment H = canonicalOutput23408.moment H :=
  canonical_of_padded canonicalInput23408 canonicalOutput23408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput23409 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput23409 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node267⟩

theorem canonicalSound23409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23409.moment H = canonicalOutput23409.moment H :=
  canonical_of_padded canonicalInput23409 canonicalOutput23409 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput23410 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput23410 : ExponentCode := normalNode11043

theorem canonicalSound23410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23410.moment H = canonicalOutput23410.moment H :=
  canonical_of_padded canonicalInput23410 canonicalOutput23410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23411 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput23411 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound23411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23411.moment H = canonicalOutput23411.moment H :=
  canonical_of_padded canonicalInput23411 canonicalOutput23411 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23412 : ExponentCode := ⟨5, 4, ![![-1, 1, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, 0, 1]]⟩

def canonicalOutput23412 : ExponentCode := normalNode11030

theorem canonicalSound23412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23412.moment H = canonicalOutput23412.moment H :=
  canonical_of_padded canonicalInput23412 canonicalOutput23412 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23413 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput23413 : ExponentCode := normalNode7455

theorem canonicalSound23413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23413.moment H = canonicalOutput23413.moment H :=
  canonical_of_padded canonicalInput23413 canonicalOutput23413 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23414 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, 1, -4, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput23414 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound23414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23414.moment H = canonicalOutput23414.moment H :=
  canonical_of_padded canonicalInput23414 canonicalOutput23414 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23415 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput23415 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩

theorem canonicalSound23415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23415.moment H = canonicalOutput23415.moment H :=
  canonical_of_padded canonicalInput23415 canonicalOutput23415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23416 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, 1, 0]]⟩

def canonicalOutput23416 : ExponentCode := normalNode11069

theorem canonicalSound23416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23416.moment H = canonicalOutput23416.moment H :=
  canonical_of_padded canonicalInput23416 canonicalOutput23416 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput23417 : ExponentCode := ⟨4, 4, ![![-1, 1, 2, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -3, -2, 4]]⟩

def canonicalOutput23417 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node904⟩

theorem canonicalSound23417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23417.moment H = canonicalOutput23417.moment H :=
  canonical_of_padded canonicalInput23417 canonicalOutput23417 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23418 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, 2, -4, 2], ![1, -3, 2, 0]]⟩

def canonicalOutput23418 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound23418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23418.moment H = canonicalOutput23418.moment H :=
  canonical_of_padded canonicalInput23418 canonicalOutput23418 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23419 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, 2, -1, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput23419 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound23419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23419.moment H = canonicalOutput23419.moment H :=
  canonical_of_padded canonicalInput23419 canonicalOutput23419 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23420 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, 2, 0, -2], ![1, -3, -2, 4]]⟩

def canonicalOutput23420 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound23420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23420.moment H = canonicalOutput23420.moment H :=
  canonical_of_padded canonicalInput23420 canonicalOutput23420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23421 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, 3, -4, 1], ![1, -4, 2, 1]]⟩

def canonicalOutput23421 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound23421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23421.moment H = canonicalOutput23421.moment H :=
  canonical_of_padded canonicalInput23421 canonicalOutput23421 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23422 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![0, 3, -1, -2], ![1, -4, -1, 4]]⟩

def canonicalOutput23422 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound23422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23422.moment H = canonicalOutput23422.moment H :=
  canonical_of_padded canonicalInput23422 canonicalOutput23422 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23423 : ExponentCode := ⟨3, 4, ![![-1, 1, 2, -2], ![1, -4, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput23423 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound23423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23423.moment H = canonicalOutput23423.moment H :=
  canonical_of_padded canonicalInput23423 canonicalOutput23423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

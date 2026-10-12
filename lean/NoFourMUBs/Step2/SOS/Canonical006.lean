import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput384 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 0, 0], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput384 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩

theorem canonicalSound384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput384.moment H = canonicalOutput384.moment H :=
  canonical_of_padded canonicalInput384 canonicalOutput384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput385 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 0, 0], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput385 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput385.moment H = canonicalOutput385.moment H :=
  canonical_of_padded canonicalInput385 canonicalOutput385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput386 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 1, -1], ![0, 0, 0], ![0, 1, -1], ![3, -1, -2]]⟩

def canonicalOutput386 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput386.moment H = canonicalOutput386.moment H :=
  canonical_of_padded canonicalInput386 canonicalOutput386 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput387 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 1, -1], ![0, 0, 0], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput387 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput387.moment H = canonicalOutput387.moment H :=
  canonical_of_padded canonicalInput387 canonicalOutput387 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput388 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 1, -1], ![0, 1, -1], ![0, 0, 0], ![3, -1, -2]]⟩

def canonicalOutput388 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput388.moment H = canonicalOutput388.moment H :=
  canonical_of_padded canonicalInput388 canonicalOutput388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput389 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 1, -1], ![0, 2, -2], ![0, 1, -1], ![3, -3, 0]]⟩

def canonicalOutput389 : ExponentCode := normalNode126

theorem canonicalSound389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput389.moment H = canonicalOutput389.moment H :=
  canonical_of_padded canonicalInput389 canonicalOutput389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput390 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 1, -1], ![1, -1, 0], ![1, -2, 1], ![1, 3, -4]]⟩

def canonicalOutput390 : ExponentCode := normalNode134

theorem canonicalSound390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput390.moment H = canonicalOutput390.moment H :=
  canonical_of_padded canonicalInput390 canonicalOutput390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput391 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 1, -1], ![1, -1, 0], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput391 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node737⟩

theorem canonicalSound391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput391.moment H = canonicalOutput391.moment H :=
  canonical_of_padded canonicalInput391 canonicalOutput391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput392 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 2, -2], ![0, 1, -1], ![0, 1, -1], ![3, -3, 0]]⟩

def canonicalOutput392 : ExponentCode := normalNode126

theorem canonicalSound392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput392.moment H = canonicalOutput392.moment H :=
  canonical_of_padded canonicalInput392 canonicalOutput392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput393 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 2, -2], ![0, 1, -1], ![1, 1, -2], ![2, -3, 1]]⟩

def canonicalOutput393 : ExponentCode := normalNode129

theorem canonicalSound393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput393.moment H = canonicalOutput393.moment H :=
  canonical_of_padded canonicalInput393 canonicalOutput393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput394 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 2, -2], ![2, -3, 1], ![1, 2, -3]]⟩

def canonicalOutput394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code39

theorem canonicalSound394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput394.moment H = canonicalOutput394.moment H :=
  canonical_of_padded canonicalInput394 canonicalOutput394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput395 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 3, -3], ![1, 0, -1], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput395 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩

theorem canonicalSound395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput395.moment H = canonicalOutput395.moment H :=
  canonical_of_padded canonicalInput395 canonicalOutput395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput396 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 3, -3], ![2, -3, 1], ![1, 1, -2]]⟩

def canonicalOutput396 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code41

theorem canonicalSound396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput396.moment H = canonicalOutput396.moment H :=
  canonical_of_padded canonicalInput396 canonicalOutput396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput397 : ExponentCode := ⟨5, 3, ![![-3, -1, 4], ![0, 4, -4], ![1, -1, 0], ![1, -2, 1], ![1, 0, -1]]⟩

def canonicalOutput397 : ExponentCode := normalNode139

theorem canonicalSound397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput397.moment H = canonicalOutput397.moment H :=
  canonical_of_padded canonicalInput397 canonicalOutput397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput398 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 4, -4], ![2, -3, 1], ![1, 0, -1]]⟩

def canonicalOutput398 : ExponentCode := normalNode142

theorem canonicalSound398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput398.moment H = canonicalOutput398.moment H :=
  canonical_of_padded canonicalInput398 canonicalOutput398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput399 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![0, 4, -4], ![2, -2, 0], ![1, -1, 0]]⟩

def canonicalOutput399 : ExponentCode := normalNode141

theorem canonicalSound399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput399.moment H = canonicalOutput399.moment H :=
  canonical_of_padded canonicalInput399 canonicalOutput399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput400 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![1, -1, 0], ![1, -2, 1], ![1, 4, -5]]⟩

def canonicalOutput400 : ExponentCode := normalNode143

theorem canonicalSound400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput400.moment H = canonicalOutput400.moment H :=
  canonical_of_padded canonicalInput400 canonicalOutput400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput401 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![1, 1, -2], ![0, 2, -2], ![2, -2, 0]]⟩

def canonicalOutput401 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput401.moment H = canonicalOutput401.moment H :=
  canonical_of_padded canonicalInput401 canonicalOutput401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput402 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![1, 1, -2], ![1, -2, 1], ![1, 2, -3]]⟩

def canonicalOutput402 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput402.moment H = canonicalOutput402.moment H :=
  canonical_of_padded canonicalInput402 canonicalOutput402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput403 : ExponentCode := ⟨4, 3, ![![-3, -1, 4], ![1, 3, -4], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput403 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩

theorem canonicalSound403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput403.moment H = canonicalOutput403.moment H :=
  canonical_of_padded canonicalInput403 canonicalOutput403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput404 : ExponentCode := ⟨3, 3, ![![-3, -1, 4], ![2, -3, 1], ![1, 4, -5]]⟩

def canonicalOutput404 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code46

theorem canonicalSound404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput404.moment H = canonicalOutput404.moment H :=
  canonical_of_padded canonicalInput404 canonicalOutput404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput405 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![-1, 0, 1, 1, -1], ![2, -2, 1, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput405 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1289

theorem canonicalSound405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput405.moment H = canonicalOutput405.moment H :=
  canonical_of_padded canonicalInput405 canonicalOutput405 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput406 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![-1, 0, 2, 0, -1], ![2, -2, -1, 1, 0], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput406 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code967

theorem canonicalSound406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput406.moment H = canonicalOutput406.moment H :=
  canonical_of_padded canonicalInput406 canonicalOutput406 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput407 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![-1, 0, 2, 0, -1], ![2, -2, 0, 1, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput407 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code877

theorem canonicalSound407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput407.moment H = canonicalOutput407.moment H :=
  canonical_of_padded canonicalInput407 canonicalOutput407 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput408 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput408 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1191

theorem canonicalSound408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput408.moment H = canonicalOutput408.moment H :=
  canonical_of_padded canonicalInput408 canonicalOutput408 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput409 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 2, -1, -2, 0], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput409 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code981

theorem canonicalSound409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput409.moment H = canonicalOutput409.moment H :=
  canonical_of_padded canonicalInput409 canonicalOutput409 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput410 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![0, 0, 1, 1, -2], ![1, -2, 1, 0, 0], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput410 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code862

theorem canonicalSound410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput410.moment H = canonicalOutput410.moment H :=
  canonical_of_padded canonicalInput410 canonicalOutput410 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput411 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![0, 0, 2, 0, -2], ![1, -2, 0, 1, 0], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput411 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code866

theorem canonicalSound411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput411.moment H = canonicalOutput411.moment H :=
  canonical_of_padded canonicalInput411 canonicalOutput411 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput412 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 1, 2], ![1, -2, 0, 1, 0], ![1, 0, 2, -2, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code891

theorem canonicalSound412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput412.moment H = canonicalOutput412.moment H :=
  canonical_of_padded canonicalInput412 canonicalOutput412 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput413 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 2, 1], ![0, -1, 2, -1, 0], ![1, 2, -1, 0, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput413 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code981

theorem canonicalSound413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput413.moment H = canonicalOutput413.moment H :=
  canonical_of_padded canonicalInput413 canonicalOutput413 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput414 : ExponentCode := ⟨4, 5, ![![-3, 0, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![3, -1, -1, -2, 1]]⟩

def canonicalOutput414 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1191

theorem canonicalSound414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput414.moment H = canonicalOutput414.moment H :=
  canonical_of_padded canonicalInput414 canonicalOutput414 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput415 : ExponentCode := ⟨3, 4, ![![-3, 0, 0, 3], ![-1, -2, 2, 1], ![4, 2, -2, -4]]⟩

def canonicalOutput415 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code32

theorem canonicalSound415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput415.moment H = canonicalOutput415.moment H :=
  canonical_of_padded canonicalInput415 canonicalOutput415 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput416 : ExponentCode := ⟨3, 4, ![![-3, 0, 0, 3], ![-1, 2, 2, -3], ![4, -2, -2, 0]]⟩

def canonicalOutput416 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code36

theorem canonicalSound416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput416.moment H = canonicalOutput416.moment H :=
  canonical_of_padded canonicalInput416 canonicalOutput416 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput417 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![0, -2, 2, 0], ![0, 2, -1, -1], ![3, 0, -1, -2]]⟩

def canonicalOutput417 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1197

theorem canonicalSound417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput417.moment H = canonicalOutput417.moment H :=
  canonical_of_padded canonicalInput417 canonicalOutput417 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput418 : ExponentCode := ⟨3, 4, ![![-3, 0, 0, 3], ![0, -2, 3, -1], ![3, 2, -3, -2]]⟩

def canonicalOutput418 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node91⟩

theorem canonicalSound418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput418.moment H = canonicalOutput418.moment H :=
  canonical_of_padded canonicalInput418 canonicalOutput418 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput419 : ExponentCode := ⟨5, 4, ![![-3, 0, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput419 : ExponentCode := normalNode5543

theorem canonicalSound419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput419.moment H = canonicalOutput419.moment H :=
  canonical_of_padded canonicalInput419 canonicalOutput419 (by decide) (by decide)
    ⟨false, true, canonicalPermutation39, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput420 : ExponentCode := ⟨5, 4, ![![-3, 0, 0, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput420 : ExponentCode := normalNode5494

theorem canonicalSound420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput420.moment H = canonicalOutput420.moment H :=
  canonical_of_padded canonicalInput420 canonicalOutput420 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput421 : ExponentCode := ⟨5, 4, ![![-3, 0, 0, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput421 : ExponentCode := normalNode5542

theorem canonicalSound421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput421.moment H = canonicalOutput421.moment H :=
  canonical_of_padded canonicalInput421 canonicalOutput421 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput422 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput422 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1198

theorem canonicalSound422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput422.moment H = canonicalOutput422.moment H :=
  canonical_of_padded canonicalInput422 canonicalOutput422 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput423 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![0, -1, 2, -1], ![1, 2, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput423 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput423.moment H = canonicalOutput423.moment H :=
  canonical_of_padded canonicalInput423 canonicalOutput423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput424 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![0, 1, -1, 0], ![1, -2, 2, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput424 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node989⟩

theorem canonicalSound424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput424.moment H = canonicalOutput424.moment H :=
  canonical_of_padded canonicalInput424 canonicalOutput424 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput425 : ExponentCode := ⟨5, 4, ![![-3, 0, 0, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput425 : ExponentCode := normalNode11080

theorem canonicalSound425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput425.moment H = canonicalOutput425.moment H :=
  canonical_of_padded canonicalInput425 canonicalOutput425 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput426 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![0, 1, -1, 0], ![1, 1, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput426 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1012⟩

theorem canonicalSound426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput426.moment H = canonicalOutput426.moment H :=
  canonical_of_padded canonicalInput426 canonicalOutput426 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput427 : ExponentCode := ⟨5, 4, ![![-3, 0, 0, 3], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput427 : ExponentCode := normalNode5544

theorem canonicalSound427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput427.moment H = canonicalOutput427.moment H :=
  canonical_of_padded canonicalInput427 canonicalOutput427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput428 : ExponentCode := ⟨5, 4, ![![-3, 0, 0, 3], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput428 : ExponentCode := normalNode5898

theorem canonicalSound428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput428.moment H = canonicalOutput428.moment H :=
  canonical_of_padded canonicalInput428 canonicalOutput428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput429 : ExponentCode := ⟨3, 4, ![![-3, 0, 0, 3], ![1, -3, 3, -1], ![2, 3, -3, -2]]⟩

def canonicalOutput429 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code69

theorem canonicalSound429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput429.moment H = canonicalOutput429.moment H :=
  canonical_of_padded canonicalInput429 canonicalOutput429 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput430 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![1, -2, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput430 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput430.moment H = canonicalOutput430.moment H :=
  canonical_of_padded canonicalInput430 canonicalOutput430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput431 : ExponentCode := ⟨3, 4, ![![-3, 0, 0, 3], ![1, -2, 3, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code73

theorem canonicalSound431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput431.moment H = canonicalOutput431.moment H :=
  canonical_of_padded canonicalInput431 canonicalOutput431 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput432 : ExponentCode := ⟨4, 4, ![![-3, 0, 0, 3], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput432 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput432.moment H = canonicalOutput432.moment H :=
  canonical_of_padded canonicalInput432 canonicalOutput432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput433 : ExponentCode := ⟨3, 4, ![![-3, 0, 0, 3], ![2, -2, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput433 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput433.moment H = canonicalOutput433.moment H :=
  canonical_of_padded canonicalInput433 canonicalOutput433 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput434 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, -1, 0, 1, 1], ![1, 2, -2, -1, 0], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput434 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1280

theorem canonicalSound434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput434.moment H = canonicalOutput434.moment H :=
  canonical_of_padded canonicalInput434 canonicalOutput434 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput435 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, -1, 0, 1, 1], ![1, 2, -2, 0, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput435 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1280

theorem canonicalSound435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput435.moment H = canonicalOutput435.moment H :=
  canonical_of_padded canonicalInput435 canonicalOutput435 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput436 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 0, -1, 1, 1], ![1, -2, 1, 0, 0], ![3, 2, -1, -2, -2]]⟩

def canonicalOutput436 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code917

theorem canonicalSound436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput436.moment H = canonicalOutput436.moment H :=
  canonical_of_padded canonicalInput436 canonicalOutput436 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput437 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, -1, 0, 1], ![1, -2, 1, 1, -1], ![3, 1, -1, -2, -1]]⟩

def canonicalOutput437 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1283

theorem canonicalSound437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput437.moment H = canonicalOutput437.moment H :=
  canonical_of_padded canonicalInput437 canonicalOutput437 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput438 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, -1, 0, 1], ![1, 1, 1, -2, -1], ![3, -2, -1, 1, -1]]⟩

def canonicalOutput438 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1282

theorem canonicalSound438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput438.moment H = canonicalOutput438.moment H :=
  canonical_of_padded canonicalInput438 canonicalOutput438 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput439 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, -1, 0, 1], ![2, -2, -1, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput439 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1287

theorem canonicalSound439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput439.moment H = canonicalOutput439.moment H :=
  canonical_of_padded canonicalInput439 canonicalOutput439 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput440 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, -1, 1, 0], ![1, -2, 1, -1, 1], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput440 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1283

theorem canonicalSound440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput440.moment H = canonicalOutput440.moment H :=
  canonical_of_padded canonicalInput440 canonicalOutput440 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput441 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, -1, 1, 0], ![2, -2, -1, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput441 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1287

theorem canonicalSound441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput441.moment H = canonicalOutput441.moment H :=
  canonical_of_padded canonicalInput441 canonicalOutput441 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput442 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, 0, 1, -1], ![1, -2, 1, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput442 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1283

theorem canonicalSound442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput442.moment H = canonicalOutput442.moment H :=
  canonical_of_padded canonicalInput442 canonicalOutput442 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput443 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, 0, 1, -1], ![1, 1, -2, -1, 1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput443 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1282

theorem canonicalSound443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput443.moment H = canonicalOutput443.moment H :=
  canonical_of_padded canonicalInput443 canonicalOutput443 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput444 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 1, 0, 1, -1], ![2, -2, 1, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1287

theorem canonicalSound444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput444.moment H = canonicalOutput444.moment H :=
  canonical_of_padded canonicalInput444 canonicalOutput444 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput445 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 2, -1, 0, 0], ![1, -1, 1, -2, 1], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput445 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput445.moment H = canonicalOutput445.moment H :=
  canonical_of_padded canonicalInput445 canonicalOutput445 (by decide) (by decide)
    ⟨true, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput446 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 2, -1, 0, 0], ![2, 0, -1, -2, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput446 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code873

theorem canonicalSound446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput446.moment H = canonicalOutput446.moment H :=
  canonical_of_padded canonicalInput446 canonicalOutput446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput447 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput447 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput447.moment H = canonicalOutput447.moment H :=
  canonical_of_padded canonicalInput447 canonicalOutput447 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

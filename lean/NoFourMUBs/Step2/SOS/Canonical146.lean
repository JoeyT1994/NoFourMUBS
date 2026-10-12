import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9344 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-1, 3, -4, 2], ![3, -3, 2, -2]]⟩

def canonicalOutput9344 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code239

theorem canonicalSound9344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9344.moment H = canonicalOutput9344.moment H :=
  canonical_of_padded canonicalInput9344 canonicalOutput9344 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9345 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-1, 3, -3, 1], ![3, -3, 1, -1]]⟩

def canonicalOutput9345 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node178⟩

theorem canonicalSound9345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9345.moment H = canonicalOutput9345.moment H :=
  canonical_of_padded canonicalInput9345 canonicalOutput9345 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9346 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-1, 4, -1, -2], ![3, -4, -1, 2]]⟩

def canonicalOutput9346 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound9346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9346.moment H = canonicalOutput9346.moment H :=
  canonical_of_padded canonicalInput9346 canonicalOutput9346 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9347 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![0, -3, -1, 4], ![2, 3, -1, -4]]⟩

def canonicalOutput9347 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node193⟩

theorem canonicalSound9347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9347.moment H = canonicalOutput9347.moment H :=
  canonical_of_padded canonicalInput9347 canonicalOutput9347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9348 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9348 : ExponentCode := normalNode5936

theorem canonicalSound9348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9348.moment H = canonicalOutput9348.moment H :=
  canonical_of_padded canonicalInput9348 canonicalOutput9348 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9349 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput9349 : ExponentCode := normalNode3607

theorem canonicalSound9349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9349.moment H = canonicalOutput9349.moment H :=
  canonical_of_padded canonicalInput9349 canonicalOutput9349 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9350 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput9350 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1963⟩

theorem canonicalSound9350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9350.moment H = canonicalOutput9350.moment H :=
  canonical_of_padded canonicalInput9350 canonicalOutput9350 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9351 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput9351 : ExponentCode := normalNode3492

theorem canonicalSound9351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9351.moment H = canonicalOutput9351.moment H :=
  canonical_of_padded canonicalInput9351 canonicalOutput9351 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9352 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9352 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound9352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9352.moment H = canonicalOutput9352.moment H :=
  canonical_of_padded canonicalInput9352 canonicalOutput9352 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9353 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput9353 : ExponentCode := normalNode3451

theorem canonicalSound9353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9353.moment H = canonicalOutput9353.moment H :=
  canonical_of_padded canonicalInput9353 canonicalOutput9353 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9354 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9354 : ExponentCode := normalNode3490

theorem canonicalSound9354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9354.moment H = canonicalOutput9354.moment H :=
  canonical_of_padded canonicalInput9354 canonicalOutput9354 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9355 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 3, -1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9355 : ExponentCode := normalNode3721

theorem canonicalSound9355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9355.moment H = canonicalOutput9355.moment H :=
  canonical_of_padded canonicalInput9355 canonicalOutput9355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9356 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9356 : ExponentCode := normalNode3364

theorem canonicalSound9356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9356.moment H = canonicalOutput9356.moment H :=
  canonical_of_padded canonicalInput9356 canonicalOutput9356 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9357 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput9357 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound9357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9357.moment H = canonicalOutput9357.moment H :=
  canonical_of_padded canonicalInput9357 canonicalOutput9357 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput9358 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![0, -3, 1, 2], ![2, 3, -3, -2]]⟩

def canonicalOutput9358 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound9358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9358.moment H = canonicalOutput9358.moment H :=
  canonical_of_padded canonicalInput9358 canonicalOutput9358 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9359 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, -2, 4], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9359 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node578⟩

theorem canonicalSound9359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9359.moment H = canonicalOutput9359.moment H :=
  canonical_of_padded canonicalInput9359 canonicalOutput9359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9360 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, -2, 4], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput9360 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node397⟩

theorem canonicalSound9360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9360.moment H = canonicalOutput9360.moment H :=
  canonical_of_padded canonicalInput9360 canonicalOutput9360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9361 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -2, -1, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9361 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound9361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9361.moment H = canonicalOutput9361.moment H :=
  canonical_of_padded canonicalInput9361 canonicalOutput9361 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9362 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -2, -1, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9362 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound9362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9362.moment H = canonicalOutput9362.moment H :=
  canonical_of_padded canonicalInput9362 canonicalOutput9362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9363 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, -1, 3], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput9363 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound9363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9363.moment H = canonicalOutput9363.moment H :=
  canonical_of_padded canonicalInput9363 canonicalOutput9363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9364 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9364 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound9364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9364.moment H = canonicalOutput9364.moment H :=
  canonical_of_padded canonicalInput9364 canonicalOutput9364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9365 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, -1, 3], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9365 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound9365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9365.moment H = canonicalOutput9365.moment H :=
  canonical_of_padded canonicalInput9365 canonicalOutput9365 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9366 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9366 : ExponentCode := normalNode5934

theorem canonicalSound9366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9366.moment H = canonicalOutput9366.moment H :=
  canonical_of_padded canonicalInput9366 canonicalOutput9366 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9367 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput9367 : ExponentCode := normalNode3963

theorem canonicalSound9367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9367.moment H = canonicalOutput9367.moment H :=
  canonical_of_padded canonicalInput9367 canonicalOutput9367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9368 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput9368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code858

theorem canonicalSound9368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9368.moment H = canonicalOutput9368.moment H :=
  canonical_of_padded canonicalInput9368 canonicalOutput9368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9369 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput9369 : ExponentCode := normalNode3718

theorem canonicalSound9369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9369.moment H = canonicalOutput9369.moment H :=
  canonical_of_padded canonicalInput9369 canonicalOutput9369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9370 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput9370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node471⟩

theorem canonicalSound9370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9370.moment H = canonicalOutput9370.moment H :=
  canonical_of_padded canonicalInput9370 canonicalOutput9370 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9371 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput9371 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node485⟩

theorem canonicalSound9371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9371.moment H = canonicalOutput9371.moment H :=
  canonical_of_padded canonicalInput9371 canonicalOutput9371 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9372 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound9372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9372.moment H = canonicalOutput9372.moment H :=
  canonical_of_padded canonicalInput9372 canonicalOutput9372 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9373 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -2, 1, 1], ![1, -1, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput9373 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound9373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9373.moment H = canonicalOutput9373.moment H :=
  canonical_of_padded canonicalInput9373 canonicalOutput9373 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9374 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -3, 4], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput9374 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1165⟩

theorem canonicalSound9374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9374.moment H = canonicalOutput9374.moment H :=
  canonical_of_padded canonicalInput9374 canonicalOutput9374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9375 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -3, 4], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput9375 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node577⟩

theorem canonicalSound9375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9375.moment H = canonicalOutput9375.moment H :=
  canonical_of_padded canonicalInput9375 canonicalOutput9375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput9376 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -3, 4], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput9376 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1273⟩

theorem canonicalSound9376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9376.moment H = canonicalOutput9376.moment H :=
  canonical_of_padded canonicalInput9376 canonicalOutput9376 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9377 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -3, 4], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9377 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node935⟩

theorem canonicalSound9377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9377.moment H = canonicalOutput9377.moment H :=
  canonical_of_padded canonicalInput9377 canonicalOutput9377 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9378 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -3, 4], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9378 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩

theorem canonicalSound9378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9378.moment H = canonicalOutput9378.moment H :=
  canonical_of_padded canonicalInput9378 canonicalOutput9378 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9379 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9379 : ExponentCode := normalNode4013

theorem canonicalSound9379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9379.moment H = canonicalOutput9379.moment H :=
  canonical_of_padded canonicalInput9379 canonicalOutput9379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9380 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -2, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput9380 : ExponentCode := normalNode4013

theorem canonicalSound9380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9380.moment H = canonicalOutput9380.moment H :=
  canonical_of_padded canonicalInput9380 canonicalOutput9380 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9381 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput9381 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound9381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9381.moment H = canonicalOutput9381.moment H :=
  canonical_of_padded canonicalInput9381 canonicalOutput9381 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9382 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9382 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1638⟩

theorem canonicalSound9382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9382.moment H = canonicalOutput9382.moment H :=
  canonical_of_padded canonicalInput9382 canonicalOutput9382 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9383 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9383 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node938⟩

theorem canonicalSound9383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9383.moment H = canonicalOutput9383.moment H :=
  canonical_of_padded canonicalInput9383 canonicalOutput9383 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9384 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -2, 3], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9384 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound9384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9384.moment H = canonicalOutput9384.moment H :=
  canonical_of_padded canonicalInput9384 canonicalOutput9384 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9385 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9385 : ExponentCode := normalNode3917

theorem canonicalSound9385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9385.moment H = canonicalOutput9385.moment H :=
  canonical_of_padded canonicalInput9385 canonicalOutput9385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9386 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput9386 : ExponentCode := normalNode10232

theorem canonicalSound9386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9386.moment H = canonicalOutput9386.moment H :=
  canonical_of_padded canonicalInput9386 canonicalOutput9386 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9387 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput9387 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code905

theorem canonicalSound9387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9387.moment H = canonicalOutput9387.moment H :=
  canonical_of_padded canonicalInput9387 canonicalOutput9387 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9388 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9388 : ExponentCode := normalNode8943

theorem canonicalSound9388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9388.moment H = canonicalOutput9388.moment H :=
  canonical_of_padded canonicalInput9388 canonicalOutput9388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9389 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9389 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound9389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9389.moment H = canonicalOutput9389.moment H :=
  canonical_of_padded canonicalInput9389 canonicalOutput9389 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput9390 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput9390 : ExponentCode := normalNode3902

theorem canonicalSound9390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9390.moment H = canonicalOutput9390.moment H :=
  canonical_of_padded canonicalInput9390 canonicalOutput9390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9391 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9391 : ExponentCode := normalNode3989

theorem canonicalSound9391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9391.moment H = canonicalOutput9391.moment H :=
  canonical_of_padded canonicalInput9391 canonicalOutput9391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9392 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9392 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2022⟩

theorem canonicalSound9392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9392.moment H = canonicalOutput9392.moment H :=
  canonical_of_padded canonicalInput9392 canonicalOutput9392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9393 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput9393 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound9393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9393.moment H = canonicalOutput9393.moment H :=
  canonical_of_padded canonicalInput9393 canonicalOutput9393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9394 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput9394 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩

theorem canonicalSound9394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9394.moment H = canonicalOutput9394.moment H :=
  canonical_of_padded canonicalInput9394 canonicalOutput9394 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput9395 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput9395 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound9395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9395.moment H = canonicalOutput9395.moment H :=
  canonical_of_padded canonicalInput9395 canonicalOutput9395 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9396 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9396 : ExponentCode := normalNode5927

theorem canonicalSound9396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9396.moment H = canonicalOutput9396.moment H :=
  canonical_of_padded canonicalInput9396 canonicalOutput9396 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9397 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9397 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound9397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9397.moment H = canonicalOutput9397.moment H :=
  canonical_of_padded canonicalInput9397 canonicalOutput9397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9398 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9398 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound9398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9398.moment H = canonicalOutput9398.moment H :=
  canonical_of_padded canonicalInput9398 canonicalOutput9398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9399 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9399 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound9399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9399.moment H = canonicalOutput9399.moment H :=
  canonical_of_padded canonicalInput9399 canonicalOutput9399 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9400 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput9400 : ExponentCode := normalNode3965

theorem canonicalSound9400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9400.moment H = canonicalOutput9400.moment H :=
  canonical_of_padded canonicalInput9400 canonicalOutput9400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9401 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9401 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound9401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9401.moment H = canonicalOutput9401.moment H :=
  canonical_of_padded canonicalInput9401 canonicalOutput9401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9402 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9402 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound9402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9402.moment H = canonicalOutput9402.moment H :=
  canonical_of_padded canonicalInput9402 canonicalOutput9402 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9403 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput9403 : ExponentCode := normalNode3790

theorem canonicalSound9403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9403.moment H = canonicalOutput9403.moment H :=
  canonical_of_padded canonicalInput9403 canonicalOutput9403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9404 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9404 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound9404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9404.moment H = canonicalOutput9404.moment H :=
  canonical_of_padded canonicalInput9404 canonicalOutput9404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9405 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput9405 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound9405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9405.moment H = canonicalOutput9405.moment H :=
  canonical_of_padded canonicalInput9405 canonicalOutput9405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9406 : ExponentCode := ⟨5, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput9406 : ExponentCode := normalNode4019

theorem canonicalSound9406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9406.moment H = canonicalOutput9406.moment H :=
  canonical_of_padded canonicalInput9406 canonicalOutput9406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9407 : ExponentCode := ⟨4, 4, ![![-2, 0, 2, 0], ![0, -1, -1, 2], ![1, -2, 0, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput9407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound9407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9407.moment H = canonicalOutput9407.moment H :=
  canonical_of_padded canonicalInput9407 canonicalOutput9407 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

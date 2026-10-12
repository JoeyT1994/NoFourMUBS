import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraCanonical7
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33344 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-1, -3, 3, 1], ![0, 4, -4, 0]]⟩

def canonicalOutput33344 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node242⟩

theorem canonicalSound33344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33344.moment H = canonicalOutput33344.moment H :=
  canonical_of_padded canonicalInput33344 canonicalOutput33344 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33345 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-1, -2, 4, -1], ![0, 3, -5, 2]]⟩

def canonicalOutput33345 : ExponentCode := normalNode5980

theorem canonicalSound33345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33345.moment H = canonicalOutput33345.moment H :=
  canonical_of_padded canonicalInput33345 canonicalOutput33345 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33346 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-1, -1, 4, -2], ![0, 2, -5, 3]]⟩

def canonicalOutput33346 : ExponentCode := normalNode5980

theorem canonicalSound33346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33346.moment H = canonicalOutput33346.moment H :=
  canonical_of_padded canonicalInput33346 canonicalOutput33346 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33347 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![0, -3, 3, 0], ![-1, 4, -4, 1]]⟩

def canonicalOutput33347 : ExponentCode := normalNode6267

theorem canonicalSound33347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33347.moment H = canonicalOutput33347.moment H :=
  canonical_of_padded canonicalInput33347 canonicalOutput33347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33348 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![0, -1, 3, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput33348 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound33348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33348.moment H = canonicalOutput33348.moment H :=
  canonical_of_padded canonicalInput33348 canonicalOutput33348 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33349 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![1, -3, 3, -1], ![-2, 4, -4, 2]]⟩

def canonicalOutput33349 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound33349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33349.moment H = canonicalOutput33349.moment H :=
  canonical_of_padded canonicalInput33349 canonicalOutput33349 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33350 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![1, -1, 3, -3], ![-2, 2, -4, 4]]⟩

def canonicalOutput33350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound33350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33350.moment H = canonicalOutput33350.moment H :=
  canonical_of_padded canonicalInput33350 canonicalOutput33350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33351 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![2, -1, 2, -3], ![-3, 2, -3, 4]]⟩

def canonicalOutput33351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1291

theorem canonicalSound33351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33351.moment H = canonicalOutput33351.moment H :=
  canonical_of_padded canonicalInput33351 canonicalOutput33351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33352 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![3, -1, 1, -3], ![-4, 2, -2, 4]]⟩

def canonicalOutput33352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound33352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33352.moment H = canonicalOutput33352.moment H :=
  canonical_of_padded canonicalInput33352 canonicalOutput33352 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33353 : ExponentCode := ⟨3, 5, ![![1, -1, 1, 1, -2], ![-2, 2, -3, 2, 1], ![1, -1, 2, -3, 1]]⟩

def canonicalOutput33353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1211

theorem canonicalSound33353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33353.moment H = canonicalOutput33353.moment H :=
  canonical_of_padded canonicalInput33353 canonicalOutput33353 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33354 : ExponentCode := ⟨3, 5, ![![1, -1, 1, 1, -2], ![-2, 3, -2, 1, 0], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput33354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1038

theorem canonicalSound33354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33354.moment H = canonicalOutput33354.moment H :=
  canonical_of_padded canonicalInput33354 canonicalOutput33354 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33355 : ExponentCode := ⟨3, 5, ![![1, -1, 1, 1, -2], ![-1, 2, -3, 2, 0], ![0, -1, 2, -3, 2]]⟩

def canonicalOutput33355 : ExponentCode := normalNode4603

theorem canonicalSound33355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33355.moment H = canonicalOutput33355.moment H :=
  canonical_of_padded canonicalInput33355 canonicalOutput33355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33356 : ExponentCode := ⟨3, 5, ![![1, -1, 1, 1, -2], ![-1, 3, -2, 1, -1], ![0, -2, 1, -2, 3]]⟩

def canonicalOutput33356 : ExponentCode := normalNode3008

theorem canonicalSound33356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33356.moment H = canonicalOutput33356.moment H :=
  canonical_of_padded canonicalInput33356 canonicalOutput33356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33357 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-5, 2, 0, 3], ![4, -1, -2, -1]]⟩

def canonicalOutput33357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound33357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33357.moment H = canonicalOutput33357.moment H :=
  canonical_of_padded canonicalInput33357 canonicalOutput33357 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33358 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-4, 2, 0, 2], ![3, -1, -2, 0]]⟩

def canonicalOutput33358 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound33358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33358.moment H = canonicalOutput33358.moment H :=
  canonical_of_padded canonicalInput33358 canonicalOutput33358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput33359 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-4, 4, -1, 1], ![3, -3, -1, 1]]⟩

def canonicalOutput33359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound33359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33359.moment H = canonicalOutput33359.moment H :=
  canonical_of_padded canonicalInput33359 canonicalOutput33359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33360 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-3, -1, -1, 5], ![2, 2, -1, -3]]⟩

def canonicalOutput33360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound33360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33360.moment H = canonicalOutput33360.moment H :=
  canonical_of_padded canonicalInput33360 canonicalOutput33360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33361 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-3, 4, -1, 0], ![2, -3, -1, 2]]⟩

def canonicalOutput33361 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound33361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33361.moment H = canonicalOutput33361.moment H :=
  canonical_of_padded canonicalInput33361 canonicalOutput33361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33362 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-2, -1, -1, 4], ![1, 2, -1, -2]]⟩

def canonicalOutput33362 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound33362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33362.moment H = canonicalOutput33362.moment H :=
  canonical_of_padded canonicalInput33362 canonicalOutput33362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33363 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-2, 4, -1, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput33363 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound33363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33363.moment H = canonicalOutput33363.moment H :=
  canonical_of_padded canonicalInput33363 canonicalOutput33363 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33364 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![-1, 4, -1, -2], ![0, -3, -1, 4]]⟩

def canonicalOutput33364 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound33364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33364.moment H = canonicalOutput33364.moment H :=
  canonical_of_padded canonicalInput33364 canonicalOutput33364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33365 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![0, -1, 2, -1], ![-1, 2, -4, 3]]⟩

def canonicalOutput33365 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound33365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33365.moment H = canonicalOutput33365.moment H :=
  canonical_of_padded canonicalInput33365 canonicalOutput33365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33366 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![1, -1, 1, -1], ![-2, 2, -3, 3]]⟩

def canonicalOutput33366 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node258⟩

theorem canonicalSound33366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33366.moment H = canonicalOutput33366.moment H :=
  canonical_of_padded canonicalInput33366 canonicalOutput33366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33367 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![1, -1, 2, -2], ![-2, 2, -4, 4]]⟩

def canonicalOutput33367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code225

theorem canonicalSound33367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33367.moment H = canonicalOutput33367.moment H :=
  canonical_of_padded canonicalInput33367 canonicalOutput33367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33368 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![2, -1, 0, -1], ![-3, 2, -2, 3]]⟩

def canonicalOutput33368 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node167⟩

theorem canonicalSound33368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33368.moment H = canonicalOutput33368.moment H :=
  canonical_of_padded canonicalInput33368 canonicalOutput33368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33369 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![2, -1, 1, -2], ![-3, 2, -3, 4]]⟩

def canonicalOutput33369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code226

theorem canonicalSound33369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33369.moment H = canonicalOutput33369.moment H :=
  canonical_of_padded canonicalInput33369 canonicalOutput33369 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33370 : ExponentCode := ⟨3, 4, ![![1, -1, 2, -2], ![3, -1, 0, -2], ![-4, 2, -2, 4]]⟩

def canonicalOutput33370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound33370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33370.moment H = canonicalOutput33370.moment H :=
  canonical_of_padded canonicalInput33370 canonicalOutput33370 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33371 : ExponentCode := ⟨6, 4, ![![1, 0, -2, 1], ![1, 0, 1, -2], ![1, 1, 0, -2], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![-1, 1, -1, 1]]⟩

def canonicalOutput33371 : ExponentCode := normalNode8880

theorem canonicalSound33371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33371.moment H = canonicalOutput33371.moment H :=
  canonical_of_padded canonicalInput33371 canonicalOutput33371 (by decide) (by decide)
    ⟨false, true, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput33372 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairTargetSemantics.extraRaw124⟩

def canonicalOutput33372 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node1323⟩

theorem canonicalSound33372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33372.moment H = canonicalOutput33372.moment H :=
  OAI.MUB6.Certificate.PairTargetSemantics.extraCanonical124 hH

def canonicalInput33373 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33373 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33373.moment H = canonicalOutput33373.moment H :=
  canonical_of_padded canonicalInput33373 canonicalOutput33373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33374 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33374 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33374.moment H = canonicalOutput33374.moment H :=
  canonical_of_padded canonicalInput33374 canonicalOutput33374 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33375 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33375 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33375.moment H = canonicalOutput33375.moment H :=
  canonical_of_padded canonicalInput33375 canonicalOutput33375 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33376 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33376 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33376.moment H = canonicalOutput33376.moment H :=
  canonical_of_padded canonicalInput33376 canonicalOutput33376 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33377 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33377 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33377.moment H = canonicalOutput33377.moment H :=
  canonical_of_padded canonicalInput33377 canonicalOutput33377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33378 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33378 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33378.moment H = canonicalOutput33378.moment H :=
  canonical_of_padded canonicalInput33378 canonicalOutput33378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33379 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33379 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33379.moment H = canonicalOutput33379.moment H :=
  canonical_of_padded canonicalInput33379 canonicalOutput33379 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33380 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33380 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33380.moment H = canonicalOutput33380.moment H :=
  canonical_of_padded canonicalInput33380 canonicalOutput33380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33381 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33381 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33381.moment H = canonicalOutput33381.moment H :=
  canonical_of_padded canonicalInput33381 canonicalOutput33381 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33382 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33382 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33382.moment H = canonicalOutput33382.moment H :=
  canonical_of_padded canonicalInput33382 canonicalOutput33382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33383 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33383 : ExponentCode := normalNode10818

theorem canonicalSound33383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33383.moment H = canonicalOutput33383.moment H :=
  canonical_of_padded canonicalInput33383 canonicalOutput33383 (by decide) (by decide)
    ⟨false, true, canonicalPermutation256, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput33384 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33384 : ExponentCode := normalNode10455

theorem canonicalSound33384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33384.moment H = canonicalOutput33384.moment H :=
  canonical_of_padded canonicalInput33384 canonicalOutput33384 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput33385 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33385 : ExponentCode := normalNode10375

theorem canonicalSound33385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33385.moment H = canonicalOutput33385.moment H :=
  canonical_of_padded canonicalInput33385 canonicalOutput33385 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput33386 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33386 : ExponentCode := normalNode8064

theorem canonicalSound33386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33386.moment H = canonicalOutput33386.moment H :=
  canonical_of_padded canonicalInput33386 canonicalOutput33386 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33387 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33387 : ExponentCode := normalNode8066

theorem canonicalSound33387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33387.moment H = canonicalOutput33387.moment H :=
  canonical_of_padded canonicalInput33387 canonicalOutput33387 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33388 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33388 : ExponentCode := normalNode8066

theorem canonicalSound33388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33388.moment H = canonicalOutput33388.moment H :=
  canonical_of_padded canonicalInput33388 canonicalOutput33388 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33389 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33389 : ExponentCode := normalNode8064

theorem canonicalSound33389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33389.moment H = canonicalOutput33389.moment H :=
  canonical_of_padded canonicalInput33389 canonicalOutput33389 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33390 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33390 : ExponentCode := normalNode8066

theorem canonicalSound33390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33390.moment H = canonicalOutput33390.moment H :=
  canonical_of_padded canonicalInput33390 canonicalOutput33390 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33391 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33391 : ExponentCode := normalNode8361

theorem canonicalSound33391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33391.moment H = canonicalOutput33391.moment H :=
  canonical_of_padded canonicalInput33391 canonicalOutput33391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33392 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33392 : ExponentCode := normalNode8067

theorem canonicalSound33392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33392.moment H = canonicalOutput33392.moment H :=
  canonical_of_padded canonicalInput33392 canonicalOutput33392 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33393 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33393 : ExponentCode := normalNode8067

theorem canonicalSound33393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33393.moment H = canonicalOutput33393.moment H :=
  canonical_of_padded canonicalInput33393 canonicalOutput33393 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33394 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33394 : ExponentCode := normalNode8361

theorem canonicalSound33394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33394.moment H = canonicalOutput33394.moment H :=
  canonical_of_padded canonicalInput33394 canonicalOutput33394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33395 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33395 : ExponentCode := normalNode8066

theorem canonicalSound33395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33395.moment H = canonicalOutput33395.moment H :=
  canonical_of_padded canonicalInput33395 canonicalOutput33395 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33396 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33396 : ExponentCode := normalNode8066

theorem canonicalSound33396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33396.moment H = canonicalOutput33396.moment H :=
  canonical_of_padded canonicalInput33396 canonicalOutput33396 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33397 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33397 : ExponentCode := normalNode8067

theorem canonicalSound33397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33397.moment H = canonicalOutput33397.moment H :=
  canonical_of_padded canonicalInput33397 canonicalOutput33397 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33398 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33398 : ExponentCode := normalNode8361

theorem canonicalSound33398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33398.moment H = canonicalOutput33398.moment H :=
  canonical_of_padded canonicalInput33398 canonicalOutput33398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33399 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33399 : ExponentCode := normalNode8361

theorem canonicalSound33399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33399.moment H = canonicalOutput33399.moment H :=
  canonical_of_padded canonicalInput33399 canonicalOutput33399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33400 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33400 : ExponentCode := normalNode8067

theorem canonicalSound33400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33400.moment H = canonicalOutput33400.moment H :=
  canonical_of_padded canonicalInput33400 canonicalOutput33400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33401 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33401 : ExponentCode := normalNode8066

theorem canonicalSound33401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33401.moment H = canonicalOutput33401.moment H :=
  canonical_of_padded canonicalInput33401 canonicalOutput33401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33402 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33402 : ExponentCode := normalNode8064

theorem canonicalSound33402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33402.moment H = canonicalOutput33402.moment H :=
  canonical_of_padded canonicalInput33402 canonicalOutput33402 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33403 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33403 : ExponentCode := normalNode8066

theorem canonicalSound33403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33403.moment H = canonicalOutput33403.moment H :=
  canonical_of_padded canonicalInput33403 canonicalOutput33403 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33404 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33404 : ExponentCode := normalNode8066

theorem canonicalSound33404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33404.moment H = canonicalOutput33404.moment H :=
  canonical_of_padded canonicalInput33404 canonicalOutput33404 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33405 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33405 : ExponentCode := normalNode8064

theorem canonicalSound33405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33405.moment H = canonicalOutput33405.moment H :=
  canonical_of_padded canonicalInput33405 canonicalOutput33405 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33406 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33406 : ExponentCode := normalNode8067

theorem canonicalSound33406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33406.moment H = canonicalOutput33406.moment H :=
  canonical_of_padded canonicalInput33406 canonicalOutput33406 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33407 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33407 : ExponentCode := normalNode8066

theorem canonicalSound33407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33407.moment H = canonicalOutput33407.moment H :=
  canonical_of_padded canonicalInput33407 canonicalOutput33407 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

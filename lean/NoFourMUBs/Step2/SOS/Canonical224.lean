import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14336 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14336 : ExponentCode := normalNode2835

theorem canonicalSound14336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14336.moment H = canonicalOutput14336.moment H :=
  canonical_of_padded canonicalInput14336 canonicalOutput14336 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14337 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 2, -1, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput14337 : ExponentCode := normalNode2637

theorem canonicalSound14337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14337.moment H = canonicalOutput14337.moment H :=
  canonical_of_padded canonicalInput14337 canonicalOutput14337 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14338 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 2, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14338 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩

theorem canonicalSound14338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14338.moment H = canonicalOutput14338.moment H :=
  canonical_of_padded canonicalInput14338 canonicalOutput14338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14339 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14339 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2432⟩

theorem canonicalSound14339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14339.moment H = canonicalOutput14339.moment H :=
  canonical_of_padded canonicalInput14339 canonicalOutput14339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14340 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14340 : ExponentCode := normalNode2753

theorem canonicalSound14340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14340.moment H = canonicalOutput14340.moment H :=
  canonical_of_padded canonicalInput14340 canonicalOutput14340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14341 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14341 : ExponentCode := normalNode2753

theorem canonicalSound14341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14341.moment H = canonicalOutput14341.moment H :=
  canonical_of_padded canonicalInput14341 canonicalOutput14341 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14342 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14342 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2432⟩

theorem canonicalSound14342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14342.moment H = canonicalOutput14342.moment H :=
  canonical_of_padded canonicalInput14342 canonicalOutput14342 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14343 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14343 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2435⟩

theorem canonicalSound14343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14343.moment H = canonicalOutput14343.moment H :=
  canonical_of_padded canonicalInput14343 canonicalOutput14343 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14344 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14344 : ExponentCode := normalNode6988

theorem canonicalSound14344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14344.moment H = canonicalOutput14344.moment H :=
  canonical_of_padded canonicalInput14344 canonicalOutput14344 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14345 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14345 : ExponentCode := normalNode6965

theorem canonicalSound14345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14345.moment H = canonicalOutput14345.moment H :=
  canonical_of_padded canonicalInput14345 canonicalOutput14345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14346 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, 1, -2], ![0, 0, 2, -3, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14346 : ExponentCode := normalNode2836

theorem canonicalSound14346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14346.moment H = canonicalOutput14346.moment H :=
  canonical_of_padded canonicalInput14346 canonicalOutput14346 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14347 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, 1, -2], ![0, 0, 2, -2, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14347 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩

theorem canonicalSound14347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14347.moment H = canonicalOutput14347.moment H :=
  canonical_of_padded canonicalInput14347 canonicalOutput14347 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14348 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, 1, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput14348 : ExponentCode := normalNode2637

theorem canonicalSound14348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14348.moment H = canonicalOutput14348.moment H :=
  canonical_of_padded canonicalInput14348 canonicalOutput14348 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14349 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 2, -3, 1], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14349 : ExponentCode := normalNode2836

theorem canonicalSound14349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14349.moment H = canonicalOutput14349.moment H :=
  canonical_of_padded canonicalInput14349 canonicalOutput14349 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14350 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14350 : ExponentCode := normalNode2305

theorem canonicalSound14350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14350.moment H = canonicalOutput14350.moment H :=
  canonical_of_padded canonicalInput14350 canonicalOutput14350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14351 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 1, 0, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14351 : ExponentCode := normalNode2753

theorem canonicalSound14351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14351.moment H = canonicalOutput14351.moment H :=
  canonical_of_padded canonicalInput14351 canonicalOutput14351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14352 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 1, 0, -2, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14352 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1802⟩

theorem canonicalSound14352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14352.moment H = canonicalOutput14352.moment H :=
  canonical_of_padded canonicalInput14352 canonicalOutput14352 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14353 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14353 : ExponentCode := normalNode7256

theorem canonicalSound14353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14353.moment H = canonicalOutput14353.moment H :=
  canonical_of_padded canonicalInput14353 canonicalOutput14353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14354 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14354 : ExponentCode := normalNode7257

theorem canonicalSound14354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14354.moment H = canonicalOutput14354.moment H :=
  canonical_of_padded canonicalInput14354 canonicalOutput14354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14355 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14355 : ExponentCode := normalNode7258

theorem canonicalSound14355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14355.moment H = canonicalOutput14355.moment H :=
  canonical_of_padded canonicalInput14355 canonicalOutput14355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14356 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput14356 : ExponentCode := normalNode7259

theorem canonicalSound14356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14356.moment H = canonicalOutput14356.moment H :=
  canonical_of_padded canonicalInput14356 canonicalOutput14356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14357 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput14357 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1324⟩

theorem canonicalSound14357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14357.moment H = canonicalOutput14357.moment H :=
  canonical_of_padded canonicalInput14357 canonicalOutput14357 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14358 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![1, 2, 0, -3]]⟩

def canonicalOutput14358 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node466⟩

theorem canonicalSound14358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14358.moment H = canonicalOutput14358.moment H :=
  canonical_of_padded canonicalInput14358 canonicalOutput14358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14359 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput14359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code539

theorem canonicalSound14359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14359.moment H = canonicalOutput14359.moment H :=
  canonical_of_padded canonicalInput14359 canonicalOutput14359 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14360 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput14360 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node463⟩

theorem canonicalSound14360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14360.moment H = canonicalOutput14360.moment H :=
  canonical_of_padded canonicalInput14360 canonicalOutput14360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14361 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![1, 1, 1, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput14361 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node463⟩

theorem canonicalSound14361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14361.moment H = canonicalOutput14361.moment H :=
  canonical_of_padded canonicalInput14361 canonicalOutput14361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14362 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 1, 1], ![1, 1, 2, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput14362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1325

theorem canonicalSound14362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14362.moment H = canonicalOutput14362.moment H :=
  canonical_of_padded canonicalInput14362 canonicalOutput14362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14363 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14363 : ExponentCode := normalNode7267

theorem canonicalSound14363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14363.moment H = canonicalOutput14363.moment H :=
  canonical_of_padded canonicalInput14363 canonicalOutput14363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14364 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14364 : ExponentCode := normalNode7266

theorem canonicalSound14364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14364.moment H = canonicalOutput14364.moment H :=
  canonical_of_padded canonicalInput14364 canonicalOutput14364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14365 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14365 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1590⟩

theorem canonicalSound14365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14365.moment H = canonicalOutput14365.moment H :=
  canonical_of_padded canonicalInput14365 canonicalOutput14365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14366 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14366 : ExponentCode := normalNode3918

theorem canonicalSound14366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14366.moment H = canonicalOutput14366.moment H :=
  canonical_of_padded canonicalInput14366 canonicalOutput14366 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14367 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput14367 : ExponentCode := normalNode11129

theorem canonicalSound14367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14367.moment H = canonicalOutput14367.moment H :=
  canonical_of_padded canonicalInput14367 canonicalOutput14367 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14368 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput14368 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1173⟩

theorem canonicalSound14368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14368.moment H = canonicalOutput14368.moment H :=
  canonical_of_padded canonicalInput14368 canonicalOutput14368 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14369 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput14369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code570

theorem canonicalSound14369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14369.moment H = canonicalOutput14369.moment H :=
  canonical_of_padded canonicalInput14369 canonicalOutput14369 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14370 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1259

theorem canonicalSound14370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14370.moment H = canonicalOutput14370.moment H :=
  canonical_of_padded canonicalInput14370 canonicalOutput14370 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14371 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14371 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node687⟩

theorem canonicalSound14371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14371.moment H = canonicalOutput14371.moment H :=
  canonical_of_padded canonicalInput14371 canonicalOutput14371 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14372 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 2, 0], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput14372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1259

theorem canonicalSound14372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14372.moment H = canonicalOutput14372.moment H :=
  canonical_of_padded canonicalInput14372 canonicalOutput14372 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14373 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14373 : ExponentCode := normalNode7274

theorem canonicalSound14373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14373.moment H = canonicalOutput14373.moment H :=
  canonical_of_padded canonicalInput14373 canonicalOutput14373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14374 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14374 : ExponentCode := normalNode7273

theorem canonicalSound14374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14374.moment H = canonicalOutput14374.moment H :=
  canonical_of_padded canonicalInput14374 canonicalOutput14374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14375 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14375 : ExponentCode := normalNode7276

theorem canonicalSound14375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14375.moment H = canonicalOutput14375.moment H :=
  canonical_of_padded canonicalInput14375 canonicalOutput14375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14376 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14376 : ExponentCode := normalNode7275

theorem canonicalSound14376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14376.moment H = canonicalOutput14376.moment H :=
  canonical_of_padded canonicalInput14376 canonicalOutput14376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14377 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14377 : ExponentCode := normalNode3916

theorem canonicalSound14377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14377.moment H = canonicalOutput14377.moment H :=
  canonical_of_padded canonicalInput14377 canonicalOutput14377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14378 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14378 : ExponentCode := normalNode4252

theorem canonicalSound14378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14378.moment H = canonicalOutput14378.moment H :=
  canonical_of_padded canonicalInput14378 canonicalOutput14378 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14379 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14379 : ExponentCode := normalNode4328

theorem canonicalSound14379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14379.moment H = canonicalOutput14379.moment H :=
  canonical_of_padded canonicalInput14379 canonicalOutput14379 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14380 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput14380 : ExponentCode := normalNode9355

theorem canonicalSound14380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14380.moment H = canonicalOutput14380.moment H :=
  canonical_of_padded canonicalInput14380 canonicalOutput14380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14381 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput14381 : ExponentCode := normalNode6460

theorem canonicalSound14381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14381.moment H = canonicalOutput14381.moment H :=
  canonical_of_padded canonicalInput14381 canonicalOutput14381 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14382 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput14382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound14382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14382.moment H = canonicalOutput14382.moment H :=
  canonical_of_padded canonicalInput14382 canonicalOutput14382 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14383 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14383 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code303

theorem canonicalSound14383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14383.moment H = canonicalOutput14383.moment H :=
  canonical_of_padded canonicalInput14383 canonicalOutput14383 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14384 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput14384 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code303

theorem canonicalSound14384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14384.moment H = canonicalOutput14384.moment H :=
  canonical_of_padded canonicalInput14384 canonicalOutput14384 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14385 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput14385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1326

theorem canonicalSound14385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14385.moment H = canonicalOutput14385.moment H :=
  canonical_of_padded canonicalInput14385 canonicalOutput14385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14386 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14386 : ExponentCode := normalNode7280

theorem canonicalSound14386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14386.moment H = canonicalOutput14386.moment H :=
  canonical_of_padded canonicalInput14386 canonicalOutput14386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14387 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput14387 : ExponentCode := normalNode7280

theorem canonicalSound14387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14387.moment H = canonicalOutput14387.moment H :=
  canonical_of_padded canonicalInput14387 canonicalOutput14387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14388 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14388 : ExponentCode := normalNode7279

theorem canonicalSound14388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14388.moment H = canonicalOutput14388.moment H :=
  canonical_of_padded canonicalInput14388 canonicalOutput14388 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14389 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14389 : ExponentCode := normalNode3911

theorem canonicalSound14389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14389.moment H = canonicalOutput14389.moment H :=
  canonical_of_padded canonicalInput14389 canonicalOutput14389 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14390 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14390 : ExponentCode := normalNode4346

theorem canonicalSound14390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14390.moment H = canonicalOutput14390.moment H :=
  canonical_of_padded canonicalInput14390 canonicalOutput14390 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14391 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput14391 : ExponentCode := normalNode7373

theorem canonicalSound14391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14391.moment H = canonicalOutput14391.moment H :=
  canonical_of_padded canonicalInput14391 canonicalOutput14391 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14392 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput14392 : ExponentCode := normalNode7373

theorem canonicalSound14392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14392.moment H = canonicalOutput14392.moment H :=
  canonical_of_padded canonicalInput14392 canonicalOutput14392 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14393 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, -1, 4, -2], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14393 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code727

theorem canonicalSound14393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14393.moment H = canonicalOutput14393.moment H :=
  canonical_of_padded canonicalInput14393 canonicalOutput14393 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14394 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14394 : ExponentCode := normalNode1201

theorem canonicalSound14394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14394.moment H = canonicalOutput14394.moment H :=
  canonical_of_padded canonicalInput14394 canonicalOutput14394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14395 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 0, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14395 : ExponentCode := normalNode1210

theorem canonicalSound14395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14395.moment H = canonicalOutput14395.moment H :=
  canonical_of_padded canonicalInput14395 canonicalOutput14395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14396 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 0, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14396 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1544⟩

theorem canonicalSound14396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14396.moment H = canonicalOutput14396.moment H :=
  canonical_of_padded canonicalInput14396 canonicalOutput14396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14397 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 0, 1], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput14397 : ExponentCode := normalNode10938

theorem canonicalSound14397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14397.moment H = canonicalOutput14397.moment H :=
  canonical_of_padded canonicalInput14397 canonicalOutput14397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14398 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 0, 1], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput14398 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound14398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14398.moment H = canonicalOutput14398.moment H :=
  canonical_of_padded canonicalInput14398 canonicalOutput14398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14399 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 0, 0, 1], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput14399 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound14399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14399.moment H = canonicalOutput14399.moment H :=
  canonical_of_padded canonicalInput14399 canonicalOutput14399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

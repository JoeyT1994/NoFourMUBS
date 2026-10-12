import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical106
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8320 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput8320 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1579⟩

theorem canonicalSound8320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8320.moment H = canonicalOutput8320.moment H :=
  canonical_of_padded canonicalInput8320 canonicalOutput8320 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8321 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8321 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound8321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8321.moment H = canonicalOutput8321.moment H :=
  canonical_of_padded canonicalInput8321 canonicalOutput8321 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8322 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput8322 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩

theorem canonicalSound8322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8322.moment H = canonicalOutput8322.moment H :=
  canonical_of_padded canonicalInput8322 canonicalOutput8322 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8323 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput8323 : ExponentCode := normalNode7863

theorem canonicalSound8323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8323.moment H = canonicalOutput8323.moment H :=
  canonical_of_padded canonicalInput8323 canonicalOutput8323 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8324 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput8324 : ExponentCode := normalNode9035

theorem canonicalSound8324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8324.moment H = canonicalOutput8324.moment H :=
  canonical_of_padded canonicalInput8324 canonicalOutput8324 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8325 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8325 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound8325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8325.moment H = canonicalOutput8325.moment H :=
  canonical_of_padded canonicalInput8325 canonicalOutput8325 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8326 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8326 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound8326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8326.moment H = canonicalOutput8326.moment H :=
  canonical_of_padded canonicalInput8326 canonicalOutput8326 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8327 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput8327 : ExponentCode := normalNode5308

theorem canonicalSound8327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8327.moment H = canonicalOutput8327.moment H :=
  canonical_of_padded canonicalInput8327 canonicalOutput8327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8328 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8328 : ExponentCode := normalNode1991

theorem canonicalSound8328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8328.moment H = canonicalOutput8328.moment H :=
  canonical_of_padded canonicalInput8328 canonicalOutput8328 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8329 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput8329 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound8329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8329.moment H = canonicalOutput8329.moment H :=
  canonical_of_padded canonicalInput8329 canonicalOutput8329 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8330 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8330 : ExponentCode := normalNode7896

theorem canonicalSound8330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8330.moment H = canonicalOutput8330.moment H :=
  canonical_of_padded canonicalInput8330 canonicalOutput8330 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8331 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8331 : ExponentCode := normalNode8966

theorem canonicalSound8331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8331.moment H = canonicalOutput8331.moment H :=
  canonical_of_padded canonicalInput8331 canonicalOutput8331 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8332 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8332 : ExponentCode := normalNode9098

theorem canonicalSound8332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8332.moment H = canonicalOutput8332.moment H :=
  canonical_of_padded canonicalInput8332 canonicalOutput8332 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8333 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput8333 : ExponentCode := normalNode8998

theorem canonicalSound8333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8333.moment H = canonicalOutput8333.moment H :=
  canonical_of_padded canonicalInput8333 canonicalOutput8333 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8334 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8334 : ExponentCode := normalNode7914

theorem canonicalSound8334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8334.moment H = canonicalOutput8334.moment H :=
  canonical_of_padded canonicalInput8334 canonicalOutput8334 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8335 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8335 : ExponentCode := normalNode8998

theorem canonicalSound8335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8335.moment H = canonicalOutput8335.moment H :=
  canonical_of_padded canonicalInput8335 canonicalOutput8335 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8336 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8336 : ExponentCode := normalNode9098

theorem canonicalSound8336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8336.moment H = canonicalOutput8336.moment H :=
  canonical_of_padded canonicalInput8336 canonicalOutput8336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8337 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 3, -2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput8337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code855

theorem canonicalSound8337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8337.moment H = canonicalOutput8337.moment H :=
  canonical_of_padded canonicalInput8337 canonicalOutput8337 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput8338 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8338 : ExponentCode := normalNode2781

theorem canonicalSound8338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8338.moment H = canonicalOutput8338.moment H :=
  canonical_of_padded canonicalInput8338 canonicalOutput8338 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8339 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8339 : ExponentCode := normalNode8985

theorem canonicalSound8339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8339.moment H = canonicalOutput8339.moment H :=
  canonical_of_padded canonicalInput8339 canonicalOutput8339 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8340 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput8340 : ExponentCode := normalNode8974

theorem canonicalSound8340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8340.moment H = canonicalOutput8340.moment H :=
  canonical_of_padded canonicalInput8340 canonicalOutput8340 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8341 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 2, -2, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8341 : ExponentCode := normalNode2781

theorem canonicalSound8341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8341.moment H = canonicalOutput8341.moment H :=
  canonical_of_padded canonicalInput8341 canonicalOutput8341 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8342 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput8342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound8342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8342.moment H = canonicalOutput8342.moment H :=
  canonical_of_padded canonicalInput8342 canonicalOutput8342 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8343 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput8343 : ExponentCode := normalNode10229

theorem canonicalSound8343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8343.moment H = canonicalOutput8343.moment H :=
  canonical_of_padded canonicalInput8343 canonicalOutput8343 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8344 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8344 : ExponentCode := normalNode10229

theorem canonicalSound8344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8344.moment H = canonicalOutput8344.moment H :=
  canonical_of_padded canonicalInput8344 canonicalOutput8344 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8345 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput8345 : ExponentCode := normalNode10228

theorem canonicalSound8345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8345.moment H = canonicalOutput8345.moment H :=
  canonical_of_padded canonicalInput8345 canonicalOutput8345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8346 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput8346 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound8346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8346.moment H = canonicalOutput8346.moment H :=
  canonical_of_padded canonicalInput8346 canonicalOutput8346 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8347 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8347 : ExponentCode := normalNode9099

theorem canonicalSound8347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8347.moment H = canonicalOutput8347.moment H :=
  canonical_of_padded canonicalInput8347 canonicalOutput8347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8348 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput8348 : ExponentCode := normalNode9099

theorem canonicalSound8348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8348.moment H = canonicalOutput8348.moment H :=
  canonical_of_padded canonicalInput8348 canonicalOutput8348 (by decide) (by decide)
    ⟨false, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8349 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput8349 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound8349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8349.moment H = canonicalOutput8349.moment H :=
  canonical_of_padded canonicalInput8349 canonicalOutput8349 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8350 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput8350 : ExponentCode := normalNode9005

theorem canonicalSound8350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8350.moment H = canonicalOutput8350.moment H :=
  canonical_of_padded canonicalInput8350 canonicalOutput8350 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8351 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8351 : ExponentCode := normalNode8981

theorem canonicalSound8351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8351.moment H = canonicalOutput8351.moment H :=
  canonical_of_padded canonicalInput8351 canonicalOutput8351 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8352 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8352 : ExponentCode := normalNode10227

theorem canonicalSound8352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8352.moment H = canonicalOutput8352.moment H :=
  canonical_of_padded canonicalInput8352 canonicalOutput8352 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8353 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8353 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound8353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8353.moment H = canonicalOutput8353.moment H :=
  canonical_of_padded canonicalInput8353 canonicalOutput8353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8354 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8354 : ExponentCode := normalNode9086

theorem canonicalSound8354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8354.moment H = canonicalOutput8354.moment H :=
  canonical_of_padded canonicalInput8354 canonicalOutput8354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8355 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput8355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound8355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8355.moment H = canonicalOutput8355.moment H :=
  canonical_of_padded canonicalInput8355 canonicalOutput8355 (by decide) (by decide)
    ⟨false, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8356 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput8356 : ExponentCode := normalNode10227

theorem canonicalSound8356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8356.moment H = canonicalOutput8356.moment H :=
  canonical_of_padded canonicalInput8356 canonicalOutput8356 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8357 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8357 : ExponentCode := normalNode8968

theorem canonicalSound8357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8357.moment H = canonicalOutput8357.moment H :=
  canonical_of_padded canonicalInput8357 canonicalOutput8357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8358 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8358 : ExponentCode := normalNode8968

theorem canonicalSound8358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8358.moment H = canonicalOutput8358.moment H :=
  canonical_of_padded canonicalInput8358 canonicalOutput8358 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8359 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8359 : ExponentCode := normalNode9882

theorem canonicalSound8359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8359.moment H = canonicalOutput8359.moment H :=
  canonical_of_padded canonicalInput8359 canonicalOutput8359 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8360 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8360 : ExponentCode := normalNode9910

theorem canonicalSound8360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8360.moment H = canonicalOutput8360.moment H :=
  canonical_of_padded canonicalInput8360 canonicalOutput8360 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8361 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8361 : ExponentCode := normalNode9882

theorem canonicalSound8361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8361.moment H = canonicalOutput8361.moment H :=
  canonical_of_padded canonicalInput8361 canonicalOutput8361 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8362 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput8362 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound8362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8362.moment H = canonicalOutput8362.moment H :=
  canonical_of_padded canonicalInput8362 canonicalOutput8362 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8363 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 3, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput8363 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1166⟩

theorem canonicalSound8363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8363.moment H = canonicalOutput8363.moment H :=
  canonical_of_padded canonicalInput8363 canonicalOutput8363 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8364 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -3, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8364 : ExponentCode := normalNode3494

theorem canonicalSound8364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8364.moment H = canonicalOutput8364.moment H :=
  canonical_of_padded canonicalInput8364 canonicalOutput8364 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8365 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8365 : ExponentCode := normalNode4020

theorem canonicalSound8365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8365.moment H = canonicalOutput8365.moment H :=
  canonical_of_padded canonicalInput8365 canonicalOutput8365 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8366 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput8366 : ExponentCode := normalNode3966

theorem canonicalSound8366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8366.moment H = canonicalOutput8366.moment H :=
  canonical_of_padded canonicalInput8366 canonicalOutput8366 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8367 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput8367 : ExponentCode := normalNode3903

theorem canonicalSound8367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8367.moment H = canonicalOutput8367.moment H :=
  canonical_of_padded canonicalInput8367 canonicalOutput8367 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8368 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code961

theorem canonicalSound8368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8368.moment H = canonicalOutput8368.moment H :=
  canonical_of_padded canonicalInput8368 canonicalOutput8368 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8369 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8369 : ExponentCode := normalNode4312

theorem canonicalSound8369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8369.moment H = canonicalOutput8369.moment H :=
  canonical_of_padded canonicalInput8369 canonicalOutput8369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8370 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput8370 : ExponentCode := normalNode4311

theorem canonicalSound8370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8370.moment H = canonicalOutput8370.moment H :=
  canonical_of_padded canonicalInput8370 canonicalOutput8370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8371 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput8371 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound8371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8371.moment H = canonicalOutput8371.moment H :=
  canonical_of_padded canonicalInput8371 canonicalOutput8371 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8372 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8372 : ExponentCode := normalNode8970

theorem canonicalSound8372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8372.moment H = canonicalOutput8372.moment H :=
  canonical_of_padded canonicalInput8372 canonicalOutput8372 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8373 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8373 : ExponentCode := normalNode3965

theorem canonicalSound8373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8373.moment H = canonicalOutput8373.moment H :=
  canonical_of_padded canonicalInput8373 canonicalOutput8373 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8374 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput8374 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound8374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8374.moment H = canonicalOutput8374.moment H :=
  canonical_of_padded canonicalInput8374 canonicalOutput8374 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8375 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3419step0⟩

def canonicalOutput8375 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound8375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8375.moment H = canonicalOutput8375.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3419step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3419step0 = OAI.MUB6.Certificate.PairSemantics.raw3419.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3419).trans (OAI.MUB6.Certificate.PairSemantics.canonical3419 hH)

def canonicalInput8376 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8376 : ExponentCode := normalNode1828

theorem canonicalSound8376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8376.moment H = canonicalOutput8376.moment H :=
  canonical_of_padded canonicalInput8376 canonicalOutput8376 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8377 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8377 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound8377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8377.moment H = canonicalOutput8377.moment H :=
  canonical_of_padded canonicalInput8377 canonicalOutput8377 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8378 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput8378 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound8378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8378.moment H = canonicalOutput8378.moment H :=
  canonical_of_padded canonicalInput8378 canonicalOutput8378 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8379 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8379 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1906⟩

theorem canonicalSound8379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8379.moment H = canonicalOutput8379.moment H :=
  canonical_of_padded canonicalInput8379 canonicalOutput8379 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8380 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8380 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1913⟩

theorem canonicalSound8380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8380.moment H = canonicalOutput8380.moment H :=
  canonical_of_padded canonicalInput8380 canonicalOutput8380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8381 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 3, -2, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput8381 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound8381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8381.moment H = canonicalOutput8381.moment H :=
  canonical_of_padded canonicalInput8381 canonicalOutput8381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8382 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput8382 : ExponentCode := normalNode5288

theorem canonicalSound8382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8382.moment H = canonicalOutput8382.moment H :=
  canonical_of_padded canonicalInput8382 canonicalOutput8382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8383 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 3, 0, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8383 : ExponentCode := normalNode5305

theorem canonicalSound8383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8383.moment H = canonicalOutput8383.moment H :=
  canonical_of_padded canonicalInput8383 canonicalOutput8383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

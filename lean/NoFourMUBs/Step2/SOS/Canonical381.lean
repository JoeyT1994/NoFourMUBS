import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24384 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![1, 4, -5]]⟩

def canonicalOutput24384 : ExponentCode := normalNode5596

theorem canonicalSound24384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24384.moment H = canonicalOutput24384.moment H :=
  canonical_of_padded canonicalInput24384 canonicalOutput24384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24385 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, 0, -2], ![-3, 4, -1]]⟩

def canonicalOutput24385 : ExponentCode := normalNode125

theorem canonicalSound24385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24385.moment H = canonicalOutput24385.moment H :=
  canonical_of_padded canonicalInput24385 canonicalOutput24385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24386 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![3, -1, -2]]⟩

def canonicalOutput24386 : ExponentCode := normalNode204

theorem canonicalSound24386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24386.moment H = canonicalOutput24386.moment H :=
  canonical_of_padded canonicalInput24386 canonicalOutput24386 (by decide) (by decide)
    ⟨false, false, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24387 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput24387 : ExponentCode := normalNode994

theorem canonicalSound24387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24387.moment H = canonicalOutput24387.moment H :=
  canonical_of_padded canonicalInput24387 canonicalOutput24387 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24388 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput24388 : ExponentCode := normalNode3017

theorem canonicalSound24388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24388.moment H = canonicalOutput24388.moment H :=
  canonical_of_padded canonicalInput24388 canonicalOutput24388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24389 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput24389 : ExponentCode := normalNode4618

theorem canonicalSound24389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24389.moment H = canonicalOutput24389.moment H :=
  canonical_of_padded canonicalInput24389 canonicalOutput24389 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24390 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![0, 3, -3]]⟩

def canonicalOutput24390 : ExponentCode := normalNode4619

theorem canonicalSound24390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24390.moment H = canonicalOutput24390.moment H :=
  canonical_of_padded canonicalInput24390 canonicalOutput24390 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24391 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 2, -1], ![2, 1, -3]]⟩

def canonicalOutput24391 : ExponentCode := normalNode2994

theorem canonicalSound24391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24391.moment H = canonicalOutput24391.moment H :=
  canonical_of_padded canonicalInput24391 canonicalOutput24391 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24392 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput24392 : ExponentCode := normalNode5598

theorem canonicalSound24392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24392.moment H = canonicalOutput24392.moment H :=
  canonical_of_padded canonicalInput24392 canonicalOutput24392 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24393 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, 0, -2], ![-1, 3, -2]]⟩

def canonicalOutput24393 : ExponentCode := normalNode4596

theorem canonicalSound24393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24393.moment H = canonicalOutput24393.moment H :=
  canonical_of_padded canonicalInput24393 canonicalOutput24393 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24394 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![0, 5, -5]]⟩

def canonicalOutput24394 : ExponentCode := normalNode4620

theorem canonicalSound24394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24394.moment H = canonicalOutput24394.moment H :=
  canonical_of_padded canonicalInput24394 canonicalOutput24394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24395 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-3, 1, 2], ![1, 3, -4]]⟩

def canonicalOutput24395 : ExponentCode := normalNode195

theorem canonicalSound24395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24395.moment H = canonicalOutput24395.moment H :=
  canonical_of_padded canonicalInput24395 canonicalOutput24395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24396 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-3, 2, 1], ![1, 2, -3]]⟩

def canonicalOutput24396 : ExponentCode := normalNode226

theorem canonicalSound24396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24396.moment H = canonicalOutput24396.moment H :=
  canonical_of_padded canonicalInput24396 canonicalOutput24396 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24397 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![-3, 1, 2], ![1, 2, -3]]⟩

def canonicalOutput24397 : ExponentCode := normalNode196

theorem canonicalSound24397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24397.moment H = canonicalOutput24397.moment H :=
  canonical_of_padded canonicalInput24397 canonicalOutput24397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24398 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2], ![-3, 2, 1]]⟩

def canonicalOutput24398 : ExponentCode := normalNode228

theorem canonicalSound24398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24398.moment H = canonicalOutput24398.moment H :=
  canonical_of_padded canonicalInput24398 canonicalOutput24398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24399 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput24399 : ExponentCode := normalNode3018

theorem canonicalSound24399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24399.moment H = canonicalOutput24399.moment H :=
  canonical_of_padded canonicalInput24399 canonicalOutput24399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24400 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 0, 0], ![0, 0, 0], ![0, 0, 0], ![0, 0, 0], ![0, 2, -2]]⟩

def canonicalOutput24400 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound24400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24400.moment H = canonicalOutput24400.moment H :=
  canonical_of_padded canonicalInput24400 canonicalOutput24400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24401 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 0, 0], ![0, 0, 0], ![0, 0, 0], ![0, 1, -1], ![0, 1, -1]]⟩

def canonicalOutput24401 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound24401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24401.moment H = canonicalOutput24401.moment H :=
  canonical_of_padded canonicalInput24401 canonicalOutput24401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24402 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 0, 0], ![0, 2, -2], ![0, -1, 1], ![0, 0, 0], ![0, 1, -1]]⟩

def canonicalOutput24402 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound24402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24402.moment H = canonicalOutput24402.moment H :=
  canonical_of_padded canonicalInput24402 canonicalOutput24402 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24403 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![0, 1, -1], ![1, 0, -1], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput24403 : ExponentCode := normalNode983

theorem canonicalSound24403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24403.moment H = canonicalOutput24403.moment H :=
  canonical_of_padded canonicalInput24403 canonicalOutput24403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24404 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-2, -1, 3], ![2, 1, -3]]⟩

def canonicalOutput24404 : ExponentCode := normalNode2991

theorem canonicalSound24404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24404.moment H = canonicalOutput24404.moment H :=
  canonical_of_padded canonicalInput24404 canonicalOutput24404 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24405 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-1, -2, 3], ![1, 2, -3]]⟩

def canonicalOutput24405 : ExponentCode := normalNode7134

theorem canonicalSound24405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24405.moment H = canonicalOutput24405.moment H :=
  canonical_of_padded canonicalInput24405 canonicalOutput24405 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24406 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-3, 0, 3], ![1, 3, -4]]⟩

def canonicalOutput24406 : ExponentCode := normalNode155

theorem canonicalSound24406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24406.moment H = canonicalOutput24406.moment H :=
  canonical_of_padded canonicalInput24406 canonicalOutput24406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24407 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput24407 : ExponentCode := normalNode3019

theorem canonicalSound24407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24407.moment H = canonicalOutput24407.moment H :=
  canonical_of_padded canonicalInput24407 canonicalOutput24407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24408 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput24408 : ExponentCode := normalNode6277

theorem canonicalSound24408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24408.moment H = canonicalOutput24408.moment H :=
  canonical_of_padded canonicalInput24408 canonicalOutput24408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24409 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![-2, 0, 2], ![2, -2, 0], ![-1, 3, -2]]⟩

def canonicalOutput24409 : ExponentCode := normalNode4592

theorem canonicalSound24409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24409.moment H = canonicalOutput24409.moment H :=
  canonical_of_padded canonicalInput24409 canonicalOutput24409 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24410 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![2, 1, -3]]⟩

def canonicalOutput24410 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1851⟩

theorem canonicalSound24410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24410.moment H = canonicalOutput24410.moment H :=
  canonical_of_padded canonicalInput24410 canonicalOutput24410 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24411 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![0, 3, -3], ![1, -3, 2]]⟩

def canonicalOutput24411 : ExponentCode := normalNode5586

theorem canonicalSound24411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24411.moment H = canonicalOutput24411.moment H :=
  canonical_of_padded canonicalInput24411 canonicalOutput24411 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24412 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![-1, 2, -1], ![1, 1, -2], ![-1, -2, 3]]⟩

def canonicalOutput24412 : ExponentCode := normalNode7136

theorem canonicalSound24412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24412.moment H = canonicalOutput24412.moment H :=
  canonical_of_padded canonicalInput24412 canonicalOutput24412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24413 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput24413 : ExponentCode := normalNode999

theorem canonicalSound24413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24413.moment H = canonicalOutput24413.moment H :=
  canonical_of_padded canonicalInput24413 canonicalOutput24413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24414 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-2, -2, 4]]⟩

def canonicalOutput24414 : ExponentCode := normalNode986

theorem canonicalSound24414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24414.moment H = canonicalOutput24414.moment H :=
  canonical_of_padded canonicalInput24414 canonicalOutput24414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24415 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![-1, 2, -1], ![1, 2, -3]]⟩

def canonicalOutput24415 : ExponentCode := normalNode4600

theorem canonicalSound24415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24415.moment H = canonicalOutput24415.moment H :=
  canonical_of_padded canonicalInput24415 canonicalOutput24415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24416 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![-1, 3, -2]]⟩

def canonicalOutput24416 : ExponentCode := normalNode4604

theorem canonicalSound24416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24416.moment H = canonicalOutput24416.moment H :=
  canonical_of_padded canonicalInput24416 canonicalOutput24416 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24417 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 3, -4]]⟩

def canonicalOutput24417 : ExponentCode := normalNode5558

theorem canonicalSound24417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24417.moment H = canonicalOutput24417.moment H :=
  canonical_of_padded canonicalInput24417 canonicalOutput24417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24418 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![-1, 4, -3]]⟩

def canonicalOutput24418 : ExponentCode := normalNode3009

theorem canonicalSound24418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24418.moment H = canonicalOutput24418.moment H :=
  canonical_of_padded canonicalInput24418 canonicalOutput24418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24419 : ExponentCode := ⟨6, 3, ![![0, -2, 2], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-1, -2, 3], ![-2, 4, -2]]⟩

def canonicalOutput24419 : ExponentCode := normalNode5970

theorem canonicalSound24419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24419.moment H = canonicalOutput24419.moment H :=
  canonical_of_padded canonicalInput24419 canonicalOutput24419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24420 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-5, 2, 1, 2], ![5, 0, -3, -2]]⟩

def canonicalOutput24420 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code693

theorem canonicalSound24420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24420.moment H = canonicalOutput24420.moment H :=
  canonical_of_padded canonicalInput24420 canonicalOutput24420 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24421 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-5, 3, 0, 2], ![5, -1, -2, -2]]⟩

def canonicalOutput24421 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code693

theorem canonicalSound24421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24421.moment H = canonicalOutput24421.moment H :=
  canonical_of_padded canonicalInput24421 canonicalOutput24421 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24422 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-4, 0, 2, 2], ![4, 2, -4, -2]]⟩

def canonicalOutput24422 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code235

theorem canonicalSound24422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24422.moment H = canonicalOutput24422.moment H :=
  canonical_of_padded canonicalInput24422 canonicalOutput24422 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24423 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-4, 1, 1, 2], ![4, 1, -3, -2]]⟩

def canonicalOutput24423 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound24423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24423.moment H = canonicalOutput24423.moment H :=
  canonical_of_padded canonicalInput24423 canonicalOutput24423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24424 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-4, 2, 1, 1], ![4, 0, -3, -1]]⟩

def canonicalOutput24424 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node171⟩

theorem canonicalSound24424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24424.moment H = canonicalOutput24424.moment H :=
  canonical_of_padded canonicalInput24424 canonicalOutput24424 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24425 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-4, 3, 0, 1], ![4, -1, -2, -1]]⟩

def canonicalOutput24425 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node171⟩

theorem canonicalSound24425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24425.moment H = canonicalOutput24425.moment H :=
  canonical_of_padded canonicalInput24425 canonicalOutput24425 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24426 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-3, 0, 2, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput24426 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node141⟩

theorem canonicalSound24426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24426.moment H = canonicalOutput24426.moment H :=
  canonical_of_padded canonicalInput24426 canonicalOutput24426 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24427 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-3, 1, 1, 1], ![3, 1, -3, -1]]⟩

def canonicalOutput24427 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node170⟩

theorem canonicalSound24427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24427.moment H = canonicalOutput24427.moment H :=
  canonical_of_padded canonicalInput24427 canonicalOutput24427 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24428 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-3, 1, 3, -1], ![3, 1, -5, 1]]⟩

def canonicalOutput24428 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound24428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24428.moment H = canonicalOutput24428.moment H :=
  canonical_of_padded canonicalInput24428 canonicalOutput24428 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24429 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-3, 3, 1, -1], ![3, -1, -3, 1]]⟩

def canonicalOutput24429 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node178⟩

theorem canonicalSound24429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24429.moment H = canonicalOutput24429.moment H :=
  canonical_of_padded canonicalInput24429 canonicalOutput24429 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24430 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-2, -2, 2, 2], ![2, 4, -4, -2]]⟩

def canonicalOutput24430 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code233

theorem canonicalSound24430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24430.moment H = canonicalOutput24430.moment H :=
  canonical_of_padded canonicalInput24430 canonicalOutput24430 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24431 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-2, 1, 3, -2], ![2, 1, -5, 2]]⟩

def canonicalOutput24431 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node125⟩

theorem canonicalSound24431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24431.moment H = canonicalOutput24431.moment H :=
  canonical_of_padded canonicalInput24431 canonicalOutput24431 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24432 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-2, 3, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput24432 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node182⟩

theorem canonicalSound24432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24432.moment H = canonicalOutput24432.moment H :=
  canonical_of_padded canonicalInput24432 canonicalOutput24432 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24433 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-1, -2, 2, 1], ![1, 4, -4, -1]]⟩

def canonicalOutput24433 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound24433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24433.moment H = canonicalOutput24433.moment H :=
  canonical_of_padded canonicalInput24433 canonicalOutput24433 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24434 : ExponentCode := ⟨4, 4, ![![0, -2, 2, 0], ![-1, 1, -3, 3], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24434 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound24434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24434.moment H = canonicalOutput24434.moment H :=
  canonical_of_padded canonicalInput24434 canonicalOutput24434 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24435 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![-1, 1, 3, -3], ![1, 1, -5, 3]]⟩

def canonicalOutput24435 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound24435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24435.moment H = canonicalOutput24435.moment H :=
  canonical_of_padded canonicalInput24435 canonicalOutput24435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24436 : ExponentCode := ⟨4, 4, ![![0, -2, 2, 0], ![-1, 3, 1, -3], ![0, -1, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput24436 : ExponentCode := normalNode6121

theorem canonicalSound24436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24436.moment H = canonicalOutput24436.moment H :=
  canonical_of_padded canonicalInput24436 canonicalOutput24436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24437 : ExponentCode := ⟨4, 4, ![![0, -2, 2, 0], ![-1, 3, 1, -3], ![0, 0, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput24437 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node726⟩

theorem canonicalSound24437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24437.moment H = canonicalOutput24437.moment H :=
  canonical_of_padded canonicalInput24437 canonicalOutput24437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24438 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![0, 0, -3, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput24438 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound24438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24438.moment H = canonicalOutput24438.moment H :=
  canonical_of_padded canonicalInput24438 canonicalOutput24438 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24439 : ExponentCode := ⟨4, 4, ![![0, -2, 2, 0], ![0, 1, -3, 2], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound24439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24439.moment H = canonicalOutput24439.moment H :=
  canonical_of_padded canonicalInput24439 canonicalOutput24439 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24440 : ExponentCode := ⟨4, 4, ![![0, -2, 2, 0], ![0, 1, -3, 2], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24440 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24440.moment H = canonicalOutput24440.moment H :=
  canonical_of_padded canonicalInput24440 canonicalOutput24440 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24441 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![1, -2, 2, -1], ![-1, 4, -4, 1]]⟩

def canonicalOutput24441 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound24441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24441.moment H = canonicalOutput24441.moment H :=
  canonical_of_padded canonicalInput24441 canonicalOutput24441 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24442 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![1, -1, 2, -2], ![-1, 3, -4, 2]]⟩

def canonicalOutput24442 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound24442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24442.moment H = canonicalOutput24442.moment H :=
  canonical_of_padded canonicalInput24442 canonicalOutput24442 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24443 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![1, 0, 2, -3], ![-1, 2, -4, 3]]⟩

def canonicalOutput24443 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node141⟩

theorem canonicalSound24443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24443.moment H = canonicalOutput24443.moment H :=
  canonical_of_padded canonicalInput24443 canonicalOutput24443 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24444 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![2, -2, 2, -2], ![-2, 4, -4, 2]]⟩

def canonicalOutput24444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code233

theorem canonicalSound24444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24444.moment H = canonicalOutput24444.moment H :=
  canonical_of_padded canonicalInput24444 canonicalOutput24444 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24445 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![2, -1, 2, -3], ![-2, 3, -4, 3]]⟩

def canonicalOutput24445 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code234

theorem canonicalSound24445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24445.moment H = canonicalOutput24445.moment H :=
  canonical_of_padded canonicalInput24445 canonicalOutput24445 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24446 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![2, 0, 2, -4], ![-2, 2, -4, 4]]⟩

def canonicalOutput24446 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code235

theorem canonicalSound24446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24446.moment H = canonicalOutput24446.moment H :=
  canonical_of_padded canonicalInput24446 canonicalOutput24446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24447 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![2, 1, 0, -3], ![-2, 1, -2, 3]]⟩

def canonicalOutput24447 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound24447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24447.moment H = canonicalOutput24447.moment H :=
  canonical_of_padded canonicalInput24447 canonicalOutput24447 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

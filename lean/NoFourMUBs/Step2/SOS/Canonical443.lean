import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28352 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![1, -3, 2, 0]]⟩

def canonicalOutput28352 : ExponentCode := normalNode3481

theorem canonicalSound28352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28352.moment H = canonicalOutput28352.moment H :=
  canonical_of_padded canonicalInput28352 canonicalOutput28352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28353 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28353 : ExponentCode := normalNode3442

theorem canonicalSound28353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28353.moment H = canonicalOutput28353.moment H :=
  canonical_of_padded canonicalInput28353 canonicalOutput28353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28354 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput28354 : ExponentCode := normalNode10857

theorem canonicalSound28354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28354.moment H = canonicalOutput28354.moment H :=
  canonical_of_padded canonicalInput28354 canonicalOutput28354 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28355 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput28355 : ExponentCode := normalNode10696

theorem canonicalSound28355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28355.moment H = canonicalOutput28355.moment H :=
  canonical_of_padded canonicalInput28355 canonicalOutput28355 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28356 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-2, 2, 2, -2]]⟩

def canonicalOutput28356 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3255⟩

theorem canonicalSound28356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28356.moment H = canonicalOutput28356.moment H :=
  canonical_of_padded canonicalInput28356 canonicalOutput28356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28357 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28357 : ExponentCode := normalNode2728

theorem canonicalSound28357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28357.moment H = canonicalOutput28357.moment H :=
  canonical_of_padded canonicalInput28357 canonicalOutput28357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28358 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28358 : ExponentCode := normalNode2732

theorem canonicalSound28358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28358.moment H = canonicalOutput28358.moment H :=
  canonical_of_padded canonicalInput28358 canonicalOutput28358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28359 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28359 : ExponentCode := normalNode806

theorem canonicalSound28359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28359.moment H = canonicalOutput28359.moment H :=
  canonical_of_padded canonicalInput28359 canonicalOutput28359 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28360 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput28360 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3179⟩

theorem canonicalSound28360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28360.moment H = canonicalOutput28360.moment H :=
  canonical_of_padded canonicalInput28360 canonicalOutput28360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28361 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28361 : ExponentCode := normalNode4442

theorem canonicalSound28361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28361.moment H = canonicalOutput28361.moment H :=
  canonical_of_padded canonicalInput28361 canonicalOutput28361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28362 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![2, -3, 2, -1]]⟩

def canonicalOutput28362 : ExponentCode := normalNode678

theorem canonicalSound28362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28362.moment H = canonicalOutput28362.moment H :=
  canonical_of_padded canonicalInput28362 canonicalOutput28362 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28363 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, -3, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28363 : ExponentCode := normalNode4314

theorem canonicalSound28363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28363.moment H = canonicalOutput28363.moment H :=
  canonical_of_padded canonicalInput28363 canonicalOutput28363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28364 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput28364 : ExponentCode := normalNode5484

theorem canonicalSound28364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28364.moment H = canonicalOutput28364.moment H :=
  canonical_of_padded canonicalInput28364 canonicalOutput28364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28365 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 1, 2], ![-1, 2, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput28365 : ExponentCode := normalNode711

theorem canonicalSound28365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28365.moment H = canonicalOutput28365.moment H :=
  canonical_of_padded canonicalInput28365 canonicalOutput28365 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28366 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 1, 2], ![-1, 2, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput28366 : ExponentCode := normalNode2818

theorem canonicalSound28366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28366.moment H = canonicalOutput28366.moment H :=
  canonical_of_padded canonicalInput28366 canonicalOutput28366 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28367 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 1, 2], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28367 : ExponentCode := normalNode4544

theorem canonicalSound28367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28367.moment H = canonicalOutput28367.moment H :=
  canonical_of_padded canonicalInput28367 canonicalOutput28367 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28368 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput28368 : ExponentCode := normalNode9016

theorem canonicalSound28368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28368.moment H = canonicalOutput28368.moment H :=
  canonical_of_padded canonicalInput28368 canonicalOutput28368 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28369 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 0, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput28369 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3230⟩

theorem canonicalSound28369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28369.moment H = canonicalOutput28369.moment H :=
  canonical_of_padded canonicalInput28369 canonicalOutput28369 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28370 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput28370 : ExponentCode := normalNode5097

theorem canonicalSound28370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28370.moment H = canonicalOutput28370.moment H :=
  canonical_of_padded canonicalInput28370 canonicalOutput28370 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28371 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28371 : ExponentCode := normalNode936

theorem canonicalSound28371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28371.moment H = canonicalOutput28371.moment H :=
  canonical_of_padded canonicalInput28371 canonicalOutput28371 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28372 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 1, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput28372 : ExponentCode := normalNode2815

theorem canonicalSound28372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28372.moment H = canonicalOutput28372.moment H :=
  canonical_of_padded canonicalInput28372 canonicalOutput28372 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28373 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, -2, 0, 0], ![-1, 2, 2, -3]]⟩

def canonicalOutput28373 : ExponentCode := normalNode3905

theorem canonicalSound28373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28373.moment H = canonicalOutput28373.moment H :=
  canonical_of_padded canonicalInput28373 canonicalOutput28373 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28374 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, -1, 0, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput28374 : ExponentCode := normalNode5390

theorem canonicalSound28374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28374.moment H = canonicalOutput28374.moment H :=
  canonical_of_padded canonicalInput28374 canonicalOutput28374 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28375 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput28375 : ExponentCode := normalNode2733

theorem canonicalSound28375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28375.moment H = canonicalOutput28375.moment H :=
  canonical_of_padded canonicalInput28375 canonicalOutput28375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28376 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, -2, 1, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput28376 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3054⟩

theorem canonicalSound28376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28376.moment H = canonicalOutput28376.moment H :=
  canonical_of_padded canonicalInput28376 canonicalOutput28376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28377 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, -1, 0, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput28377 : ExponentCode := normalNode4734

theorem canonicalSound28377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28377.moment H = canonicalOutput28377.moment H :=
  canonical_of_padded canonicalInput28377 canonicalOutput28377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28378 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![2, -2, -1, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput28378 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3314⟩

theorem canonicalSound28378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28378.moment H = canonicalOutput28378.moment H :=
  canonical_of_padded canonicalInput28378 canonicalOutput28378 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28379 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 3, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput28379 : ExponentCode := normalNode10927

theorem canonicalSound28379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28379.moment H = canonicalOutput28379.moment H :=
  canonical_of_padded canonicalInput28379 canonicalOutput28379 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28380 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput28380 : ExponentCode := normalNode7175

theorem canonicalSound28380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28380.moment H = canonicalOutput28380.moment H :=
  canonical_of_padded canonicalInput28380 canonicalOutput28380 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28381 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -2, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28381 : ExponentCode := normalNode7013

theorem canonicalSound28381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28381.moment H = canonicalOutput28381.moment H :=
  canonical_of_padded canonicalInput28381 canonicalOutput28381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28382 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-2, -1, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput28382 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2446⟩

theorem canonicalSound28382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28382.moment H = canonicalOutput28382.moment H :=
  canonical_of_padded canonicalInput28382 canonicalOutput28382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28383 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-2, 0, 1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28383 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound28383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28383.moment H = canonicalOutput28383.moment H :=
  canonical_of_padded canonicalInput28383 canonicalOutput28383 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28384 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -2, 2, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput28384 : ExponentCode := normalNode828

theorem canonicalSound28384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28384.moment H = canonicalOutput28384.moment H :=
  canonical_of_padded canonicalInput28384 canonicalOutput28384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28385 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28385 : ExponentCode := normalNode2729

theorem canonicalSound28385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28385.moment H = canonicalOutput28385.moment H :=
  canonical_of_padded canonicalInput28385 canonicalOutput28385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28386 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput28386 : ExponentCode := normalNode7019

theorem canonicalSound28386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28386.moment H = canonicalOutput28386.moment H :=
  canonical_of_padded canonicalInput28386 canonicalOutput28386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28387 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -2, 1, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput28387 : ExponentCode := normalNode582

theorem canonicalSound28387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28387.moment H = canonicalOutput28387.moment H :=
  canonical_of_padded canonicalInput28387 canonicalOutput28387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28388 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -2, 2, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput28388 : ExponentCode := normalNode829

theorem canonicalSound28388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28388.moment H = canonicalOutput28388.moment H :=
  canonical_of_padded canonicalInput28388 canonicalOutput28388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28389 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, -1, 3, -4]]⟩

def canonicalOutput28389 : ExponentCode := normalNode1940

theorem canonicalSound28389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28389.moment H = canonicalOutput28389.moment H :=
  canonical_of_padded canonicalInput28389 canonicalOutput28389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28390 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput28390 : ExponentCode := normalNode2628

theorem canonicalSound28390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28390.moment H = canonicalOutput28390.moment H :=
  canonical_of_padded canonicalInput28390 canonicalOutput28390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28391 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput28391 : ExponentCode := normalNode2727

theorem canonicalSound28391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28391.moment H = canonicalOutput28391.moment H :=
  canonical_of_padded canonicalInput28391 canonicalOutput28391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28392 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28392 : ExponentCode := normalNode4442

theorem canonicalSound28392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28392.moment H = canonicalOutput28392.moment H :=
  canonical_of_padded canonicalInput28392 canonicalOutput28392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28393 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28393 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3098⟩

theorem canonicalSound28393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28393.moment H = canonicalOutput28393.moment H :=
  canonical_of_padded canonicalInput28393 canonicalOutput28393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28394 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28394 : ExponentCode := normalNode2467

theorem canonicalSound28394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28394.moment H = canonicalOutput28394.moment H :=
  canonical_of_padded canonicalInput28394 canonicalOutput28394 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28395 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -2, 1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput28395 : ExponentCode := normalNode6985

theorem canonicalSound28395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28395.moment H = canonicalOutput28395.moment H :=
  canonical_of_padded canonicalInput28395 canonicalOutput28395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28396 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput28396 : ExponentCode := normalNode9069

theorem canonicalSound28396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28396.moment H = canonicalOutput28396.moment H :=
  canonical_of_padded canonicalInput28396 canonicalOutput28396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28397 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, -1, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput28397 : ExponentCode := normalNode9732

theorem canonicalSound28397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28397.moment H = canonicalOutput28397.moment H :=
  canonical_of_padded canonicalInput28397 canonicalOutput28397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28398 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput28398 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3118⟩

theorem canonicalSound28398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28398.moment H = canonicalOutput28398.moment H :=
  canonical_of_padded canonicalInput28398 canonicalOutput28398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28399 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28399 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2997⟩

theorem canonicalSound28399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28399.moment H = canonicalOutput28399.moment H :=
  canonical_of_padded canonicalInput28399 canonicalOutput28399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28400 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28400 : ExponentCode := normalNode632

theorem canonicalSound28400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28400.moment H = canonicalOutput28400.moment H :=
  canonical_of_padded canonicalInput28400 canonicalOutput28400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28401 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 2, -4], ![0, -3, 1, 2]]⟩

def canonicalOutput28401 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node362⟩

theorem canonicalSound28401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28401.moment H = canonicalOutput28401.moment H :=
  canonical_of_padded canonicalInput28401 canonicalOutput28401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28402 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28402 : ExponentCode := normalNode4715

theorem canonicalSound28402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28402.moment H = canonicalOutput28402.moment H :=
  canonical_of_padded canonicalInput28402 canonicalOutput28402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28403 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28403 : ExponentCode := normalNode5700

theorem canonicalSound28403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28403.moment H = canonicalOutput28403.moment H :=
  canonical_of_padded canonicalInput28403 canonicalOutput28403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28404 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, -1, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput28404 : ExponentCode := normalNode2953

theorem canonicalSound28404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28404.moment H = canonicalOutput28404.moment H :=
  canonical_of_padded canonicalInput28404 canonicalOutput28404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28405 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, -1, 3, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput28405 : ExponentCode := normalNode1999

theorem canonicalSound28405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28405.moment H = canonicalOutput28405.moment H :=
  canonical_of_padded canonicalInput28405 canonicalOutput28405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28406 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 0, 2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput28406 : ExponentCode := normalNode4066

theorem canonicalSound28406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28406.moment H = canonicalOutput28406.moment H :=
  canonical_of_padded canonicalInput28406 canonicalOutput28406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28407 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 0, 3, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput28407 : ExponentCode := normalNode3594

theorem canonicalSound28407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28407.moment H = canonicalOutput28407.moment H :=
  canonical_of_padded canonicalInput28407 canonicalOutput28407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28408 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 1, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput28408 : ExponentCode := normalNode5487

theorem canonicalSound28408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28408.moment H = canonicalOutput28408.moment H :=
  canonical_of_padded canonicalInput28408 canonicalOutput28408 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28409 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28409 : ExponentCode := normalNode5231

theorem canonicalSound28409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28409.moment H = canonicalOutput28409.moment H :=
  canonical_of_padded canonicalInput28409 canonicalOutput28409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28410 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28410 : ExponentCode := normalNode2731

theorem canonicalSound28410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28410.moment H = canonicalOutput28410.moment H :=
  canonical_of_padded canonicalInput28410 canonicalOutput28410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28411 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -2, 2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput28411 : ExponentCode := normalNode832

theorem canonicalSound28411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28411.moment H = canonicalOutput28411.moment H :=
  canonical_of_padded canonicalInput28411 canonicalOutput28411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28412 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput28412 : ExponentCode := normalNode1941

theorem canonicalSound28412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28412.moment H = canonicalOutput28412.moment H :=
  canonical_of_padded canonicalInput28412 canonicalOutput28412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28413 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput28413 : ExponentCode := normalNode2730

theorem canonicalSound28413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28413.moment H = canonicalOutput28413.moment H :=
  canonical_of_padded canonicalInput28413 canonicalOutput28413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28414 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput28414 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3394⟩

theorem canonicalSound28414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28414.moment H = canonicalOutput28414.moment H :=
  canonical_of_padded canonicalInput28414 canonicalOutput28414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28415 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 3, 0]]⟩

def canonicalOutput28415 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3001⟩

theorem canonicalSound28415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28415.moment H = canonicalOutput28415.moment H :=
  canonical_of_padded canonicalInput28415 canonicalOutput28415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

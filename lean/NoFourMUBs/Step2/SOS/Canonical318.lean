import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20352 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20352 : ExponentCode := normalNode1689

theorem canonicalSound20352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20352.moment H = canonicalOutput20352.moment H :=
  canonical_of_padded canonicalInput20352 canonicalOutput20352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20353 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput20353 : ExponentCode := normalNode3239

theorem canonicalSound20353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20353.moment H = canonicalOutput20353.moment H :=
  canonical_of_padded canonicalInput20353 canonicalOutput20353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20354 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput20354 : ExponentCode := normalNode3402

theorem canonicalSound20354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20354.moment H = canonicalOutput20354.moment H :=
  canonical_of_padded canonicalInput20354 canonicalOutput20354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20355 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput20355 : ExponentCode := normalNode1297

theorem canonicalSound20355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20355.moment H = canonicalOutput20355.moment H :=
  canonical_of_padded canonicalInput20355 canonicalOutput20355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20356 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput20356 : ExponentCode := normalNode7692

theorem canonicalSound20356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20356.moment H = canonicalOutput20356.moment H :=
  canonical_of_padded canonicalInput20356 canonicalOutput20356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20357 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput20357 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound20357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20357.moment H = canonicalOutput20357.moment H :=
  canonical_of_padded canonicalInput20357 canonicalOutput20357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20358 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 2, -3], ![0, 1, -2, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput20358 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound20358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20358.moment H = canonicalOutput20358.moment H :=
  canonical_of_padded canonicalInput20358 canonicalOutput20358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20359 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput20359 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound20359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20359.moment H = canonicalOutput20359.moment H :=
  canonical_of_padded canonicalInput20359 canonicalOutput20359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20360 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput20360 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1278⟩

theorem canonicalSound20360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20360.moment H = canonicalOutput20360.moment H :=
  canonical_of_padded canonicalInput20360 canonicalOutput20360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20361 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput20361 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node940⟩

theorem canonicalSound20361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20361.moment H = canonicalOutput20361.moment H :=
  canonical_of_padded canonicalInput20361 canonicalOutput20361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20362 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput20362 : ExponentCode := normalNode10359

theorem canonicalSound20362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20362.moment H = canonicalOutput20362.moment H :=
  canonical_of_padded canonicalInput20362 canonicalOutput20362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20363 : ExponentCode := ⟨3, 4, ![![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -2, -2, 3]]⟩

def canonicalOutput20363 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound20363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20363.moment H = canonicalOutput20363.moment H :=
  canonical_of_padded canonicalInput20363 canonicalOutput20363 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20364 : ExponentCode := ⟨3, 4, ![![-1, 0, -1, 2], ![1, -2, -2, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput20364 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound20364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20364.moment H = canonicalOutput20364.moment H :=
  canonical_of_padded canonicalInput20364 canonicalOutput20364 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20365 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![1, -2, 0, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput20365 : ExponentCode := normalNode10346

theorem canonicalSound20365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20365.moment H = canonicalOutput20365.moment H :=
  canonical_of_padded canonicalInput20365 canonicalOutput20365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20366 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 0, 1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput20366 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound20366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20366.moment H = canonicalOutput20366.moment H :=
  canonical_of_padded canonicalInput20366 canonicalOutput20366 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20367 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 0, 1], ![0, 0, 3, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput20367 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound20367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20367.moment H = canonicalOutput20367.moment H :=
  canonical_of_padded canonicalInput20367 canonicalOutput20367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20368 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 1, 0], ![0, 0, 2, -2], ![0, 2, -2, 0]]⟩

def canonicalOutput20368 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound20368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20368.moment H = canonicalOutput20368.moment H :=
  canonical_of_padded canonicalInput20368 canonicalOutput20368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20369 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 1, 0], ![0, 1, -2, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput20369 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound20369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20369.moment H = canonicalOutput20369.moment H :=
  canonical_of_padded canonicalInput20369 canonicalOutput20369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20370 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 2, -1], ![0, 0, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput20370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound20370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20370.moment H = canonicalOutput20370.moment H :=
  canonical_of_padded canonicalInput20370 canonicalOutput20370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20371 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 2, -1], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput20371 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound20371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20371.moment H = canonicalOutput20371.moment H :=
  canonical_of_padded canonicalInput20371 canonicalOutput20371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20372 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -2, 3, -2], ![0, 0, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput20372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1255⟩

theorem canonicalSound20372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20372.moment H = canonicalOutput20372.moment H :=
  canonical_of_padded canonicalInput20372 canonicalOutput20372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20373 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![1, -1, -2, 2], ![0, -1, 2, -1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput20373 : ExponentCode := normalNode10299

theorem canonicalSound20373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20373.moment H = canonicalOutput20373.moment H :=
  canonical_of_padded canonicalInput20373 canonicalOutput20373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20374 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -1, -2, 2], ![0, -1, 3, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput20374 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound20374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20374.moment H = canonicalOutput20374.moment H :=
  canonical_of_padded canonicalInput20374 canonicalOutput20374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20375 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -1, -2, 2], ![0, -1, 4, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput20375 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1251⟩

theorem canonicalSound20375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20375.moment H = canonicalOutput20375.moment H :=
  canonical_of_padded canonicalInput20375 canonicalOutput20375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20376 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![1, -1, -1, 1], ![0, -1, 3, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput20376 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound20376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20376.moment H = canonicalOutput20376.moment H :=
  canonical_of_padded canonicalInput20376 canonicalOutput20376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20377 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20377 : ExponentCode := normalNode9460

theorem canonicalSound20377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20377.moment H = canonicalOutput20377.moment H :=
  canonical_of_padded canonicalInput20377 canonicalOutput20377 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20378 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, -1, -2, 3], ![0, 1, 0, 0, -1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput20378 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2703⟩

theorem canonicalSound20378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20378.moment H = canonicalOutput20378.moment H :=
  canonical_of_padded canonicalInput20378 canonicalOutput20378 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20379 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, -1, -1, 2], ![0, 0, 2, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20379 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound20379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20379.moment H = canonicalOutput20379.moment H :=
  canonical_of_padded canonicalInput20379 canonicalOutput20379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20380 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, -1, 0], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput20380 : ExponentCode := normalNode9550

theorem canonicalSound20380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20380.moment H = canonicalOutput20380.moment H :=
  canonical_of_padded canonicalInput20380 canonicalOutput20380 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20381 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput20381 : ExponentCode := normalNode10532

theorem canonicalSound20381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20381.moment H = canonicalOutput20381.moment H :=
  canonical_of_padded canonicalInput20381 canonicalOutput20381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20382 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20382 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound20382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20382.moment H = canonicalOutput20382.moment H :=
  canonical_of_padded canonicalInput20382 canonicalOutput20382 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20383 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, 2, 0, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20383 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound20383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20383.moment H = canonicalOutput20383.moment H :=
  canonical_of_padded canonicalInput20383 canonicalOutput20383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20384 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20384 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound20384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20384.moment H = canonicalOutput20384.moment H :=
  canonical_of_padded canonicalInput20384 canonicalOutput20384 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20385 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20385 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound20385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20385.moment H = canonicalOutput20385.moment H :=
  canonical_of_padded canonicalInput20385 canonicalOutput20385 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20386 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 2, 0], ![0, 1, -1, -1, 1], ![0, 0, 2, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20386 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound20386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20386.moment H = canonicalOutput20386.moment H :=
  canonical_of_padded canonicalInput20386 canonicalOutput20386 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20387 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20387 : ExponentCode := normalNode8059

theorem canonicalSound20387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20387.moment H = canonicalOutput20387.moment H :=
  canonical_of_padded canonicalInput20387 canonicalOutput20387 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput20388 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput20388 : ExponentCode := normalNode4088

theorem canonicalSound20388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20388.moment H = canonicalOutput20388.moment H :=
  canonical_of_padded canonicalInput20388 canonicalOutput20388 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20389 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 0, 2, -1], ![1, 0, 2, -1, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput20389 : ExponentCode := normalNode2715

theorem canonicalSound20389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20389.moment H = canonicalOutput20389.moment H :=
  canonical_of_padded canonicalInput20389 canonicalOutput20389 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20390 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 0, 3, -2], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput20390 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2175⟩

theorem canonicalSound20390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20390.moment H = canonicalOutput20390.moment H :=
  canonical_of_padded canonicalInput20390 canonicalOutput20390 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput20391 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 0, 3, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20391 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2773⟩

theorem canonicalSound20391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20391.moment H = canonicalOutput20391.moment H :=
  canonical_of_padded canonicalInput20391 canonicalOutput20391 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20392 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 0, 3, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20392 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩

theorem canonicalSound20392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20392.moment H = canonicalOutput20392.moment H :=
  canonical_of_padded canonicalInput20392 canonicalOutput20392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20393 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20393 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2534⟩

theorem canonicalSound20393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20393.moment H = canonicalOutput20393.moment H :=
  canonical_of_padded canonicalInput20393 canonicalOutput20393 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput20394 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20394 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2536⟩

theorem canonicalSound20394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20394.moment H = canonicalOutput20394.moment H :=
  canonical_of_padded canonicalInput20394 canonicalOutput20394 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20395 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 1, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20395 : ExponentCode := normalNode9917

theorem canonicalSound20395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20395.moment H = canonicalOutput20395.moment H :=
  canonical_of_padded canonicalInput20395 canonicalOutput20395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput20396 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 1, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20396 : ExponentCode := normalNode10642

theorem canonicalSound20396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20396.moment H = canonicalOutput20396.moment H :=
  canonical_of_padded canonicalInput20396 canonicalOutput20396 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20397 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 1, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20397 : ExponentCode := normalNode9918

theorem canonicalSound20397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20397.moment H = canonicalOutput20397.moment H :=
  canonical_of_padded canonicalInput20397 canonicalOutput20397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20398 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![0, 0, -2, 2, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput20398 : ExponentCode := normalNode5210

theorem canonicalSound20398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20398.moment H = canonicalOutput20398.moment H :=
  canonical_of_padded canonicalInput20398 canonicalOutput20398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20399 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![0, 0, -2, 3, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput20399 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩

theorem canonicalSound20399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20399.moment H = canonicalOutput20399.moment H :=
  canonical_of_padded canonicalInput20399 canonicalOutput20399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput20400 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![0, 0, -1, 3, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput20400 : ExponentCode := normalNode5402

theorem canonicalSound20400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20400.moment H = canonicalOutput20400.moment H :=
  canonical_of_padded canonicalInput20400 canonicalOutput20400 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20401 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput20401 : ExponentCode := normalNode3471

theorem canonicalSound20401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20401.moment H = canonicalOutput20401.moment H :=
  canonical_of_padded canonicalInput20401 canonicalOutput20401 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20402 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![0, 1, -2, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20402 : ExponentCode := normalNode10821

theorem canonicalSound20402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20402.moment H = canonicalOutput20402.moment H :=
  canonical_of_padded canonicalInput20402 canonicalOutput20402 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20403 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![0, 1, -1, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20403 : ExponentCode := normalNode5404

theorem canonicalSound20403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20403.moment H = canonicalOutput20403.moment H :=
  canonical_of_padded canonicalInput20403 canonicalOutput20403 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20404 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![1, 0, -2, 2, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput20404 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1957⟩

theorem canonicalSound20404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20404.moment H = canonicalOutput20404.moment H :=
  canonical_of_padded canonicalInput20404 canonicalOutput20404 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput20405 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, -1, 0], ![1, 0, 0, 2, -3], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput20405 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2370⟩

theorem canonicalSound20405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20405.moment H = canonicalOutput20405.moment H :=
  canonical_of_padded canonicalInput20405 canonicalOutput20405 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput20406 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput20406 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound20406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20406.moment H = canonicalOutput20406.moment H :=
  canonical_of_padded canonicalInput20406 canonicalOutput20406 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20407 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound20407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20407.moment H = canonicalOutput20407.moment H :=
  canonical_of_padded canonicalInput20407 canonicalOutput20407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20408 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, -2, 2, 0], ![0, 1, 2, -1, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20408 : ExponentCode := normalNode2398

theorem canonicalSound20408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20408.moment H = canonicalOutput20408.moment H :=
  canonical_of_padded canonicalInput20408 canonicalOutput20408 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20409 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20409 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound20409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20409.moment H = canonicalOutput20409.moment H :=
  canonical_of_padded canonicalInput20409 canonicalOutput20409 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20410 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, -1, 1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20410 : ExponentCode := normalNode10371

theorem canonicalSound20410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20410.moment H = canonicalOutput20410.moment H :=
  canonical_of_padded canonicalInput20410 canonicalOutput20410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20411 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 0, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20411 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound20411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20411.moment H = canonicalOutput20411.moment H :=
  canonical_of_padded canonicalInput20411 canonicalOutput20411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20412 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20412 : ExponentCode := normalNode9917

theorem canonicalSound20412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20412.moment H = canonicalOutput20412.moment H :=
  canonical_of_padded canonicalInput20412 canonicalOutput20412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20413 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20413 : ExponentCode := normalNode10372

theorem canonicalSound20413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20413.moment H = canonicalOutput20413.moment H :=
  canonical_of_padded canonicalInput20413 canonicalOutput20413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20414 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20414 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound20414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20414.moment H = canonicalOutput20414.moment H :=
  canonical_of_padded canonicalInput20414 canonicalOutput20414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20415 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![0, 0, -1, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20415 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2701⟩

theorem canonicalSound20415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20415.moment H = canonicalOutput20415.moment H :=
  canonical_of_padded canonicalInput20415 canonicalOutput20415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

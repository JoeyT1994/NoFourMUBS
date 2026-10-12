import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10368 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, -1, 2, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound10368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10368.moment H = canonicalOutput10368.moment H :=
  canonical_of_padded canonicalInput10368 canonicalOutput10368 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10369 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -3, 1, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10369 : ExponentCode := normalNode4209

theorem canonicalSound10369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10369.moment H = canonicalOutput10369.moment H :=
  canonical_of_padded canonicalInput10369 canonicalOutput10369 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10370 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -3, 1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10370 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound10370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10370.moment H = canonicalOutput10370.moment H :=
  canonical_of_padded canonicalInput10370 canonicalOutput10370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10371 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10371 : ExponentCode := normalNode4495

theorem canonicalSound10371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10371.moment H = canonicalOutput10371.moment H :=
  canonical_of_padded canonicalInput10371 canonicalOutput10371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10372 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -3, 1, 2], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput10372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound10372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10372.moment H = canonicalOutput10372.moment H :=
  canonical_of_padded canonicalInput10372 canonicalOutput10372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10373 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -3, 1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10373 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound10373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10373.moment H = canonicalOutput10373.moment H :=
  canonical_of_padded canonicalInput10373 canonicalOutput10373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10374 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -3, 2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10374 : ExponentCode := normalNode4532

theorem canonicalSound10374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10374.moment H = canonicalOutput10374.moment H :=
  canonical_of_padded canonicalInput10374 canonicalOutput10374 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10375 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -3, 2, 1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput10375 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1205

theorem canonicalSound10375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10375.moment H = canonicalOutput10375.moment H :=
  canonical_of_padded canonicalInput10375 canonicalOutput10375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10376 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, -1, 3], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput10376 : ExponentCode := normalNode3582

theorem canonicalSound10376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10376.moment H = canonicalOutput10376.moment H :=
  canonical_of_padded canonicalInput10376 canonicalOutput10376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10377 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10377 : ExponentCode := normalNode4090

theorem canonicalSound10377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10377.moment H = canonicalOutput10377.moment H :=
  canonical_of_padded canonicalInput10377 canonicalOutput10377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10378 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput10378 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound10378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10378.moment H = canonicalOutput10378.moment H :=
  canonical_of_padded canonicalInput10378 canonicalOutput10378 (by decide) (by decide)
    ⟨false, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10379 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10379 : ExponentCode := normalNode3888

theorem canonicalSound10379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10379.moment H = canonicalOutput10379.moment H :=
  canonical_of_padded canonicalInput10379 canonicalOutput10379 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10380 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10380 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1816⟩

theorem canonicalSound10380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10380.moment H = canonicalOutput10380.moment H :=
  canonical_of_padded canonicalInput10380 canonicalOutput10380 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10381 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10381 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1704⟩

theorem canonicalSound10381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10381.moment H = canonicalOutput10381.moment H :=
  canonical_of_padded canonicalInput10381 canonicalOutput10381 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10382 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10382 : ExponentCode := normalNode2662

theorem canonicalSound10382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10382.moment H = canonicalOutput10382.moment H :=
  canonical_of_padded canonicalInput10382 canonicalOutput10382 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10383 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10383 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1657⟩

theorem canonicalSound10383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10383.moment H = canonicalOutput10383.moment H :=
  canonical_of_padded canonicalInput10383 canonicalOutput10383 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10384 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10384 : ExponentCode := normalNode2385

theorem canonicalSound10384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10384.moment H = canonicalOutput10384.moment H :=
  canonical_of_padded canonicalInput10384 canonicalOutput10384 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10385 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput10385 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound10385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10385.moment H = canonicalOutput10385.moment H :=
  canonical_of_padded canonicalInput10385 canonicalOutput10385 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10386 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput10386 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node450⟩

theorem canonicalSound10386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10386.moment H = canonicalOutput10386.moment H :=
  canonical_of_padded canonicalInput10386 canonicalOutput10386 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10387 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10387 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩

theorem canonicalSound10387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10387.moment H = canonicalOutput10387.moment H :=
  canonical_of_padded canonicalInput10387 canonicalOutput10387 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10388 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 0, 2], ![1, 0, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput10388 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node462⟩

theorem canonicalSound10388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10388.moment H = canonicalOutput10388.moment H :=
  canonical_of_padded canonicalInput10388 canonicalOutput10388 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10389 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput10389 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2060⟩

theorem canonicalSound10389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10389.moment H = canonicalOutput10389.moment H :=
  canonical_of_padded canonicalInput10389 canonicalOutput10389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10390 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput10390 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2079⟩

theorem canonicalSound10390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10390.moment H = canonicalOutput10390.moment H :=
  canonical_of_padded canonicalInput10390 canonicalOutput10390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10391 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput10391 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2081⟩

theorem canonicalSound10391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10391.moment H = canonicalOutput10391.moment H :=
  canonical_of_padded canonicalInput10391 canonicalOutput10391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10392 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10392 : ExponentCode := normalNode4486

theorem canonicalSound10392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10392.moment H = canonicalOutput10392.moment H :=
  canonical_of_padded canonicalInput10392 canonicalOutput10392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10393 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput10393 : ExponentCode := normalNode4488

theorem canonicalSound10393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10393.moment H = canonicalOutput10393.moment H :=
  canonical_of_padded canonicalInput10393 canonicalOutput10393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10394 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput10394 : ExponentCode := normalNode4495

theorem canonicalSound10394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10394.moment H = canonicalOutput10394.moment H :=
  canonical_of_padded canonicalInput10394 canonicalOutput10394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10395 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput10395 : ExponentCode := normalNode4466

theorem canonicalSound10395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10395.moment H = canonicalOutput10395.moment H :=
  canonical_of_padded canonicalInput10395 canonicalOutput10395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10396 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput10396 : ExponentCode := normalNode4130

theorem canonicalSound10396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10396.moment H = canonicalOutput10396.moment H :=
  canonical_of_padded canonicalInput10396 canonicalOutput10396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10397 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10397 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code989

theorem canonicalSound10397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10397.moment H = canonicalOutput10397.moment H :=
  canonical_of_padded canonicalInput10397 canonicalOutput10397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10398 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10398 : ExponentCode := normalNode4436

theorem canonicalSound10398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10398.moment H = canonicalOutput10398.moment H :=
  canonical_of_padded canonicalInput10398 canonicalOutput10398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10399 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10399 : ExponentCode := normalNode4518

theorem canonicalSound10399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10399.moment H = canonicalOutput10399.moment H :=
  canonical_of_padded canonicalInput10399 canonicalOutput10399 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10400 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10400 : ExponentCode := normalNode4521

theorem canonicalSound10400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10400.moment H = canonicalOutput10400.moment H :=
  canonical_of_padded canonicalInput10400 canonicalOutput10400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10401 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10401 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound10401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10401.moment H = canonicalOutput10401.moment H :=
  canonical_of_padded canonicalInput10401 canonicalOutput10401 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10402 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10402 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code997

theorem canonicalSound10402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10402.moment H = canonicalOutput10402.moment H :=
  canonical_of_padded canonicalInput10402 canonicalOutput10402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10403 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10403 : ExponentCode := normalNode4498

theorem canonicalSound10403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10403.moment H = canonicalOutput10403.moment H :=
  canonical_of_padded canonicalInput10403 canonicalOutput10403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10404 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10404 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound10404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10404.moment H = canonicalOutput10404.moment H :=
  canonical_of_padded canonicalInput10404 canonicalOutput10404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10405 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput10405 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound10405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10405.moment H = canonicalOutput10405.moment H :=
  canonical_of_padded canonicalInput10405 canonicalOutput10405 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10406 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10406 : ExponentCode := normalNode4532

theorem canonicalSound10406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10406.moment H = canonicalOutput10406.moment H :=
  canonical_of_padded canonicalInput10406 canonicalOutput10406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10407 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, -1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput10407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound10407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10407.moment H = canonicalOutput10407.moment H :=
  canonical_of_padded canonicalInput10407 canonicalOutput10407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10408 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput10408 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10408.moment H = canonicalOutput10408.moment H :=
  canonical_of_padded canonicalInput10408 canonicalOutput10408 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10409 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, 0, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput10409 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound10409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10409.moment H = canonicalOutput10409.moment H :=
  canonical_of_padded canonicalInput10409 canonicalOutput10409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10410 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10410 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩

theorem canonicalSound10410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10410.moment H = canonicalOutput10410.moment H :=
  canonical_of_padded canonicalInput10410 canonicalOutput10410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10411 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput10411 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound10411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10411.moment H = canonicalOutput10411.moment H :=
  canonical_of_padded canonicalInput10411 canonicalOutput10411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10412 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10412 : ExponentCode := normalNode4651

theorem canonicalSound10412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10412.moment H = canonicalOutput10412.moment H :=
  canonical_of_padded canonicalInput10412 canonicalOutput10412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10413 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10413 : ExponentCode := normalNode4091

theorem canonicalSound10413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10413.moment H = canonicalOutput10413.moment H :=
  canonical_of_padded canonicalInput10413 canonicalOutput10413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10414 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput10414 : ExponentCode := normalNode4081

theorem canonicalSound10414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10414.moment H = canonicalOutput10414.moment H :=
  canonical_of_padded canonicalInput10414 canonicalOutput10414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10415 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10415 : ExponentCode := normalNode4060

theorem canonicalSound10415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10415.moment H = canonicalOutput10415.moment H :=
  canonical_of_padded canonicalInput10415 canonicalOutput10415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10416 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound10416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10416.moment H = canonicalOutput10416.moment H :=
  canonical_of_padded canonicalInput10416 canonicalOutput10416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10417 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10417 : ExponentCode := normalNode4123

theorem canonicalSound10417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10417.moment H = canonicalOutput10417.moment H :=
  canonical_of_padded canonicalInput10417 canonicalOutput10417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10418 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10418 : ExponentCode := normalNode4130

theorem canonicalSound10418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10418.moment H = canonicalOutput10418.moment H :=
  canonical_of_padded canonicalInput10418 canonicalOutput10418 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10419 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput10419 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound10419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10419.moment H = canonicalOutput10419.moment H :=
  canonical_of_padded canonicalInput10419 canonicalOutput10419 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10420 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput10420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound10420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10420.moment H = canonicalOutput10420.moment H :=
  canonical_of_padded canonicalInput10420 canonicalOutput10420 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10421 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 3, -1], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10421 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1961⟩

theorem canonicalSound10421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10421.moment H = canonicalOutput10421.moment H :=
  canonical_of_padded canonicalInput10421 canonicalOutput10421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10422 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 3, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10422 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1636⟩

theorem canonicalSound10422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10422.moment H = canonicalOutput10422.moment H :=
  canonical_of_padded canonicalInput10422 canonicalOutput10422 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10423 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10423 : ExponentCode := normalNode5288

theorem canonicalSound10423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10423.moment H = canonicalOutput10423.moment H :=
  canonical_of_padded canonicalInput10423 canonicalOutput10423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10424 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -2, 3, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10424 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound10424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10424.moment H = canonicalOutput10424.moment H :=
  canonical_of_padded canonicalInput10424 canonicalOutput10424 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10425 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![0, 0, 2, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput10425 : ExponentCode := normalNode9746

theorem canonicalSound10425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10425.moment H = canonicalOutput10425.moment H :=
  canonical_of_padded canonicalInput10425 canonicalOutput10425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10426 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![0, 0, 3, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput10426 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1184⟩

theorem canonicalSound10426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10426.moment H = canonicalOutput10426.moment H :=
  canonical_of_padded canonicalInput10426 canonicalOutput10426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10427 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def canonicalOutput10427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1107

theorem canonicalSound10427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10427.moment H = canonicalOutput10427.moment H :=
  canonical_of_padded canonicalInput10427 canonicalOutput10427 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10428 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput10428 : ExponentCode := normalNode11114

theorem canonicalSound10428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10428.moment H = canonicalOutput10428.moment H :=
  canonical_of_padded canonicalInput10428 canonicalOutput10428 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10429 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput10429 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1187⟩

theorem canonicalSound10429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10429.moment H = canonicalOutput10429.moment H :=
  canonical_of_padded canonicalInput10429 canonicalOutput10429 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10430 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput10430 : ExponentCode := normalNode9756

theorem canonicalSound10430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10430.moment H = canonicalOutput10430.moment H :=
  canonical_of_padded canonicalInput10430 canonicalOutput10430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10431 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -3, 4], ![1, 1, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput10431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1148

theorem canonicalSound10431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10431.moment H = canonicalOutput10431.moment H :=
  canonical_of_padded canonicalInput10431 canonicalOutput10431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

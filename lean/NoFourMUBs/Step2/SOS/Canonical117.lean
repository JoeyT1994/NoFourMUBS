import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7488 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 2, 2, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput7488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1194⟩

theorem canonicalSound7488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7488.moment H = canonicalOutput7488.moment H :=
  canonical_of_padded canonicalInput7488 canonicalOutput7488 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7489 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 3, 1, -4], ![2, -2, -2, 2]]⟩

def canonicalOutput7489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩

theorem canonicalSound7489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7489.moment H = canonicalOutput7489.moment H :=
  canonical_of_padded canonicalInput7489 canonicalOutput7489 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7490 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput7490 : ExponentCode := normalNode3211

theorem canonicalSound7490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7490.moment H = canonicalOutput7490.moment H :=
  canonical_of_padded canonicalInput7490 canonicalOutput7490 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7491 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput7491 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound7491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7491.moment H = canonicalOutput7491.moment H :=
  canonical_of_padded canonicalInput7491 canonicalOutput7491 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7492 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput7492 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound7492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7492.moment H = canonicalOutput7492.moment H :=
  canonical_of_padded canonicalInput7492 canonicalOutput7492 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7493 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput7493 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound7493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7493.moment H = canonicalOutput7493.moment H :=
  canonical_of_padded canonicalInput7493 canonicalOutput7493 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7494 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, 1, -4, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput7494 : ExponentCode := normalNode7435

theorem canonicalSound7494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7494.moment H = canonicalOutput7494.moment H :=
  canonical_of_padded canonicalInput7494 canonicalOutput7494 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7495 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput7495 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound7495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7495.moment H = canonicalOutput7495.moment H :=
  canonical_of_padded canonicalInput7495 canonicalOutput7495 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7496 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput7496 : ExponentCode := normalNode10521

theorem canonicalSound7496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7496.moment H = canonicalOutput7496.moment H :=
  canonical_of_padded canonicalInput7496 canonicalOutput7496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7497 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput7497 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code838

theorem canonicalSound7497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7497.moment H = canonicalOutput7497.moment H :=
  canonical_of_padded canonicalInput7497 canonicalOutput7497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7498 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7498 : ExponentCode := normalNode8950

theorem canonicalSound7498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7498.moment H = canonicalOutput7498.moment H :=
  canonical_of_padded canonicalInput7498 canonicalOutput7498 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7499 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7499 : ExponentCode := normalNode10526

theorem canonicalSound7499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7499.moment H = canonicalOutput7499.moment H :=
  canonical_of_padded canonicalInput7499 canonicalOutput7499 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7500 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput7500 : ExponentCode := normalNode3873

theorem canonicalSound7500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7500.moment H = canonicalOutput7500.moment H :=
  canonical_of_padded canonicalInput7500 canonicalOutput7500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7501 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput7501 : ExponentCode := normalNode7899

theorem canonicalSound7501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7501.moment H = canonicalOutput7501.moment H :=
  canonical_of_padded canonicalInput7501 canonicalOutput7501 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7502 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7502 : ExponentCode := normalNode8970

theorem canonicalSound7502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7502.moment H = canonicalOutput7502.moment H :=
  canonical_of_padded canonicalInput7502 canonicalOutput7502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7503 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7503 : ExponentCode := normalNode9414

theorem canonicalSound7503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7503.moment H = canonicalOutput7503.moment H :=
  canonical_of_padded canonicalInput7503 canonicalOutput7503 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7504 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput7504 : ExponentCode := normalNode7910

theorem canonicalSound7504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7504.moment H = canonicalOutput7504.moment H :=
  canonical_of_padded canonicalInput7504 canonicalOutput7504 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7505 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput7505 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7505.moment H = canonicalOutput7505.moment H :=
  canonical_of_padded canonicalInput7505 canonicalOutput7505 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7506 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound7506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7506.moment H = canonicalOutput7506.moment H :=
  canonical_of_padded canonicalInput7506 canonicalOutput7506 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput7507 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7507 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound7507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7507.moment H = canonicalOutput7507.moment H :=
  canonical_of_padded canonicalInput7507 canonicalOutput7507 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7508 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7508 : ExponentCode := normalNode9022

theorem canonicalSound7508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7508.moment H = canonicalOutput7508.moment H :=
  canonical_of_padded canonicalInput7508 canonicalOutput7508 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7509 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput7509 : ExponentCode := normalNode7887

theorem canonicalSound7509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7509.moment H = canonicalOutput7509.moment H :=
  canonical_of_padded canonicalInput7509 canonicalOutput7509 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7510 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -3, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput7510 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1305⟩

theorem canonicalSound7510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7510.moment H = canonicalOutput7510.moment H :=
  canonical_of_padded canonicalInput7510 canonicalOutput7510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7511 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput7511 : ExponentCode := normalNode3753

theorem canonicalSound7511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7511.moment H = canonicalOutput7511.moment H :=
  canonical_of_padded canonicalInput7511 canonicalOutput7511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7512 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7512 : ExponentCode := normalNode3790

theorem canonicalSound7512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7512.moment H = canonicalOutput7512.moment H :=
  canonical_of_padded canonicalInput7512 canonicalOutput7512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7513 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput7513 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound7513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7513.moment H = canonicalOutput7513.moment H :=
  canonical_of_padded canonicalInput7513 canonicalOutput7513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7514 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7514 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound7514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7514.moment H = canonicalOutput7514.moment H :=
  canonical_of_padded canonicalInput7514 canonicalOutput7514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7515 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput7515 : ExponentCode := normalNode3988

theorem canonicalSound7515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7515.moment H = canonicalOutput7515.moment H :=
  canonical_of_padded canonicalInput7515 canonicalOutput7515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7516 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput7516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound7516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7516.moment H = canonicalOutput7516.moment H :=
  canonical_of_padded canonicalInput7516 canonicalOutput7516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7517 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput7517 : ExponentCode := normalNode3965

theorem canonicalSound7517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7517.moment H = canonicalOutput7517.moment H :=
  canonical_of_padded canonicalInput7517 canonicalOutput7517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7518 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7518 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound7518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7518.moment H = canonicalOutput7518.moment H :=
  canonical_of_padded canonicalInput7518 canonicalOutput7518 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput7519 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7519 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound7519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7519.moment H = canonicalOutput7519.moment H :=
  canonical_of_padded canonicalInput7519 canonicalOutput7519 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7520 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7520 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound7520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7520.moment H = canonicalOutput7520.moment H :=
  canonical_of_padded canonicalInput7520 canonicalOutput7520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7521 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput7521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7521.moment H = canonicalOutput7521.moment H :=
  canonical_of_padded canonicalInput7521 canonicalOutput7521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7522 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput7522 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩

theorem canonicalSound7522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7522.moment H = canonicalOutput7522.moment H :=
  canonical_of_padded canonicalInput7522 canonicalOutput7522 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7523 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7523 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound7523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7523.moment H = canonicalOutput7523.moment H :=
  canonical_of_padded canonicalInput7523 canonicalOutput7523 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7524 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 1, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput7524 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1194⟩

theorem canonicalSound7524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7524.moment H = canonicalOutput7524.moment H :=
  canonical_of_padded canonicalInput7524 canonicalOutput7524 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7525 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7525 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound7525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7525.moment H = canonicalOutput7525.moment H :=
  canonical_of_padded canonicalInput7525 canonicalOutput7525 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7526 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput7526 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node606⟩

theorem canonicalSound7526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7526.moment H = canonicalOutput7526.moment H :=
  canonical_of_padded canonicalInput7526 canonicalOutput7526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7527 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput7527 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound7527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7527.moment H = canonicalOutput7527.moment H :=
  canonical_of_padded canonicalInput7527 canonicalOutput7527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7528 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput7528 : ExponentCode := normalNode2593

theorem canonicalSound7528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7528.moment H = canonicalOutput7528.moment H :=
  canonical_of_padded canonicalInput7528 canonicalOutput7528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7529 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7529 : ExponentCode := normalNode3968

theorem canonicalSound7529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7529.moment H = canonicalOutput7529.moment H :=
  canonical_of_padded canonicalInput7529 canonicalOutput7529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7530 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput7530 : ExponentCode := normalNode3995

theorem canonicalSound7530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7530.moment H = canonicalOutput7530.moment H :=
  canonical_of_padded canonicalInput7530 canonicalOutput7530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7531 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7531 : ExponentCode := normalNode3968

theorem canonicalSound7531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7531.moment H = canonicalOutput7531.moment H :=
  canonical_of_padded canonicalInput7531 canonicalOutput7531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7532 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7532 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound7532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7532.moment H = canonicalOutput7532.moment H :=
  canonical_of_padded canonicalInput7532 canonicalOutput7532 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7533 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7533 : ExponentCode := normalNode3543

theorem canonicalSound7533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7533.moment H = canonicalOutput7533.moment H :=
  canonical_of_padded canonicalInput7533 canonicalOutput7533 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7534 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, -2, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput7534 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound7534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7534.moment H = canonicalOutput7534.moment H :=
  canonical_of_padded canonicalInput7534 canonicalOutput7534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7535 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput7535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound7535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7535.moment H = canonicalOutput7535.moment H :=
  canonical_of_padded canonicalInput7535 canonicalOutput7535 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7536 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, -2, 1, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput7536 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound7536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7536.moment H = canonicalOutput7536.moment H :=
  canonical_of_padded canonicalInput7536 canonicalOutput7536 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7537 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput7537 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound7537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7537.moment H = canonicalOutput7537.moment H :=
  canonical_of_padded canonicalInput7537 canonicalOutput7537 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7538 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput7538 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound7538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7538.moment H = canonicalOutput7538.moment H :=
  canonical_of_padded canonicalInput7538 canonicalOutput7538 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7539 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7539 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound7539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7539.moment H = canonicalOutput7539.moment H :=
  canonical_of_padded canonicalInput7539 canonicalOutput7539 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7540 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 0, 2, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput7540 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node901⟩

theorem canonicalSound7540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7540.moment H = canonicalOutput7540.moment H :=
  canonical_of_padded canonicalInput7540 canonicalOutput7540 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7541 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -4, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput7541 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node901⟩

theorem canonicalSound7541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7541.moment H = canonicalOutput7541.moment H :=
  canonical_of_padded canonicalInput7541 canonicalOutput7541 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7542 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound7542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7542.moment H = canonicalOutput7542.moment H :=
  canonical_of_padded canonicalInput7542 canonicalOutput7542 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7543 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound7543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7543.moment H = canonicalOutput7543.moment H :=
  canonical_of_padded canonicalInput7543 canonicalOutput7543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7544 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput7544 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound7544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7544.moment H = canonicalOutput7544.moment H :=
  canonical_of_padded canonicalInput7544 canonicalOutput7544 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7545 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput7545 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound7545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7545.moment H = canonicalOutput7545.moment H :=
  canonical_of_padded canonicalInput7545 canonicalOutput7545 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7546 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7546 : ExponentCode := normalNode10528

theorem canonicalSound7546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7546.moment H = canonicalOutput7546.moment H :=
  canonical_of_padded canonicalInput7546 canonicalOutput7546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7547 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7547 : ExponentCode := normalNode9418

theorem canonicalSound7547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7547.moment H = canonicalOutput7547.moment H :=
  canonical_of_padded canonicalInput7547 canonicalOutput7547 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7548 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7548 : ExponentCode := normalNode10911

theorem canonicalSound7548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7548.moment H = canonicalOutput7548.moment H :=
  canonical_of_padded canonicalInput7548 canonicalOutput7548 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7549 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -3, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput7549 : ExponentCode := normalNode10912

theorem canonicalSound7549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7549.moment H = canonicalOutput7549.moment H :=
  canonical_of_padded canonicalInput7549 canonicalOutput7549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7550 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7550 : ExponentCode := normalNode9855

theorem canonicalSound7550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7550.moment H = canonicalOutput7550.moment H :=
  canonical_of_padded canonicalInput7550 canonicalOutput7550 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7551 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput7551 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound7551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7551.moment H = canonicalOutput7551.moment H :=
  canonical_of_padded canonicalInput7551 canonicalOutput7551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

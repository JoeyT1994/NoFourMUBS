import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7424 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput7424 : ExponentCode := normalNode3742

theorem canonicalSound7424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7424.moment H = canonicalOutput7424.moment H :=
  canonical_of_padded canonicalInput7424 canonicalOutput7424 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7425 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -2, 1, 1], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput7425 : ExponentCode := normalNode3743

theorem canonicalSound7425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7425.moment H = canonicalOutput7425.moment H :=
  canonical_of_padded canonicalInput7425 canonicalOutput7425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7426 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput7426 : ExponentCode := normalNode3827

theorem canonicalSound7426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7426.moment H = canonicalOutput7426.moment H :=
  canonical_of_padded canonicalInput7426 canonicalOutput7426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7427 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput7427 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound7427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7427.moment H = canonicalOutput7427.moment H :=
  canonical_of_padded canonicalInput7427 canonicalOutput7427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7428 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -2, 2], ![2, 2, 1, -5]]⟩

def canonicalOutput7428 : ExponentCode := normalNode360

theorem canonicalSound7428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7428.moment H = canonicalOutput7428.moment H :=
  canonical_of_padded canonicalInput7428 canonicalOutput7428 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7429 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput7429 : ExponentCode := normalNode3195

theorem canonicalSound7429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7429.moment H = canonicalOutput7429.moment H :=
  canonical_of_padded canonicalInput7429 canonicalOutput7429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7430 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput7430 : ExponentCode := normalNode3197

theorem canonicalSound7430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7430.moment H = canonicalOutput7430.moment H :=
  canonical_of_padded canonicalInput7430 canonicalOutput7430 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7431 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput7431 : ExponentCode := normalNode3395

theorem canonicalSound7431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7431.moment H = canonicalOutput7431.moment H :=
  canonical_of_padded canonicalInput7431 canonicalOutput7431 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7432 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput7432 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2373⟩

theorem canonicalSound7432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7432.moment H = canonicalOutput7432.moment H :=
  canonical_of_padded canonicalInput7432 canonicalOutput7432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7433 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput7433 : ExponentCode := normalNode1332

theorem canonicalSound7433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7433.moment H = canonicalOutput7433.moment H :=
  canonical_of_padded canonicalInput7433 canonicalOutput7433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7434 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput7434 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound7434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7434.moment H = canonicalOutput7434.moment H :=
  canonical_of_padded canonicalInput7434 canonicalOutput7434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7435 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7435 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound7435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7435.moment H = canonicalOutput7435.moment H :=
  canonical_of_padded canonicalInput7435 canonicalOutput7435 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput7436 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput7436 : ExponentCode := normalNode7867

theorem canonicalSound7436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7436.moment H = canonicalOutput7436.moment H :=
  canonical_of_padded canonicalInput7436 canonicalOutput7436 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7437 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput7437 : ExponentCode := normalNode9107

theorem canonicalSound7437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7437.moment H = canonicalOutput7437.moment H :=
  canonical_of_padded canonicalInput7437 canonicalOutput7437 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7438 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput7438 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2697⟩

theorem canonicalSound7438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7438.moment H = canonicalOutput7438.moment H :=
  canonical_of_padded canonicalInput7438 canonicalOutput7438 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7439 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput7439 : ExponentCode := normalNode1079

theorem canonicalSound7439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7439.moment H = canonicalOutput7439.moment H :=
  canonical_of_padded canonicalInput7439 canonicalOutput7439 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation369, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7440 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput7440 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2498⟩

theorem canonicalSound7440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7440.moment H = canonicalOutput7440.moment H :=
  canonical_of_padded canonicalInput7440 canonicalOutput7440 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7441 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7441 : ExponentCode := normalNode9383

theorem canonicalSound7441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7441.moment H = canonicalOutput7441.moment H :=
  canonical_of_padded canonicalInput7441 canonicalOutput7441 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7442 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput7442 : ExponentCode := normalNode9020

theorem canonicalSound7442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7442.moment H = canonicalOutput7442.moment H :=
  canonical_of_padded canonicalInput7442 canonicalOutput7442 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7443 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput7443 : ExponentCode := normalNode7919

theorem canonicalSound7443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7443.moment H = canonicalOutput7443.moment H :=
  canonical_of_padded canonicalInput7443 canonicalOutput7443 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7444 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7444 : ExponentCode := normalNode9020

theorem canonicalSound7444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7444.moment H = canonicalOutput7444.moment H :=
  canonical_of_padded canonicalInput7444 canonicalOutput7444 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7445 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput7445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7445.moment H = canonicalOutput7445.moment H :=
  canonical_of_padded canonicalInput7445 canonicalOutput7445 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7446 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound7446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7446.moment H = canonicalOutput7446.moment H :=
  canonical_of_padded canonicalInput7446 canonicalOutput7446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7447 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7447 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound7447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7447.moment H = canonicalOutput7447.moment H :=
  canonical_of_padded canonicalInput7447 canonicalOutput7447 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7448 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput7448 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2049⟩

theorem canonicalSound7448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7448.moment H = canonicalOutput7448.moment H :=
  canonical_of_padded canonicalInput7448 canonicalOutput7448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7449 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput7449 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2369⟩

theorem canonicalSound7449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7449.moment H = canonicalOutput7449.moment H :=
  canonical_of_padded canonicalInput7449 canonicalOutput7449 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7450 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput7450 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1776⟩

theorem canonicalSound7450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7450.moment H = canonicalOutput7450.moment H :=
  canonical_of_padded canonicalInput7450 canonicalOutput7450 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7451 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput7451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound7451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7451.moment H = canonicalOutput7451.moment H :=
  canonical_of_padded canonicalInput7451 canonicalOutput7451 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7452 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7452 : ExponentCode := normalNode7912

theorem canonicalSound7452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7452.moment H = canonicalOutput7452.moment H :=
  canonical_of_padded canonicalInput7452 canonicalOutput7452 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7453 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput7453 : ExponentCode := normalNode8992

theorem canonicalSound7453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7453.moment H = canonicalOutput7453.moment H :=
  canonical_of_padded canonicalInput7453 canonicalOutput7453 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7454 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput7454 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2538⟩

theorem canonicalSound7454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7454.moment H = canonicalOutput7454.moment H :=
  canonical_of_padded canonicalInput7454 canonicalOutput7454 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7455 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -4, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput7455 : ExponentCode := normalNode7423

theorem canonicalSound7455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7455.moment H = canonicalOutput7455.moment H :=
  canonical_of_padded canonicalInput7455 canonicalOutput7455 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7456 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7456 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2538⟩

theorem canonicalSound7456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7456.moment H = canonicalOutput7456.moment H :=
  canonical_of_padded canonicalInput7456 canonicalOutput7456 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7457 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7457 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound7457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7457.moment H = canonicalOutput7457.moment H :=
  canonical_of_padded canonicalInput7457 canonicalOutput7457 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7458 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7458 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound7458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7458.moment H = canonicalOutput7458.moment H :=
  canonical_of_padded canonicalInput7458 canonicalOutput7458 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7459 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput7459 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩

theorem canonicalSound7459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7459.moment H = canonicalOutput7459.moment H :=
  canonical_of_padded canonicalInput7459 canonicalOutput7459 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7460 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7460 : ExponentCode := normalNode9012

theorem canonicalSound7460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7460.moment H = canonicalOutput7460.moment H :=
  canonical_of_padded canonicalInput7460 canonicalOutput7460 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7461 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7461 : ExponentCode := normalNode8948

theorem canonicalSound7461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7461.moment H = canonicalOutput7461.moment H :=
  canonical_of_padded canonicalInput7461 canonicalOutput7461 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7462 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput7462 : ExponentCode := normalNode7890

theorem canonicalSound7462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7462.moment H = canonicalOutput7462.moment H :=
  canonical_of_padded canonicalInput7462 canonicalOutput7462 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7463 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput7463 : ExponentCode := normalNode10821

theorem canonicalSound7463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7463.moment H = canonicalOutput7463.moment H :=
  canonical_of_padded canonicalInput7463 canonicalOutput7463 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7464 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput7464 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound7464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7464.moment H = canonicalOutput7464.moment H :=
  canonical_of_padded canonicalInput7464 canonicalOutput7464 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7465 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7465 : ExponentCode := normalNode10263

theorem canonicalSound7465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7465.moment H = canonicalOutput7465.moment H :=
  canonical_of_padded canonicalInput7465 canonicalOutput7465 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7466 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7466 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound7466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7466.moment H = canonicalOutput7466.moment H :=
  canonical_of_padded canonicalInput7466 canonicalOutput7466 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7467 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput7467 : ExponentCode := normalNode10519

theorem canonicalSound7467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7467.moment H = canonicalOutput7467.moment H :=
  canonical_of_padded canonicalInput7467 canonicalOutput7467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7468 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput7468 : ExponentCode := normalNode3163

theorem canonicalSound7468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7468.moment H = canonicalOutput7468.moment H :=
  canonical_of_padded canonicalInput7468 canonicalOutput7468 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7469 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput7469 : ExponentCode := normalNode3942

theorem canonicalSound7469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7469.moment H = canonicalOutput7469.moment H :=
  canonical_of_padded canonicalInput7469 canonicalOutput7469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7470 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput7470 : ExponentCode := normalNode3953

theorem canonicalSound7470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7470.moment H = canonicalOutput7470.moment H :=
  canonical_of_padded canonicalInput7470 canonicalOutput7470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7471 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput7471 : ExponentCode := normalNode10533

theorem canonicalSound7471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7471.moment H = canonicalOutput7471.moment H :=
  canonical_of_padded canonicalInput7471 canonicalOutput7471 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7472 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7472 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound7472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7472.moment H = canonicalOutput7472.moment H :=
  canonical_of_padded canonicalInput7472 canonicalOutput7472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7473 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput7473 : ExponentCode := normalNode3818

theorem canonicalSound7473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7473.moment H = canonicalOutput7473.moment H :=
  canonical_of_padded canonicalInput7473 canonicalOutput7473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7474 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput7474 : ExponentCode := normalNode10569

theorem canonicalSound7474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7474.moment H = canonicalOutput7474.moment H :=
  canonical_of_padded canonicalInput7474 canonicalOutput7474 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7475 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7475 : ExponentCode := normalNode2613

theorem canonicalSound7475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7475.moment H = canonicalOutput7475.moment H :=
  canonical_of_padded canonicalInput7475 canonicalOutput7475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7476 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7476 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound7476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7476.moment H = canonicalOutput7476.moment H :=
  canonical_of_padded canonicalInput7476 canonicalOutput7476 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput7477 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput7477 : ExponentCode := normalNode10252

theorem canonicalSound7477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7477.moment H = canonicalOutput7477.moment H :=
  canonical_of_padded canonicalInput7477 canonicalOutput7477 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7478 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7478 : ExponentCode := normalNode9079

theorem canonicalSound7478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7478.moment H = canonicalOutput7478.moment H :=
  canonical_of_padded canonicalInput7478 canonicalOutput7478 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7479 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7479 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound7479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7479.moment H = canonicalOutput7479.moment H :=
  canonical_of_padded canonicalInput7479 canonicalOutput7479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7480 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7480 : ExponentCode := normalNode9079

theorem canonicalSound7480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7480.moment H = canonicalOutput7480.moment H :=
  canonical_of_padded canonicalInput7480 canonicalOutput7480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7481 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput7481 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7481.moment H = canonicalOutput7481.moment H :=
  canonical_of_padded canonicalInput7481 canonicalOutput7481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7482 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7482 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2703⟩

theorem canonicalSound7482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7482.moment H = canonicalOutput7482.moment H :=
  canonical_of_padded canonicalInput7482 canonicalOutput7482 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7483 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7483 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2703⟩

theorem canonicalSound7483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7483.moment H = canonicalOutput7483.moment H :=
  canonical_of_padded canonicalInput7483 canonicalOutput7483 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7484 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput7484 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound7484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7484.moment H = canonicalOutput7484.moment H :=
  canonical_of_padded canonicalInput7484 canonicalOutput7484 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7485 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput7485 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound7485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7485.moment H = canonicalOutput7485.moment H :=
  canonical_of_padded canonicalInput7485 canonicalOutput7485 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput7486 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7486 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1698⟩

theorem canonicalSound7486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7486.moment H = canonicalOutput7486.moment H :=
  canonical_of_padded canonicalInput7486 canonicalOutput7486 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7487 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7487 : ExponentCode := normalNode3268

theorem canonicalSound7487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7487.moment H = canonicalOutput7487.moment H :=
  canonical_of_padded canonicalInput7487 canonicalOutput7487 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

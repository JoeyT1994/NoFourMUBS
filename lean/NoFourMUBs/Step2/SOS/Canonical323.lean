import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound4
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20672 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 1, -3, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound20672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20672.moment H = canonicalOutput20672.moment H :=
  canonical_of_padded canonicalInput20672 canonicalOutput20672 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput20673 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20673 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound20673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20673.moment H = canonicalOutput20673.moment H :=
  canonical_of_padded canonicalInput20673 canonicalOutput20673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput20674 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput20674 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩

theorem canonicalSound20674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20674.moment H = canonicalOutput20674.moment H :=
  canonical_of_padded canonicalInput20674 canonicalOutput20674 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20675 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20675 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound20675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20675.moment H = canonicalOutput20675.moment H :=
  canonical_of_padded canonicalInput20675 canonicalOutput20675 (by decide) (by decide)
    ⟨true, true, canonicalPermutation33, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput20676 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20676 : ExponentCode := normalNode9454

theorem canonicalSound20676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20676.moment H = canonicalOutput20676.moment H :=
  canonical_of_padded canonicalInput20676 canonicalOutput20676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20677 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 3, -2], ![0, 0, 0, -2, 2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20677 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound20677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20677.moment H = canonicalOutput20677.moment H :=
  canonical_of_padded canonicalInput20677 canonicalOutput20677 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput20678 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, 3, -2], ![0, 0, 1, -3, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20678 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩

theorem canonicalSound20678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20678.moment H = canonicalOutput20678.moment H :=
  canonical_of_padded canonicalInput20678 canonicalOutput20678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput20679 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20679 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound20679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20679.moment H = canonicalOutput20679.moment H :=
  canonical_of_padded canonicalInput20679 canonicalOutput20679 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20680 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20680 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound20680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20680.moment H = canonicalOutput20680.moment H :=
  canonical_of_padded canonicalInput20680 canonicalOutput20680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20681 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 3, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20681 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node292⟩

theorem canonicalSound20681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20681.moment H = canonicalOutput20681.moment H :=
  canonical_of_padded canonicalInput20681 canonicalOutput20681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20682 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, -3, 2, 1, 0], ![1, 3, -2, -2, 0]]⟩

def canonicalOutput20682 : ExponentCode := normalNode10315

theorem canonicalSound20682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20682.moment H = canonicalOutput20682.moment H :=
  canonical_of_padded canonicalInput20682 canonicalOutput20682 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20683 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, 2, -2], ![0, -2, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput20683 : ExponentCode := normalNode10687

theorem canonicalSound20683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20683.moment H = canonicalOutput20683.moment H :=
  canonical_of_padded canonicalInput20683 canonicalOutput20683 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20684 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20684 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound20684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20684.moment H = canonicalOutput20684.moment H :=
  canonical_of_padded canonicalInput20684 canonicalOutput20684 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput20685 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 0, 2, -2], ![1, -2, 2, -1, 0], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput20685 : ExponentCode := normalNode10687

theorem canonicalSound20685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20685.moment H = canonicalOutput20685.moment H :=
  canonical_of_padded canonicalInput20685 canonicalOutput20685 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20686 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput20686 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound20686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20686.moment H = canonicalOutput20686.moment H :=
  canonical_of_padded canonicalInput20686 canonicalOutput20686 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20687 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![1, 0, 0, 1, -2], ![-1, -3, 2, 1, 1], ![1, 3, -2, -2, 0]]⟩

def canonicalOutput20687 : ExponentCode := normalNode11107

theorem canonicalSound20687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20687.moment H = canonicalOutput20687.moment H :=
  canonical_of_padded canonicalInput20687 canonicalOutput20687 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20688 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![1, 0, 0, 1, -2], ![0, -3, 2, 1, 0], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput20688 : ExponentCode := normalNode11154

theorem canonicalSound20688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20688.moment H = canonicalOutput20688.moment H :=
  canonical_of_padded canonicalInput20688 canonicalOutput20688 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20689 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![-1, -2, 1, 1, 0, 1], ![0, 1, -2, 1, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 1, 1, -2, -1, 1]]⟩

def canonicalOutput20689 : ExponentCode := normalNode3683

theorem canonicalSound20689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20689.moment H = canonicalOutput20689.moment H :=
  canonical_of_padded canonicalInput20689 canonicalOutput20689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation182, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput20690 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![-1, -1, -1, 2, 0, 1], ![0, -1, 2, -1, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 2, -1, -1, -1, 1]]⟩

def canonicalOutput20690 : ExponentCode := normalNode3675

theorem canonicalSound20690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20690.moment H = canonicalOutput20690.moment H :=
  canonical_of_padded canonicalInput20690 canonicalOutput20690 (by decide) (by decide)
    ⟨true, true, canonicalPermutation183, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput20691 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![0, -2, 1, 1, 0, 0], ![-1, 1, -2, 1, 0, 1], ![2, 0, 0, 0, -1, -1], ![0, 1, 1, -2, -1, 1]]⟩

def canonicalOutput20691 : ExponentCode := normalNode3683

theorem canonicalSound20691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20691.moment H = canonicalOutput20691.moment H :=
  canonical_of_padded canonicalInput20691 canonicalOutput20691 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation217, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20692 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 1, 1, -2, -1, 1]]⟩

def canonicalOutput20692 : ExponentCode := normalNode10745

theorem canonicalSound20692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20692.moment H = canonicalOutput20692.moment H :=
  canonical_of_padded canonicalInput20692 canonicalOutput20692 (by decide) (by decide)
    ⟨true, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput20693 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![2, 0, 0, 0, -1, -1], ![-1, 1, 1, -2, -1, 2]]⟩

def canonicalOutput20693 : ExponentCode := normalNode3682

theorem canonicalSound20693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20693.moment H = canonicalOutput20693.moment H :=
  canonical_of_padded canonicalInput20693 canonicalOutput20693 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation217, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20694 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![0, -1, -1, 2, 0, 0], ![-1, -1, 2, -1, 0, 1], ![2, 0, 0, 0, -1, -1], ![0, 2, -1, -1, -1, 1]]⟩

def canonicalOutput20694 : ExponentCode := normalNode3675

theorem canonicalSound20694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20694.moment H = canonicalOutput20694.moment H :=
  canonical_of_padded canonicalInput20694 canonicalOutput20694 (by decide) (by decide)
    ⟨true, true, canonicalPermutation184, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20695 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 2, -1, -1, -1, 1]]⟩

def canonicalOutput20695 : ExponentCode := normalNode10742

theorem canonicalSound20695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20695.moment H = canonicalOutput20695.moment H :=
  canonical_of_padded canonicalInput20695 canonicalOutput20695 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput20696 : ExponentCode := ⟨5, 6, ![![-1, 0, 0, 0, 2, -1], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![2, 0, 0, 0, -1, -1], ![-1, 2, -1, -1, -1, 2]]⟩

def canonicalOutput20696 : ExponentCode := normalNode3674

theorem canonicalSound20696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20696.moment H = canonicalOutput20696.moment H :=
  canonical_of_padded canonicalInput20696 canonicalOutput20696 (by decide) (by decide)
    ⟨true, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20697 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-4, 2, 2, 0], ![5, -2, -2, -1]]⟩

def canonicalOutput20697 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node240⟩

theorem canonicalSound20697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20697.moment H = canonicalOutput20697.moment H :=
  canonical_of_padded canonicalInput20697 canonicalOutput20697 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20698 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-4, 2, 3, -1], ![5, -2, -3, 0]]⟩

def canonicalOutput20698 : ExponentCode := normalNode5995

theorem canonicalSound20698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20698.moment H = canonicalOutput20698.moment H :=
  canonical_of_padded canonicalInput20698 canonicalOutput20698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20699 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-3, -2, 2, 3], ![4, 2, -2, -4]]⟩

def canonicalOutput20699 : ExponentCode := normalNode6283

theorem canonicalSound20699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20699.moment H = canonicalOutput20699.moment H :=
  canonical_of_padded canonicalInput20699 canonicalOutput20699 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20700 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-3, -2, 3, 2], ![4, 2, -3, -3]]⟩

def canonicalOutput20700 : ExponentCode := normalNode6284

theorem canonicalSound20700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20700.moment H = canonicalOutput20700.moment H :=
  canonical_of_padded canonicalInput20700 canonicalOutput20700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20701 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-3, -2, 4, 1], ![4, 2, -4, -2]]⟩

def canonicalOutput20701 : ExponentCode := normalNode6285

theorem canonicalSound20701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20701.moment H = canonicalOutput20701.moment H :=
  canonical_of_padded canonicalInput20701 canonicalOutput20701 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20702 : ExponentCode := ⟨3, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix257⟩

def canonicalOutput20702 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node257⟩

theorem canonicalSound20702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20702.moment H = canonicalOutput20702.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix257 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node257
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix257 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node257.transpose (OAI.MUB6.Certificate.PairSemantics.pivotPermutation257 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node257.transpose OAI.MUB6.Certificate.PairSemantics.pivotPermutation257).trans (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.node257)

def canonicalInput20703 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-2, -2, 5, -1], ![3, 2, -5, 0]]⟩

def canonicalOutput20703 : ExponentCode := normalNode7141

theorem canonicalSound20703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20703.moment H = canonicalOutput20703.moment H :=
  canonical_of_padded canonicalInput20703 canonicalOutput20703 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20704 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-1, -4, 4, 1], ![2, 4, -4, -2]]⟩

def canonicalOutput20704 : ExponentCode := normalNode9521

theorem canonicalSound20704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20704.moment H = canonicalOutput20704.moment H :=
  canonical_of_padded canonicalInput20704 canonicalOutput20704 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20705 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![-1, -3, 5, -1], ![2, 3, -5, 0]]⟩

def canonicalOutput20705 : ExponentCode := normalNode9524

theorem canonicalSound20705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20705.moment H = canonicalOutput20705.moment H :=
  canonical_of_padded canonicalInput20705 canonicalOutput20705 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20706 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20706 : ExponentCode := normalNode2491

theorem canonicalSound20706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20706.moment H = canonicalOutput20706.moment H :=
  canonical_of_padded canonicalInput20706 canonicalOutput20706 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20707 : ExponentCode := ⟨3, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix282⟩

def canonicalOutput20707 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node282⟩

theorem canonicalSound20707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20707.moment H = canonicalOutput20707.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix282 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node282
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix282 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node282.transpose (OAI.MUB6.Certificate.PairSemantics.pivotPermutation282 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node282.transpose OAI.MUB6.Certificate.PairSemantics.pivotPermutation282).trans (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.node282)

def canonicalInput20708 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 2, -3, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput20708 : ExponentCode := normalNode6421

theorem canonicalSound20708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20708.moment H = canonicalOutput20708.moment H :=
  canonical_of_padded canonicalInput20708 canonicalOutput20708 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20709 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![2, 1, -3, 0], ![0, 0, 4, -4]]⟩

def canonicalOutput20709 : ExponentCode := normalNode1723

theorem canonicalSound20709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20709.moment H = canonicalOutput20709.moment H :=
  canonical_of_padded canonicalInput20709 canonicalOutput20709 (by decide) (by decide)
    ⟨false, true, canonicalPermutation186, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20710 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput20710 : ExponentCode := normalNode1177

theorem canonicalSound20710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20710.moment H = canonicalOutput20710.moment H :=
  canonical_of_padded canonicalInput20710 canonicalOutput20710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20711 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput20711 : ExponentCode := normalNode6379

theorem canonicalSound20711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20711.moment H = canonicalOutput20711.moment H :=
  canonical_of_padded canonicalInput20711 canonicalOutput20711 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20712 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![2, 0, -3, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput20712 : ExponentCode := normalNode4658

theorem canonicalSound20712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20712.moment H = canonicalOutput20712.moment H :=
  canonical_of_padded canonicalInput20712 canonicalOutput20712 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20713 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, -2, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput20713 : ExponentCode := normalNode1027

theorem canonicalSound20713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20713.moment H = canonicalOutput20713.moment H :=
  canonical_of_padded canonicalInput20713 canonicalOutput20713 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation393, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20714 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20714 : ExponentCode := normalNode1028

theorem canonicalSound20714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20714.moment H = canonicalOutput20714.moment H :=
  canonical_of_padded canonicalInput20714 canonicalOutput20714 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20715 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20715 : ExponentCode := normalNode4256

theorem canonicalSound20715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20715.moment H = canonicalOutput20715.moment H :=
  canonical_of_padded canonicalInput20715 canonicalOutput20715 (by decide) (by decide)
    ⟨false, true, canonicalPermutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20716 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20716 : ExponentCode := normalNode5646

theorem canonicalSound20716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20716.moment H = canonicalOutput20716.moment H :=
  canonical_of_padded canonicalInput20716 canonicalOutput20716 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20717 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20717 : ExponentCode := normalNode7706

theorem canonicalSound20717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20717.moment H = canonicalOutput20717.moment H :=
  canonical_of_padded canonicalInput20717 canonicalOutput20717 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation287, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20718 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -3, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20718 : ExponentCode := normalNode8808

theorem canonicalSound20718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20718.moment H = canonicalOutput20718.moment H :=
  canonical_of_padded canonicalInput20718 canonicalOutput20718 (by decide) (by decide)
    ⟨false, false, canonicalPermutation86, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20719 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 0, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 2, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20719 : ExponentCode := normalNode3427

theorem canonicalSound20719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20719.moment H = canonicalOutput20719.moment H :=
  canonical_of_padded canonicalInput20719 canonicalOutput20719 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation293, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20720 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -2, 2], ![2, 2, 1, -5]]⟩

def canonicalOutput20720 : ExponentCode := normalNode361

theorem canonicalSound20720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20720.moment H = canonicalOutput20720.moment H :=
  canonical_of_padded canonicalInput20720 canonicalOutput20720 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation393, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20721 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput20721 : ExponentCode := normalNode3196

theorem canonicalSound20721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20721.moment H = canonicalOutput20721.moment H :=
  canonical_of_padded canonicalInput20721 canonicalOutput20721 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation393, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20722 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput20722 : ExponentCode := normalNode3198

theorem canonicalSound20722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20722.moment H = canonicalOutput20722.moment H :=
  canonical_of_padded canonicalInput20722 canonicalOutput20722 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation393, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20723 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20723 : ExponentCode := normalNode1078

theorem canonicalSound20723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20723.moment H = canonicalOutput20723.moment H :=
  canonical_of_padded canonicalInput20723 canonicalOutput20723 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation369, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20724 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20724 : ExponentCode := normalNode9423

theorem canonicalSound20724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20724.moment H = canonicalOutput20724.moment H :=
  canonical_of_padded canonicalInput20724 canonicalOutput20724 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20725 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput20725 : ExponentCode := normalNode3168

theorem canonicalSound20725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20725.moment H = canonicalOutput20725.moment H :=
  canonical_of_padded canonicalInput20725 canonicalOutput20725 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20726 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput20726 : ExponentCode := normalNode9282

theorem canonicalSound20726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20726.moment H = canonicalOutput20726.moment H :=
  canonical_of_padded canonicalInput20726 canonicalOutput20726 (by decide) (by decide)
    ⟨false, false, canonicalPermutation187, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20727 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20727 : ExponentCode := normalNode9289

theorem canonicalSound20727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20727.moment H = canonicalOutput20727.moment H :=
  canonical_of_padded canonicalInput20727 canonicalOutput20727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation203, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20728 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20728 : ExponentCode := normalNode7283

theorem canonicalSound20728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20728.moment H = canonicalOutput20728.moment H :=
  canonical_of_padded canonicalInput20728 canonicalOutput20728 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20729 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput20729 : ExponentCode := normalNode3210

theorem canonicalSound20729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20729.moment H = canonicalOutput20729.moment H :=
  canonical_of_padded canonicalInput20729 canonicalOutput20729 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20730 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput20730 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node949⟩

theorem canonicalSound20730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20730.moment H = canonicalOutput20730.moment H :=
  canonical_of_padded canonicalInput20730 canonicalOutput20730 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20731 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20731 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2737⟩

theorem canonicalSound20731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20731.moment H = canonicalOutput20731.moment H :=
  canonical_of_padded canonicalInput20731 canonicalOutput20731 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20732 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput20732 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2409⟩

theorem canonicalSound20732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20732.moment H = canonicalOutput20732.moment H :=
  canonical_of_padded canonicalInput20732 canonicalOutput20732 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20733 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -2, 3], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20733 : ExponentCode := normalNode9703

theorem canonicalSound20733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20733.moment H = canonicalOutput20733.moment H :=
  canonical_of_padded canonicalInput20733 canonicalOutput20733 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20734 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput20734 : ExponentCode := normalNode8978

theorem canonicalSound20734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20734.moment H = canonicalOutput20734.moment H :=
  canonical_of_padded canonicalInput20734 canonicalOutput20734 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20735 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput20735 : ExponentCode := normalNode353

theorem canonicalSound20735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20735.moment H = canonicalOutput20735.moment H :=
  canonical_of_padded canonicalInput20735 canonicalOutput20735 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

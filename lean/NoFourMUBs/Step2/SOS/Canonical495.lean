import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31680 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![1, -2, 3, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput31680 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node250⟩

theorem canonicalSound31680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31680.moment H = canonicalOutput31680.moment H :=
  canonical_of_padded canonicalInput31680 canonicalOutput31680 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31681 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput31681 : ExponentCode := normalNode3815

theorem canonicalSound31681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31681.moment H = canonicalOutput31681.moment H :=
  canonical_of_padded canonicalInput31681 canonicalOutput31681 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31682 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -2, 0]]⟩

def canonicalOutput31682 : ExponentCode := normalNode3931

theorem canonicalSound31682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31682.moment H = canonicalOutput31682.moment H :=
  canonical_of_padded canonicalInput31682 canonicalOutput31682 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31683 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput31683 : ExponentCode := normalNode8791

theorem canonicalSound31683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31683.moment H = canonicalOutput31683.moment H :=
  canonical_of_padded canonicalInput31683 canonicalOutput31683 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31684 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![-1, 3, -2, 0]]⟩

def canonicalOutput31684 : ExponentCode := normalNode6667

theorem canonicalSound31684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31684.moment H = canonicalOutput31684.moment H :=
  canonical_of_padded canonicalInput31684 canonicalOutput31684 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31685 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, -1, -1, 3], ![0, 3, -1, -2]]⟩

def canonicalOutput31685 : ExponentCode := normalNode7659

theorem canonicalSound31685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31685.moment H = canonicalOutput31685.moment H :=
  canonical_of_padded canonicalInput31685 canonicalOutput31685 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31686 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput31686 : ExponentCode := normalNode9541

theorem canonicalSound31686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31686.moment H = canonicalOutput31686.moment H :=
  canonical_of_padded canonicalInput31686 canonicalOutput31686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31687 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![0, -1, -1, 2], ![-1, 3, -1, -1]]⟩

def canonicalOutput31687 : ExponentCode := normalNode7735

theorem canonicalSound31687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31687.moment H = canonicalOutput31687.moment H :=
  canonical_of_padded canonicalInput31687 canonicalOutput31687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation376, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31688 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, -1, 2, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31688 : ExponentCode := normalNode5339

theorem canonicalSound31688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31688.moment H = canonicalOutput31688.moment H :=
  canonical_of_padded canonicalInput31688 canonicalOutput31688 (by decide) (by decide)
    ⟨false, true, canonicalPermutation391, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31689 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31689 : ExponentCode := normalNode1845

theorem canonicalSound31689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31689.moment H = canonicalOutput31689.moment H :=
  canonical_of_padded canonicalInput31689 canonicalOutput31689 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31690 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31690 : ExponentCode := normalNode7687

theorem canonicalSound31690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31690.moment H = canonicalOutput31690.moment H :=
  canonical_of_padded canonicalInput31690 canonicalOutput31690 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31691 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31691 : ExponentCode := normalNode3510

theorem canonicalSound31691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31691.moment H = canonicalOutput31691.moment H :=
  canonical_of_padded canonicalInput31691 canonicalOutput31691 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31692 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput31692 : ExponentCode := normalNode3815

theorem canonicalSound31692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31692.moment H = canonicalOutput31692.moment H :=
  canonical_of_padded canonicalInput31692 canonicalOutput31692 (by decide) (by decide)
    ⟨false, false, canonicalPermutation179, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31693 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput31693 : ExponentCode := normalNode1668

theorem canonicalSound31693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31693.moment H = canonicalOutput31693.moment H :=
  canonical_of_padded canonicalInput31693 canonicalOutput31693 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31694 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput31694 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3002⟩

theorem canonicalSound31694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31694.moment H = canonicalOutput31694.moment H :=
  canonical_of_padded canonicalInput31694 canonicalOutput31694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput31695 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 3, -3, 0]]⟩

def canonicalOutput31695 : ExponentCode := normalNode5937

theorem canonicalSound31695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31695.moment H = canonicalOutput31695.moment H :=
  canonical_of_padded canonicalInput31695 canonicalOutput31695 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31696 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31696 : ExponentCode := normalNode7743

theorem canonicalSound31696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31696.moment H = canonicalOutput31696.moment H :=
  canonical_of_padded canonicalInput31696 canonicalOutput31696 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31697 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 3, -1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31697 : ExponentCode := normalNode7651

theorem canonicalSound31697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31697.moment H = canonicalOutput31697.moment H :=
  canonical_of_padded canonicalInput31697 canonicalOutput31697 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31698 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput31698 : ExponentCode := normalNode548

theorem canonicalSound31698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31698.moment H = canonicalOutput31698.moment H :=
  canonical_of_padded canonicalInput31698 canonicalOutput31698 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31699 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -2, 0]]⟩

def canonicalOutput31699 : ExponentCode := normalNode3797

theorem canonicalSound31699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31699.moment H = canonicalOutput31699.moment H :=
  canonical_of_padded canonicalInput31699 canonicalOutput31699 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput31700 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput31700 : ExponentCode := normalNode5317

theorem canonicalSound31700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31700.moment H = canonicalOutput31700.moment H :=
  canonical_of_padded canonicalInput31700 canonicalOutput31700 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation246, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31701 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![-1, 3, -2, 0]]⟩

def canonicalOutput31701 : ExponentCode := normalNode5320

theorem canonicalSound31701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31701.moment H = canonicalOutput31701.moment H :=
  canonical_of_padded canonicalInput31701 canonicalOutput31701 (by decide) (by decide)
    ⟨false, true, canonicalPermutation294, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31702 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![0, -1, -1, 2], ![-1, 3, -1, -1]]⟩

def canonicalOutput31702 : ExponentCode := normalNode4336

theorem canonicalSound31702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31702.moment H = canonicalOutput31702.moment H :=
  canonical_of_padded canonicalInput31702 canonicalOutput31702 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31703 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![0, -1, 2, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31703 : ExponentCode := normalNode5388

theorem canonicalSound31703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31703.moment H = canonicalOutput31703.moment H :=
  canonical_of_padded canonicalInput31703 canonicalOutput31703 (by decide) (by decide)
    ⟨false, true, canonicalPermutation391, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31704 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31704 : ExponentCode := normalNode3511

theorem canonicalSound31704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31704.moment H = canonicalOutput31704.moment H :=
  canonical_of_padded canonicalInput31704 canonicalOutput31704 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31705 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0]]⟩

def canonicalOutput31705 : ExponentCode := normalNode3508

theorem canonicalSound31705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31705.moment H = canonicalOutput31705.moment H :=
  canonical_of_padded canonicalInput31705 canonicalOutput31705 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31706 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![0, 2, -2, 0]]⟩

def canonicalOutput31706 : ExponentCode := normalNode3810

theorem canonicalSound31706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31706.moment H = canonicalOutput31706.moment H :=
  canonical_of_padded canonicalInput31706 canonicalOutput31706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation257, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31707 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -3, 1]]⟩

def canonicalOutput31707 : ExponentCode := normalNode3470

theorem canonicalSound31707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31707.moment H = canonicalOutput31707.moment H :=
  canonical_of_padded canonicalInput31707 canonicalOutput31707 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31708 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput31708 : ExponentCode := normalNode7658

theorem canonicalSound31708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31708.moment H = canonicalOutput31708.moment H :=
  canonical_of_padded canonicalInput31708 canonicalOutput31708 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31709 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, -1, 2, -1], ![-1, 3, -2, 0]]⟩

def canonicalOutput31709 : ExponentCode := normalNode6649

theorem canonicalSound31709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31709.moment H = canonicalOutput31709.moment H :=
  canonical_of_padded canonicalInput31709 canonicalOutput31709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31710 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 3, -2, -1]]⟩

def canonicalOutput31710 : ExponentCode := normalNode3517

theorem canonicalSound31710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31710.moment H = canonicalOutput31710.moment H :=
  canonical_of_padded canonicalInput31710 canonicalOutput31710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation386, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31711 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -3, 0]]⟩

def canonicalOutput31711 : ExponentCode := normalNode5353

theorem canonicalSound31711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31711.moment H = canonicalOutput31711.moment H :=
  canonical_of_padded canonicalInput31711 canonicalOutput31711 (by decide) (by decide)
    ⟨false, true, canonicalPermutation277, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31712 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![-1, 3, -2, 0]]⟩

def canonicalOutput31712 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound31712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31712.moment H = canonicalOutput31712.moment H :=
  canonical_of_padded canonicalInput31712 canonicalOutput31712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31713 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![-1, 3, -3, 1]]⟩

def canonicalOutput31713 : ExponentCode := normalNode6029

theorem canonicalSound31713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31713.moment H = canonicalOutput31713.moment H :=
  canonical_of_padded canonicalInput31713 canonicalOutput31713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31714 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![0, -1, -1, 2], ![-1, 3, -1, -1]]⟩

def canonicalOutput31714 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3359⟩

theorem canonicalSound31714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31714.moment H = canonicalOutput31714.moment H :=
  canonical_of_padded canonicalInput31714 canonicalOutput31714 (by decide) (by decide)
    ⟨false, false, canonicalPermutation85, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31715 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, -1, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31715 : ExponentCode := normalNode7658

theorem canonicalSound31715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31715.moment H = canonicalOutput31715.moment H :=
  canonical_of_padded canonicalInput31715 canonicalOutput31715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31716 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 3, -1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31716 : ExponentCode := normalNode7736

theorem canonicalSound31716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31716.moment H = canonicalOutput31716.moment H :=
  canonical_of_padded canonicalInput31716 canonicalOutput31716 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31717 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![0, -1, -2, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31717 : ExponentCode := normalNode7736

theorem canonicalSound31717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31717.moment H = canonicalOutput31717.moment H :=
  canonical_of_padded canonicalInput31717 canonicalOutput31717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation376, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31718 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![0, -1, -1, 2], ![-1, 3, -2, 0]]⟩

def canonicalOutput31718 : ExponentCode := normalNode4382

theorem canonicalSound31718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31718.moment H = canonicalOutput31718.moment H :=
  canonical_of_padded canonicalInput31718 canonicalOutput31718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation282, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31719 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, -2, -1, 4], ![0, 3, -2, -1]]⟩

def canonicalOutput31719 : ExponentCode := normalNode6401

theorem canonicalSound31719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31719.moment H = canonicalOutput31719.moment H :=
  canonical_of_padded canonicalInput31719 canonicalOutput31719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31720 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![0, 2, -2, 0]]⟩

def canonicalOutput31720 : ExponentCode := normalNode3930

theorem canonicalSound31720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31720.moment H = canonicalOutput31720.moment H :=
  canonical_of_padded canonicalInput31720 canonicalOutput31720 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31721 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![0, -1, -2, 3]]⟩

def canonicalOutput31721 : ExponentCode := normalNode5395

theorem canonicalSound31721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31721.moment H = canonicalOutput31721.moment H :=
  canonical_of_padded canonicalInput31721 canonicalOutput31721 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31722 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 3, -1, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput31722 : ExponentCode := normalNode9573

theorem canonicalSound31722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31722.moment H = canonicalOutput31722.moment H :=
  canonical_of_padded canonicalInput31722 canonicalOutput31722 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31723 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![0, -1, 2, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31723 : ExponentCode := normalNode5391

theorem canonicalSound31723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31723.moment H = canonicalOutput31723.moment H :=
  canonical_of_padded canonicalInput31723 canonicalOutput31723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation391, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31724 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, -1, 1, 0], ![-1, 0, -2, 3]]⟩

def canonicalOutput31724 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound31724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31724.moment H = canonicalOutput31724.moment H :=
  canonical_of_padded canonicalInput31724 canonicalOutput31724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31725 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, -1, 2, -1], ![-1, 0, -3, 4]]⟩

def canonicalOutput31725 : ExponentCode := normalNode5340

theorem canonicalSound31725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31725.moment H = canonicalOutput31725.moment H :=
  canonical_of_padded canonicalInput31725 canonicalOutput31725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation391, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31726 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31726 : ExponentCode := normalNode1667

theorem canonicalSound31726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31726.moment H = canonicalOutput31726.moment H :=
  canonical_of_padded canonicalInput31726 canonicalOutput31726 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31727 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -2, 2, 0], ![0, 2, -1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput31727 : ExponentCode := normalNode546

theorem canonicalSound31727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31727.moment H = canonicalOutput31727.moment H :=
  canonical_of_padded canonicalInput31727 canonicalOutput31727 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31728 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31728 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound31728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31728.moment H = canonicalOutput31728.moment H :=
  canonical_of_padded canonicalInput31728 canonicalOutput31728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation406, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31729 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![-2, 1, -2, 3]]⟩

def canonicalOutput31729 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3232⟩

theorem canonicalSound31729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31729.moment H = canonicalOutput31729.moment H :=
  canonical_of_padded canonicalInput31729 canonicalOutput31729 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31730 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -2, 0], ![-2, 0, -1, 3]]⟩

def canonicalOutput31730 : ExponentCode := normalNode3508

theorem canonicalSound31730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31730.moment H = canonicalOutput31730.moment H :=
  canonical_of_padded canonicalInput31730 canonicalOutput31730 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31731 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput31731 : ExponentCode := normalNode3235

theorem canonicalSound31731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31731.moment H = canonicalOutput31731.moment H :=
  canonical_of_padded canonicalInput31731 canonicalOutput31731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31732 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput31732 : ExponentCode := normalNode4291

theorem canonicalSound31732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31732.moment H = canonicalOutput31732.moment H :=
  canonical_of_padded canonicalInput31732 canonicalOutput31732 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31733 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, -1, -1, 3], ![0, 3, -1, -2]]⟩

def canonicalOutput31733 : ExponentCode := normalNode7660

theorem canonicalSound31733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31733.moment H = canonicalOutput31733.moment H :=
  canonical_of_padded canonicalInput31733 canonicalOutput31733 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31734 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput31734 : ExponentCode := normalNode6665

theorem canonicalSound31734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31734.moment H = canonicalOutput31734.moment H :=
  canonical_of_padded canonicalInput31734 canonicalOutput31734 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31735 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31735 : ExponentCode := normalNode1846

theorem canonicalSound31735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31735.moment H = canonicalOutput31735.moment H :=
  canonical_of_padded canonicalInput31735 canonicalOutput31735 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31736 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31736 : ExponentCode := normalNode7682

theorem canonicalSound31736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31736.moment H = canonicalOutput31736.moment H :=
  canonical_of_padded canonicalInput31736 canonicalOutput31736 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31737 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput31737 : ExponentCode := normalNode5280

theorem canonicalSound31737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31737.moment H = canonicalOutput31737.moment H :=
  canonical_of_padded canonicalInput31737 canonicalOutput31737 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31738 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, 2, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput31738 : ExponentCode := normalNode2563

theorem canonicalSound31738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31738.moment H = canonicalOutput31738.moment H :=
  canonical_of_padded canonicalInput31738 canonicalOutput31738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31739 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -2, 0], ![0, -3, 2, 1]]⟩

def canonicalOutput31739 : ExponentCode := normalNode5378

theorem canonicalSound31739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31739.moment H = canonicalOutput31739.moment H :=
  canonical_of_padded canonicalInput31739 canonicalOutput31739 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31740 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput31740 : ExponentCode := normalNode4288

theorem canonicalSound31740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31740.moment H = canonicalOutput31740.moment H :=
  canonical_of_padded canonicalInput31740 canonicalOutput31740 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31741 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, -1, -1, 3], ![0, 3, -1, -2]]⟩

def canonicalOutput31741 : ExponentCode := normalNode7089

theorem canonicalSound31741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31741.moment H = canonicalOutput31741.moment H :=
  canonical_of_padded canonicalInput31741 canonicalOutput31741 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31742 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, 0, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput31742 : ExponentCode := normalNode7096

theorem canonicalSound31742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31742.moment H = canonicalOutput31742.moment H :=
  canonical_of_padded canonicalInput31742 canonicalOutput31742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31743 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, -2, -1, 4], ![0, 3, -1, -2]]⟩

def canonicalOutput31743 : ExponentCode := normalNode6373

theorem canonicalSound31743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31743.moment H = canonicalOutput31743.moment H :=
  canonical_of_padded canonicalInput31743 canonicalOutput31743 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18752 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput18752 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound18752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18752.moment H = canonicalOutput18752.moment H :=
  canonical_of_padded canonicalInput18752 canonicalOutput18752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18753 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, -3, 3], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput18753 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound18753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18753.moment H = canonicalOutput18753.moment H :=
  canonical_of_padded canonicalInput18753 canonicalOutput18753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18754 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput18754 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound18754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18754.moment H = canonicalOutput18754.moment H :=
  canonical_of_padded canonicalInput18754 canonicalOutput18754 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18755 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound18755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18755.moment H = canonicalOutput18755.moment H :=
  canonical_of_padded canonicalInput18755 canonicalOutput18755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18756 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound18756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18756.moment H = canonicalOutput18756.moment H :=
  canonical_of_padded canonicalInput18756 canonicalOutput18756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18757 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput18757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound18757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18757.moment H = canonicalOutput18757.moment H :=
  canonical_of_padded canonicalInput18757 canonicalOutput18757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18758 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput18758 : ExponentCode := normalNode9075

theorem canonicalSound18758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18758.moment H = canonicalOutput18758.moment H :=
  canonical_of_padded canonicalInput18758 canonicalOutput18758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18759 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput18759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound18759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18759.moment H = canonicalOutput18759.moment H :=
  canonical_of_padded canonicalInput18759 canonicalOutput18759 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18760 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, 1, -1], ![0, 3, 0, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput18760 : ExponentCode := normalNode6800

theorem canonicalSound18760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18760.moment H = canonicalOutput18760.moment H :=
  canonical_of_padded canonicalInput18760 canonicalOutput18760 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18761 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput18761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound18761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18761.moment H = canonicalOutput18761.moment H :=
  canonical_of_padded canonicalInput18761 canonicalOutput18761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18762 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 1, -4, 3], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput18762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound18762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18762.moment H = canonicalOutput18762.moment H :=
  canonical_of_padded canonicalInput18762 canonicalOutput18762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18763 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩

theorem canonicalSound18763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18763.moment H = canonicalOutput18763.moment H :=
  canonical_of_padded canonicalInput18763 canonicalOutput18763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18764 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput18764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound18764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18764.moment H = canonicalOutput18764.moment H :=
  canonical_of_padded canonicalInput18764 canonicalOutput18764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18765 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput18765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound18765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18765.moment H = canonicalOutput18765.moment H :=
  canonical_of_padded canonicalInput18765 canonicalOutput18765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18766 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput18766 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound18766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18766.moment H = canonicalOutput18766.moment H :=
  canonical_of_padded canonicalInput18766 canonicalOutput18766 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18767 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, 2, -4, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput18767 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound18767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18767.moment H = canonicalOutput18767.moment H :=
  canonical_of_padded canonicalInput18767 canonicalOutput18767 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18768 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, 2, 2, -4], ![1, -1, -4, 4]]⟩

def canonicalOutput18768 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound18768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18768.moment H = canonicalOutput18768.moment H :=
  canonical_of_padded canonicalInput18768 canonicalOutput18768 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18769 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 3, 0, -3], ![0, -2, -2, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput18769 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1175⟩

theorem canonicalSound18769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18769.moment H = canonicalOutput18769.moment H :=
  canonical_of_padded canonicalInput18769 canonicalOutput18769 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18770 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, 3, 1, -4], ![0, -1, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput18770 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1157⟩

theorem canonicalSound18770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18770.moment H = canonicalOutput18770.moment H :=
  canonical_of_padded canonicalInput18770 canonicalOutput18770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18771 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, 4, 0, -4], ![1, -3, -2, 4]]⟩

def canonicalOutput18771 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node216⟩

theorem canonicalSound18771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18771.moment H = canonicalOutput18771.moment H :=
  canonical_of_padded canonicalInput18771 canonicalOutput18771 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18772 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![1, -4, 0, 3], ![0, 5, -2, -3]]⟩

def canonicalOutput18772 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node194⟩

theorem canonicalSound18772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18772.moment H = canonicalOutput18772.moment H :=
  canonical_of_padded canonicalInput18772 canonicalOutput18772 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18773 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![1, -4, 1, 2], ![0, 5, -3, -2]]⟩

def canonicalOutput18773 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound18773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18773.moment H = canonicalOutput18773.moment H :=
  canonical_of_padded canonicalInput18773 canonicalOutput18773 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18774 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![1, -3, -1, 3], ![0, 4, -1, -3]]⟩

def canonicalOutput18774 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound18774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18774.moment H = canonicalOutput18774.moment H :=
  canonical_of_padded canonicalInput18774 canonicalOutput18774 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18775 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![1, -2, -2, 3], ![0, 3, 0, -3]]⟩

def canonicalOutput18775 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound18775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18775.moment H = canonicalOutput18775.moment H :=
  canonical_of_padded canonicalInput18775 canonicalOutput18775 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18776 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![1, -2, 3, -2], ![0, 3, -5, 2]]⟩

def canonicalOutput18776 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound18776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18776.moment H = canonicalOutput18776.moment H :=
  canonical_of_padded canonicalInput18776 canonicalOutput18776 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18777 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![1, -1, 3, -3], ![0, 2, -5, 3]]⟩

def canonicalOutput18777 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound18777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18777.moment H = canonicalOutput18777.moment H :=
  canonical_of_padded canonicalInput18777 canonicalOutput18777 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18778 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![2, -4, 0, 2], ![-1, 5, -2, -2]]⟩

def canonicalOutput18778 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound18778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18778.moment H = canonicalOutput18778.moment H :=
  canonical_of_padded canonicalInput18778 canonicalOutput18778 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18779 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![2, -4, 1, 1], ![-1, 5, -3, -1]]⟩

def canonicalOutput18779 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node172⟩

theorem canonicalSound18779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18779.moment H = canonicalOutput18779.moment H :=
  canonical_of_padded canonicalInput18779 canonicalOutput18779 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18780 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![2, -3, 2, -1], ![-1, 4, -4, 1]]⟩

def canonicalOutput18780 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node148⟩

theorem canonicalSound18780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18780.moment H = canonicalOutput18780.moment H :=
  canonical_of_padded canonicalInput18780 canonicalOutput18780 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18781 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![2, -1, 2, -3], ![-1, 2, -4, 3]]⟩

def canonicalOutput18781 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound18781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18781.moment H = canonicalOutput18781.moment H :=
  canonical_of_padded canonicalInput18781 canonicalOutput18781 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18782 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![3, -4, 0, 1], ![-2, 5, -2, -1]]⟩

def canonicalOutput18782 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound18782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18782.moment H = canonicalOutput18782.moment H :=
  canonical_of_padded canonicalInput18782 canonicalOutput18782 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18783 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![3, -1, 1, -3], ![-2, 2, -3, 3]]⟩

def canonicalOutput18783 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound18783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18783.moment H = canonicalOutput18783.moment H :=
  canonical_of_padded canonicalInput18783 canonicalOutput18783 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18784 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![4, -1, 0, -3], ![-3, 2, -2, 3]]⟩

def canonicalOutput18784 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound18784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18784.moment H = canonicalOutput18784.moment H :=
  canonical_of_padded canonicalInput18784 canonicalOutput18784 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18785 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, -1, -1, 1, 1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18785 : ExponentCode := normalNode4310

theorem canonicalSound18785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18785.moment H = canonicalOutput18785.moment H :=
  canonical_of_padded canonicalInput18785 canonicalOutput18785 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18786 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18786 : ExponentCode := normalNode9560

theorem canonicalSound18786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18786.moment H = canonicalOutput18786.moment H :=
  canonical_of_padded canonicalInput18786 canonicalOutput18786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput18787 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput18787 : ExponentCode := normalNode3364

theorem canonicalSound18787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18787.moment H = canonicalOutput18787.moment H :=
  canonical_of_padded canonicalInput18787 canonicalOutput18787 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18788 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput18788 : ExponentCode := normalNode5962

theorem canonicalSound18788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18788.moment H = canonicalOutput18788.moment H :=
  canonical_of_padded canonicalInput18788 canonicalOutput18788 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18789 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 1, -2, 1, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput18789 : ExponentCode := normalNode5936

theorem canonicalSound18789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18789.moment H = canonicalOutput18789.moment H :=
  canonical_of_padded canonicalInput18789 canonicalOutput18789 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18790 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 1, -1, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18790 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2262⟩

theorem canonicalSound18790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18790.moment H = canonicalOutput18790.moment H :=
  canonical_of_padded canonicalInput18790 canonicalOutput18790 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18791 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 1, -1, 3, -3], ![0, 1, -1, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput18791 : ExponentCode := normalNode10867

theorem canonicalSound18791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18791.moment H = canonicalOutput18791.moment H :=
  canonical_of_padded canonicalInput18791 canonicalOutput18791 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation59⟩ (by decide +kernel) hH

def canonicalInput18792 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 1, -1, 3, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18792 : ExponentCode := normalNode11155

theorem canonicalSound18792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18792.moment H = canonicalOutput18792.moment H :=
  canonical_of_padded canonicalInput18792 canonicalOutput18792 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18793 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![1, -1, 0, 3, -3], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput18793 : ExponentCode := normalNode5452

theorem canonicalSound18793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18793.moment H = canonicalOutput18793.moment H :=
  canonical_of_padded canonicalInput18793 canonicalOutput18793 (by decide) (by decide)
    ⟨true, true, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18794 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![1, 0, 0, 2, -3], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput18794 : ExponentCode := normalNode5936

theorem canonicalSound18794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18794.moment H = canonicalOutput18794.moment H :=
  canonical_of_padded canonicalInput18794 canonicalOutput18794 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18795 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![1, 0, 0, 3, -4], ![0, 1, -2, 0, 1]]⟩

def canonicalOutput18795 : ExponentCode := normalNode5921

theorem canonicalSound18795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18795.moment H = canonicalOutput18795.moment H :=
  canonical_of_padded canonicalInput18795 canonicalOutput18795 (by decide) (by decide)
    ⟨true, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18796 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18796 : ExponentCode := normalNode8295

theorem canonicalSound18796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18796.moment H = canonicalOutput18796.moment H :=
  canonical_of_padded canonicalInput18796 canonicalOutput18796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18797 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput18797 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1998⟩

theorem canonicalSound18797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18797.moment H = canonicalOutput18797.moment H :=
  canonical_of_padded canonicalInput18797 canonicalOutput18797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18798 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput18798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound18798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18798.moment H = canonicalOutput18798.moment H :=
  canonical_of_padded canonicalInput18798 canonicalOutput18798 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18799 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -2, 2], ![0, 1, -2, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound18799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18799.moment H = canonicalOutput18799.moment H :=
  canonical_of_padded canonicalInput18799 canonicalOutput18799 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18800 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18800 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound18800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18800.moment H = canonicalOutput18800.moment H :=
  canonical_of_padded canonicalInput18800 canonicalOutput18800 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18801 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 1, -1, -3, 3], ![0, 0, 0, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18801 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1629⟩

theorem canonicalSound18801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18801.moment H = canonicalOutput18801.moment H :=
  canonical_of_padded canonicalInput18801 canonicalOutput18801 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18802 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 0, 0], ![0, 1, -1, -3, 3], ![0, 0, 0, 3, -3], ![0, 1, -1, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput18802 : ExponentCode := normalNode10867

theorem canonicalSound18802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18802.moment H = canonicalOutput18802.moment H :=
  canonical_of_padded canonicalInput18802 canonicalOutput18802 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation51⟩ (by decide +kernel) hH

def canonicalInput18803 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![0, 1, -1, -3, 3], ![0, 0, 0, 3, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18803 : ExponentCode := normalNode11155

theorem canonicalSound18803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18803.moment H = canonicalOutput18803.moment H :=
  canonical_of_padded canonicalInput18803 canonicalOutput18803 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18804 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![1, -1, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput18804 : ExponentCode := normalNode5452

theorem canonicalSound18804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18804.moment H = canonicalOutput18804.moment H :=
  canonical_of_padded canonicalInput18804 canonicalOutput18804 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18805 : ExponentCode := ⟨6, 5, ![![-1, -1, 2, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0], ![-1, 2, -1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3]]⟩

def canonicalOutput18805 : ExponentCode := normalNode5643

theorem canonicalSound18805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18805.moment H = canonicalOutput18805.moment H :=
  canonical_of_padded canonicalInput18805 canonicalOutput18805 (by decide) (by decide)
    ⟨false, true, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput18806 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![1, 0, 0, -3, 2], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput18806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound18806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18806.moment H = canonicalOutput18806.moment H :=
  canonical_of_padded canonicalInput18806 canonicalOutput18806 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18807 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 0, 0], ![1, 0, 0, -3, 2], ![0, 0, 0, 3, -3], ![0, 1, -2, 0, 1]]⟩

def canonicalOutput18807 : ExponentCode := normalNode5936

theorem canonicalSound18807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18807.moment H = canonicalOutput18807.moment H :=
  canonical_of_padded canonicalInput18807 canonicalOutput18807 (by decide) (by decide)
    ⟨true, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18808 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18808 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound18808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18808.moment H = canonicalOutput18808.moment H :=
  canonical_of_padded canonicalInput18808 canonicalOutput18808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput18809 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18809 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound18809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18809.moment H = canonicalOutput18809.moment H :=
  canonical_of_padded canonicalInput18809 canonicalOutput18809 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput18810 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18810 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound18810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18810.moment H = canonicalOutput18810.moment H :=
  canonical_of_padded canonicalInput18810 canonicalOutput18810 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput18811 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18811 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound18811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18811.moment H = canonicalOutput18811.moment H :=
  canonical_of_padded canonicalInput18811 canonicalOutput18811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18812 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18812 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound18812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18812.moment H = canonicalOutput18812.moment H :=
  canonical_of_padded canonicalInput18812 canonicalOutput18812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18813 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18813 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound18813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18813.moment H = canonicalOutput18813.moment H :=
  canonical_of_padded canonicalInput18813 canonicalOutput18813 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput18814 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18814 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound18814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18814.moment H = canonicalOutput18814.moment H :=
  canonical_of_padded canonicalInput18814 canonicalOutput18814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput18815 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput18815 : ExponentCode := normalNode3766

theorem canonicalSound18815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18815.moment H = canonicalOutput18815.moment H :=
  canonical_of_padded canonicalInput18815 canonicalOutput18815 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

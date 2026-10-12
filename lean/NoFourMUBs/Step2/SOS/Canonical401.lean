import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25664 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 2, 3, -5], ![0, 0, -3, 3]]⟩

def canonicalOutput25664 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node129⟩

theorem canonicalSound25664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25664.moment H = canonicalOutput25664.moment H :=
  canonical_of_padded canonicalInput25664 canonicalOutput25664 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25665 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![-1, 1, 1, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput25665 : ExponentCode := normalNode723

theorem canonicalSound25665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25665.moment H = canonicalOutput25665.moment H :=
  canonical_of_padded canonicalInput25665 canonicalOutput25665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25666 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![2, 0, -2, 0], ![-1, 3, 1, -3]]⟩

def canonicalOutput25666 : ExponentCode := normalNode94

theorem canonicalSound25666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25666.moment H = canonicalOutput25666.moment H :=
  canonical_of_padded canonicalInput25666 canonicalOutput25666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25667 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![-2, 1, 1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput25667 : ExponentCode := normalNode786

theorem canonicalSound25667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25667.moment H = canonicalOutput25667.moment H :=
  canonical_of_padded canonicalInput25667 canonicalOutput25667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25668 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput25668 : ExponentCode := normalNode9273

theorem canonicalSound25668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25668.moment H = canonicalOutput25668.moment H :=
  canonical_of_padded canonicalInput25668 canonicalOutput25668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25669 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![1, 0, -2, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput25669 : ExponentCode := normalNode6034

theorem canonicalSound25669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25669.moment H = canonicalOutput25669.moment H :=
  canonical_of_padded canonicalInput25669 canonicalOutput25669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25670 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![2, 0, -2, 0], ![-2, 3, 1, -2]]⟩

def canonicalOutput25670 : ExponentCode := normalNode538

theorem canonicalSound25670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25670.moment H = canonicalOutput25670.moment H :=
  canonical_of_padded canonicalInput25670 canonicalOutput25670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25671 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput25671 : ExponentCode := normalNode10260

theorem canonicalSound25671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25671.moment H = canonicalOutput25671.moment H :=
  canonical_of_padded canonicalInput25671 canonicalOutput25671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25672 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput25672 : ExponentCode := normalNode10702

theorem canonicalSound25672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25672.moment H = canonicalOutput25672.moment H :=
  canonical_of_padded canonicalInput25672 canonicalOutput25672 (by decide) (by decide)
    ⟨false, true, canonicalPermutation274, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25673 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25673 : ExponentCode := normalNode10825

theorem canonicalSound25673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25673.moment H = canonicalOutput25673.moment H :=
  canonical_of_padded canonicalInput25673 canonicalOutput25673 (by decide) (by decide)
    ⟨false, true, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25674 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25674 : ExponentCode := normalNode9683

theorem canonicalSound25674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25674.moment H = canonicalOutput25674.moment H :=
  canonical_of_padded canonicalInput25674 canonicalOutput25674 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25675 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput25675 : ExponentCode := normalNode3387

theorem canonicalSound25675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25675.moment H = canonicalOutput25675.moment H :=
  canonical_of_padded canonicalInput25675 canonicalOutput25675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25676 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput25676 : ExponentCode := normalNode3049

theorem canonicalSound25676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25676.moment H = canonicalOutput25676.moment H :=
  canonical_of_padded canonicalInput25676 canonicalOutput25676 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25677 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 2, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput25677 : ExponentCode := normalNode5774

theorem canonicalSound25677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25677.moment H = canonicalOutput25677.moment H :=
  canonical_of_padded canonicalInput25677 canonicalOutput25677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25678 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput25678 : ExponentCode := normalNode7679

theorem canonicalSound25678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25678.moment H = canonicalOutput25678.moment H :=
  canonical_of_padded canonicalInput25678 canonicalOutput25678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25679 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput25679 : ExponentCode := normalNode4730

theorem canonicalSound25679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25679.moment H = canonicalOutput25679.moment H :=
  canonical_of_padded canonicalInput25679 canonicalOutput25679 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25680 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25680 : ExponentCode := normalNode5032

theorem canonicalSound25680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25680.moment H = canonicalOutput25680.moment H :=
  canonical_of_padded canonicalInput25680 canonicalOutput25680 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25681 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput25681 : ExponentCode := normalNode4817

theorem canonicalSound25681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25681.moment H = canonicalOutput25681.moment H :=
  canonical_of_padded canonicalInput25681 canonicalOutput25681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25682 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25682 : ExponentCode := normalNode10473

theorem canonicalSound25682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25682.moment H = canonicalOutput25682.moment H :=
  canonical_of_padded canonicalInput25682 canonicalOutput25682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25683 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 2, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput25683 : ExponentCode := normalNode4825

theorem canonicalSound25683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25683.moment H = canonicalOutput25683.moment H :=
  canonical_of_padded canonicalInput25683 canonicalOutput25683 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25684 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput25684 : ExponentCode := normalNode3189

theorem canonicalSound25684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25684.moment H = canonicalOutput25684.moment H :=
  canonical_of_padded canonicalInput25684 canonicalOutput25684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25685 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-3, -1, 3, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput25685 : ExponentCode := normalNode75

theorem canonicalSound25685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25685.moment H = canonicalOutput25685.moment H :=
  canonical_of_padded canonicalInput25685 canonicalOutput25685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25686 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-2, -1, 3, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput25686 : ExponentCode := normalNode7651

theorem canonicalSound25686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25686.moment H = canonicalOutput25686.moment H :=
  canonical_of_padded canonicalInput25686 canonicalOutput25686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput25687 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-1, -1, 3, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput25687 : ExponentCode := normalNode7743

theorem canonicalSound25687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25687.moment H = canonicalOutput25687.moment H :=
  canonical_of_padded canonicalInput25687 canonicalOutput25687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput25688 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput25688 : ExponentCode := normalNode10673

theorem canonicalSound25688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25688.moment H = canonicalOutput25688.moment H :=
  canonical_of_padded canonicalInput25688 canonicalOutput25688 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation240, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25689 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 0, 0, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25689 : ExponentCode := normalNode10664

theorem canonicalSound25689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25689.moment H = canonicalOutput25689.moment H :=
  canonical_of_padded canonicalInput25689 canonicalOutput25689 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation247, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25690 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput25690 : ExponentCode := normalNode10474

theorem canonicalSound25690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25690.moment H = canonicalOutput25690.moment H :=
  canonical_of_padded canonicalInput25690 canonicalOutput25690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25691 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25691 : ExponentCode := normalNode5730

theorem canonicalSound25691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25691.moment H = canonicalOutput25691.moment H :=
  canonical_of_padded canonicalInput25691 canonicalOutput25691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25692 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput25692 : ExponentCode := normalNode1251

theorem canonicalSound25692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25692.moment H = canonicalOutput25692.moment H :=
  canonical_of_padded canonicalInput25692 canonicalOutput25692 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25693 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 3, 1, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput25693 : ExponentCode := normalNode9403

theorem canonicalSound25693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25693.moment H = canonicalOutput25693.moment H :=
  canonical_of_padded canonicalInput25693 canonicalOutput25693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25694 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput25694 : ExponentCode := normalNode6397

theorem canonicalSound25694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25694.moment H = canonicalOutput25694.moment H :=
  canonical_of_padded canonicalInput25694 canonicalOutput25694 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25695 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput25695 : ExponentCode := normalNode9881

theorem canonicalSound25695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25695.moment H = canonicalOutput25695.moment H :=
  canonical_of_padded canonicalInput25695 canonicalOutput25695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25696 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput25696 : ExponentCode := normalNode1083

theorem canonicalSound25696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25696.moment H = canonicalOutput25696.moment H :=
  canonical_of_padded canonicalInput25696 canonicalOutput25696 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25697 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput25697 : ExponentCode := normalNode1032

theorem canonicalSound25697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25697.moment H = canonicalOutput25697.moment H :=
  canonical_of_padded canonicalInput25697 canonicalOutput25697 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25698 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![-1, 1, -2, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput25698 : ExponentCode := normalNode3176

theorem canonicalSound25698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25698.moment H = canonicalOutput25698.moment H :=
  canonical_of_padded canonicalInput25698 canonicalOutput25698 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25699 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput25699 : ExponentCode := normalNode1040

theorem canonicalSound25699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25699.moment H = canonicalOutput25699.moment H :=
  canonical_of_padded canonicalInput25699 canonicalOutput25699 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25700 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, 0, -2, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput25700 : ExponentCode := normalNode1270

theorem canonicalSound25700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25700.moment H = canonicalOutput25700.moment H :=
  canonical_of_padded canonicalInput25700 canonicalOutput25700 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25701 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-1, 2, -3, 2]]⟩

def canonicalOutput25701 : ExponentCode := normalNode6167

theorem canonicalSound25701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25701.moment H = canonicalOutput25701.moment H :=
  canonical_of_padded canonicalInput25701 canonicalOutput25701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25702 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput25702 : ExponentCode := normalNode3175

theorem canonicalSound25702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25702.moment H = canonicalOutput25702.moment H :=
  canonical_of_padded canonicalInput25702 canonicalOutput25702 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25703 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25703 : ExponentCode := normalNode6388

theorem canonicalSound25703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25703.moment H = canonicalOutput25703.moment H :=
  canonical_of_padded canonicalInput25703 canonicalOutput25703 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25704 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25704 : ExponentCode := normalNode9607

theorem canonicalSound25704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25704.moment H = canonicalOutput25704.moment H :=
  canonical_of_padded canonicalInput25704 canonicalOutput25704 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25705 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput25705 : ExponentCode := normalNode3213

theorem canonicalSound25705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25705.moment H = canonicalOutput25705.moment H :=
  canonical_of_padded canonicalInput25705 canonicalOutput25705 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25706 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput25706 : ExponentCode := normalNode7302

theorem canonicalSound25706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25706.moment H = canonicalOutput25706.moment H :=
  canonical_of_padded canonicalInput25706 canonicalOutput25706 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25707 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25707 : ExponentCode := normalNode9789

theorem canonicalSound25707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25707.moment H = canonicalOutput25707.moment H :=
  canonical_of_padded canonicalInput25707 canonicalOutput25707 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25708 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput25708 : ExponentCode := normalNode7302

theorem canonicalSound25708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25708.moment H = canonicalOutput25708.moment H :=
  canonical_of_padded canonicalInput25708 canonicalOutput25708 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25709 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 0, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput25709 : ExponentCode := normalNode9789

theorem canonicalSound25709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25709.moment H = canonicalOutput25709.moment H :=
  canonical_of_padded canonicalInput25709 canonicalOutput25709 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25710 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-2, 2, -1, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput25710 : ExponentCode := normalNode393

theorem canonicalSound25710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25710.moment H = canonicalOutput25710.moment H :=
  canonical_of_padded canonicalInput25710 canonicalOutput25710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25711 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-2, 1, 0, 1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput25711 : ExponentCode := normalNode4469

theorem canonicalSound25711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25711.moment H = canonicalOutput25711.moment H :=
  canonical_of_padded canonicalInput25711 canonicalOutput25711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25712 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![-1, 1, -2, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput25712 : ExponentCode := normalNode1221

theorem canonicalSound25712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25712.moment H = canonicalOutput25712.moment H :=
  canonical_of_padded canonicalInput25712 canonicalOutput25712 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25713 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-1, 3, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25713 : ExponentCode := normalNode6105

theorem canonicalSound25713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25713.moment H = canonicalOutput25713.moment H :=
  canonical_of_padded canonicalInput25713 canonicalOutput25713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25714 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput25714 : ExponentCode := normalNode6495

theorem canonicalSound25714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25714.moment H = canonicalOutput25714.moment H :=
  canonical_of_padded canonicalInput25714 canonicalOutput25714 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25715 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 1, -1, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput25715 : ExponentCode := normalNode870

theorem canonicalSound25715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25715.moment H = canonicalOutput25715.moment H :=
  canonical_of_padded canonicalInput25715 canonicalOutput25715 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25716 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-2, 1, -2, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput25716 : ExponentCode := normalNode491

theorem canonicalSound25716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25716.moment H = canonicalOutput25716.moment H :=
  canonical_of_padded canonicalInput25716 canonicalOutput25716 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25717 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput25717 : ExponentCode := normalNode6935

theorem canonicalSound25717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25717.moment H = canonicalOutput25717.moment H :=
  canonical_of_padded canonicalInput25717 canonicalOutput25717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25718 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 3, 1, -4], ![0, 0, -3, 3]]⟩

def canonicalOutput25718 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩

theorem canonicalSound25718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25718.moment H = canonicalOutput25718.moment H :=
  canonical_of_padded canonicalInput25718 canonicalOutput25718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25719 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput25719 : ExponentCode := normalNode613

theorem canonicalSound25719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25719.moment H = canonicalOutput25719.moment H :=
  canonical_of_padded canonicalInput25719 canonicalOutput25719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25720 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput25720 : ExponentCode := normalNode7006

theorem canonicalSound25720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25720.moment H = canonicalOutput25720.moment H :=
  canonical_of_padded canonicalInput25720 canonicalOutput25720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25721 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![-1, 2, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput25721 : ExponentCode := normalNode10689

theorem canonicalSound25721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25721.moment H = canonicalOutput25721.moment H :=
  canonical_of_padded canonicalInput25721 canonicalOutput25721 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25722 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![0, 2, 2, -4], ![0, 0, -1, 1]]⟩

def canonicalOutput25722 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node443⟩

theorem canonicalSound25722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25722.moment H = canonicalOutput25722.moment H :=
  canonical_of_padded canonicalInput25722 canonicalOutput25722 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25723 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, 1, -1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput25723 : ExponentCode := normalNode1083

theorem canonicalSound25723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25723.moment H = canonicalOutput25723.moment H :=
  canonical_of_padded canonicalInput25723 canonicalOutput25723 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25724 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, 0, -1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput25724 : ExponentCode := normalNode1083

theorem canonicalSound25724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25724.moment H = canonicalOutput25724.moment H :=
  canonical_of_padded canonicalInput25724 canonicalOutput25724 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25725 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![-1, 1, -2, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput25725 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3122⟩

theorem canonicalSound25725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25725.moment H = canonicalOutput25725.moment H :=
  canonical_of_padded canonicalInput25725 canonicalOutput25725 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25726 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, -1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput25726 : ExponentCode := normalNode1068

theorem canonicalSound25726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25726.moment H = canonicalOutput25726.moment H :=
  canonical_of_padded canonicalInput25726 canonicalOutput25726 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25727 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 2, -1, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput25727 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3118⟩

theorem canonicalSound25727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25727.moment H = canonicalOutput25727.moment H :=
  canonical_of_padded canonicalInput25727 canonicalOutput25727 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

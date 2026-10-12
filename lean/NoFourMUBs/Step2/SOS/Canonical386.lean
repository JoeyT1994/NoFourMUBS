import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24704 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24704 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound24704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24704.moment H = canonicalOutput24704.moment H :=
  canonical_of_padded canonicalInput24704 canonicalOutput24704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24705 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput24705 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound24705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24705.moment H = canonicalOutput24705.moment H :=
  canonical_of_padded canonicalInput24705 canonicalOutput24705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24706 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput24706 : ExponentCode := normalNode6714

theorem canonicalSound24706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24706.moment H = canonicalOutput24706.moment H :=
  canonical_of_padded canonicalInput24706 canonicalOutput24706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24707 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 4, -3], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput24707 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1156⟩

theorem canonicalSound24707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24707.moment H = canonicalOutput24707.moment H :=
  canonical_of_padded canonicalInput24707 canonicalOutput24707 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput24708 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, 1, -2, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24708 : ExponentCode := normalNode11024

theorem canonicalSound24708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24708.moment H = canonicalOutput24708.moment H :=
  canonical_of_padded canonicalInput24708 canonicalOutput24708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24709 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput24709 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound24709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24709.moment H = canonicalOutput24709.moment H :=
  canonical_of_padded canonicalInput24709 canonicalOutput24709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24710 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, -2, 2], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput24710 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound24710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24710.moment H = canonicalOutput24710.moment H :=
  canonical_of_padded canonicalInput24710 canonicalOutput24710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24711 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, 1, -1, 1], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24711 : ExponentCode := normalNode9390

theorem canonicalSound24711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24711.moment H = canonicalOutput24711.moment H :=
  canonical_of_padded canonicalInput24711 canonicalOutput24711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24712 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput24712 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound24712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24712.moment H = canonicalOutput24712.moment H :=
  canonical_of_padded canonicalInput24712 canonicalOutput24712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24713 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, 0, 0], ![0, 1, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput24713 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound24713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24713.moment H = canonicalOutput24713.moment H :=
  canonical_of_padded canonicalInput24713 canonicalOutput24713 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24714 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput24714 : ExponentCode := normalNode11099

theorem canonicalSound24714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24714.moment H = canonicalOutput24714.moment H :=
  canonical_of_padded canonicalInput24714 canonicalOutput24714 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24715 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, 1, -1], ![0, 1, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput24715 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound24715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24715.moment H = canonicalOutput24715.moment H :=
  canonical_of_padded canonicalInput24715 canonicalOutput24715 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24716 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput24716 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound24716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24716.moment H = canonicalOutput24716.moment H :=
  canonical_of_padded canonicalInput24716 canonicalOutput24716 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24717 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24717 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1360⟩

theorem canonicalSound24717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24717.moment H = canonicalOutput24717.moment H :=
  canonical_of_padded canonicalInput24717 canonicalOutput24717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24718 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput24718 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound24718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24718.moment H = canonicalOutput24718.moment H :=
  canonical_of_padded canonicalInput24718 canonicalOutput24718 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24719 : ExponentCode := ⟨3, 4, ![![0, -1, -1, 2], ![-1, 2, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput24719 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound24719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24719.moment H = canonicalOutput24719.moment H :=
  canonical_of_padded canonicalInput24719 canonicalOutput24719 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24720 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput24720 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound24720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24720.moment H = canonicalOutput24720.moment H :=
  canonical_of_padded canonicalInput24720 canonicalOutput24720 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24721 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput24721 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound24721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24721.moment H = canonicalOutput24721.moment H :=
  canonical_of_padded canonicalInput24721 canonicalOutput24721 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24722 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -2, 3, -1], ![0, 1, -2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput24722 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound24722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24722.moment H = canonicalOutput24722.moment H :=
  canonical_of_padded canonicalInput24722 canonicalOutput24722 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24723 : ExponentCode := ⟨3, 4, ![![0, -1, -1, 2], ![0, -2, 3, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput24723 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound24723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24723.moment H = canonicalOutput24723.moment H :=
  canonical_of_padded canonicalInput24723 canonicalOutput24723 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24724 : ExponentCode := ⟨3, 4, ![![0, -1, -1, 2], ![0, -1, -2, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput24724 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩

theorem canonicalSound24724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24724.moment H = canonicalOutput24724.moment H :=
  canonical_of_padded canonicalInput24724 canonicalOutput24724 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24725 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, -1, 2], ![-1, 2, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput24725 : ExponentCode := normalNode7854

theorem canonicalSound24725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24725.moment H = canonicalOutput24725.moment H :=
  canonical_of_padded canonicalInput24725 canonicalOutput24725 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24726 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput24726 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound24726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24726.moment H = canonicalOutput24726.moment H :=
  canonical_of_padded canonicalInput24726 canonicalOutput24726 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24727 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput24727 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound24727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24727.moment H = canonicalOutput24727.moment H :=
  canonical_of_padded canonicalInput24727 canonicalOutput24727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24728 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, -1, 2], ![0, 2, 3, -5], ![0, 0, -1, 1]]⟩

def canonicalOutput24728 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩

theorem canonicalSound24728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24728.moment H = canonicalOutput24728.moment H :=
  canonical_of_padded canonicalInput24728 canonicalOutput24728 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24729 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, -1, 0, 1], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24729 : ExponentCode := normalNode10835

theorem canonicalSound24729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24729.moment H = canonicalOutput24729.moment H :=
  canonical_of_padded canonicalInput24729 canonicalOutput24729 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24730 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 0, 1], ![-1, 2, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput24730 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node762⟩

theorem canonicalSound24730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24730.moment H = canonicalOutput24730.moment H :=
  canonical_of_padded canonicalInput24730 canonicalOutput24730 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24731 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24731 : ExponentCode := normalNode10835

theorem canonicalSound24731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24731.moment H = canonicalOutput24731.moment H :=
  canonical_of_padded canonicalInput24731 canonicalOutput24731 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24732 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput24732 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1130⟩

theorem canonicalSound24732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24732.moment H = canonicalOutput24732.moment H :=
  canonical_of_padded canonicalInput24732 canonicalOutput24732 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24733 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound24733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24733.moment H = canonicalOutput24733.moment H :=
  canonical_of_padded canonicalInput24733 canonicalOutput24733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24734 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 1, 0], ![-1, 2, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput24734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound24734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24734.moment H = canonicalOutput24734.moment H :=
  canonical_of_padded canonicalInput24734 canonicalOutput24734 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24735 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24735 : ExponentCode := normalNode9460

theorem canonicalSound24735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24735.moment H = canonicalOutput24735.moment H :=
  canonical_of_padded canonicalInput24735 canonicalOutput24735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24736 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24736 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node227⟩

theorem canonicalSound24736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24736.moment H = canonicalOutput24736.moment H :=
  canonical_of_padded canonicalInput24736 canonicalOutput24736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24737 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 1, 0], ![0, 2, 2, -4], ![0, 0, -2, 2]]⟩

def canonicalOutput24737 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound24737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24737.moment H = canonicalOutput24737.moment H :=
  canonical_of_padded canonicalInput24737 canonicalOutput24737 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24738 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 2, -1], ![-1, 2, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput24738 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound24738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24738.moment H = canonicalOutput24738.moment H :=
  canonical_of_padded canonicalInput24738 canonicalOutput24738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24739 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 2, -1], ![-1, 2, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput24739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound24739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24739.moment H = canonicalOutput24739.moment H :=
  canonical_of_padded canonicalInput24739 canonicalOutput24739 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24740 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput24740 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound24740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24740.moment H = canonicalOutput24740.moment H :=
  canonical_of_padded canonicalInput24740 canonicalOutput24740 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24741 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput24741 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound24741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24741.moment H = canonicalOutput24741.moment H :=
  canonical_of_padded canonicalInput24741 canonicalOutput24741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24742 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput24742 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound24742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24742.moment H = canonicalOutput24742.moment H :=
  canonical_of_padded canonicalInput24742 canonicalOutput24742 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24743 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, 1, -3], ![0, 0, -2, 2]]⟩

def canonicalOutput24743 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound24743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24743.moment H = canonicalOutput24743.moment H :=
  canonical_of_padded canonicalInput24743 canonicalOutput24743 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24744 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput24744 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound24744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24744.moment H = canonicalOutput24744.moment H :=
  canonical_of_padded canonicalInput24744 canonicalOutput24744 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24745 : ExponentCode := ⟨3, 4, ![![0, -1, -1, 2], ![0, -1, 4, -3], ![0, 2, -3, 1]]⟩

def canonicalOutput24745 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound24745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24745.moment H = canonicalOutput24745.moment H :=
  canonical_of_padded canonicalInput24745 canonicalOutput24745 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24746 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24746 : ExponentCode := normalNode11141

theorem canonicalSound24746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24746.moment H = canonicalOutput24746.moment H :=
  canonical_of_padded canonicalInput24746 canonicalOutput24746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24747 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![-1, 2, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput24747 : ExponentCode := normalNode11072

theorem canonicalSound24747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24747.moment H = canonicalOutput24747.moment H :=
  canonical_of_padded canonicalInput24747 canonicalOutput24747 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24748 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![-1, 2, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩

theorem canonicalSound24748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24748.moment H = canonicalOutput24748.moment H :=
  canonical_of_padded canonicalInput24748 canonicalOutput24748 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24749 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24749 : ExponentCode := normalNode11154

theorem canonicalSound24749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24749.moment H = canonicalOutput24749.moment H :=
  canonical_of_padded canonicalInput24749 canonicalOutput24749 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24750 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24750 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound24750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24750.moment H = canonicalOutput24750.moment H :=
  canonical_of_padded canonicalInput24750 canonicalOutput24750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24751 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![0, -1, 3, -2]]⟩

def canonicalOutput24751 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound24751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24751.moment H = canonicalOutput24751.moment H :=
  canonical_of_padded canonicalInput24751 canonicalOutput24751 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24752 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 2, -4], ![0, -1, 1, 0]]⟩

def canonicalOutput24752 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound24752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24752.moment H = canonicalOutput24752.moment H :=
  canonical_of_padded canonicalInput24752 canonicalOutput24752 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24753 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput24753 : ExponentCode := normalNode10254

theorem canonicalSound24753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24753.moment H = canonicalOutput24753.moment H :=
  canonical_of_padded canonicalInput24753 canonicalOutput24753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24754 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24754 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound24754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24754.moment H = canonicalOutput24754.moment H :=
  canonical_of_padded canonicalInput24754 canonicalOutput24754 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24755 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput24755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound24755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24755.moment H = canonicalOutput24755.moment H :=
  canonical_of_padded canonicalInput24755 canonicalOutput24755 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24756 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput24756 : ExponentCode := normalNode819

theorem canonicalSound24756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24756.moment H = canonicalOutput24756.moment H :=
  canonical_of_padded canonicalInput24756 canonicalOutput24756 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24757 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![-1, 2, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput24757 : ExponentCode := normalNode944

theorem canonicalSound24757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24757.moment H = canonicalOutput24757.moment H :=
  canonical_of_padded canonicalInput24757 canonicalOutput24757 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24758 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24758 : ExponentCode := normalNode11163

theorem canonicalSound24758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24758.moment H = canonicalOutput24758.moment H :=
  canonical_of_padded canonicalInput24758 canonicalOutput24758 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24759 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput24759 : ExponentCode := normalNode4215

theorem canonicalSound24759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24759.moment H = canonicalOutput24759.moment H :=
  canonical_of_padded canonicalInput24759 canonicalOutput24759 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24760 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -1, 0, 1]]⟩

def canonicalOutput24760 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node387⟩

theorem canonicalSound24760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24760.moment H = canonicalOutput24760.moment H :=
  canonical_of_padded canonicalInput24760 canonicalOutput24760 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24761 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput24761 : ExponentCode := normalNode5674

theorem canonicalSound24761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24761.moment H = canonicalOutput24761.moment H :=
  canonical_of_padded canonicalInput24761 canonicalOutput24761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24762 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput24762 : ExponentCode := normalNode4695

theorem canonicalSound24762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24762.moment H = canonicalOutput24762.moment H :=
  canonical_of_padded canonicalInput24762 canonicalOutput24762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24763 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput24763 : ExponentCode := normalNode5679

theorem canonicalSound24763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24763.moment H = canonicalOutput24763.moment H :=
  canonical_of_padded canonicalInput24763 canonicalOutput24763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24764 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput24764 : ExponentCode := normalNode5829

theorem canonicalSound24764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24764.moment H = canonicalOutput24764.moment H :=
  canonical_of_padded canonicalInput24764 canonicalOutput24764 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation300, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24765 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24765 : ExponentCode := normalNode4694

theorem canonicalSound24765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24765.moment H = canonicalOutput24765.moment H :=
  canonical_of_padded canonicalInput24765 canonicalOutput24765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24766 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput24766 : ExponentCode := normalNode5718

theorem canonicalSound24766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24766.moment H = canonicalOutput24766.moment H :=
  canonical_of_padded canonicalInput24766 canonicalOutput24766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24767 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput24767 : ExponentCode := normalNode5719

theorem canonicalSound24767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24767.moment H = canonicalOutput24767.moment H :=
  canonical_of_padded canonicalInput24767 canonicalOutput24767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19712 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 3, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩

theorem canonicalSound19712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19712.moment H = canonicalOutput19712.moment H :=
  canonical_of_padded canonicalInput19712 canonicalOutput19712 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19713 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 0, 3, -2], ![1, 0, 1, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19713 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩

theorem canonicalSound19713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19713.moment H = canonicalOutput19713.moment H :=
  canonical_of_padded canonicalInput19713 canonicalOutput19713 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19714 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, -1, 1], ![0, 0, -1, 3, -2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput19714 : ExponentCode := normalNode6158

theorem canonicalSound19714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19714.moment H = canonicalOutput19714.moment H :=
  canonical_of_padded canonicalInput19714 canonicalOutput19714 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19715 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, -1, 1], ![1, 0, -1, 2, -2], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput19715 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2167⟩

theorem canonicalSound19715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19715.moment H = canonicalOutput19715.moment H :=
  canonical_of_padded canonicalInput19715 canonicalOutput19715 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19716 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19716 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2512⟩

theorem canonicalSound19716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19716.moment H = canonicalOutput19716.moment H :=
  canonical_of_padded canonicalInput19716 canonicalOutput19716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19717 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound19717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19717.moment H = canonicalOutput19717.moment H :=
  canonical_of_padded canonicalInput19717 canonicalOutput19717 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19718 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19718 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound19718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19718.moment H = canonicalOutput19718.moment H :=
  canonical_of_padded canonicalInput19718 canonicalOutput19718 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19719 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19719 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2512⟩

theorem canonicalSound19719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19719.moment H = canonicalOutput19719.moment H :=
  canonical_of_padded canonicalInput19719 canonicalOutput19719 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19720 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19720 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2169⟩

theorem canonicalSound19720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19720.moment H = canonicalOutput19720.moment H :=
  canonical_of_padded canonicalInput19720 canonicalOutput19720 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19721 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 1, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19721 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2772⟩

theorem canonicalSound19721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19721.moment H = canonicalOutput19721.moment H :=
  canonical_of_padded canonicalInput19721 canonicalOutput19721 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19722 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, -1, 3], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19722 : ExponentCode := normalNode9759

theorem canonicalSound19722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19722.moment H = canonicalOutput19722.moment H :=
  canonical_of_padded canonicalInput19722 canonicalOutput19722 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput19723 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19723 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound19723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19723.moment H = canonicalOutput19723.moment H :=
  canonical_of_padded canonicalInput19723 canonicalOutput19723 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19724 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19724 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound19724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19724.moment H = canonicalOutput19724.moment H :=
  canonical_of_padded canonicalInput19724 canonicalOutput19724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19725 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19725 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node942⟩

theorem canonicalSound19725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19725.moment H = canonicalOutput19725.moment H :=
  canonical_of_padded canonicalInput19725 canonicalOutput19725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19726 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19726 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound19726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19726.moment H = canonicalOutput19726.moment H :=
  canonical_of_padded canonicalInput19726 canonicalOutput19726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19727 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19727 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound19727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19727.moment H = canonicalOutput19727.moment H :=
  canonical_of_padded canonicalInput19727 canonicalOutput19727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19728 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19728 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound19728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19728.moment H = canonicalOutput19728.moment H :=
  canonical_of_padded canonicalInput19728 canonicalOutput19728 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19729 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19729 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound19729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19729.moment H = canonicalOutput19729.moment H :=
  canonical_of_padded canonicalInput19729 canonicalOutput19729 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19730 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 2, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19730 : ExponentCode := normalNode2508

theorem canonicalSound19730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19730.moment H = canonicalOutput19730.moment H :=
  canonical_of_padded canonicalInput19730 canonicalOutput19730 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19731 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19731 : ExponentCode := normalNode10530

theorem canonicalSound19731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19731.moment H = canonicalOutput19731.moment H :=
  canonical_of_padded canonicalInput19731 canonicalOutput19731 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19732 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19732 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound19732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19732.moment H = canonicalOutput19732.moment H :=
  canonical_of_padded canonicalInput19732 canonicalOutput19732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19733 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2531⟩

theorem canonicalSound19733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19733.moment H = canonicalOutput19733.moment H :=
  canonical_of_padded canonicalInput19733 canonicalOutput19733 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19734 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19734 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2819⟩

theorem canonicalSound19734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19734.moment H = canonicalOutput19734.moment H :=
  canonical_of_padded canonicalInput19734 canonicalOutput19734 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19735 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19735 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound19735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19735.moment H = canonicalOutput19735.moment H :=
  canonical_of_padded canonicalInput19735 canonicalOutput19735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19736 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 0, -1, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19736 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound19736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19736.moment H = canonicalOutput19736.moment H :=
  canonical_of_padded canonicalInput19736 canonicalOutput19736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19737 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19737 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound19737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19737.moment H = canonicalOutput19737.moment H :=
  canonical_of_padded canonicalInput19737 canonicalOutput19737 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19738 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound19738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19738.moment H = canonicalOutput19738.moment H :=
  canonical_of_padded canonicalInput19738 canonicalOutput19738 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19739 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19739 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound19739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19739.moment H = canonicalOutput19739.moment H :=
  canonical_of_padded canonicalInput19739 canonicalOutput19739 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19740 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19740 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound19740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19740.moment H = canonicalOutput19740.moment H :=
  canonical_of_padded canonicalInput19740 canonicalOutput19740 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19741 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19741 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound19741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19741.moment H = canonicalOutput19741.moment H :=
  canonical_of_padded canonicalInput19741 canonicalOutput19741 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19742 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 3, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19742 : ExponentCode := normalNode4409

theorem canonicalSound19742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19742.moment H = canonicalOutput19742.moment H :=
  canonical_of_padded canonicalInput19742 canonicalOutput19742 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19743 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19743 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2539⟩

theorem canonicalSound19743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19743.moment H = canonicalOutput19743.moment H :=
  canonical_of_padded canonicalInput19743 canonicalOutput19743 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19744 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19744 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound19744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19744.moment H = canonicalOutput19744.moment H :=
  canonical_of_padded canonicalInput19744 canonicalOutput19744 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19745 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 1, -1, 2, -2], ![0, 0, 2, -2, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19745 : ExponentCode := normalNode4391

theorem canonicalSound19745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19745.moment H = canonicalOutput19745.moment H :=
  canonical_of_padded canonicalInput19745 canonicalOutput19745 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19746 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![0, 1, -1, 2, -2], ![0, 0, 2, -1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19746 : ExponentCode := normalNode10530

theorem canonicalSound19746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19746.moment H = canonicalOutput19746.moment H :=
  canonical_of_padded canonicalInput19746 canonicalOutput19746 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19747 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![1, -1, -2, 2, 0], ![0, 0, 3, -2, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19747 : ExponentCode := normalNode2043

theorem canonicalSound19747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19747.moment H = canonicalOutput19747.moment H :=
  canonical_of_padded canonicalInput19747 canonicalOutput19747 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19748 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![1, -1, -1, 0, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19748 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩

theorem canonicalSound19748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19748.moment H = canonicalOutput19748.moment H :=
  canonical_of_padded canonicalInput19748 canonicalOutput19748 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19749 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![1, -1, -1, 1, 0], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19749 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound19749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19749.moment H = canonicalOutput19749.moment H :=
  canonical_of_padded canonicalInput19749 canonicalOutput19749 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19750 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![1, -1, -1, 2, -1], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput19750 : ExponentCode := normalNode3603

theorem canonicalSound19750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19750.moment H = canonicalOutput19750.moment H :=
  canonical_of_padded canonicalInput19750 canonicalOutput19750 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19751 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![1, -1, -1, 3, -2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19751 : ExponentCode := normalNode3590

theorem canonicalSound19751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19751.moment H = canonicalOutput19751.moment H :=
  canonical_of_padded canonicalInput19751 canonicalOutput19751 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19752 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, -1, 3], ![1, -1, 1, -2, 1], ![0, 0, -1, 3, -2], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput19752 : ExponentCode := normalNode671

theorem canonicalSound19752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19752.moment H = canonicalOutput19752.moment H :=
  canonical_of_padded canonicalInput19752 canonicalOutput19752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19753 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput19753 : ExponentCode := normalNode2920

theorem canonicalSound19753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19753.moment H = canonicalOutput19753.moment H :=
  canonical_of_padded canonicalInput19753 canonicalOutput19753 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19754 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput19754 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound19754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19754.moment H = canonicalOutput19754.moment H :=
  canonical_of_padded canonicalInput19754 canonicalOutput19754 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19755 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19755 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19755.moment H = canonicalOutput19755.moment H :=
  canonical_of_padded canonicalInput19755 canonicalOutput19755 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19756 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput19756 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound19756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19756.moment H = canonicalOutput19756.moment H :=
  canonical_of_padded canonicalInput19756 canonicalOutput19756 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19757 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput19757 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound19757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19757.moment H = canonicalOutput19757.moment H :=
  canonical_of_padded canonicalInput19757 canonicalOutput19757 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19758 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19758 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1748⟩

theorem canonicalSound19758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19758.moment H = canonicalOutput19758.moment H :=
  canonical_of_padded canonicalInput19758 canonicalOutput19758 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19759 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19759 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1750⟩

theorem canonicalSound19759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19759.moment H = canonicalOutput19759.moment H :=
  canonical_of_padded canonicalInput19759 canonicalOutput19759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19760 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 1, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound19760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19760.moment H = canonicalOutput19760.moment H :=
  canonical_of_padded canonicalInput19760 canonicalOutput19760 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19761 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 2, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19761 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound19761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19761.moment H = canonicalOutput19761.moment H :=
  canonical_of_padded canonicalInput19761 canonicalOutput19761 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19762 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![1, 0, 1, 0, -2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput19762 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1748⟩

theorem canonicalSound19762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19762.moment H = canonicalOutput19762.moment H :=
  canonical_of_padded canonicalInput19762 canonicalOutput19762 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19763 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![1, 0, 1, 1, -3], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput19763 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound19763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19763.moment H = canonicalOutput19763.moment H :=
  canonical_of_padded canonicalInput19763 canonicalOutput19763 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19764 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 1, 1], ![1, 0, 2, -2, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound19764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19764.moment H = canonicalOutput19764.moment H :=
  canonical_of_padded canonicalInput19764 canonicalOutput19764 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19765 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput19765 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound19765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19765.moment H = canonicalOutput19765.moment H :=
  canonical_of_padded canonicalInput19765 canonicalOutput19765 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19766 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19766 : ExponentCode := normalNode10036

theorem canonicalSound19766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19766.moment H = canonicalOutput19766.moment H :=
  canonical_of_padded canonicalInput19766 canonicalOutput19766 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput19767 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19767 : ExponentCode := normalNode8288

theorem canonicalSound19767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19767.moment H = canonicalOutput19767.moment H :=
  canonical_of_padded canonicalInput19767 canonicalOutput19767 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput19768 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19768 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound19768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19768.moment H = canonicalOutput19768.moment H :=
  canonical_of_padded canonicalInput19768 canonicalOutput19768 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19769 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput19769 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound19769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19769.moment H = canonicalOutput19769.moment H :=
  canonical_of_padded canonicalInput19769 canonicalOutput19769 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19770 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput19770 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound19770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19770.moment H = canonicalOutput19770.moment H :=
  canonical_of_padded canonicalInput19770 canonicalOutput19770 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19771 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput19771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩

theorem canonicalSound19771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19771.moment H = canonicalOutput19771.moment H :=
  canonical_of_padded canonicalInput19771 canonicalOutput19771 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19772 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput19772 : ExponentCode := normalNode10855

theorem canonicalSound19772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19772.moment H = canonicalOutput19772.moment H :=
  canonical_of_padded canonicalInput19772 canonicalOutput19772 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19773 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩

theorem canonicalSound19773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19773.moment H = canonicalOutput19773.moment H :=
  canonical_of_padded canonicalInput19773 canonicalOutput19773 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19774 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19774 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound19774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19774.moment H = canonicalOutput19774.moment H :=
  canonical_of_padded canonicalInput19774 canonicalOutput19774 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19775 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound19775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19775.moment H = canonicalOutput19775.moment H :=
  canonical_of_padded canonicalInput19775 canonicalOutput19775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

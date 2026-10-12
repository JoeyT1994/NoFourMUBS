import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26752 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput26752 : ExponentCode := normalNode3420

theorem canonicalSound26752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26752.moment H = canonicalOutput26752.moment H :=
  canonical_of_padded canonicalInput26752 canonicalOutput26752 (by decide) (by decide)
    ⟨false, true, canonicalPermutation220, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26753 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput26753 : ExponentCode := normalNode5363

theorem canonicalSound26753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26753.moment H = canonicalOutput26753.moment H :=
  canonical_of_padded canonicalInput26753 canonicalOutput26753 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26754 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput26754 : ExponentCode := normalNode5366

theorem canonicalSound26754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26754.moment H = canonicalOutput26754.moment H :=
  canonical_of_padded canonicalInput26754 canonicalOutput26754 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26755 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput26755 : ExponentCode := normalNode5367

theorem canonicalSound26755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26755.moment H = canonicalOutput26755.moment H :=
  canonical_of_padded canonicalInput26755 canonicalOutput26755 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26756 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput26756 : ExponentCode := normalNode4540

theorem canonicalSound26756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26756.moment H = canonicalOutput26756.moment H :=
  canonical_of_padded canonicalInput26756 canonicalOutput26756 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26757 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26757 : ExponentCode := normalNode6156

theorem canonicalSound26757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26757.moment H = canonicalOutput26757.moment H :=
  canonical_of_padded canonicalInput26757 canonicalOutput26757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26758 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput26758 : ExponentCode := normalNode6026

theorem canonicalSound26758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26758.moment H = canonicalOutput26758.moment H :=
  canonical_of_padded canonicalInput26758 canonicalOutput26758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26759 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput26759 : ExponentCode := normalNode533

theorem canonicalSound26759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26759.moment H = canonicalOutput26759.moment H :=
  canonical_of_padded canonicalInput26759 canonicalOutput26759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26760 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput26760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2763⟩

theorem canonicalSound26760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26760.moment H = canonicalOutput26760.moment H :=
  canonical_of_padded canonicalInput26760 canonicalOutput26760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26761 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput26761 : ExponentCode := normalNode9903

theorem canonicalSound26761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26761.moment H = canonicalOutput26761.moment H :=
  canonical_of_padded canonicalInput26761 canonicalOutput26761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26762 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput26762 : ExponentCode := normalNode10968

theorem canonicalSound26762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26762.moment H = canonicalOutput26762.moment H :=
  canonical_of_padded canonicalInput26762 canonicalOutput26762 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26763 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput26763 : ExponentCode := normalNode11096

theorem canonicalSound26763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26763.moment H = canonicalOutput26763.moment H :=
  canonical_of_padded canonicalInput26763 canonicalOutput26763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26764 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 2, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput26764 : ExponentCode := normalNode11191

theorem canonicalSound26764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26764.moment H = canonicalOutput26764.moment H :=
  canonical_of_padded canonicalInput26764 canonicalOutput26764 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26765 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 2, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput26765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound26765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26765.moment H = canonicalOutput26765.moment H :=
  canonical_of_padded canonicalInput26765 canonicalOutput26765 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26766 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![-1, 2, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput26766 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound26766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26766.moment H = canonicalOutput26766.moment H :=
  canonical_of_padded canonicalInput26766 canonicalOutput26766 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26767 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput26767 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound26767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26767.moment H = canonicalOutput26767.moment H :=
  canonical_of_padded canonicalInput26767 canonicalOutput26767 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26768 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput26768 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node563⟩

theorem canonicalSound26768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26768.moment H = canonicalOutput26768.moment H :=
  canonical_of_padded canonicalInput26768 canonicalOutput26768 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26769 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![-1, 2, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput26769 : ExponentCode := normalNode11155

theorem canonicalSound26769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26769.moment H = canonicalOutput26769.moment H :=
  canonical_of_padded canonicalInput26769 canonicalOutput26769 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26770 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 2, -1, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput26770 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩

theorem canonicalSound26770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26770.moment H = canonicalOutput26770.moment H :=
  canonical_of_padded canonicalInput26770 canonicalOutput26770 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26771 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput26771 : ExponentCode := normalNode11142

theorem canonicalSound26771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26771.moment H = canonicalOutput26771.moment H :=
  canonical_of_padded canonicalInput26771 canonicalOutput26771 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26772 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput26772 : ExponentCode := normalNode10969

theorem canonicalSound26772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26772.moment H = canonicalOutput26772.moment H :=
  canonical_of_padded canonicalInput26772 canonicalOutput26772 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26773 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput26773 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node864⟩

theorem canonicalSound26773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26773.moment H = canonicalOutput26773.moment H :=
  canonical_of_padded canonicalInput26773 canonicalOutput26773 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26774 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput26774 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound26774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26774.moment H = canonicalOutput26774.moment H :=
  canonical_of_padded canonicalInput26774 canonicalOutput26774 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26775 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 2, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput26775 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound26775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26775.moment H = canonicalOutput26775.moment H :=
  canonical_of_padded canonicalInput26775 canonicalOutput26775 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26776 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 2, 1, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput26776 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound26776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26776.moment H = canonicalOutput26776.moment H :=
  canonical_of_padded canonicalInput26776 canonicalOutput26776 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26777 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 2, 2, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput26777 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound26777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26777.moment H = canonicalOutput26777.moment H :=
  canonical_of_padded canonicalInput26777 canonicalOutput26777 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26778 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput26778 : ExponentCode := normalNode10284

theorem canonicalSound26778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26778.moment H = canonicalOutput26778.moment H :=
  canonical_of_padded canonicalInput26778 canonicalOutput26778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26779 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![-1, 2, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput26779 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound26779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26779.moment H = canonicalOutput26779.moment H :=
  canonical_of_padded canonicalInput26779 canonicalOutput26779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26780 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![-1, 2, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput26780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩

theorem canonicalSound26780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26780.moment H = canonicalOutput26780.moment H :=
  canonical_of_padded canonicalInput26780 canonicalOutput26780 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26781 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![0, 0, -1, 1], ![-1, 2, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput26781 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2850⟩

theorem canonicalSound26781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26781.moment H = canonicalOutput26781.moment H :=
  canonical_of_padded canonicalInput26781 canonicalOutput26781 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26782 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 2, 2, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput26782 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node443⟩

theorem canonicalSound26782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26782.moment H = canonicalOutput26782.moment H :=
  canonical_of_padded canonicalInput26782 canonicalOutput26782 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26783 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![0, 2, -1, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput26783 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound26783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26783.moment H = canonicalOutput26783.moment H :=
  canonical_of_padded canonicalInput26783 canonicalOutput26783 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26784 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, -2, 2], ![0, 2, 2, -4], ![0, -1, -1, 2]]⟩

def canonicalOutput26784 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound26784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26784.moment H = canonicalOutput26784.moment H :=
  canonical_of_padded canonicalInput26784 canonicalOutput26784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26785 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26785 : ExponentCode := normalNode1252

theorem canonicalSound26785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26785.moment H = canonicalOutput26785.moment H :=
  canonical_of_padded canonicalInput26785 canonicalOutput26785 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26786 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput26786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2757⟩

theorem canonicalSound26786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26786.moment H = canonicalOutput26786.moment H :=
  canonical_of_padded canonicalInput26786 canonicalOutput26786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26787 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 0, 1, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26787 : ExponentCode := normalNode1252

theorem canonicalSound26787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26787.moment H = canonicalOutput26787.moment H :=
  canonical_of_padded canonicalInput26787 canonicalOutput26787 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26788 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput26788 : ExponentCode := normalNode7300

theorem canonicalSound26788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26788.moment H = canonicalOutput26788.moment H :=
  canonical_of_padded canonicalInput26788 canonicalOutput26788 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26789 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![-2, 0, 2, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput26789 : ExponentCode := normalNode432

theorem canonicalSound26789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26789.moment H = canonicalOutput26789.moment H :=
  canonical_of_padded canonicalInput26789 canonicalOutput26789 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26790 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput26790 : ExponentCode := normalNode1361

theorem canonicalSound26790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26790.moment H = canonicalOutput26790.moment H :=
  canonical_of_padded canonicalInput26790 canonicalOutput26790 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26791 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput26791 : ExponentCode := normalNode1363

theorem canonicalSound26791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26791.moment H = canonicalOutput26791.moment H :=
  canonical_of_padded canonicalInput26791 canonicalOutput26791 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26792 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput26792 : ExponentCode := normalNode4970

theorem canonicalSound26792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26792.moment H = canonicalOutput26792.moment H :=
  canonical_of_padded canonicalInput26792 canonicalOutput26792 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26793 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![-2, 0, 2, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput26793 : ExponentCode := normalNode432

theorem canonicalSound26793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26793.moment H = canonicalOutput26793.moment H :=
  canonical_of_padded canonicalInput26793 canonicalOutput26793 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26794 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![-2, 1, 1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput26794 : ExponentCode := normalNode1361

theorem canonicalSound26794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26794.moment H = canonicalOutput26794.moment H :=
  canonical_of_padded canonicalInput26794 canonicalOutput26794 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26795 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, -1, 2, 1], ![2, 2, 0, -4]]⟩

def canonicalOutput26795 : ExponentCode := normalNode427

theorem canonicalSound26795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26795.moment H = canonicalOutput26795.moment H :=
  canonical_of_padded canonicalInput26795 canonicalOutput26795 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26796 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput26796 : ExponentCode := normalNode6761

theorem canonicalSound26796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26796.moment H = canonicalOutput26796.moment H :=
  canonical_of_padded canonicalInput26796 canonicalOutput26796 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26797 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput26797 : ExponentCode := normalNode10708

theorem canonicalSound26797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26797.moment H = canonicalOutput26797.moment H :=
  canonical_of_padded canonicalInput26797 canonicalOutput26797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26798 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![-1, -1, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26798 : ExponentCode := normalNode1342

theorem canonicalSound26798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26798.moment H = canonicalOutput26798.moment H :=
  canonical_of_padded canonicalInput26798 canonicalOutput26798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26799 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput26799 : ExponentCode := normalNode11059

theorem canonicalSound26799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26799.moment H = canonicalOutput26799.moment H :=
  canonical_of_padded canonicalInput26799 canonicalOutput26799 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26800 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![-1, -1, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26800 : ExponentCode := normalNode6470

theorem canonicalSound26800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26800.moment H = canonicalOutput26800.moment H :=
  canonical_of_padded canonicalInput26800 canonicalOutput26800 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26801 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, -1, -1, 4], ![2, 1, 1, -4]]⟩

def canonicalOutput26801 : ExponentCode := normalNode1237

theorem canonicalSound26801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26801.moment H = canonicalOutput26801.moment H :=
  canonical_of_padded canonicalInput26801 canonicalOutput26801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26802 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput26802 : ExponentCode := normalNode7878

theorem canonicalSound26802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26802.moment H = canonicalOutput26802.moment H :=
  canonical_of_padded canonicalInput26802 canonicalOutput26802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26803 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -1, -2, 3]]⟩

def canonicalOutput26803 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node559⟩

theorem canonicalSound26803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26803.moment H = canonicalOutput26803.moment H :=
  canonical_of_padded canonicalInput26803 canonicalOutput26803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26804 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, 2, 1, -4]]⟩

def canonicalOutput26804 : ExponentCode := normalNode1238

theorem canonicalSound26804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26804.moment H = canonicalOutput26804.moment H :=
  canonical_of_padded canonicalInput26804 canonicalOutput26804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26805 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput26805 : ExponentCode := normalNode7879

theorem canonicalSound26805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26805.moment H = canonicalOutput26805.moment H :=
  canonical_of_padded canonicalInput26805 canonicalOutput26805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26806 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 1, 2], ![-1, 1, -1, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput26806 : ExponentCode := normalNode1251

theorem canonicalSound26806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26806.moment H = canonicalOutput26806.moment H :=
  canonical_of_padded canonicalInput26806 canonicalOutput26806 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26807 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput26807 : ExponentCode := normalNode4407

theorem canonicalSound26807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26807.moment H = canonicalOutput26807.moment H :=
  canonical_of_padded canonicalInput26807 canonicalOutput26807 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26808 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput26808 : ExponentCode := normalNode1253

theorem canonicalSound26808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26808.moment H = canonicalOutput26808.moment H :=
  canonical_of_padded canonicalInput26808 canonicalOutput26808 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26809 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput26809 : ExponentCode := normalNode3468

theorem canonicalSound26809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26809.moment H = canonicalOutput26809.moment H :=
  canonical_of_padded canonicalInput26809 canonicalOutput26809 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26810 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -2, 0, 0], ![-1, 2, 2, -3]]⟩

def canonicalOutput26810 : ExponentCode := normalNode3895

theorem canonicalSound26810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26810.moment H = canonicalOutput26810.moment H :=
  canonical_of_padded canonicalInput26810 canonicalOutput26810 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26811 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput26811 : ExponentCode := normalNode5392

theorem canonicalSound26811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26811.moment H = canonicalOutput26811.moment H :=
  canonical_of_padded canonicalInput26811 canonicalOutput26811 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26812 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-2, -1, 1, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput26812 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2900⟩

theorem canonicalSound26812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26812.moment H = canonicalOutput26812.moment H :=
  canonical_of_padded canonicalInput26812 canonicalOutput26812 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26813 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -2, 1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26813 : ExponentCode := normalNode491

theorem canonicalSound26813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26813.moment H = canonicalOutput26813.moment H :=
  canonical_of_padded canonicalInput26813 canonicalOutput26813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26814 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput26814 : ExponentCode := normalNode2437

theorem canonicalSound26814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26814.moment H = canonicalOutput26814.moment H :=
  canonical_of_padded canonicalInput26814 canonicalOutput26814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26815 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, -1, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput26815 : ExponentCode := normalNode2442

theorem canonicalSound26815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26815.moment H = canonicalOutput26815.moment H :=
  canonical_of_padded canonicalInput26815 canonicalOutput26815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

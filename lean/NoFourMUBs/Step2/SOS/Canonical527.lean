import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33728 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33728 : ExponentCode := normalNode8066

theorem canonicalSound33728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33728.moment H = canonicalOutput33728.moment H :=
  canonical_of_padded canonicalInput33728 canonicalOutput33728 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33729 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33729 : ExponentCode := normalNode8067

theorem canonicalSound33729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33729.moment H = canonicalOutput33729.moment H :=
  canonical_of_padded canonicalInput33729 canonicalOutput33729 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33730 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33730 : ExponentCode := normalNode8361

theorem canonicalSound33730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33730.moment H = canonicalOutput33730.moment H :=
  canonical_of_padded canonicalInput33730 canonicalOutput33730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33731 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33731 : ExponentCode := normalNode8361

theorem canonicalSound33731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33731.moment H = canonicalOutput33731.moment H :=
  canonical_of_padded canonicalInput33731 canonicalOutput33731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33732 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33732 : ExponentCode := normalNode8067

theorem canonicalSound33732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33732.moment H = canonicalOutput33732.moment H :=
  canonical_of_padded canonicalInput33732 canonicalOutput33732 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33733 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33733 : ExponentCode := normalNode8066

theorem canonicalSound33733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33733.moment H = canonicalOutput33733.moment H :=
  canonical_of_padded canonicalInput33733 canonicalOutput33733 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33734 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33734 : ExponentCode := normalNode8067

theorem canonicalSound33734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33734.moment H = canonicalOutput33734.moment H :=
  canonical_of_padded canonicalInput33734 canonicalOutput33734 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33735 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33735 : ExponentCode := normalNode8361

theorem canonicalSound33735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33735.moment H = canonicalOutput33735.moment H :=
  canonical_of_padded canonicalInput33735 canonicalOutput33735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33736 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33736 : ExponentCode := normalNode8066

theorem canonicalSound33736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33736.moment H = canonicalOutput33736.moment H :=
  canonical_of_padded canonicalInput33736 canonicalOutput33736 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33737 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33737 : ExponentCode := normalNode8066

theorem canonicalSound33737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33737.moment H = canonicalOutput33737.moment H :=
  canonical_of_padded canonicalInput33737 canonicalOutput33737 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33738 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33738 : ExponentCode := normalNode8361

theorem canonicalSound33738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33738.moment H = canonicalOutput33738.moment H :=
  canonical_of_padded canonicalInput33738 canonicalOutput33738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33739 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33739 : ExponentCode := normalNode8067

theorem canonicalSound33739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33739.moment H = canonicalOutput33739.moment H :=
  canonical_of_padded canonicalInput33739 canonicalOutput33739 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33740 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33740 : ExponentCode := normalNode8066

theorem canonicalSound33740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33740.moment H = canonicalOutput33740.moment H :=
  canonical_of_padded canonicalInput33740 canonicalOutput33740 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33741 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33741 : ExponentCode := normalNode8361

theorem canonicalSound33741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33741.moment H = canonicalOutput33741.moment H :=
  canonical_of_padded canonicalInput33741 canonicalOutput33741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33742 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33742 : ExponentCode := normalNode8067

theorem canonicalSound33742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33742.moment H = canonicalOutput33742.moment H :=
  canonical_of_padded canonicalInput33742 canonicalOutput33742 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33743 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33743 : ExponentCode := normalNode8067

theorem canonicalSound33743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33743.moment H = canonicalOutput33743.moment H :=
  canonical_of_padded canonicalInput33743 canonicalOutput33743 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33744 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33744 : ExponentCode := normalNode8361

theorem canonicalSound33744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33744.moment H = canonicalOutput33744.moment H :=
  canonical_of_padded canonicalInput33744 canonicalOutput33744 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33745 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33745 : ExponentCode := normalNode8066

theorem canonicalSound33745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33745.moment H = canonicalOutput33745.moment H :=
  canonical_of_padded canonicalInput33745 canonicalOutput33745 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33746 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33746 : ExponentCode := normalNode8064

theorem canonicalSound33746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33746.moment H = canonicalOutput33746.moment H :=
  canonical_of_padded canonicalInput33746 canonicalOutput33746 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33747 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33747 : ExponentCode := normalNode8066

theorem canonicalSound33747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33747.moment H = canonicalOutput33747.moment H :=
  canonical_of_padded canonicalInput33747 canonicalOutput33747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33748 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33748 : ExponentCode := normalNode8066

theorem canonicalSound33748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33748.moment H = canonicalOutput33748.moment H :=
  canonical_of_padded canonicalInput33748 canonicalOutput33748 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33749 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33749 : ExponentCode := normalNode8064

theorem canonicalSound33749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33749.moment H = canonicalOutput33749.moment H :=
  canonical_of_padded canonicalInput33749 canonicalOutput33749 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33750 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33750 : ExponentCode := normalNode8068

theorem canonicalSound33750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33750.moment H = canonicalOutput33750.moment H :=
  canonical_of_padded canonicalInput33750 canonicalOutput33750 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput33751 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33751 : ExponentCode := normalNode8458

theorem canonicalSound33751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33751.moment H = canonicalOutput33751.moment H :=
  canonical_of_padded canonicalInput33751 canonicalOutput33751 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput33752 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33752 : ExponentCode := normalNode10045

theorem canonicalSound33752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33752.moment H = canonicalOutput33752.moment H :=
  canonical_of_padded canonicalInput33752 canonicalOutput33752 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation382⟩ (by decide +kernel) hH

def canonicalInput33753 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33753 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33753.moment H = canonicalOutput33753.moment H :=
  canonical_of_padded canonicalInput33753 canonicalOutput33753 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33754 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33754 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33754.moment H = canonicalOutput33754.moment H :=
  canonical_of_padded canonicalInput33754 canonicalOutput33754 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33755 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33755 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33755.moment H = canonicalOutput33755.moment H :=
  canonical_of_padded canonicalInput33755 canonicalOutput33755 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33756 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33756 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33756.moment H = canonicalOutput33756.moment H :=
  canonical_of_padded canonicalInput33756 canonicalOutput33756 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33757 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33757 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33757.moment H = canonicalOutput33757.moment H :=
  canonical_of_padded canonicalInput33757 canonicalOutput33757 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33758 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33758 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33758.moment H = canonicalOutput33758.moment H :=
  canonical_of_padded canonicalInput33758 canonicalOutput33758 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33759 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33759 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33759.moment H = canonicalOutput33759.moment H :=
  canonical_of_padded canonicalInput33759 canonicalOutput33759 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33760 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33760 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33760.moment H = canonicalOutput33760.moment H :=
  canonical_of_padded canonicalInput33760 canonicalOutput33760 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33761 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33761 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33761.moment H = canonicalOutput33761.moment H :=
  canonical_of_padded canonicalInput33761 canonicalOutput33761 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33762 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33762 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33762.moment H = canonicalOutput33762.moment H :=
  canonical_of_padded canonicalInput33762 canonicalOutput33762 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33763 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33763 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33763.moment H = canonicalOutput33763.moment H :=
  canonical_of_padded canonicalInput33763 canonicalOutput33763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput33764 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33764.moment H = canonicalOutput33764.moment H :=
  canonical_of_padded canonicalInput33764 canonicalOutput33764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput33765 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33765 : ExponentCode := normalNode10415

theorem canonicalSound33765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33765.moment H = canonicalOutput33765.moment H :=
  canonical_of_padded canonicalInput33765 canonicalOutput33765 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput33766 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, -1, 1, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33766 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound33766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33766.moment H = canonicalOutput33766.moment H :=
  canonical_of_padded canonicalInput33766 canonicalOutput33766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation372⟩ (by decide +kernel) hH

def canonicalInput33767 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, 0, 0, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33767 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound33767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33767.moment H = canonicalOutput33767.moment H :=
  canonical_of_padded canonicalInput33767 canonicalOutput33767 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33768 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, 1, -1, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound33768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33768.moment H = canonicalOutput33768.moment H :=
  canonical_of_padded canonicalInput33768 canonicalOutput33768 (by decide) (by decide)
    ⟨true, false, canonicalPermutation377, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33769 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, 2, -2, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33769 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound33769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33769.moment H = canonicalOutput33769.moment H :=
  canonical_of_padded canonicalInput33769 canonicalOutput33769 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation207⟩ (by decide +kernel) hH

def canonicalInput33770 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33770 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound33770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33770.moment H = canonicalOutput33770.moment H :=
  canonical_of_padded canonicalInput33770 canonicalOutput33770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33771 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33771 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1246⟩

theorem canonicalSound33771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33771.moment H = canonicalOutput33771.moment H :=
  canonical_of_padded canonicalInput33771 canonicalOutput33771 (by decide) (by decide)
    ⟨false, true, canonicalPermutation373, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33772 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 0, 0, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33772 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩

theorem canonicalSound33772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33772.moment H = canonicalOutput33772.moment H :=
  canonical_of_padded canonicalInput33772 canonicalOutput33772 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33773 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33773 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound33773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33773.moment H = canonicalOutput33773.moment H :=
  canonical_of_padded canonicalInput33773 canonicalOutput33773 (by decide) (by decide)
    ⟨false, true, canonicalPermutation289, canonicalPermutation232⟩ (by decide +kernel) hH

def canonicalInput33774 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 1, -1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33774 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound33774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33774.moment H = canonicalOutput33774.moment H :=
  canonical_of_padded canonicalInput33774 canonicalOutput33774 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33775 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 2, -2, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33775 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound33775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33775.moment H = canonicalOutput33775.moment H :=
  canonical_of_padded canonicalInput33775 canonicalOutput33775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33776 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -1, -1, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound33776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33776.moment H = canonicalOutput33776.moment H :=
  canonical_of_padded canonicalInput33776 canonicalOutput33776 (by decide) (by decide)
    ⟨false, false, canonicalPermutation377, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33777 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound33777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33777.moment H = canonicalOutput33777.moment H :=
  canonical_of_padded canonicalInput33777 canonicalOutput33777 (by decide) (by decide)
    ⟨false, true, canonicalPermutation376, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33778 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33778 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound33778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33778.moment H = canonicalOutput33778.moment H :=
  canonical_of_padded canonicalInput33778 canonicalOutput33778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33779 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33779 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound33779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33779.moment H = canonicalOutput33779.moment H :=
  canonical_of_padded canonicalInput33779 canonicalOutput33779 (by decide) (by decide)
    ⟨false, false, canonicalPermutation377, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33780 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound33780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33780.moment H = canonicalOutput33780.moment H :=
  canonical_of_padded canonicalInput33780 canonicalOutput33780 (by decide) (by decide)
    ⟨false, false, canonicalPermutation383, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33781 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 2, -2, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound33781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33781.moment H = canonicalOutput33781.moment H :=
  canonical_of_padded canonicalInput33781 canonicalOutput33781 (by decide) (by decide)
    ⟨false, false, canonicalPermutation383, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33782 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, -1, -2, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33782 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound33782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33782.moment H = canonicalOutput33782.moment H :=
  canonical_of_padded canonicalInput33782 canonicalOutput33782 (by decide) (by decide)
    ⟨false, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation207⟩ (by decide +kernel) hH

def canonicalInput33783 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound33783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33783.moment H = canonicalOutput33783.moment H :=
  canonical_of_padded canonicalInput33783 canonicalOutput33783 (by decide) (by decide)
    ⟨false, false, canonicalPermutation378, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33784 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound33784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33784.moment H = canonicalOutput33784.moment H :=
  canonical_of_padded canonicalInput33784 canonicalOutput33784 (by decide) (by decide)
    ⟨false, false, canonicalPermutation290, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33785 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 2, -2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33785 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound33785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33785.moment H = canonicalOutput33785.moment H :=
  canonical_of_padded canonicalInput33785 canonicalOutput33785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation207⟩ (by decide +kernel) hH

def canonicalInput33786 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33786 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1259⟩

theorem canonicalSound33786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33786.moment H = canonicalOutput33786.moment H :=
  canonical_of_padded canonicalInput33786 canonicalOutput33786 (by decide) (by decide)
    ⟨false, true, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33787 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, -1, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33787 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound33787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33787.moment H = canonicalOutput33787.moment H :=
  canonical_of_padded canonicalInput33787 canonicalOutput33787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation209, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33788 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33788 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound33788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33788.moment H = canonicalOutput33788.moment H :=
  canonical_of_padded canonicalInput33788 canonicalOutput33788 (by decide) (by decide)
    ⟨true, true, canonicalPermutation373, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33789 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 0, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33789 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound33789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33789.moment H = canonicalOutput33789.moment H :=
  canonical_of_padded canonicalInput33789 canonicalOutput33789 (by decide) (by decide)
    ⟨true, true, canonicalPermutation379, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33790 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound33790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33790.moment H = canonicalOutput33790.moment H :=
  canonical_of_padded canonicalInput33790 canonicalOutput33790 (by decide) (by decide)
    ⟨false, false, canonicalPermutation381, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33791 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 1, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33791 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound33791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33791.moment H = canonicalOutput33791.moment H :=
  canonical_of_padded canonicalInput33791 canonicalOutput33791 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, canonicalPermutation381⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17856 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![1, 0, 1, -2, 0], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput17856 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound17856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17856.moment H = canonicalOutput17856.moment H :=
  canonical_of_padded canonicalInput17856 canonicalOutput17856 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17857 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 1, -2, 1], ![0, 0, 0, 3, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17857 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1975⟩

theorem canonicalSound17857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17857.moment H = canonicalOutput17857.moment H :=
  canonical_of_padded canonicalInput17857 canonicalOutput17857 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17858 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 1, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17858 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2086⟩

theorem canonicalSound17858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17858.moment H = canonicalOutput17858.moment H :=
  canonical_of_padded canonicalInput17858 canonicalOutput17858 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17859 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 1, -2, 0, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17859 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound17859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17859.moment H = canonicalOutput17859.moment H :=
  canonical_of_padded canonicalInput17859 canonicalOutput17859 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17860 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 1, -2, 1, 0], ![0, 0, 0, 2, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17860 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound17860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17860.moment H = canonicalOutput17860.moment H :=
  canonical_of_padded canonicalInput17860 canonicalOutput17860 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17861 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 1, -1, -2, 2], ![0, 0, -1, 2, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17861 : ExponentCode := normalNode2484

theorem canonicalSound17861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17861.moment H = canonicalOutput17861.moment H :=
  canonical_of_padded canonicalInput17861 canonicalOutput17861 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17862 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 1, -1, -1, 1], ![0, 0, 0, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17862 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2439⟩

theorem canonicalSound17862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17862.moment H = canonicalOutput17862.moment H :=
  canonical_of_padded canonicalInput17862 canonicalOutput17862 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17863 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 1, -1, 3, -3], ![0, 0, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17863 : ExponentCode := normalNode10860

theorem canonicalSound17863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17863.moment H = canonicalOutput17863.moment H :=
  canonical_of_padded canonicalInput17863 canonicalOutput17863 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17864 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![1, 0, 0, 2, -3], ![0, 0, 1, -2, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput17864 : ExponentCode := normalNode5221

theorem canonicalSound17864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17864.moment H = canonicalOutput17864.moment H :=
  canonical_of_padded canonicalInput17864 canonicalOutput17864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17865 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 2, -3], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput17865 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2562⟩

theorem canonicalSound17865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17865.moment H = canonicalOutput17865.moment H :=
  canonical_of_padded canonicalInput17865 canonicalOutput17865 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17866 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17866 : ExponentCode := normalNode9290

theorem canonicalSound17866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17866.moment H = canonicalOutput17866.moment H :=
  canonical_of_padded canonicalInput17866 canonicalOutput17866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17867 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, 1, -3], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput17867 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound17867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17867.moment H = canonicalOutput17867.moment H :=
  canonical_of_padded canonicalInput17867 canonicalOutput17867 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17868 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 1, 1], ![0, 2, 1, -2, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput17868 : ExponentCode := normalNode8825

theorem canonicalSound17868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17868.moment H = canonicalOutput17868.moment H :=
  canonical_of_padded canonicalInput17868 canonicalOutput17868 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17869 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 1, 1], ![1, 0, 0, 2, -3], ![0, 2, 0, -3, 1]]⟩

def canonicalOutput17869 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2519⟩

theorem canonicalSound17869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17869.moment H = canonicalOutput17869.moment H :=
  canonical_of_padded canonicalInput17869 canonicalOutput17869 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17870 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17870 : ExponentCode := normalNode10048

theorem canonicalSound17870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17870.moment H = canonicalOutput17870.moment H :=
  canonical_of_padded canonicalInput17870 canonicalOutput17870 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput17871 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17871 : ExponentCode := normalNode8700

theorem canonicalSound17871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17871.moment H = canonicalOutput17871.moment H :=
  canonical_of_padded canonicalInput17871 canonicalOutput17871 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput17872 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17872 : ExponentCode := normalNode8708

theorem canonicalSound17872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17872.moment H = canonicalOutput17872.moment H :=
  canonical_of_padded canonicalInput17872 canonicalOutput17872 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput17873 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17873 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2017⟩

theorem canonicalSound17873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17873.moment H = canonicalOutput17873.moment H :=
  canonical_of_padded canonicalInput17873 canonicalOutput17873 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17874 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17874 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound17874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17874.moment H = canonicalOutput17874.moment H :=
  canonical_of_padded canonicalInput17874 canonicalOutput17874 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17875 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, 1, 1, -3], ![1, 1, -1, -3, 2]]⟩

def canonicalOutput17875 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩

theorem canonicalSound17875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17875.moment H = canonicalOutput17875.moment H :=
  canonical_of_padded canonicalInput17875 canonicalOutput17875 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17876 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17876 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound17876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17876.moment H = canonicalOutput17876.moment H :=
  canonical_of_padded canonicalInput17876 canonicalOutput17876 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17877 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 2, -1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17877 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound17877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17877.moment H = canonicalOutput17877.moment H :=
  canonical_of_padded canonicalInput17877 canonicalOutput17877 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17878 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, -1, 2, 0], ![0, 2, 0, 1, -3], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17878 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound17878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17878.moment H = canonicalOutput17878.moment H :=
  canonical_of_padded canonicalInput17878 canonicalOutput17878 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17879 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, 2, 1, 0, -3], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput17879 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound17879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17879.moment H = canonicalOutput17879.moment H :=
  canonical_of_padded canonicalInput17879 canonicalOutput17879 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17880 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, -1, 1, 2, -2], ![0, 2, -1, -1, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput17880 : ExponentCode := normalNode4254

theorem canonicalSound17880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17880.moment H = canonicalOutput17880.moment H :=
  canonical_of_padded canonicalInput17880 canonicalOutput17880 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17881 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 0, 2], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17881 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound17881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17881.moment H = canonicalOutput17881.moment H :=
  canonical_of_padded canonicalInput17881 canonicalOutput17881 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17882 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17882 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound17882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17882.moment H = canonicalOutput17882.moment H :=
  canonical_of_padded canonicalInput17882 canonicalOutput17882 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17883 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 2, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17883 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1696⟩

theorem canonicalSound17883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17883.moment H = canonicalOutput17883.moment H :=
  canonical_of_padded canonicalInput17883 canonicalOutput17883 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17884 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput17884 : ExponentCode := normalNode2004

theorem canonicalSound17884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17884.moment H = canonicalOutput17884.moment H :=
  canonical_of_padded canonicalInput17884 canonicalOutput17884 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17885 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17885 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound17885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17885.moment H = canonicalOutput17885.moment H :=
  canonical_of_padded canonicalInput17885 canonicalOutput17885 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17886 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput17886 : ExponentCode := normalNode8449

theorem canonicalSound17886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17886.moment H = canonicalOutput17886.moment H :=
  canonical_of_padded canonicalInput17886 canonicalOutput17886 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput17887 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17887 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound17887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17887.moment H = canonicalOutput17887.moment H :=
  canonical_of_padded canonicalInput17887 canonicalOutput17887 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17888 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17888 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound17888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17888.moment H = canonicalOutput17888.moment H :=
  canonical_of_padded canonicalInput17888 canonicalOutput17888 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17889 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17889 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound17889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17889.moment H = canonicalOutput17889.moment H :=
  canonical_of_padded canonicalInput17889 canonicalOutput17889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17890 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 2, -3], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17890 : ExponentCode := normalNode5322

theorem canonicalSound17890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17890.moment H = canonicalOutput17890.moment H :=
  canonical_of_padded canonicalInput17890 canonicalOutput17890 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17891 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 2, 1, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput17891 : ExponentCode := normalNode4293

theorem canonicalSound17891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17891.moment H = canonicalOutput17891.moment H :=
  canonical_of_padded canonicalInput17891 canonicalOutput17891 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17892 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 1, 1], ![0, 2, 1, 0, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput17892 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound17892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17892.moment H = canonicalOutput17892.moment H :=
  canonical_of_padded canonicalInput17892 canonicalOutput17892 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17893 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 0, 0, -2, 2], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput17893 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound17893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17893.moment H = canonicalOutput17893.moment H :=
  canonical_of_padded canonicalInput17893 canonicalOutput17893 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17894 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound17894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17894.moment H = canonicalOutput17894.moment H :=
  canonical_of_padded canonicalInput17894 canonicalOutput17894 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17895 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -3, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17895 : ExponentCode := normalNode3535

theorem canonicalSound17895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17895.moment H = canonicalOutput17895.moment H :=
  canonical_of_padded canonicalInput17895 canonicalOutput17895 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17896 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17896 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound17896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17896.moment H = canonicalOutput17896.moment H :=
  canonical_of_padded canonicalInput17896 canonicalOutput17896 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17897 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17897 : ExponentCode := normalNode8357

theorem canonicalSound17897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17897.moment H = canonicalOutput17897.moment H :=
  canonical_of_padded canonicalInput17897 canonicalOutput17897 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput17898 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17898 : ExponentCode := normalNode8749

theorem canonicalSound17898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17898.moment H = canonicalOutput17898.moment H :=
  canonical_of_padded canonicalInput17898 canonicalOutput17898 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput17899 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput17899 : ExponentCode := normalNode10114

theorem canonicalSound17899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17899.moment H = canonicalOutput17899.moment H :=
  canonical_of_padded canonicalInput17899 canonicalOutput17899 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput17900 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17900 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound17900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17900.moment H = canonicalOutput17900.moment H :=
  canonical_of_padded canonicalInput17900 canonicalOutput17900 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17901 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17901 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound17901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17901.moment H = canonicalOutput17901.moment H :=
  canonical_of_padded canonicalInput17901 canonicalOutput17901 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17902 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17902 : ExponentCode := normalNode1778

theorem canonicalSound17902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17902.moment H = canonicalOutput17902.moment H :=
  canonical_of_padded canonicalInput17902 canonicalOutput17902 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17903 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17903 : ExponentCode := normalNode3535

theorem canonicalSound17903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17903.moment H = canonicalOutput17903.moment H :=
  canonical_of_padded canonicalInput17903 canonicalOutput17903 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17904 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, -1, 3, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput17904 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1822⟩

theorem canonicalSound17904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17904.moment H = canonicalOutput17904.moment H :=
  canonical_of_padded canonicalInput17904 canonicalOutput17904 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17905 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17905 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound17905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17905.moment H = canonicalOutput17905.moment H :=
  canonical_of_padded canonicalInput17905 canonicalOutput17905 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17906 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17906 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1823⟩

theorem canonicalSound17906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17906.moment H = canonicalOutput17906.moment H :=
  canonical_of_padded canonicalInput17906 canonicalOutput17906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17907 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17907 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound17907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17907.moment H = canonicalOutput17907.moment H :=
  canonical_of_padded canonicalInput17907 canonicalOutput17907 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17908 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 3, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17908 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1671⟩

theorem canonicalSound17908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17908.moment H = canonicalOutput17908.moment H :=
  canonical_of_padded canonicalInput17908 canonicalOutput17908 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17909 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17909 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound17909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17909.moment H = canonicalOutput17909.moment H :=
  canonical_of_padded canonicalInput17909 canonicalOutput17909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17910 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17910 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound17910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17910.moment H = canonicalOutput17910.moment H :=
  canonical_of_padded canonicalInput17910 canonicalOutput17910 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17911 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 2, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2580⟩

theorem canonicalSound17911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17911.moment H = canonicalOutput17911.moment H :=
  canonical_of_padded canonicalInput17911 canonicalOutput17911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17912 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 1, 2, -2], ![0, 2, 0, -3, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput17912 : ExponentCode := normalNode9236

theorem canonicalSound17912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17912.moment H = canonicalOutput17912.moment H :=
  canonical_of_padded canonicalInput17912 canonicalOutput17912 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput17913 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 2, -2], ![0, 2, 0, -3, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput17913 : ExponentCode := normalNode9758

theorem canonicalSound17913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17913.moment H = canonicalOutput17913.moment H :=
  canonical_of_padded canonicalInput17913 canonicalOutput17913 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput17914 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 2, -3], ![0, 1, 0, -3, 2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput17914 : ExponentCode := normalNode9231

theorem canonicalSound17914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17914.moment H = canonicalOutput17914.moment H :=
  canonical_of_padded canonicalInput17914 canonicalOutput17914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput17915 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 2, -3], ![0, 2, -1, -3, 2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput17915 : ExponentCode := normalNode10099

theorem canonicalSound17915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17915.moment H = canonicalOutput17915.moment H :=
  canonical_of_padded canonicalInput17915 canonicalOutput17915 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, canonicalPermutation54⟩ (by decide +kernel) hH

def canonicalInput17916 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput17916 : ExponentCode := normalNode9200

theorem canonicalSound17916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17916.moment H = canonicalOutput17916.moment H :=
  canonical_of_padded canonicalInput17916 canonicalOutput17916 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput17917 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 2, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17917 : ExponentCode := normalNode9932

theorem canonicalSound17917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17917.moment H = canonicalOutput17917.moment H :=
  canonical_of_padded canonicalInput17917 canonicalOutput17917 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17918 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 2, -3], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17918 : ExponentCode := normalNode9940

theorem canonicalSound17918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17918.moment H = canonicalOutput17918.moment H :=
  canonical_of_padded canonicalInput17918 canonicalOutput17918 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17919 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 0, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput17919 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1749⟩

theorem canonicalSound17919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17919.moment H = canonicalOutput17919.moment H :=
  canonical_of_padded canonicalInput17919 canonicalOutput17919 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

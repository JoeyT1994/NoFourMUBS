import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4864 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput4864 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound4864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4864.moment H = canonicalOutput4864.moment H :=
  canonical_of_padded canonicalInput4864 canonicalOutput4864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4865 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4865 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound4865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4865.moment H = canonicalOutput4865.moment H :=
  canonical_of_padded canonicalInput4865 canonicalOutput4865 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4866 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput4866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound4866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4866.moment H = canonicalOutput4866.moment H :=
  canonical_of_padded canonicalInput4866 canonicalOutput4866 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4867 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4867 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound4867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4867.moment H = canonicalOutput4867.moment H :=
  canonical_of_padded canonicalInput4867 canonicalOutput4867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4868 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput4868 : ExponentCode := normalNode2904

theorem canonicalSound4868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4868.moment H = canonicalOutput4868.moment H :=
  canonical_of_padded canonicalInput4868 canonicalOutput4868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4869 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput4869 : ExponentCode := normalNode2306

theorem canonicalSound4869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4869.moment H = canonicalOutput4869.moment H :=
  canonical_of_padded canonicalInput4869 canonicalOutput4869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4870 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4870 : ExponentCode := normalNode2557

theorem canonicalSound4870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4870.moment H = canonicalOutput4870.moment H :=
  canonical_of_padded canonicalInput4870 canonicalOutput4870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4871 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput4871 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩

theorem canonicalSound4871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4871.moment H = canonicalOutput4871.moment H :=
  canonical_of_padded canonicalInput4871 canonicalOutput4871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4872 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput4872 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound4872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4872.moment H = canonicalOutput4872.moment H :=
  canonical_of_padded canonicalInput4872 canonicalOutput4872 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4873 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4873 : ExponentCode := normalNode2920

theorem canonicalSound4873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4873.moment H = canonicalOutput4873.moment H :=
  canonical_of_padded canonicalInput4873 canonicalOutput4873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4874 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4874 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound4874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4874.moment H = canonicalOutput4874.moment H :=
  canonical_of_padded canonicalInput4874 canonicalOutput4874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4875 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput4875 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound4875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4875.moment H = canonicalOutput4875.moment H :=
  canonical_of_padded canonicalInput4875 canonicalOutput4875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4876 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput4876 : ExponentCode := normalNode5840

theorem canonicalSound4876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4876.moment H = canonicalOutput4876.moment H :=
  canonical_of_padded canonicalInput4876 canonicalOutput4876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4877 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput4877 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound4877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4877.moment H = canonicalOutput4877.moment H :=
  canonical_of_padded canonicalInput4877 canonicalOutput4877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4878 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4878 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound4878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4878.moment H = canonicalOutput4878.moment H :=
  canonical_of_padded canonicalInput4878 canonicalOutput4878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4879 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput4879 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound4879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4879.moment H = canonicalOutput4879.moment H :=
  canonical_of_padded canonicalInput4879 canonicalOutput4879 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4880 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput4880 : ExponentCode := normalNode2562

theorem canonicalSound4880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4880.moment H = canonicalOutput4880.moment H :=
  canonical_of_padded canonicalInput4880 canonicalOutput4880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4881 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 1, -4, 1]]⟩

def canonicalOutput4881 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound4881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4881.moment H = canonicalOutput4881.moment H :=
  canonical_of_padded canonicalInput4881 canonicalOutput4881 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4882 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -4, 2], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput4882 : ExponentCode := normalNode2572

theorem canonicalSound4882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4882.moment H = canonicalOutput4882.moment H :=
  canonical_of_padded canonicalInput4882 canonicalOutput4882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4883 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -3, 1], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput4883 : ExponentCode := normalNode2564

theorem canonicalSound4883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4883.moment H = canonicalOutput4883.moment H :=
  canonical_of_padded canonicalInput4883 canonicalOutput4883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4884 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4884 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound4884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4884.moment H = canonicalOutput4884.moment H :=
  canonical_of_padded canonicalInput4884 canonicalOutput4884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4885 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4885 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound4885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4885.moment H = canonicalOutput4885.moment H :=
  canonical_of_padded canonicalInput4885 canonicalOutput4885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4886 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput4886 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound4886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4886.moment H = canonicalOutput4886.moment H :=
  canonical_of_padded canonicalInput4886 canonicalOutput4886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4887 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4887 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound4887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4887.moment H = canonicalOutput4887.moment H :=
  canonical_of_padded canonicalInput4887 canonicalOutput4887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4888 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput4888 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound4888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4888.moment H = canonicalOutput4888.moment H :=
  canonical_of_padded canonicalInput4888 canonicalOutput4888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4889 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4889 : ExponentCode := normalNode2577

theorem canonicalSound4889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4889.moment H = canonicalOutput4889.moment H :=
  canonical_of_padded canonicalInput4889 canonicalOutput4889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4890 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4890 : ExponentCode := normalNode5854

theorem canonicalSound4890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4890.moment H = canonicalOutput4890.moment H :=
  canonical_of_padded canonicalInput4890 canonicalOutput4890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4891 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 3, -3, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput4891 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound4891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4891.moment H = canonicalOutput4891.moment H :=
  canonical_of_padded canonicalInput4891 canonicalOutput4891 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4892 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4892 : ExponentCode := normalNode5844

theorem canonicalSound4892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4892.moment H = canonicalOutput4892.moment H :=
  canonical_of_padded canonicalInput4892 canonicalOutput4892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4893 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput4893 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound4893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4893.moment H = canonicalOutput4893.moment H :=
  canonical_of_padded canonicalInput4893 canonicalOutput4893 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4894 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 3, 0, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput4894 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code507

theorem canonicalSound4894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4894.moment H = canonicalOutput4894.moment H :=
  canonical_of_padded canonicalInput4894 canonicalOutput4894 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4895 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput4895 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node679⟩

theorem canonicalSound4895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4895.moment H = canonicalOutput4895.moment H :=
  canonical_of_padded canonicalInput4895 canonicalOutput4895 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4896 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput4896 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound4896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4896.moment H = canonicalOutput4896.moment H :=
  canonical_of_padded canonicalInput4896 canonicalOutput4896 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4897 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput4897 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound4897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4897.moment H = canonicalOutput4897.moment H :=
  canonical_of_padded canonicalInput4897 canonicalOutput4897 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4898 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound4898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4898.moment H = canonicalOutput4898.moment H :=
  canonical_of_padded canonicalInput4898 canonicalOutput4898 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4899 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput4899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound4899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4899.moment H = canonicalOutput4899.moment H :=
  canonical_of_padded canonicalInput4899 canonicalOutput4899 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4900 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 2, -4, 1]]⟩

def canonicalOutput4900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩

theorem canonicalSound4900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4900.moment H = canonicalOutput4900.moment H :=
  canonical_of_padded canonicalInput4900 canonicalOutput4900 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4901 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4901 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound4901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4901.moment H = canonicalOutput4901.moment H :=
  canonical_of_padded canonicalInput4901 canonicalOutput4901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4902 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound4902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4902.moment H = canonicalOutput4902.moment H :=
  canonical_of_padded canonicalInput4902 canonicalOutput4902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4903 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput4903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound4903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4903.moment H = canonicalOutput4903.moment H :=
  canonical_of_padded canonicalInput4903 canonicalOutput4903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4904 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 1, 1, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput4904 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound4904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4904.moment H = canonicalOutput4904.moment H :=
  canonical_of_padded canonicalInput4904 canonicalOutput4904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4905 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 2, -4, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4905 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩

theorem canonicalSound4905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4905.moment H = canonicalOutput4905.moment H :=
  canonical_of_padded canonicalInput4905 canonicalOutput4905 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4906 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 2, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4906 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound4906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4906.moment H = canonicalOutput4906.moment H :=
  canonical_of_padded canonicalInput4906 canonicalOutput4906 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4907 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 2, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput4907 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound4907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4907.moment H = canonicalOutput4907.moment H :=
  canonical_of_padded canonicalInput4907 canonicalOutput4907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4908 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 3, -2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput4908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node679⟩

theorem canonicalSound4908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4908.moment H = canonicalOutput4908.moment H :=
  canonical_of_padded canonicalInput4908 canonicalOutput4908 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4909 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 1, -4, 1]]⟩

def canonicalOutput4909 : ExponentCode := normalNode7125

theorem canonicalSound4909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4909.moment H = canonicalOutput4909.moment H :=
  canonical_of_padded canonicalInput4909 canonicalOutput4909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4910 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 3, -2], ![0, 2, -1, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput4910 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound4910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4910.moment H = canonicalOutput4910.moment H :=
  canonical_of_padded canonicalInput4910 canonicalOutput4910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4911 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 2, -4, 1]]⟩

def canonicalOutput4911 : ExponentCode := normalNode7111

theorem canonicalSound4911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4911.moment H = canonicalOutput4911.moment H :=
  canonical_of_padded canonicalInput4911 canonicalOutput4911 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4912 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput4912 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code570

theorem canonicalSound4912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4912.moment H = canonicalOutput4912.moment H :=
  canonical_of_padded canonicalInput4912 canonicalOutput4912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4913 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 3, -2], ![1, 2, -4, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput4913 : ExponentCode := normalNode7111

theorem canonicalSound4913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4913.moment H = canonicalOutput4913.moment H :=
  canonical_of_padded canonicalInput4913 canonicalOutput4913 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4914 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![0, -1, 4, -3], ![2, 2, -5, 1]]⟩

def canonicalOutput4914 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound4914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4914.moment H = canonicalOutput4914.moment H :=
  canonical_of_padded canonicalInput4914 canonicalOutput4914 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4915 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput4915 : ExponentCode := normalNode6962

theorem canonicalSound4915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4915.moment H = canonicalOutput4915.moment H :=
  canonical_of_padded canonicalInput4915 canonicalOutput4915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4916 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput4916 : ExponentCode := normalNode6957

theorem canonicalSound4916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4916.moment H = canonicalOutput4916.moment H :=
  canonical_of_padded canonicalInput4916 canonicalOutput4916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4917 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4917 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1234⟩

theorem canonicalSound4917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4917.moment H = canonicalOutput4917.moment H :=
  canonical_of_padded canonicalInput4917 canonicalOutput4917 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4918 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput4918 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound4918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4918.moment H = canonicalOutput4918.moment H :=
  canonical_of_padded canonicalInput4918 canonicalOutput4918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4919 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput4919 : ExponentCode := normalNode6974

theorem canonicalSound4919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4919.moment H = canonicalOutput4919.moment H :=
  canonical_of_padded canonicalInput4919 canonicalOutput4919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4920 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput4920 : ExponentCode := normalNode6976

theorem canonicalSound4920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4920.moment H = canonicalOutput4920.moment H :=
  canonical_of_padded canonicalInput4920 canonicalOutput4920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4921 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput4921 : ExponentCode := normalNode6976

theorem canonicalSound4921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4921.moment H = canonicalOutput4921.moment H :=
  canonical_of_padded canonicalInput4921 canonicalOutput4921 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4922 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput4922 : ExponentCode := normalNode2602

theorem canonicalSound4922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4922.moment H = canonicalOutput4922.moment H :=
  canonical_of_padded canonicalInput4922 canonicalOutput4922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4923 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput4923 : ExponentCode := normalNode6973

theorem canonicalSound4923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4923.moment H = canonicalOutput4923.moment H :=
  canonical_of_padded canonicalInput4923 canonicalOutput4923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4924 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2432⟩

theorem canonicalSound4924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4924.moment H = canonicalOutput4924.moment H :=
  canonical_of_padded canonicalInput4924 canonicalOutput4924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4925 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput4925 : ExponentCode := normalNode6973

theorem canonicalSound4925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4925.moment H = canonicalOutput4925.moment H :=
  canonical_of_padded canonicalInput4925 canonicalOutput4925 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4926 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4926 : ExponentCode := normalNode6972

theorem canonicalSound4926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4926.moment H = canonicalOutput4926.moment H :=
  canonical_of_padded canonicalInput4926 canonicalOutput4926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4927 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4927 : ExponentCode := normalNode6975

theorem canonicalSound4927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4927.moment H = canonicalOutput4927.moment H :=
  canonical_of_padded canonicalInput4927 canonicalOutput4927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

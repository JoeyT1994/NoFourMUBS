import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31872 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput31872 : ExponentCode := normalNode9271

theorem canonicalSound31872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31872.moment H = canonicalOutput31872.moment H :=
  canonical_of_padded canonicalInput31872 canonicalOutput31872 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31873 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput31873 : ExponentCode := normalNode9797

theorem canonicalSound31873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31873.moment H = canonicalOutput31873.moment H :=
  canonical_of_padded canonicalInput31873 canonicalOutput31873 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31874 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![-1, 1, 0], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput31874 : ExponentCode := normalNode968

theorem canonicalSound31874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31874.moment H = canonicalOutput31874.moment H :=
  canonical_of_padded canonicalInput31874 canonicalOutput31874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31875 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![-1, 3, -2], ![0, -4, 4]]⟩

def canonicalOutput31875 : ExponentCode := normalNode7132

theorem canonicalSound31875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31875.moment H = canonicalOutput31875.moment H :=
  canonical_of_padded canonicalInput31875 canonicalOutput31875 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31876 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 0, 0], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-3, -1, 4]]⟩

def canonicalOutput31876 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩

theorem canonicalSound31876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31876.moment H = canonicalOutput31876.moment H :=
  canonical_of_padded canonicalInput31876 canonicalOutput31876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31877 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![0, -1, 1], ![1, -1, 0], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput31877 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1537⟩

theorem canonicalSound31877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31877.moment H = canonicalOutput31877.moment H :=
  canonical_of_padded canonicalInput31877 canonicalOutput31877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31878 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![0, -1, 1], ![1, 0, -1], ![-1, 3, -2], ![0, -4, 4]]⟩

def canonicalOutput31878 : ExponentCode := normalNode7142

theorem canonicalSound31878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31878.moment H = canonicalOutput31878.moment H :=
  canonical_of_padded canonicalInput31878 canonicalOutput31878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31879 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![1, 2, -3], ![-3, -1, 4]]⟩

def canonicalOutput31879 : ExponentCode := normalNode127

theorem canonicalSound31879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31879.moment H = canonicalOutput31879.moment H :=
  canonical_of_padded canonicalInput31879 canonicalOutput31879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31880 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![0, -1, 1], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput31880 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1537⟩

theorem canonicalSound31880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31880.moment H = canonicalOutput31880.moment H :=
  canonical_of_padded canonicalInput31880 canonicalOutput31880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31881 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![0, 0, 0], ![-1, 3, -2], ![0, -4, 4]]⟩

def canonicalOutput31881 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node880⟩

theorem canonicalSound31881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31881.moment H = canonicalOutput31881.moment H :=
  canonical_of_padded canonicalInput31881 canonicalOutput31881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31882 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, -2, 1], ![1, 2, -3], ![-3, -1, 4]]⟩

def canonicalOutput31882 : ExponentCode := normalNode127

theorem canonicalSound31882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31882.moment H = canonicalOutput31882.moment H :=
  canonical_of_padded canonicalInput31882 canonicalOutput31882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31883 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![0, 2, -2], ![-2, -2, 4]]⟩

def canonicalOutput31883 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1543⟩

theorem canonicalSound31883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31883.moment H = canonicalOutput31883.moment H :=
  canonical_of_padded canonicalInput31883 canonicalOutput31883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31884 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-3, -2, 5]]⟩

def canonicalOutput31884 : ExponentCode := normalNode56

theorem canonicalSound31884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31884.moment H = canonicalOutput31884.moment H :=
  canonical_of_padded canonicalInput31884 canonicalOutput31884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31885 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 3, -1], ![0, -4, 4]]⟩

def canonicalOutput31885 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1879⟩

theorem canonicalSound31885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31885.moment H = canonicalOutput31885.moment H :=
  canonical_of_padded canonicalInput31885 canonicalOutput31885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31886 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, 3, -2], ![-1, -4, 5]]⟩

def canonicalOutput31886 : ExponentCode := normalNode5986

theorem canonicalSound31886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31886.moment H = canonicalOutput31886.moment H :=
  canonical_of_padded canonicalInput31886 canonicalOutput31886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31887 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3], ![-3, -1, 4]]⟩

def canonicalOutput31887 : ExponentCode := normalNode130

theorem canonicalSound31887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31887.moment H = canonicalOutput31887.moment H :=
  canonical_of_padded canonicalInput31887 canonicalOutput31887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31888 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 1, -2]]⟩

def canonicalOutput31888 : ExponentCode := normalNode5562

theorem canonicalSound31888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31888.moment H = canonicalOutput31888.moment H :=
  canonical_of_padded canonicalInput31888 canonicalOutput31888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31889 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![-2, 1, 1], ![0, -3, 3], ![0, 3, -3]]⟩

def canonicalOutput31889 : ExponentCode := normalNode5587

theorem canonicalSound31889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31889.moment H = canonicalOutput31889.moment H :=
  canonical_of_padded canonicalInput31889 canonicalOutput31889 (by decide) (by decide)
    ⟨false, false, canonicalPermutation179, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31890 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![-1, -1, 2], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput31890 : ExponentCode := normalNode9514

theorem canonicalSound31890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31890.moment H = canonicalOutput31890.moment H :=
  canonical_of_padded canonicalInput31890 canonicalOutput31890 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31891 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -2, 3]]⟩

def canonicalOutput31891 : ExponentCode := normalNode3006

theorem canonicalSound31891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31891.moment H = canonicalOutput31891.moment H :=
  canonical_of_padded canonicalInput31891 canonicalOutput31891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation297, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31892 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![1, 0, -1], ![-1, 3, -2], ![-2, -2, 4]]⟩

def canonicalOutput31892 : ExponentCode := normalNode976

theorem canonicalSound31892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31892.moment H = canonicalOutput31892.moment H :=
  canonical_of_padded canonicalInput31892 canonicalOutput31892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31893 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -2, 1], ![1, 0, -1], ![0, 3, -3], ![-3, -1, 4]]⟩

def canonicalOutput31893 : ExponentCode := normalNode130

theorem canonicalSound31893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31893.moment H = canonicalOutput31893.moment H :=
  canonical_of_padded canonicalInput31893 canonicalOutput31893 (by decide) (by decide)
    ⟨false, false, canonicalPermutation97, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31894 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![1, 1, -2]]⟩

def canonicalOutput31894 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2295⟩

theorem canonicalSound31894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31894.moment H = canonicalOutput31894.moment H :=
  canonical_of_padded canonicalInput31894 canonicalOutput31894 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31895 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, 1, 1], ![0, -3, 3], ![0, 3, -3]]⟩

def canonicalOutput31895 : ExponentCode := normalNode5588

theorem canonicalSound31895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31895.moment H = canonicalOutput31895.moment H :=
  canonical_of_padded canonicalInput31895 canonicalOutput31895 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31896 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput31896 : ExponentCode := normalNode9515

theorem canonicalSound31896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31896.moment H = canonicalOutput31896.moment H :=
  canonical_of_padded canonicalInput31896 canonicalOutput31896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31897 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![0, 3, -3], ![-3, -1, 4]]⟩

def canonicalOutput31897 : ExponentCode := normalNode131

theorem canonicalSound31897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31897.moment H = canonicalOutput31897.moment H :=
  canonical_of_padded canonicalInput31897 canonicalOutput31897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31898 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 3, -1], ![-1, -2, 3]]⟩

def canonicalOutput31898 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1425⟩

theorem canonicalSound31898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31898.moment H = canonicalOutput31898.moment H :=
  canonical_of_padded canonicalInput31898 canonicalOutput31898 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31899 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-1, 3, -2], ![-2, -2, 4]]⟩

def canonicalOutput31899 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1535⟩

theorem canonicalSound31899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31899.moment H = canonicalOutput31899.moment H :=
  canonical_of_padded canonicalInput31899 canonicalOutput31899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31900 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![0, 2, -2], ![-3, -1, 4]]⟩

def canonicalOutput31900 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1391⟩

theorem canonicalSound31900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31900.moment H = canonicalOutput31900.moment H :=
  canonical_of_padded canonicalInput31900 canonicalOutput31900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31901 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3], ![-3, -2, 5]]⟩

def canonicalOutput31901 : ExponentCode := normalNode60

theorem canonicalSound31901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31901.moment H = canonicalOutput31901.moment H :=
  canonical_of_padded canonicalInput31901 canonicalOutput31901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31902 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 0, 2], ![-1, -1, 2], ![1, 1, -2]]⟩

def canonicalOutput31902 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2656⟩

theorem canonicalSound31902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31902.moment H = canonicalOutput31902.moment H :=
  canonical_of_padded canonicalInput31902 canonicalOutput31902 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31903 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 0, 2], ![0, -3, 3], ![0, 3, -3]]⟩

def canonicalOutput31903 : ExponentCode := normalNode4613

theorem canonicalSound31903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31903.moment H = canonicalOutput31903.moment H :=
  canonical_of_padded canonicalInput31903 canonicalOutput31903 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31904 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -2, 3], ![1, 1, -2]]⟩

def canonicalOutput31904 : ExponentCode := normalNode2995

theorem canonicalSound31904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31904.moment H = canonicalOutput31904.moment H :=
  canonical_of_padded canonicalInput31904 canonicalOutput31904 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31905 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 0, -1]]⟩

def canonicalOutput31905 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2667⟩

theorem canonicalSound31905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31905.moment H = canonicalOutput31905.moment H :=
  canonical_of_padded canonicalInput31905 canonicalOutput31905 (by decide) (by decide)
    ⟨false, false, canonicalPermutation271, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31906 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![0, -4, 4], ![0, 3, -3]]⟩

def canonicalOutput31906 : ExponentCode := normalNode5575

theorem canonicalSound31906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31906.moment H = canonicalOutput31906.moment H :=
  canonical_of_padded canonicalInput31906 canonicalOutput31906 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31907 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![0, -3, 3], ![0, 2, -2]]⟩

def canonicalOutput31907 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2298⟩

theorem canonicalSound31907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31907.moment H = canonicalOutput31907.moment H :=
  canonical_of_padded canonicalInput31907 canonicalOutput31907 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31908 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -2, 3], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput31908 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2457⟩

theorem canonicalSound31908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31908.moment H = canonicalOutput31908.moment H :=
  canonical_of_padded canonicalInput31908 canonicalOutput31908 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31909 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![-1, -2, 3], ![0, 3, -3]]⟩

def canonicalOutput31909 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2457⟩

theorem canonicalSound31909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31909.moment H = canonicalOutput31909.moment H :=
  canonical_of_padded canonicalInput31909 canonicalOutput31909 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31910 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![-1, -1, 2], ![0, 2, -2]]⟩

def canonicalOutput31910 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2652⟩

theorem canonicalSound31910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31910.moment H = canonicalOutput31910.moment H :=
  canonical_of_padded canonicalInput31910 canonicalOutput31910 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31911 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, -1, 0], ![-2, 3, -1], ![-1, -2, 3]]⟩

def canonicalOutput31911 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1425⟩

theorem canonicalSound31911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31911.moment H = canonicalOutput31911.moment H :=
  canonical_of_padded canonicalInput31911 canonicalOutput31911 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31912 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, -1, 0], ![-1, 3, -2], ![-2, -2, 4]]⟩

def canonicalOutput31912 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1535⟩

theorem canonicalSound31912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31912.moment H = canonicalOutput31912.moment H :=
  canonical_of_padded canonicalInput31912 canonicalOutput31912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31913 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-3, 3, 0], ![0, -3, 3]]⟩

def canonicalOutput31913 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1407⟩

theorem canonicalSound31913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31913.moment H = canonicalOutput31913.moment H :=
  canonical_of_padded canonicalInput31913 canonicalOutput31913 (by decide) (by decide)
    ⟨false, false, canonicalPermutation267, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31914 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, 2, 0], ![-1, -2, 3]]⟩

def canonicalOutput31914 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1432⟩

theorem canonicalSound31914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31914.moment H = canonicalOutput31914.moment H :=
  canonical_of_padded canonicalInput31914 canonicalOutput31914 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation352, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31915 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -3, 4]]⟩

def canonicalOutput31915 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1869⟩

theorem canonicalSound31915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31915.moment H = canonicalOutput31915.moment H :=
  canonical_of_padded canonicalInput31915 canonicalOutput31915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation297, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31916 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-1, 3, -2], ![-2, -3, 5]]⟩

def canonicalOutput31916 : ExponentCode := normalNode323

theorem canonicalSound31916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31916.moment H = canonicalOutput31916.moment H :=
  canonical_of_padded canonicalInput31916 canonicalOutput31916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31917 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, -1, 0], ![1, 0, -1], ![-3, 3, 0], ![0, -3, 3]]⟩

def canonicalOutput31917 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1407⟩

theorem canonicalSound31917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31917.moment H = canonicalOutput31917.moment H :=
  canonical_of_padded canonicalInput31917 canonicalOutput31917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation276, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31918 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 3, -1], ![-1, -3, 4]]⟩

def canonicalOutput31918 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1869⟩

theorem canonicalSound31918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31918.moment H = canonicalOutput31918.moment H :=
  canonical_of_padded canonicalInput31918 canonicalOutput31918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31919 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, -1, 0], ![-3, 3, 0], ![0, -3, 3]]⟩

def canonicalOutput31919 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1407⟩

theorem canonicalSound31919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31919.moment H = canonicalOutput31919.moment H :=
  canonical_of_padded canonicalInput31919 canonicalOutput31919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31920 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, -1, 0], ![-2, 3, -1], ![-1, -3, 4]]⟩

def canonicalOutput31920 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1869⟩

theorem canonicalSound31920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31920.moment H = canonicalOutput31920.moment H :=
  canonical_of_padded canonicalInput31920 canonicalOutput31920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31921 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-3, 2, 1], ![0, -3, 3]]⟩

def canonicalOutput31921 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1411⟩

theorem canonicalSound31921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31921.moment H = canonicalOutput31921.moment H :=
  canonical_of_padded canonicalInput31921 canonicalOutput31921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31922 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-3, 3, 0], ![0, -4, 4]]⟩

def canonicalOutput31922 : ExponentCode := normalNode163

theorem canonicalSound31922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31922.moment H = canonicalOutput31922.moment H :=
  canonical_of_padded canonicalInput31922 canonicalOutput31922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31923 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-2, 2, 0], ![-1, -3, 4]]⟩

def canonicalOutput31923 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1388⟩

theorem canonicalSound31923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31923.moment H = canonicalOutput31923.moment H :=
  canonical_of_padded canonicalInput31923 canonicalOutput31923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31924 : ExponentCode := ⟨6, 3, ![![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -4, 5]]⟩

def canonicalOutput31924 : ExponentCode := normalNode5966

theorem canonicalSound31924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31924.moment H = canonicalOutput31924.moment H :=
  canonical_of_padded canonicalInput31924 canonicalOutput31924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31925 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput31925 : ExponentCode := normalNode3578

theorem canonicalSound31925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31925.moment H = canonicalOutput31925.moment H :=
  canonical_of_padded canonicalInput31925 canonicalOutput31925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31926 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput31926 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3133⟩

theorem canonicalSound31926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31926.moment H = canonicalOutput31926.moment H :=
  canonical_of_padded canonicalInput31926 canonicalOutput31926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31927 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput31927 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2991⟩

theorem canonicalSound31927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31927.moment H = canonicalOutput31927.moment H :=
  canonical_of_padded canonicalInput31927 canonicalOutput31927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31928 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput31928 : ExponentCode := normalNode3740

theorem canonicalSound31928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31928.moment H = canonicalOutput31928.moment H :=
  canonical_of_padded canonicalInput31928 canonicalOutput31928 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31929 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput31929 : ExponentCode := normalNode2074

theorem canonicalSound31929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31929.moment H = canonicalOutput31929.moment H :=
  canonical_of_padded canonicalInput31929 canonicalOutput31929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31930 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31930 : ExponentCode := normalNode2057

theorem canonicalSound31930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31930.moment H = canonicalOutput31930.moment H :=
  canonical_of_padded canonicalInput31930 canonicalOutput31930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31931 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31931 : ExponentCode := normalNode3545

theorem canonicalSound31931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31931.moment H = canonicalOutput31931.moment H :=
  canonical_of_padded canonicalInput31931 canonicalOutput31931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31932 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31932 : ExponentCode := normalNode7760

theorem canonicalSound31932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31932.moment H = canonicalOutput31932.moment H :=
  canonical_of_padded canonicalInput31932 canonicalOutput31932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31933 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput31933 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1978⟩

theorem canonicalSound31933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31933.moment H = canonicalOutput31933.moment H :=
  canonical_of_padded canonicalInput31933 canonicalOutput31933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31934 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput31934 : ExponentCode := normalNode5511

theorem canonicalSound31934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31934.moment H = canonicalOutput31934.moment H :=
  canonical_of_padded canonicalInput31934 canonicalOutput31934 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31935 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput31935 : ExponentCode := normalNode1728

theorem canonicalSound31935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31935.moment H = canonicalOutput31935.moment H :=
  canonical_of_padded canonicalInput31935 canonicalOutput31935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23872 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![0, 1, 2, -3], ![-1, 2, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput23872 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound23872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23872.moment H = canonicalOutput23872.moment H :=
  canonical_of_padded canonicalInput23872 canonicalOutput23872 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23873 : ExponentCode := ⟨3, 4, ![![0, -3, 1, 2], ![0, 1, 2, -3], ![0, 2, -3, 1]]⟩

def canonicalOutput23873 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound23873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23873.moment H = canonicalOutput23873.moment H :=
  canonical_of_padded canonicalInput23873 canonicalOutput23873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23874 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![0, 1, 2, -3], ![0, 2, -1, -1], ![0, 0, -2, 2]]⟩

def canonicalOutput23874 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound23874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23874.moment H = canonicalOutput23874.moment H :=
  canonical_of_padded canonicalInput23874 canonicalOutput23874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23875 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23875 : ExponentCode := normalNode8958

theorem canonicalSound23875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23875.moment H = canonicalOutput23875.moment H :=
  canonical_of_padded canonicalInput23875 canonicalOutput23875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23876 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput23876 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2773⟩

theorem canonicalSound23876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23876.moment H = canonicalOutput23876.moment H :=
  canonical_of_padded canonicalInput23876 canonicalOutput23876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23877 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 1, -2, 2], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23877 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound23877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23877.moment H = canonicalOutput23877.moment H :=
  canonical_of_padded canonicalInput23877 canonicalOutput23877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23878 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput23878 : ExponentCode := normalNode7838

theorem canonicalSound23878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23878.moment H = canonicalOutput23878.moment H :=
  canonical_of_padded canonicalInput23878 canonicalOutput23878 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23879 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput23879 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound23879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23879.moment H = canonicalOutput23879.moment H :=
  canonical_of_padded canonicalInput23879 canonicalOutput23879 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23880 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 1, -1, 1], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput23880 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound23880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23880.moment H = canonicalOutput23880.moment H :=
  canonical_of_padded canonicalInput23880 canonicalOutput23880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23881 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput23881 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound23881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23881.moment H = canonicalOutput23881.moment H :=
  canonical_of_padded canonicalInput23881 canonicalOutput23881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23882 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput23882 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound23882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23882.moment H = canonicalOutput23882.moment H :=
  canonical_of_padded canonicalInput23882 canonicalOutput23882 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23883 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 2, 1, -2], ![0, 0, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput23883 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node852⟩

theorem canonicalSound23883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23883.moment H = canonicalOutput23883.moment H :=
  canonical_of_padded canonicalInput23883 canonicalOutput23883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23884 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![-1, 2, 1, -2], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput23884 : ExponentCode := normalNode7080

theorem canonicalSound23884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23884.moment H = canonicalOutput23884.moment H :=
  canonical_of_padded canonicalInput23884 canonicalOutput23884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23885 : ExponentCode := ⟨4, 4, ![![0, -3, 2, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput23885 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound23885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23885.moment H = canonicalOutput23885.moment H :=
  canonical_of_padded canonicalInput23885 canonicalOutput23885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23886 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23886 : ExponentCode := normalNode8958

theorem canonicalSound23886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23886.moment H = canonicalOutput23886.moment H :=
  canonical_of_padded canonicalInput23886 canonicalOutput23886 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23887 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 3, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23887 : ExponentCode := normalNode6129

theorem canonicalSound23887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23887.moment H = canonicalOutput23887.moment H :=
  canonical_of_padded canonicalInput23887 canonicalOutput23887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23888 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 3, 1, -4], ![0, 0, -1, 1]]⟩

def canonicalOutput23888 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩

theorem canonicalSound23888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23888.moment H = canonicalOutput23888.moment H :=
  canonical_of_padded canonicalInput23888 canonicalOutput23888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23889 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput23889 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2773⟩

theorem canonicalSound23889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23889.moment H = canonicalOutput23889.moment H :=
  canonical_of_padded canonicalInput23889 canonicalOutput23889 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23890 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput23890 : ExponentCode := normalNode6232

theorem canonicalSound23890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23890.moment H = canonicalOutput23890.moment H :=
  canonical_of_padded canonicalInput23890 canonicalOutput23890 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23891 : ExponentCode := ⟨5, 4, ![![0, -3, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -3, 1], ![0, 0, 0, 0]]⟩

def canonicalOutput23891 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node263⟩

theorem canonicalSound23891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23891.moment H = canonicalOutput23891.moment H :=
  canonical_of_padded canonicalInput23891 canonicalOutput23891 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23892 : ExponentCode := ⟨3, 4, ![![0, -3, 2, 1], ![0, 1, -3, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput23892 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound23892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23892.moment H = canonicalOutput23892.moment H :=
  canonical_of_padded canonicalInput23892 canonicalOutput23892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23893 : ExponentCode := ⟨5, 3, ![![0, -3, 3], ![-1, -1, 2], ![-1, 4, -3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput23893 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1144⟩

theorem canonicalSound23893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23893.moment H = canonicalOutput23893.moment H :=
  canonical_of_padded canonicalInput23893 canonicalOutput23893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23894 : ExponentCode := ⟨4, 3, ![![0, -3, 3], ![-1, -1, 2], ![0, 5, -5], ![1, -1, 0]]⟩

def canonicalOutput23894 : ExponentCode := normalNode9524

theorem canonicalSound23894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23894.moment H = canonicalOutput23894.moment H :=
  canonical_of_padded canonicalInput23894 canonicalOutput23894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23895 : ExponentCode := ⟨4, 3, ![![0, -3, 3], ![-1, 2, -1], ![0, 2, -2], ![1, -1, 0]]⟩

def canonicalOutput23895 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound23895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23895.moment H = canonicalOutput23895.moment H :=
  canonical_of_padded canonicalInput23895 canonicalOutput23895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23896 : ExponentCode := ⟨4, 3, ![![0, -3, 3], ![-1, 2, -1], ![0, 3, -3], ![1, -2, 1]]⟩

def canonicalOutput23896 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node277⟩

theorem canonicalSound23896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23896.moment H = canonicalOutput23896.moment H :=
  canonical_of_padded canonicalInput23896 canonicalOutput23896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23897 : ExponentCode := ⟨4, 3, ![![0, -3, 3], ![-1, 3, -2], ![0, 2, -2], ![1, -2, 1]]⟩

def canonicalOutput23897 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound23897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23897.moment H = canonicalOutput23897.moment H :=
  canonical_of_padded canonicalInput23897 canonicalOutput23897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23898 : ExponentCode := ⟨3, 3, ![![0, -3, 3], ![0, -2, 2], ![0, 5, -5]]⟩

def canonicalOutput23898 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node7⟩

theorem canonicalSound23898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23898.moment H = canonicalOutput23898.moment H :=
  canonical_of_padded canonicalInput23898 canonicalOutput23898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23899 : ExponentCode := ⟨6, 3, ![![0, -3, 3], ![0, 0, 0], ![0, 1, -1], ![0, 0, 0], ![0, 0, 0], ![0, 2, -2]]⟩

def canonicalOutput23899 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23899.moment H = canonicalOutput23899.moment H :=
  canonical_of_padded canonicalInput23899 canonicalOutput23899 (by decide) (by decide)
    ⟨false, false, canonicalPermutation226, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23900 : ExponentCode := ⟨6, 3, ![![0, -3, 3], ![0, 0, 0], ![0, 1, -1], ![0, 0, 0], ![0, 1, -1], ![0, 1, -1]]⟩

def canonicalOutput23900 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node26⟩

theorem canonicalSound23900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23900.moment H = canonicalOutput23900.moment H :=
  canonical_of_padded canonicalInput23900 canonicalOutput23900 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23901 : ExponentCode := ⟨6, 3, ![![0, -3, 3], ![0, 0, 0], ![0, 2, -2], ![0, 0, 0], ![0, 0, 0], ![0, 1, -1]]⟩

def canonicalOutput23901 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23901.moment H = canonicalOutput23901.moment H :=
  canonical_of_padded canonicalInput23901 canonicalOutput23901 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23902 : ExponentCode := ⟨6, 3, ![![0, -3, 3], ![0, 0, 0], ![0, 3, -3], ![0, 0, 0], ![0, 0, 0], ![0, 0, 0]]⟩

def canonicalOutput23902 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound23902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23902.moment H = canonicalOutput23902.moment H :=
  canonical_of_padded canonicalInput23902 canonicalOutput23902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23903 : ExponentCode := ⟨6, 3, ![![0, -3, 3], ![0, 1, -1], ![0, 1, -1], ![0, 0, 0], ![0, 0, 0], ![0, 1, -1]]⟩

def canonicalOutput23903 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node26⟩

theorem canonicalSound23903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23903.moment H = canonicalOutput23903.moment H :=
  canonical_of_padded canonicalInput23903 canonicalOutput23903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23904 : ExponentCode := ⟨4, 3, ![![0, -3, 3], ![0, 2, -2], ![-1, 2, -1], ![1, -1, 0]]⟩

def canonicalOutput23904 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound23904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23904.moment H = canonicalOutput23904.moment H :=
  canonical_of_padded canonicalInput23904 canonicalOutput23904 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23905 : ExponentCode := ⟨4, 3, ![![0, -3, 3], ![0, 2, -2], ![0, 2, -2], ![0, -1, 1]]⟩

def canonicalOutput23905 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node25⟩

theorem canonicalSound23905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23905.moment H = canonicalOutput23905.moment H :=
  canonical_of_padded canonicalInput23905 canonicalOutput23905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23906 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![-3, 2, -2, 3], ![3, 1, -1, -3]]⟩

def canonicalOutput23906 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code69

theorem canonicalSound23906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23906.moment H = canonicalOutput23906.moment H :=
  canonical_of_padded canonicalInput23906 canonicalOutput23906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23907 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![-3, 3, 1, -1], ![3, 0, -4, 1]]⟩

def canonicalOutput23907 : ExponentCode := normalNode133

theorem canonicalSound23907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23907.moment H = canonicalOutput23907.moment H :=
  canonical_of_padded canonicalInput23907 canonicalOutput23907 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23908 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![-2, 2, -2, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput23908 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound23908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23908.moment H = canonicalOutput23908.moment H :=
  canonical_of_padded canonicalInput23908 canonicalOutput23908 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23909 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![-2, 3, 1, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput23909 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code36

theorem canonicalSound23909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23909.moment H = canonicalOutput23909.moment H :=
  canonical_of_padded canonicalInput23909 canonicalOutput23909 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23910 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![1, -1, 1, -1], ![-1, 4, -4, 1]]⟩

def canonicalOutput23910 : ExponentCode := normalNode6267

theorem canonicalSound23910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23910.moment H = canonicalOutput23910.moment H :=
  canonical_of_padded canonicalInput23910 canonicalOutput23910 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23911 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput23911 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound23911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23911.moment H = canonicalOutput23911.moment H :=
  canonical_of_padded canonicalInput23911 canonicalOutput23911 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23912 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![2, -1, 1, -2], ![-2, 4, -4, 2]]⟩

def canonicalOutput23912 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code32

theorem canonicalSound23912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23912.moment H = canonicalOutput23912.moment H :=
  canonical_of_padded canonicalInput23912 canonicalOutput23912 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23913 : ExponentCode := ⟨3, 4, ![![0, -3, 3, 0], ![2, 1, 0, -3], ![-2, 2, -3, 3]]⟩

def canonicalOutput23913 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node91⟩

theorem canonicalSound23913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23913.moment H = canonicalOutput23913.moment H :=
  canonical_of_padded canonicalInput23913 canonicalOutput23913 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23914 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23914 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound23914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23914.moment H = canonicalOutput23914.moment H :=
  canonical_of_padded canonicalInput23914 canonicalOutput23914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23915 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23915 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound23915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23915.moment H = canonicalOutput23915.moment H :=
  canonical_of_padded canonicalInput23915 canonicalOutput23915 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23916 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23916 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound23916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23916.moment H = canonicalOutput23916.moment H :=
  canonical_of_padded canonicalInput23916 canonicalOutput23916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23917 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23917 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23917.moment H = canonicalOutput23917.moment H :=
  canonical_of_padded canonicalInput23917 canonicalOutput23917 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23918 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23918 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23918.moment H = canonicalOutput23918.moment H :=
  canonical_of_padded canonicalInput23918 canonicalOutput23918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23919 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23919 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23919.moment H = canonicalOutput23919.moment H :=
  canonical_of_padded canonicalInput23919 canonicalOutput23919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23920 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23920 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound23920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23920.moment H = canonicalOutput23920.moment H :=
  canonical_of_padded canonicalInput23920 canonicalOutput23920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23921 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23921 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23921.moment H = canonicalOutput23921.moment H :=
  canonical_of_padded canonicalInput23921 canonicalOutput23921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23922 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23922 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23922.moment H = canonicalOutput23922.moment H :=
  canonical_of_padded canonicalInput23922 canonicalOutput23922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23923 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23923 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound23923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23923.moment H = canonicalOutput23923.moment H :=
  canonical_of_padded canonicalInput23923 canonicalOutput23923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23924 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23924 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23924.moment H = canonicalOutput23924.moment H :=
  canonical_of_padded canonicalInput23924 canonicalOutput23924 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23925 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23925 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23925.moment H = canonicalOutput23925.moment H :=
  canonical_of_padded canonicalInput23925 canonicalOutput23925 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23926 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23926 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23926.moment H = canonicalOutput23926.moment H :=
  canonical_of_padded canonicalInput23926 canonicalOutput23926 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23927 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23927 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound23927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23927.moment H = canonicalOutput23927.moment H :=
  canonical_of_padded canonicalInput23927 canonicalOutput23927 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23928 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23928 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound23928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23928.moment H = canonicalOutput23928.moment H :=
  canonical_of_padded canonicalInput23928 canonicalOutput23928 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23929 : ExponentCode := ⟨6, 6, ![![0, -3, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23929 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound23929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23929.moment H = canonicalOutput23929.moment H :=
  canonical_of_padded canonicalInput23929 canonicalOutput23929 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23930 : ExponentCode := ⟨4, 4, ![![0, -2, -3, 5], ![-1, 0, 2, -1], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput23930 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound23930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23930.moment H = canonicalOutput23930.moment H :=
  canonical_of_padded canonicalInput23930 canonicalOutput23930 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23931 : ExponentCode := ⟨3, 4, ![![0, -2, -3, 5], ![0, 0, 2, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput23931 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node27⟩

theorem canonicalSound23931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23931.moment H = canonicalOutput23931.moment H :=
  canonical_of_padded canonicalInput23931 canonicalOutput23931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23932 : ExponentCode := ⟨3, 4, ![![0, -2, -3, 5], ![0, 0, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput23932 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node28⟩

theorem canonicalSound23932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23932.moment H = canonicalOutput23932.moment H :=
  canonical_of_padded canonicalInput23932 canonicalOutput23932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23933 : ExponentCode := ⟨3, 4, ![![0, -2, -3, 5], ![0, 1, 1, -2], ![0, 1, 2, -3]]⟩

def canonicalOutput23933 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩

theorem canonicalSound23933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23933.moment H = canonicalOutput23933.moment H :=
  canonical_of_padded canonicalInput23933 canonicalOutput23933 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23934 : ExponentCode := ⟨4, 5, ![![0, -2, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput23934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound23934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23934.moment H = canonicalOutput23934.moment H :=
  canonical_of_padded canonicalInput23934 canonicalOutput23934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23935 : ExponentCode := ⟨4, 5, ![![0, -2, -2, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput23935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound23935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23935.moment H = canonicalOutput23935.moment H :=
  canonical_of_padded canonicalInput23935 canonicalOutput23935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

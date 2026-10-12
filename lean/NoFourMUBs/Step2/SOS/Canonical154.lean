import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9856 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9856 : ExponentCode := normalNode9710

theorem canonicalSound9856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9856.moment H = canonicalOutput9856.moment H :=
  canonical_of_padded canonicalInput9856 canonicalOutput9856 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput9857 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput9857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound9857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9857.moment H = canonicalOutput9857.moment H :=
  canonical_of_padded canonicalInput9857 canonicalOutput9857 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput9858 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9858 : ExponentCode := normalNode11220

theorem canonicalSound9858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9858.moment H = canonicalOutput9858.moment H :=
  canonical_of_padded canonicalInput9858 canonicalOutput9858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9859 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9859 : ExponentCode := normalNode11187

theorem canonicalSound9859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9859.moment H = canonicalOutput9859.moment H :=
  canonical_of_padded canonicalInput9859 canonicalOutput9859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9860 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput9860 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1378⟩

theorem canonicalSound9860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9860.moment H = canonicalOutput9860.moment H :=
  canonical_of_padded canonicalInput9860 canonicalOutput9860 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9861 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9861 : ExponentCode := normalNode11162

theorem canonicalSound9861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9861.moment H = canonicalOutput9861.moment H :=
  canonical_of_padded canonicalInput9861 canonicalOutput9861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9862 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput9862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound9862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9862.moment H = canonicalOutput9862.moment H :=
  canonical_of_padded canonicalInput9862 canonicalOutput9862 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9863 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9863 : ExponentCode := normalNode11144

theorem canonicalSound9863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9863.moment H = canonicalOutput9863.moment H :=
  canonical_of_padded canonicalInput9863 canonicalOutput9863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9864 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput9864 : ExponentCode := normalNode4957

theorem canonicalSound9864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9864.moment H = canonicalOutput9864.moment H :=
  canonical_of_padded canonicalInput9864 canonicalOutput9864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9865 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput9865 : ExponentCode := normalNode4956

theorem canonicalSound9865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9865.moment H = canonicalOutput9865.moment H :=
  canonical_of_padded canonicalInput9865 canonicalOutput9865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9866 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput9866 : ExponentCode := normalNode11051

theorem canonicalSound9866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9866.moment H = canonicalOutput9866.moment H :=
  canonical_of_padded canonicalInput9866 canonicalOutput9866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9867 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -2, 1, -1]]⟩

def canonicalOutput9867 : ExponentCode := normalNode11178

theorem canonicalSound9867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9867.moment H = canonicalOutput9867.moment H :=
  canonical_of_padded canonicalInput9867 canonicalOutput9867 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9868 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput9868 : ExponentCode := normalNode7195

theorem canonicalSound9868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9868.moment H = canonicalOutput9868.moment H :=
  canonical_of_padded canonicalInput9868 canonicalOutput9868 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9869 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9869 : ExponentCode := normalNode9710

theorem canonicalSound9869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9869.moment H = canonicalOutput9869.moment H :=
  canonical_of_padded canonicalInput9869 canonicalOutput9869 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9870 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9870 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound9870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9870.moment H = canonicalOutput9870.moment H :=
  canonical_of_padded canonicalInput9870 canonicalOutput9870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9871 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9871 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1371⟩

theorem canonicalSound9871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9871.moment H = canonicalOutput9871.moment H :=
  canonical_of_padded canonicalInput9871 canonicalOutput9871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9872 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput9872 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound9872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9872.moment H = canonicalOutput9872.moment H :=
  canonical_of_padded canonicalInput9872 canonicalOutput9872 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9873 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput9873 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound9873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9873.moment H = canonicalOutput9873.moment H :=
  canonical_of_padded canonicalInput9873 canonicalOutput9873 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput9874 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput9874 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound9874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9874.moment H = canonicalOutput9874.moment H :=
  canonical_of_padded canonicalInput9874 canonicalOutput9874 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput9875 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9875 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound9875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9875.moment H = canonicalOutput9875.moment H :=
  canonical_of_padded canonicalInput9875 canonicalOutput9875 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput9876 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput9876 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1315⟩

theorem canonicalSound9876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9876.moment H = canonicalOutput9876.moment H :=
  canonical_of_padded canonicalInput9876 canonicalOutput9876 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput9877 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9877 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound9877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9877.moment H = canonicalOutput9877.moment H :=
  canonical_of_padded canonicalInput9877 canonicalOutput9877 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput9878 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9878 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1210⟩

theorem canonicalSound9878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9878.moment H = canonicalOutput9878.moment H :=
  canonical_of_padded canonicalInput9878 canonicalOutput9878 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput9879 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput9879 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩

theorem canonicalSound9879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9879.moment H = canonicalOutput9879.moment H :=
  canonical_of_padded canonicalInput9879 canonicalOutput9879 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput9880 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput9880 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound9880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9880.moment H = canonicalOutput9880.moment H :=
  canonical_of_padded canonicalInput9880 canonicalOutput9880 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput9881 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput9881 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound9881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9881.moment H = canonicalOutput9881.moment H :=
  canonical_of_padded canonicalInput9881 canonicalOutput9881 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9882 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9882 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1213⟩

theorem canonicalSound9882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9882.moment H = canonicalOutput9882.moment H :=
  canonical_of_padded canonicalInput9882 canonicalOutput9882 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput9883 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput9883 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound9883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9883.moment H = canonicalOutput9883.moment H :=
  canonical_of_padded canonicalInput9883 canonicalOutput9883 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput9884 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9884 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound9884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9884.moment H = canonicalOutput9884.moment H :=
  canonical_of_padded canonicalInput9884 canonicalOutput9884 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput9885 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput9885 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound9885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9885.moment H = canonicalOutput9885.moment H :=
  canonical_of_padded canonicalInput9885 canonicalOutput9885 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9886 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![1, -2, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput9886 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound9886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9886.moment H = canonicalOutput9886.moment H :=
  canonical_of_padded canonicalInput9886 canonicalOutput9886 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9887 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput9887 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound9887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9887.moment H = canonicalOutput9887.moment H :=
  canonical_of_padded canonicalInput9887 canonicalOutput9887 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9888 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9888 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound9888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9888.moment H = canonicalOutput9888.moment H :=
  canonical_of_padded canonicalInput9888 canonicalOutput9888 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9889 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9889 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound9889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9889.moment H = canonicalOutput9889.moment H :=
  canonical_of_padded canonicalInput9889 canonicalOutput9889 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9890 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9890 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound9890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9890.moment H = canonicalOutput9890.moment H :=
  canonical_of_padded canonicalInput9890 canonicalOutput9890 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9891 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput9891 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound9891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9891.moment H = canonicalOutput9891.moment H :=
  canonical_of_padded canonicalInput9891 canonicalOutput9891 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9892 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput9892 : ExponentCode := normalNode4885

theorem canonicalSound9892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9892.moment H = canonicalOutput9892.moment H :=
  canonical_of_padded canonicalInput9892 canonicalOutput9892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9893 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9893 : ExponentCode := normalNode4888

theorem canonicalSound9893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9893.moment H = canonicalOutput9893.moment H :=
  canonical_of_padded canonicalInput9893 canonicalOutput9893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9894 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput9894 : ExponentCode := normalNode4904

theorem canonicalSound9894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9894.moment H = canonicalOutput9894.moment H :=
  canonical_of_padded canonicalInput9894 canonicalOutput9894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9895 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2854⟩

theorem canonicalSound9895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9895.moment H = canonicalOutput9895.moment H :=
  canonical_of_padded canonicalInput9895 canonicalOutput9895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9896 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9896 : ExponentCode := normalNode11187

theorem canonicalSound9896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9896.moment H = canonicalOutput9896.moment H :=
  canonical_of_padded canonicalInput9896 canonicalOutput9896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9897 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput9897 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound9897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9897.moment H = canonicalOutput9897.moment H :=
  canonical_of_padded canonicalInput9897 canonicalOutput9897 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput9898 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput9898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound9898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9898.moment H = canonicalOutput9898.moment H :=
  canonical_of_padded canonicalInput9898 canonicalOutput9898 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput9899 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound9899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9899.moment H = canonicalOutput9899.moment H :=
  canonical_of_padded canonicalInput9899 canonicalOutput9899 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput9900 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput9900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound9900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9900.moment H = canonicalOutput9900.moment H :=
  canonical_of_padded canonicalInput9900 canonicalOutput9900 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput9901 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9901 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node964⟩

theorem canonicalSound9901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9901.moment H = canonicalOutput9901.moment H :=
  canonical_of_padded canonicalInput9901 canonicalOutput9901 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput9902 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound9902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9902.moment H = canonicalOutput9902.moment H :=
  canonical_of_padded canonicalInput9902 canonicalOutput9902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput9903 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput9903 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound9903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9903.moment H = canonicalOutput9903.moment H :=
  canonical_of_padded canonicalInput9903 canonicalOutput9903 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9904 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput9904 : ExponentCode := normalNode11220

theorem canonicalSound9904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9904.moment H = canonicalOutput9904.moment H :=
  canonical_of_padded canonicalInput9904 canonicalOutput9904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9905 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput9905 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2860⟩

theorem canonicalSound9905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9905.moment H = canonicalOutput9905.moment H :=
  canonical_of_padded canonicalInput9905 canonicalOutput9905 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9906 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9906 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound9906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9906.moment H = canonicalOutput9906.moment H :=
  canonical_of_padded canonicalInput9906 canonicalOutput9906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9907 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput9907 : ExponentCode := normalNode11125

theorem canonicalSound9907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9907.moment H = canonicalOutput9907.moment H :=
  canonical_of_padded canonicalInput9907 canonicalOutput9907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9908 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput9908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound9908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9908.moment H = canonicalOutput9908.moment H :=
  canonical_of_padded canonicalInput9908 canonicalOutput9908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9909 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput9909 : ExponentCode := normalNode11127

theorem canonicalSound9909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9909.moment H = canonicalOutput9909.moment H :=
  canonical_of_padded canonicalInput9909 canonicalOutput9909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9910 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9910 : ExponentCode := normalNode4951

theorem canonicalSound9910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9910.moment H = canonicalOutput9910.moment H :=
  canonical_of_padded canonicalInput9910 canonicalOutput9910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9911 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, 3, -3]]⟩

def canonicalOutput9911 : ExponentCode := normalNode11193

theorem canonicalSound9911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9911.moment H = canonicalOutput9911.moment H :=
  canonical_of_padded canonicalInput9911 canonicalOutput9911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9912 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9912 : ExponentCode := normalNode4955

theorem canonicalSound9912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9912.moment H = canonicalOutput9912.moment H :=
  canonical_of_padded canonicalInput9912 canonicalOutput9912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9913 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput9913 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2190⟩

theorem canonicalSound9913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9913.moment H = canonicalOutput9913.moment H :=
  canonical_of_padded canonicalInput9913 canonicalOutput9913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9914 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput9914 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound9914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9914.moment H = canonicalOutput9914.moment H :=
  canonical_of_padded canonicalInput9914 canonicalOutput9914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9915 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput9915 : ExponentCode := normalNode4959

theorem canonicalSound9915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9915.moment H = canonicalOutput9915.moment H :=
  canonical_of_padded canonicalInput9915 canonicalOutput9915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9916 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput9916 : ExponentCode := normalNode4983

theorem canonicalSound9916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9916.moment H = canonicalOutput9916.moment H :=
  canonical_of_padded canonicalInput9916 canonicalOutput9916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9917 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9917 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound9917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9917.moment H = canonicalOutput9917.moment H :=
  canonical_of_padded canonicalInput9917 canonicalOutput9917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9918 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput9918 : ExponentCode := normalNode11026

theorem canonicalSound9918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9918.moment H = canonicalOutput9918.moment H :=
  canonical_of_padded canonicalInput9918 canonicalOutput9918 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9919 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![1, -2, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput9919 : ExponentCode := normalNode9978

theorem canonicalSound9919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9919.moment H = canonicalOutput9919.moment H :=
  canonical_of_padded canonicalInput9919 canonicalOutput9919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

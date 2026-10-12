import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical119
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7872 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput7872 : ExponentCode := normalNode4110

theorem canonicalSound7872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7872.moment H = canonicalOutput7872.moment H :=
  canonical_of_padded canonicalInput7872 canonicalOutput7872 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7873 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput7873 : ExponentCode := normalNode3821

theorem canonicalSound7873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7873.moment H = canonicalOutput7873.moment H :=
  canonical_of_padded canonicalInput7873 canonicalOutput7873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7874 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput7874 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound7874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7874.moment H = canonicalOutput7874.moment H :=
  canonical_of_padded canonicalInput7874 canonicalOutput7874 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7875 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -1, 4, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput7875 : ExponentCode := normalNode9644

theorem canonicalSound7875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7875.moment H = canonicalOutput7875.moment H :=
  canonical_of_padded canonicalInput7875 canonicalOutput7875 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7876 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -2, 3, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput7876 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound7876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7876.moment H = canonicalOutput7876.moment H :=
  canonical_of_padded canonicalInput7876 canonicalOutput7876 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput7877 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput7877 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2049⟩

theorem canonicalSound7877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7877.moment H = canonicalOutput7877.moment H :=
  canonical_of_padded canonicalInput7877 canonicalOutput7877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7878 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -3, 3, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput7878 : ExponentCode := normalNode4069

theorem canonicalSound7878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7878.moment H = canonicalOutput7878.moment H :=
  canonical_of_padded canonicalInput7878 canonicalOutput7878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7879 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7879 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound7879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7879.moment H = canonicalOutput7879.moment H :=
  canonical_of_padded canonicalInput7879 canonicalOutput7879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7880 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput7880 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩

theorem canonicalSound7880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7880.moment H = canonicalOutput7880.moment H :=
  canonical_of_padded canonicalInput7880 canonicalOutput7880 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7881 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput7881 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩

theorem canonicalSound7881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7881.moment H = canonicalOutput7881.moment H :=
  canonical_of_padded canonicalInput7881 canonicalOutput7881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7882 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput7882 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1255⟩

theorem canonicalSound7882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7882.moment H = canonicalOutput7882.moment H :=
  canonical_of_padded canonicalInput7882 canonicalOutput7882 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7883 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -3, 3, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7883 : ExponentCode := normalNode3985

theorem canonicalSound7883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7883.moment H = canonicalOutput7883.moment H :=
  canonical_of_padded canonicalInput7883 canonicalOutput7883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7884 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -2, 3, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput7884 : ExponentCode := normalNode3984

theorem canonicalSound7884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7884.moment H = canonicalOutput7884.moment H :=
  canonical_of_padded canonicalInput7884 canonicalOutput7884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7885 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput7885 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1254⟩

theorem canonicalSound7885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7885.moment H = canonicalOutput7885.moment H :=
  canonical_of_padded canonicalInput7885 canonicalOutput7885 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7886 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput7886 : ExponentCode := normalNode10354

theorem canonicalSound7886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7886.moment H = canonicalOutput7886.moment H :=
  canonical_of_padded canonicalInput7886 canonicalOutput7886 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7887 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput7887 : ExponentCode := normalNode10547

theorem canonicalSound7887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7887.moment H = canonicalOutput7887.moment H :=
  canonical_of_padded canonicalInput7887 canonicalOutput7887 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7888 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput7888 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node832⟩

theorem canonicalSound7888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7888.moment H = canonicalOutput7888.moment H :=
  canonical_of_padded canonicalInput7888 canonicalOutput7888 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7889 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput7889 : ExponentCode := normalNode10665

theorem canonicalSound7889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7889.moment H = canonicalOutput7889.moment H :=
  canonical_of_padded canonicalInput7889 canonicalOutput7889 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7890 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput7890 : ExponentCode := normalNode10665

theorem canonicalSound7890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7890.moment H = canonicalOutput7890.moment H :=
  canonical_of_padded canonicalInput7890 canonicalOutput7890 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7891 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![0, 1, -3, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput7891 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node610⟩

theorem canonicalSound7891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7891.moment H = canonicalOutput7891.moment H :=
  canonical_of_padded canonicalInput7891 canonicalOutput7891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7892 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput7892 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node413⟩

theorem canonicalSound7892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7892.moment H = canonicalOutput7892.moment H :=
  canonical_of_padded canonicalInput7892 canonicalOutput7892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7893 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7893 : ExponentCode := normalNode3812

theorem canonicalSound7893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7893.moment H = canonicalOutput7893.moment H :=
  canonical_of_padded canonicalInput7893 canonicalOutput7893 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7894 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput7894 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code158

theorem canonicalSound7894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7894.moment H = canonicalOutput7894.moment H :=
  canonical_of_padded canonicalInput7894 canonicalOutput7894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7895 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7895 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound7895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7895.moment H = canonicalOutput7895.moment H :=
  canonical_of_padded canonicalInput7895 canonicalOutput7895 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7896 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7896 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound7896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7896.moment H = canonicalOutput7896.moment H :=
  canonical_of_padded canonicalInput7896 canonicalOutput7896 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput7897 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput7897 : ExponentCode := normalNode10245

theorem canonicalSound7897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7897.moment H = canonicalOutput7897.moment H :=
  canonical_of_padded canonicalInput7897 canonicalOutput7897 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7898 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput7898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound7898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7898.moment H = canonicalOutput7898.moment H :=
  canonical_of_padded canonicalInput7898 canonicalOutput7898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3825step0⟩

def canonicalOutput7899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound7899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7899.moment H = canonicalOutput7899.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3825step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3825step0 = OAI.MUB6.Certificate.PairSemantics.raw3825.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3825).trans (OAI.MUB6.Certificate.PairSemantics.canonical3825 hH)

def canonicalInput7900 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput7900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound7900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7900.moment H = canonicalOutput7900.moment H :=
  canonical_of_padded canonicalInput7900 canonicalOutput7900 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7901 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, 0, 2, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput7901 : ExponentCode := normalNode10245

theorem canonicalSound7901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7901.moment H = canonicalOutput7901.moment H :=
  canonical_of_padded canonicalInput7901 canonicalOutput7901 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7902 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![0, 1, -2, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput7902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound7902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7902.moment H = canonicalOutput7902.moment H :=
  canonical_of_padded canonicalInput7902 canonicalOutput7902 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput7903 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![0, 1, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput7903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound7903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7903.moment H = canonicalOutput7903.moment H :=
  canonical_of_padded canonicalInput7903 canonicalOutput7903 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7904 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput7904 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1255⟩

theorem canonicalSound7904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7904.moment H = canonicalOutput7904.moment H :=
  canonical_of_padded canonicalInput7904 canonicalOutput7904 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7905 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![0, 1, 1, -2], ![2, -2, -3, 3]]⟩

def canonicalOutput7905 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code918

theorem canonicalSound7905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7905.moment H = canonicalOutput7905.moment H :=
  canonical_of_padded canonicalInput7905 canonicalOutput7905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7906 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput7906 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩

theorem canonicalSound7906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7906.moment H = canonicalOutput7906.moment H :=
  canonical_of_padded canonicalInput7906 canonicalOutput7906 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7907 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput7907 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound7907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7907.moment H = canonicalOutput7907.moment H :=
  canonical_of_padded canonicalInput7907 canonicalOutput7907 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7908 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput7908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩

theorem canonicalSound7908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7908.moment H = canonicalOutput7908.moment H :=
  canonical_of_padded canonicalInput7908 canonicalOutput7908 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7909 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput7909 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1196⟩

theorem canonicalSound7909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7909.moment H = canonicalOutput7909.moment H :=
  canonical_of_padded canonicalInput7909 canonicalOutput7909 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7910 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 2, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput7910 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound7910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7910.moment H = canonicalOutput7910.moment H :=
  canonical_of_padded canonicalInput7910 canonicalOutput7910 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7911 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, 3, -4], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput7911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2038⟩

theorem canonicalSound7911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7911.moment H = canonicalOutput7911.moment H :=
  canonical_of_padded canonicalInput7911 canonicalOutput7911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7912 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 3, -4], ![0, 1, -2, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput7912 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound7912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7912.moment H = canonicalOutput7912.moment H :=
  canonical_of_padded canonicalInput7912 canonicalOutput7912 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput7913 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 3, -4], ![0, 1, -1, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput7913 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩

theorem canonicalSound7913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7913.moment H = canonicalOutput7913.moment H :=
  canonical_of_padded canonicalInput7913 canonicalOutput7913 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7914 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 3, -4], ![1, -2, 1, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput7914 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code735

theorem canonicalSound7914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7914.moment H = canonicalOutput7914.moment H :=
  canonical_of_padded canonicalInput7914 canonicalOutput7914 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput7915 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, 3, -4], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput7915 : ExponentCode := normalNode9676

theorem canonicalSound7915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7915.moment H = canonicalOutput7915.moment H :=
  canonical_of_padded canonicalInput7915 canonicalOutput7915 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7916 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -4, 2], ![1, -2, 1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput7916 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code734

theorem canonicalSound7916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7916.moment H = canonicalOutput7916.moment H :=
  canonical_of_padded canonicalInput7916 canonicalOutput7916 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7917 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -4, 2], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput7917 : ExponentCode := normalNode10899

theorem canonicalSound7917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7917.moment H = canonicalOutput7917.moment H :=
  canonical_of_padded canonicalInput7917 canonicalOutput7917 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7918 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -4, 2], ![1, -1, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput7918 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code747

theorem canonicalSound7918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7918.moment H = canonicalOutput7918.moment H :=
  canonical_of_padded canonicalInput7918 canonicalOutput7918 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7919 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -2, 0], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput7919 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound7919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7919.moment H = canonicalOutput7919.moment H :=
  canonical_of_padded canonicalInput7919 canonicalOutput7919 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7920 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -2, 0], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput7920 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound7920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7920.moment H = canonicalOutput7920.moment H :=
  canonical_of_padded canonicalInput7920 canonicalOutput7920 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7921 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7921 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node606⟩

theorem canonicalSound7921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7921.moment H = canonicalOutput7921.moment H :=
  canonical_of_padded canonicalInput7921 canonicalOutput7921 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7922 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7922 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound7922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7922.moment H = canonicalOutput7922.moment H :=
  canonical_of_padded canonicalInput7922 canonicalOutput7922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7923 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -3, 3, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7923 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound7923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7923.moment H = canonicalOutput7923.moment H :=
  canonical_of_padded canonicalInput7923 canonicalOutput7923 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7924 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput7924 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound7924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7924.moment H = canonicalOutput7924.moment H :=
  canonical_of_padded canonicalInput7924 canonicalOutput7924 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7925 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7925 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound7925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7925.moment H = canonicalOutput7925.moment H :=
  canonical_of_padded canonicalInput7925 canonicalOutput7925 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7926 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound7926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7926.moment H = canonicalOutput7926.moment H :=
  canonical_of_padded canonicalInput7926 canonicalOutput7926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7927 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -2, 4, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput7927 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code923

theorem canonicalSound7927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7927.moment H = canonicalOutput7927.moment H :=
  canonical_of_padded canonicalInput7927 canonicalOutput7927 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7928 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput7928 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound7928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7928.moment H = canonicalOutput7928.moment H :=
  canonical_of_padded canonicalInput7928 canonicalOutput7928 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7929 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput7929 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound7929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7929.moment H = canonicalOutput7929.moment H :=
  canonical_of_padded canonicalInput7929 canonicalOutput7929 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7930 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -1, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput7930 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound7930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7930.moment H = canonicalOutput7930.moment H :=
  canonical_of_padded canonicalInput7930 canonicalOutput7930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7931 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -2, 3, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput7931 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code896

theorem canonicalSound7931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7931.moment H = canonicalOutput7931.moment H :=
  canonical_of_padded canonicalInput7931 canonicalOutput7931 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7932 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput7932 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩

theorem canonicalSound7932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7932.moment H = canonicalOutput7932.moment H :=
  canonical_of_padded canonicalInput7932 canonicalOutput7932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7933 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput7933 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound7933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7933.moment H = canonicalOutput7933.moment H :=
  canonical_of_padded canonicalInput7933 canonicalOutput7933 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7934 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 1, -3], ![1, -3, 1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput7934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound7934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7934.moment H = canonicalOutput7934.moment H :=
  canonical_of_padded canonicalInput7934 canonicalOutput7934 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput7935 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 1, -3], ![1, -3, 2, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7935 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound7935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7935.moment H = canonicalOutput7935.moment H :=
  canonical_of_padded canonicalInput7935 canonicalOutput7935 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

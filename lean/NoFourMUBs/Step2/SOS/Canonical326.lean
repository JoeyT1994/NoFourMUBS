import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20864 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput20864 : ExponentCode := normalNode3196

theorem canonicalSound20864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20864.moment H = canonicalOutput20864.moment H :=
  canonical_of_padded canonicalInput20864 canonicalOutput20864 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20865 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput20865 : ExponentCode := normalNode3198

theorem canonicalSound20865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20865.moment H = canonicalOutput20865.moment H :=
  canonical_of_padded canonicalInput20865 canonicalOutput20865 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20866 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20866 : ExponentCode := normalNode1105

theorem canonicalSound20866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20866.moment H = canonicalOutput20866.moment H :=
  canonical_of_padded canonicalInput20866 canonicalOutput20866 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20867 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput20867 : ExponentCode := normalNode3177

theorem canonicalSound20867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20867.moment H = canonicalOutput20867.moment H :=
  canonical_of_padded canonicalInput20867 canonicalOutput20867 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20868 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput20868 : ExponentCode := normalNode9621

theorem canonicalSound20868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20868.moment H = canonicalOutput20868.moment H :=
  canonical_of_padded canonicalInput20868 canonicalOutput20868 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20869 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20869 : ExponentCode := normalNode9628

theorem canonicalSound20869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20869.moment H = canonicalOutput20869.moment H :=
  canonical_of_padded canonicalInput20869 canonicalOutput20869 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation369, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20870 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20870 : ExponentCode := normalNode7303

theorem canonicalSound20870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20870.moment H = canonicalOutput20870.moment H :=
  canonical_of_padded canonicalInput20870 canonicalOutput20870 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20871 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 0, 3, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput20871 : ExponentCode := normalNode10537

theorem canonicalSound20871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20871.moment H = canonicalOutput20871.moment H :=
  canonical_of_padded canonicalInput20871 canonicalOutput20871 (by decide) (by decide)
    ⟨false, true, canonicalPermutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20872 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 0, -2, 2], ![2, 2, 1, -5]]⟩

def canonicalOutput20872 : ExponentCode := normalNode375

theorem canonicalSound20872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20872.moment H = canonicalOutput20872.moment H :=
  canonical_of_padded canonicalInput20872 canonicalOutput20872 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20873 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 1, -3, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput20873 : ExponentCode := normalNode3251

theorem canonicalSound20873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20873.moment H = canonicalOutput20873.moment H :=
  canonical_of_padded canonicalInput20873 canonicalOutput20873 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20874 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput20874 : ExponentCode := normalNode3259

theorem canonicalSound20874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20874.moment H = canonicalOutput20874.moment H :=
  canonical_of_padded canonicalInput20874 canonicalOutput20874 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20875 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 0, -2, 3], ![2, 2, 1, -5]]⟩

def canonicalOutput20875 : ExponentCode := normalNode366

theorem canonicalSound20875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20875.moment H = canonicalOutput20875.moment H :=
  canonical_of_padded canonicalInput20875 canonicalOutput20875 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20876 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput20876 : ExponentCode := normalNode6491

theorem canonicalSound20876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20876.moment H = canonicalOutput20876.moment H :=
  canonical_of_padded canonicalInput20876 canonicalOutput20876 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20877 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, -3, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput20877 : ExponentCode := normalNode3212

theorem canonicalSound20877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20877.moment H = canonicalOutput20877.moment H :=
  canonical_of_padded canonicalInput20877 canonicalOutput20877 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20878 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput20878 : ExponentCode := normalNode10838

theorem canonicalSound20878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20878.moment H = canonicalOutput20878.moment H :=
  canonical_of_padded canonicalInput20878 canonicalOutput20878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20879 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput20879 : ExponentCode := normalNode3221

theorem canonicalSound20879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20879.moment H = canonicalOutput20879.moment H :=
  canonical_of_padded canonicalInput20879 canonicalOutput20879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20880 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -4, 3]]⟩

def canonicalOutput20880 : ExponentCode := normalNode9687

theorem canonicalSound20880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20880.moment H = canonicalOutput20880.moment H :=
  canonical_of_padded canonicalInput20880 canonicalOutput20880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20881 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20881 : ExponentCode := normalNode6306

theorem canonicalSound20881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20881.moment H = canonicalOutput20881.moment H :=
  canonical_of_padded canonicalInput20881 canonicalOutput20881 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation370, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20882 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 2, 2, -5]]⟩

def canonicalOutput20882 : ExponentCode := normalNode1091

theorem canonicalSound20882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20882.moment H = canonicalOutput20882.moment H :=
  canonical_of_padded canonicalInput20882 canonicalOutput20882 (by decide) (by decide)
    ⟨false, true, canonicalPermutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20883 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, -2, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput20883 : ExponentCode := normalNode10631

theorem canonicalSound20883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20883.moment H = canonicalOutput20883.moment H :=
  canonical_of_padded canonicalInput20883 canonicalOutput20883 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20884 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![0, -1, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput20884 : ExponentCode := normalNode3215

theorem canonicalSound20884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20884.moment H = canonicalOutput20884.moment H :=
  canonical_of_padded canonicalInput20884 canonicalOutput20884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20885 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput20885 : ExponentCode := normalNode9686

theorem canonicalSound20885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20885.moment H = canonicalOutput20885.moment H :=
  canonical_of_padded canonicalInput20885 canonicalOutput20885 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation370, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20886 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, -3, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20886 : ExponentCode := normalNode9884

theorem canonicalSound20886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20886.moment H = canonicalOutput20886.moment H :=
  canonical_of_padded canonicalInput20886 canonicalOutput20886 (by decide) (by decide)
    ⟨false, true, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20887 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -2, 4], ![2, 0, 2, -4]]⟩

def canonicalOutput20887 : ExponentCode := normalNode3164

theorem canonicalSound20887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20887.moment H = canonicalOutput20887.moment H :=
  canonical_of_padded canonicalInput20887 canonicalOutput20887 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20888 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput20888 : ExponentCode := normalNode9878

theorem canonicalSound20888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20888.moment H = canonicalOutput20888.moment H :=
  canonical_of_padded canonicalInput20888 canonicalOutput20888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20889 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, -3, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput20889 : ExponentCode := normalNode9617

theorem canonicalSound20889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20889.moment H = canonicalOutput20889.moment H :=
  canonical_of_padded canonicalInput20889 canonicalOutput20889 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20890 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20890 : ExponentCode := normalNode10627

theorem canonicalSound20890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20890.moment H = canonicalOutput20890.moment H :=
  canonical_of_padded canonicalInput20890 canonicalOutput20890 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20891 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput20891 : ExponentCode := normalNode10841

theorem canonicalSound20891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20891.moment H = canonicalOutput20891.moment H :=
  canonical_of_padded canonicalInput20891 canonicalOutput20891 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20892 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput20892 : ExponentCode := normalNode9806

theorem canonicalSound20892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20892.moment H = canonicalOutput20892.moment H :=
  canonical_of_padded canonicalInput20892 canonicalOutput20892 (by decide) (by decide)
    ⟨false, true, canonicalPermutation128, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20893 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20893 : ExponentCode := normalNode7380

theorem canonicalSound20893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20893.moment H = canonicalOutput20893.moment H :=
  canonical_of_padded canonicalInput20893 canonicalOutput20893 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20894 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -2, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput20894 : ExponentCode := normalNode7282

theorem canonicalSound20894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20894.moment H = canonicalOutput20894.moment H :=
  canonical_of_padded canonicalInput20894 canonicalOutput20894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20895 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput20895 : ExponentCode := normalNode10551

theorem canonicalSound20895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20895.moment H = canonicalOutput20895.moment H :=
  canonical_of_padded canonicalInput20895 canonicalOutput20895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20896 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, 0, 3, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput20896 : ExponentCode := normalNode10843

theorem canonicalSound20896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20896.moment H = canonicalOutput20896.moment H :=
  canonical_of_padded canonicalInput20896 canonicalOutput20896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20897 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput20897 : ExponentCode := normalNode3215

theorem canonicalSound20897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20897.moment H = canonicalOutput20897.moment H :=
  canonical_of_padded canonicalInput20897 canonicalOutput20897 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation376, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20898 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-1, 2, -4, 3]]⟩

def canonicalOutput20898 : ExponentCode := normalNode4741

theorem canonicalSound20898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20898.moment H = canonicalOutput20898.moment H :=
  canonical_of_padded canonicalInput20898 canonicalOutput20898 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20899 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput20899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩

theorem canonicalSound20899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20899.moment H = canonicalOutput20899.moment H :=
  canonical_of_padded canonicalInput20899 canonicalOutput20899 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20900 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput20900 : ExponentCode := normalNode10287

theorem canonicalSound20900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20900.moment H = canonicalOutput20900.moment H :=
  canonical_of_padded canonicalInput20900 canonicalOutput20900 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20901 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 1, -4, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput20901 : ExponentCode := normalNode9720

theorem canonicalSound20901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20901.moment H = canonicalOutput20901.moment H :=
  canonical_of_padded canonicalInput20901 canonicalOutput20901 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20902 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput20902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound20902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20902.moment H = canonicalOutput20902.moment H :=
  canonical_of_padded canonicalInput20902 canonicalOutput20902 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20903 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound20903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20903.moment H = canonicalOutput20903.moment H :=
  canonical_of_padded canonicalInput20903 canonicalOutput20903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20904 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput20904 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound20904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20904.moment H = canonicalOutput20904.moment H :=
  canonical_of_padded canonicalInput20904 canonicalOutput20904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20905 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput20905 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩

theorem canonicalSound20905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20905.moment H = canonicalOutput20905.moment H :=
  canonical_of_padded canonicalInput20905 canonicalOutput20905 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20906 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput20906 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound20906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20906.moment H = canonicalOutput20906.moment H :=
  canonical_of_padded canonicalInput20906 canonicalOutput20906 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20907 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![0, 0, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput20907 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound20907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20907.moment H = canonicalOutput20907.moment H :=
  canonical_of_padded canonicalInput20907 canonicalOutput20907 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20908 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput20908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1202⟩

theorem canonicalSound20908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20908.moment H = canonicalOutput20908.moment H :=
  canonical_of_padded canonicalInput20908 canonicalOutput20908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20909 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput20909 : ExponentCode := normalNode9926

theorem canonicalSound20909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20909.moment H = canonicalOutput20909.moment H :=
  canonical_of_padded canonicalInput20909 canonicalOutput20909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20910 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 4, -3], ![0, 0, -3, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput20910 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound20910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20910.moment H = canonicalOutput20910.moment H :=
  canonical_of_padded canonicalInput20910 canonicalOutput20910 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20911 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, 4, -3], ![0, 1, -4, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput20911 : ExponentCode := normalNode9701

theorem canonicalSound20911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20911.moment H = canonicalOutput20911.moment H :=
  canonical_of_padded canonicalInput20911 canonicalOutput20911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20912 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, -3, 3], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput20912 : ExponentCode := normalNode10350

theorem canonicalSound20912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20912.moment H = canonicalOutput20912.moment H :=
  canonical_of_padded canonicalInput20912 canonicalOutput20912 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20913 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput20913 : ExponentCode := normalNode9973

theorem canonicalSound20913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20913.moment H = canonicalOutput20913.moment H :=
  canonical_of_padded canonicalInput20913 canonicalOutput20913 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20914 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput20914 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound20914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20914.moment H = canonicalOutput20914.moment H :=
  canonical_of_padded canonicalInput20914 canonicalOutput20914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20915 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput20915 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound20915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20915.moment H = canonicalOutput20915.moment H :=
  canonical_of_padded canonicalInput20915 canonicalOutput20915 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20916 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput20916 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound20916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20916.moment H = canonicalOutput20916.moment H :=
  canonical_of_padded canonicalInput20916 canonicalOutput20916 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20917 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, -2, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput20917 : ExponentCode := normalNode353

theorem canonicalSound20917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20917.moment H = canonicalOutput20917.moment H :=
  canonical_of_padded canonicalInput20917 canonicalOutput20917 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20918 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput20918 : ExponentCode := normalNode1071

theorem canonicalSound20918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20918.moment H = canonicalOutput20918.moment H :=
  canonical_of_padded canonicalInput20918 canonicalOutput20918 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20919 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput20919 : ExponentCode := normalNode1364

theorem canonicalSound20919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20919.moment H = canonicalOutput20919.moment H :=
  canonical_of_padded canonicalInput20919 canonicalOutput20919 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20920 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput20920 : ExponentCode := normalNode1023

theorem canonicalSound20920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20920.moment H = canonicalOutput20920.moment H :=
  canonical_of_padded canonicalInput20920 canonicalOutput20920 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation381, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20921 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput20921 : ExponentCode := normalNode5277

theorem canonicalSound20921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20921.moment H = canonicalOutput20921.moment H :=
  canonical_of_padded canonicalInput20921 canonicalOutput20921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20922 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput20922 : ExponentCode := normalNode3088

theorem canonicalSound20922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20922.moment H = canonicalOutput20922.moment H :=
  canonical_of_padded canonicalInput20922 canonicalOutput20922 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20923 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput20923 : ExponentCode := normalNode1019

theorem canonicalSound20923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20923.moment H = canonicalOutput20923.moment H :=
  canonical_of_padded canonicalInput20923 canonicalOutput20923 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20924 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![1, -2, 0, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput20924 : ExponentCode := normalNode3054

theorem canonicalSound20924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20924.moment H = canonicalOutput20924.moment H :=
  canonical_of_padded canonicalInput20924 canonicalOutput20924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20925 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput20925 : ExponentCode := normalNode3057

theorem canonicalSound20925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20925.moment H = canonicalOutput20925.moment H :=
  canonical_of_padded canonicalInput20925 canonicalOutput20925 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20926 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20926 : ExponentCode := normalNode5865

theorem canonicalSound20926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20926.moment H = canonicalOutput20926.moment H :=
  canonical_of_padded canonicalInput20926 canonicalOutput20926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20927 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20927 : ExponentCode := normalNode5093

theorem canonicalSound20927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20927.moment H = canonicalOutput20927.moment H :=
  canonical_of_padded canonicalInput20927 canonicalOutput20927 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

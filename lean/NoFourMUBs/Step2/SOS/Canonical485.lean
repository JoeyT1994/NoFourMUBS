import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31040 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, 0, 2, -1, 1], ![0, 2, 0, -1, -1], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput31040 : ExponentCode := normalNode9450

theorem canonicalSound31040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31040.moment H = canonicalOutput31040.moment H :=
  canonical_of_padded canonicalInput31040 canonicalOutput31040 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31041 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, 0, 2, 0, 0], ![0, 2, 0, -2, 0], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput31041 : ExponentCode := normalNode10521

theorem canonicalSound31041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31041.moment H = canonicalOutput31041.moment H :=
  canonical_of_padded canonicalInput31041 canonicalOutput31041 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31042 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-2, 1, 1, -1, 1], ![1, -2, 1, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput31042 : ExponentCode := normalNode9351

theorem canonicalSound31042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31042.moment H = canonicalOutput31042.moment H :=
  canonical_of_padded canonicalInput31042 canonicalOutput31042 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31043 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 1, -1], ![-1, -3, 2, 1, 1], ![1, 3, -2, -2, 0]]⟩

def canonicalOutput31043 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1148⟩

theorem canonicalSound31043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31043.moment H = canonicalOutput31043.moment H :=
  canonical_of_padded canonicalInput31043 canonicalOutput31043 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31044 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 1, -1], ![-1, -3, 2, 2, 0], ![1, 3, -2, -3, 1]]⟩

def canonicalOutput31044 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node879⟩

theorem canonicalSound31044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31044.moment H = canonicalOutput31044.moment H :=
  canonical_of_padded canonicalInput31044 canonicalOutput31044 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31045 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 1, -1], ![-1, -3, 3, 1, 0], ![1, 3, -3, -2, 1]]⟩

def canonicalOutput31045 : ExponentCode := normalNode9522

theorem canonicalSound31045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31045.moment H = canonicalOutput31045.moment H :=
  canonical_of_padded canonicalInput31045 canonicalOutput31045 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31046 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, -2, 1, 1, 1], ![0, 1, -2, -1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput31046 : ExponentCode := normalNode7070

theorem canonicalSound31046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31046.moment H = canonicalOutput31046.moment H :=
  canonical_of_padded canonicalInput31046 canonicalOutput31046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31047 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, -2, 1, 1, 1], ![1, 1, -2, -1, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput31047 : ExponentCode := normalNode9464

theorem canonicalSound31047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31047.moment H = canonicalOutput31047.moment H :=
  canonical_of_padded canonicalInput31047 canonicalOutput31047 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31048 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, -2, 2, 0, 1], ![-2, 1, -1, 1, 1], ![3, 1, -1, -2, -1]]⟩

def canonicalOutput31048 : ExponentCode := normalNode9003

theorem canonicalSound31048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31048.moment H = canonicalOutput31048.moment H :=
  canonical_of_padded canonicalInput31048 canonicalOutput31048 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31049 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 1, -1], ![-1, -2, 2, 1, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput31049 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1147⟩

theorem canonicalSound31049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31049.moment H = canonicalOutput31049.moment H :=
  canonical_of_padded canonicalInput31049 canonicalOutput31049 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31050 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![-1, 2, -2, 0, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput31050 : ExponentCode := normalNode9108

theorem canonicalSound31050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31050.moment H = canonicalOutput31050.moment H :=
  canonical_of_padded canonicalInput31050 canonicalOutput31050 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31051 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput31051 : ExponentCode := normalNode9107

theorem canonicalSound31051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31051.moment H = canonicalOutput31051.moment H :=
  canonical_of_padded canonicalInput31051 canonicalOutput31051 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31052 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, -1, 2, -1, 1], ![-1, 2, -1, 1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31052 : ExponentCode := normalNode9351

theorem canonicalSound31052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31052.moment H = canonicalOutput31052.moment H :=
  canonical_of_padded canonicalInput31052 canonicalOutput31052 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31053 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![-1, 2, -1, 1, -1], ![2, -2, -1, -1, 2]]⟩

def canonicalOutput31053 : ExponentCode := normalNode10257

theorem canonicalSound31053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31053.moment H = canonicalOutput31053.moment H :=
  canonical_of_padded canonicalInput31053 canonicalOutput31053 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31054 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![-1, 2, 0, -1, 0], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput31054 : ExponentCode := normalNode10578

theorem canonicalSound31054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31054.moment H = canonicalOutput31054.moment H :=
  canonical_of_padded canonicalInput31054 canonicalOutput31054 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31055 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput31055 : ExponentCode := normalNode9080

theorem canonicalSound31055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31055.moment H = canonicalOutput31055.moment H :=
  canonical_of_padded canonicalInput31055 canonicalOutput31055 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31056 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 0, 2, 0, -1], ![-1, 2, 0, -2, 1], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput31056 : ExponentCode := normalNode9389

theorem canonicalSound31056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31056.moment H = canonicalOutput31056.moment H :=
  canonical_of_padded canonicalInput31056 canonicalOutput31056 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31057 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput31057 : ExponentCode := normalNode8950

theorem canonicalSound31057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31057.moment H = canonicalOutput31057.moment H :=
  canonical_of_padded canonicalInput31057 canonicalOutput31057 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31058 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 1, 1, -1, 0], ![0, -2, 1, -1, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput31058 : ExponentCode := normalNode10291

theorem canonicalSound31058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31058.moment H = canonicalOutput31058.moment H :=
  canonical_of_padded canonicalInput31058 canonicalOutput31058 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31059 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![-1, 1, 1, -1, 0], ![1, -2, 1, -1, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput31059 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound31059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31059.moment H = canonicalOutput31059.moment H :=
  canonical_of_padded canonicalInput31059 canonicalOutput31059 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31060 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, -2, 2, 0, 0], ![-3, 1, -1, 1, 2], ![3, 1, -1, -2, -1]]⟩

def canonicalOutput31060 : ExponentCode := normalNode10225

theorem canonicalSound31060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31060.moment H = canonicalOutput31060.moment H :=
  canonical_of_padded canonicalInput31060 canonicalOutput31060 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31061 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, -2, 2, 0, 0], ![-2, 1, -1, 1, 1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput31061 : ExponentCode := normalNode10223

theorem canonicalSound31061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31061.moment H = canonicalOutput31061.moment H :=
  canonical_of_padded canonicalInput31061 canonicalOutput31061 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31062 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, -1, 1, -1, 1], ![-1, 2, 1, -1, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput31062 : ExponentCode := normalNode11100

theorem canonicalSound31062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31062.moment H = canonicalOutput31062.moment H :=
  canonical_of_padded canonicalInput31062 canonicalOutput31062 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31063 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, -1, 2, -1, 0], ![-2, 2, -1, 1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31063 : ExponentCode := normalNode10650

theorem canonicalSound31063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31063.moment H = canonicalOutput31063.moment H :=
  canonical_of_padded canonicalInput31063 canonicalOutput31063 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31064 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, -1, 2, -1, 0], ![-1, 2, -1, 1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput31064 : ExponentCode := normalNode10295

theorem canonicalSound31064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31064.moment H = canonicalOutput31064.moment H :=
  canonical_of_padded canonicalInput31064 canonicalOutput31064 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31065 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 2, -1, -1, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput31065 : ExponentCode := normalNode5607

theorem canonicalSound31065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31065.moment H = canonicalOutput31065.moment H :=
  canonical_of_padded canonicalInput31065 canonicalOutput31065 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput31066 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![-1, 2, 0, 0, -1], ![-1, -1, -1, 2, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31066 : ExponentCode := normalNode4141

theorem canonicalSound31066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31066.moment H = canonicalOutput31066.moment H :=
  canonical_of_padded canonicalInput31066 canonicalOutput31066 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput31067 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 0, 2], ![1, -2, -1, 2, 0]]⟩

def canonicalOutput31067 : ExponentCode := normalNode2149

theorem canonicalSound31067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31067.moment H = canonicalOutput31067.moment H :=
  canonical_of_padded canonicalInput31067 canonicalOutput31067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput31068 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 1, 1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput31068 : ExponentCode := normalNode2220

theorem canonicalSound31068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31068.moment H = canonicalOutput31068.moment H :=
  canonical_of_padded canonicalInput31068 canonicalOutput31068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31069 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![-1, -1, 0, 1, 1], ![-1, 2, -1, -1, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput31069 : ExponentCode := normalNode2200

theorem canonicalSound31069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31069.moment H = canonicalOutput31069.moment H :=
  canonical_of_padded canonicalInput31069 canonicalOutput31069 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput31070 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![-1, 2, 0, 0, -1], ![-1, -1, -1, 2, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31070 : ExponentCode := normalNode2201

theorem canonicalSound31070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31070.moment H = canonicalOutput31070.moment H :=
  canonical_of_padded canonicalInput31070 canonicalOutput31070 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput31071 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1], ![-2, 1, -1, 0, 2], ![1, -2, -1, 2, 0]]⟩

def canonicalOutput31071 : ExponentCode := normalNode1581

theorem canonicalSound31071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31071.moment H = canonicalOutput31071.moment H :=
  canonical_of_padded canonicalInput31071 canonicalOutput31071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput31072 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1], ![-2, 1, -1, 1, 1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput31072 : ExponentCode := normalNode2219

theorem canonicalSound31072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31072.moment H = canonicalOutput31072.moment H :=
  canonical_of_padded canonicalInput31072 canonicalOutput31072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput31073 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![-1, 2, -1, -1, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput31073 : ExponentCode := normalNode2177

theorem canonicalSound31073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31073.moment H = canonicalOutput31073.moment H :=
  canonical_of_padded canonicalInput31073 canonicalOutput31073 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31074 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 2, -1, -2, 2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput31074 : ExponentCode := normalNode5606

theorem canonicalSound31074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31074.moment H = canonicalOutput31074.moment H :=
  canonical_of_padded canonicalInput31074 canonicalOutput31074 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput31075 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 2, -1, -1, 1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput31075 : ExponentCode := normalNode2215

theorem canonicalSound31075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31075.moment H = canonicalOutput31075.moment H :=
  canonical_of_padded canonicalInput31075 canonicalOutput31075 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput31076 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, 2, 0, -1, 0], ![-1, -1, -1, 2, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31076 : ExponentCode := normalNode2217

theorem canonicalSound31076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31076.moment H = canonicalOutput31076.moment H :=
  canonical_of_padded canonicalInput31076 canonicalOutput31076 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput31077 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, 2, 0, 0, -1], ![-1, -1, -1, 1, 2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31077 : ExponentCode := normalNode3688

theorem canonicalSound31077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31077.moment H = canonicalOutput31077.moment H :=
  canonical_of_padded canonicalInput31077 canonicalOutput31077 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput31078 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, 2, 0, 0, -1], ![-1, -1, -1, 2, 1], ![2, -1, -1, -2, 2]]⟩

def canonicalOutput31078 : ExponentCode := normalNode4140

theorem canonicalSound31078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31078.moment H = canonicalOutput31078.moment H :=
  canonical_of_padded canonicalInput31078 canonicalOutput31078 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput31079 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0], ![-2, 1, -1, 0, 2], ![1, -2, -1, 2, 0]]⟩

def canonicalOutput31079 : ExponentCode := normalNode1577

theorem canonicalSound31079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31079.moment H = canonicalOutput31079.moment H :=
  canonical_of_padded canonicalInput31079 canonicalOutput31079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput31080 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0], ![-2, 1, -1, 1, 1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput31080 : ExponentCode := normalNode2216

theorem canonicalSound31080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31080.moment H = canonicalOutput31080.moment H :=
  canonical_of_padded canonicalInput31080 canonicalOutput31080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput31081 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, -1, 3], ![1, -2, -1, 2, 0]]⟩

def canonicalOutput31081 : ExponentCode := normalNode2147

theorem canonicalSound31081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31081.moment H = canonicalOutput31081.moment H :=
  canonical_of_padded canonicalInput31081 canonicalOutput31081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31082 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 0, 2], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput31082 : ExponentCode := normalNode1600

theorem canonicalSound31082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31082.moment H = canonicalOutput31082.moment H :=
  canonical_of_padded canonicalInput31082 canonicalOutput31082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput31083 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 1, 1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput31083 : ExponentCode := normalNode1600

theorem canonicalSound31083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31083.moment H = canonicalOutput31083.moment H :=
  canonical_of_padded canonicalInput31083 canonicalOutput31083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput31084 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![-2, 2, -1, 1, 0], ![2, -2, -1, -1, 2]]⟩

def canonicalOutput31084 : ExponentCode := normalNode9061

theorem canonicalSound31084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31084.moment H = canonicalOutput31084.moment H :=
  canonical_of_padded canonicalInput31084 canonicalOutput31084 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31085 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![-1, 2, -1, 1, -1], ![1, -2, -1, -1, 3]]⟩

def canonicalOutput31085 : ExponentCode := normalNode7954

theorem canonicalSound31085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31085.moment H = canonicalOutput31085.moment H :=
  canonical_of_padded canonicalInput31085 canonicalOutput31085 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31086 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![1, -1, 1, -1, 0], ![-2, 2, 1, -1, 0], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput31086 : ExponentCode := normalNode10657

theorem canonicalSound31086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31086.moment H = canonicalOutput31086.moment H :=
  canonical_of_padded canonicalInput31086 canonicalOutput31086 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31087 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 1, -1], ![1, -1, 1, -1, 0], ![-1, 2, 1, -1, -1], ![0, -1, -2, 1, 2]]⟩

def canonicalOutput31087 : ExponentCode := normalNode10302

theorem canonicalSound31087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31087.moment H = canonicalOutput31087.moment H :=
  canonical_of_padded canonicalInput31087 canonicalOutput31087 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31088 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 2, -2], ![-2, -2, 2, 0, 2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput31088 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1048

theorem canonicalSound31088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31088.moment H = canonicalOutput31088.moment H :=
  canonical_of_padded canonicalInput31088 canonicalOutput31088 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31089 : ExponentCode := ⟨3, 5, ![![0, 0, 0, 2, -2], ![-1, -2, 2, 0, 1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput31089 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound31089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31089.moment H = canonicalOutput31089.moment H :=
  canonical_of_padded canonicalInput31089 canonicalOutput31089 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31090 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![0, -2, 1, 0, 1], ![-2, 1, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput31090 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound31090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31090.moment H = canonicalOutput31090.moment H :=
  canonical_of_padded canonicalInput31090 canonicalOutput31090 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31091 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![0, -1, 1, -1, 1], ![-1, -1, 1, -1, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput31091 : ExponentCode := normalNode5128

theorem canonicalSound31091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31091.moment H = canonicalOutput31091.moment H :=
  canonical_of_padded canonicalInput31091 canonicalOutput31091 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31092 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![0, -1, 1, 0, 0], ![-1, -1, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput31092 : ExponentCode := normalNode10220

theorem canonicalSound31092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31092.moment H = canonicalOutput31092.moment H :=
  canonical_of_padded canonicalInput31092 canonicalOutput31092 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31093 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![1, -2, 1, 0, 0], ![-3, 1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput31093 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound31093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31093.moment H = canonicalOutput31093.moment H :=
  canonical_of_padded canonicalInput31093 canonicalOutput31093 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31094 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![1, -2, 1, 0, 0], ![-2, 1, 1, -1, 1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput31094 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound31094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31094.moment H = canonicalOutput31094.moment H :=
  canonical_of_padded canonicalInput31094 canonicalOutput31094 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31095 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![1, -1, 1, -1, 0], ![-2, -1, 1, -1, 3], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput31095 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code771

theorem canonicalSound31095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31095.moment H = canonicalOutput31095.moment H :=
  canonical_of_padded canonicalInput31095 canonicalOutput31095 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31096 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![1, -1, 1, -1, 0], ![-1, -1, 1, -1, 2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput31096 : ExponentCode := normalNode3753

theorem canonicalSound31096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31096.moment H = canonicalOutput31096.moment H :=
  canonical_of_padded canonicalInput31096 canonicalOutput31096 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31097 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![1, -1, 1, 0, -1], ![-2, -1, 1, -1, 3], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput31097 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code416

theorem canonicalSound31097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31097.moment H = canonicalOutput31097.moment H :=
  canonical_of_padded canonicalInput31097 canonicalOutput31097 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31098 : ExponentCode := ⟨4, 5, ![![0, 0, 0, 2, -2], ![1, -1, 1, 0, -1], ![-1, -1, 1, -1, 2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput31098 : ExponentCode := normalNode2554

theorem canonicalSound31098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31098.moment H = canonicalOutput31098.moment H :=
  canonical_of_padded canonicalInput31098 canonicalOutput31098 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31099 : ExponentCode := ⟨4, 5, ![![0, 0, 1, -2, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput31099 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound31099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31099.moment H = canonicalOutput31099.moment H :=
  canonical_of_padded canonicalInput31099 canonicalOutput31099 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31100 : ExponentCode := ⟨4, 5, ![![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![-1, 1, -1, -1, 2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput31100 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2223⟩

theorem canonicalSound31100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31100.moment H = canonicalOutput31100.moment H :=
  canonical_of_padded canonicalInput31100 canonicalOutput31100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31101 : ExponentCode := ⟨4, 5, ![![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![0, -1, -1, 2, 0]]⟩

def canonicalOutput31101 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound31101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31101.moment H = canonicalOutput31101.moment H :=
  canonical_of_padded canonicalInput31101 canonicalOutput31101 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31102 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -2, 1, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31102 : ExponentCode := normalNode8336

theorem canonicalSound31102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31102.moment H = canonicalOutput31102.moment H :=
  canonical_of_padded canonicalInput31102 canonicalOutput31102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation362⟩ (by decide +kernel) hH

def canonicalInput31103 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31103 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1054⟩

theorem canonicalSound31103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31103.moment H = canonicalOutput31103.moment H :=
  canonical_of_padded canonicalInput31103 canonicalOutput31103 (by decide) (by decide)
    ⟨false, true, canonicalPermutation230, canonicalPermutation346⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

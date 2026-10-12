import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical66
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1024 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1024 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node955⟩

theorem canonicalSound1024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1024.moment H = canonicalOutput1024.moment H :=
  canonical_of_padded canonicalInput1024 canonicalOutput1024 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1025 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1025 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound1025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1025.moment H = canonicalOutput1025.moment H :=
  canonical_of_padded canonicalInput1025 canonicalOutput1025 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1026 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput1026 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound1026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1026.moment H = canonicalOutput1026.moment H :=
  canonical_of_padded canonicalInput1026 canonicalOutput1026 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1027 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1027 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1195⟩

theorem canonicalSound1027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1027.moment H = canonicalOutput1027.moment H :=
  canonical_of_padded canonicalInput1027 canonicalOutput1027 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1028 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1028 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound1028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1028.moment H = canonicalOutput1028.moment H :=
  canonical_of_padded canonicalInput1028 canonicalOutput1028 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1029 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput1029 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node791⟩

theorem canonicalSound1029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1029.moment H = canonicalOutput1029.moment H :=
  canonical_of_padded canonicalInput1029 canonicalOutput1029 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1030 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1030 : ExponentCode := normalNode6726

theorem canonicalSound1030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1030.moment H = canonicalOutput1030.moment H :=
  canonical_of_padded canonicalInput1030 canonicalOutput1030 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1031 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1031 : ExponentCode := normalNode9871

theorem canonicalSound1031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1031.moment H = canonicalOutput1031.moment H :=
  canonical_of_padded canonicalInput1031 canonicalOutput1031 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1032 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1032 : ExponentCode := normalNode9869

theorem canonicalSound1032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1032.moment H = canonicalOutput1032.moment H :=
  canonical_of_padded canonicalInput1032 canonicalOutput1032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1033 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1033 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound1033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1033.moment H = canonicalOutput1033.moment H :=
  canonical_of_padded canonicalInput1033 canonicalOutput1033 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1034 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1034 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound1034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1034.moment H = canonicalOutput1034.moment H :=
  canonical_of_padded canonicalInput1034 canonicalOutput1034 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1035 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1035 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node470⟩

theorem canonicalSound1035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1035.moment H = canonicalOutput1035.moment H :=
  canonical_of_padded canonicalInput1035 canonicalOutput1035 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1036 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 3, -3, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1036 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1021⟩

theorem canonicalSound1036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1036.moment H = canonicalOutput1036.moment H :=
  canonical_of_padded canonicalInput1036 canonicalOutput1036 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1037 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1037 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound1037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1037.moment H = canonicalOutput1037.moment H :=
  canonical_of_padded canonicalInput1037 canonicalOutput1037 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1038 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 3, -1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1038 : ExponentCode := normalNode9054

theorem canonicalSound1038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1038.moment H = canonicalOutput1038.moment H :=
  canonical_of_padded canonicalInput1038 canonicalOutput1038 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1039 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1039 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound1039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1039.moment H = canonicalOutput1039.moment H :=
  canonical_of_padded canonicalInput1039 canonicalOutput1039 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1040 : ExponentCode := ⟨2, 4, ![![-2, -3, 4, 1], ![2, 3, -4, -1]]⟩

def canonicalOutput1040 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node15⟩

theorem canonicalSound1040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1040.moment H = canonicalOutput1040.moment H :=
  canonical_of_padded canonicalInput1040 canonicalOutput1040 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1041 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![-1, 1, 0], ![1, 0, -1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput1041 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node302⟩

theorem canonicalSound1041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1041.moment H = canonicalOutput1041.moment H :=
  canonical_of_padded canonicalInput1041 canonicalOutput1041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1042 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![-1, 2, -1], ![0, 2, -2], ![3, -1, -2]]⟩

def canonicalOutput1042 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound1042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1042.moment H = canonicalOutput1042.moment H :=
  canonical_of_padded canonicalInput1042 canonicalOutput1042 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1043 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![-1, 2, -1], ![1, 0, -1], ![2, 1, -3]]⟩

def canonicalOutput1043 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound1043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1043.moment H = canonicalOutput1043.moment H :=
  canonical_of_padded canonicalInput1043 canonicalOutput1043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1044 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw2133step0⟩

def canonicalOutput1044 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound1044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1044.moment H = canonicalOutput1044.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw2133step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw2133step0 = OAI.MUB6.Certificate.PairSemantics.raw2133.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw2133).trans (OAI.MUB6.Certificate.PairSemantics.canonical2133 hH)

def canonicalInput1045 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![-1, 2, -1], ![2, -1, -1], ![1, 2, -3]]⟩

def canonicalOutput1045 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound1045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1045.moment H = canonicalOutput1045.moment H :=
  canonical_of_padded canonicalInput1045 canonicalOutput1045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1046 : ExponentCode := ⟨3, 3, ![![-2, -3, 5], ![-1, 2, -1], ![3, 1, -4]]⟩

def canonicalOutput1046 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node39⟩

theorem canonicalSound1046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1046.moment H = canonicalOutput1046.moment H :=
  canonical_of_padded canonicalInput1046 canonicalOutput1046 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1047 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![-1, 3, -2], ![1, -1, 0], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput1047 : ExponentCode := normalNode326

theorem canonicalSound1047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1047.moment H = canonicalOutput1047.moment H :=
  canonical_of_padded canonicalInput1047 canonicalOutput1047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1048 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![-1, 3, -2], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput1048 : ExponentCode := normalNode53

theorem canonicalSound1048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1048.moment H = canonicalOutput1048.moment H :=
  canonical_of_padded canonicalInput1048 canonicalOutput1048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1049 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![-1, 3, -2], ![1, 0, -1], ![2, 0, -2]]⟩

def canonicalOutput1049 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound1049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1049.moment H = canonicalOutput1049.moment H :=
  canonical_of_padded canonicalInput1049 canonicalOutput1049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1050 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![-1, 3, -2], ![2, -1, -1], ![1, 1, -2]]⟩

def canonicalOutput1050 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound1050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1050.moment H = canonicalOutput1050.moment H :=
  canonical_of_padded canonicalInput1050 canonicalOutput1050 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1051 : ExponentCode := ⟨3, 3, ![![-2, -3, 5], ![-1, 3, -2], ![3, 0, -3]]⟩

def canonicalOutput1051 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node17⟩

theorem canonicalSound1051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1051.moment H = canonicalOutput1051.moment H :=
  canonical_of_padded canonicalInput1051 canonicalOutput1051 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1052 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![-1, 4, -3], ![2, -1, -1], ![1, 0, -1]]⟩

def canonicalOutput1052 : ExponentCode := normalNode330

theorem canonicalSound1052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1052.moment H = canonicalOutput1052.moment H :=
  canonical_of_padded canonicalInput1052 canonicalOutput1052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1053 : ExponentCode := ⟨3, 3, ![![-2, -3, 5], ![-1, 4, -3], ![3, -1, -2]]⟩

def canonicalOutput1053 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code86

theorem canonicalSound1053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1053.moment H = canonicalOutput1053.moment H :=
  canonical_of_padded canonicalInput1053 canonicalOutput1053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1054 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 0, 0], ![0, 1, -1], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput1054 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound1054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1054.moment H = canonicalOutput1054.moment H :=
  canonical_of_padded canonicalInput1054 canonicalOutput1054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1055 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 0, 0], ![0, 1, -1], ![2, 2, -4]]⟩

def canonicalOutput1055 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩

theorem canonicalSound1055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1055.moment H = canonicalOutput1055.moment H :=
  canonical_of_padded canonicalInput1055 canonicalOutput1055 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1056 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 0, 0], ![0, 2, -2], ![2, 1, -3]]⟩

def canonicalOutput1056 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node27⟩

theorem canonicalSound1056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1056.moment H = canonicalOutput1056.moment H :=
  canonical_of_padded canonicalInput1056 canonicalOutput1056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1057 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 0, 0], ![0, 3, -3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput1057 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node129⟩

theorem canonicalSound1057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1057.moment H = canonicalOutput1057.moment H :=
  canonical_of_padded canonicalInput1057 canonicalOutput1057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1058 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 0, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput1058 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound1058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1058.moment H = canonicalOutput1058.moment H :=
  canonical_of_padded canonicalInput1058 canonicalOutput1058 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1059 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 0, 0], ![1, 1, -2], ![1, 2, -3]]⟩

def canonicalOutput1059 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩

theorem canonicalSound1059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1059.moment H = canonicalOutput1059.moment H :=
  canonical_of_padded canonicalInput1059 canonicalOutput1059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1060 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![-1, 2, -1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput1060 : ExponentCode := normalNode318

theorem canonicalSound1060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1060.moment H = canonicalOutput1060.moment H :=
  canonical_of_padded canonicalInput1060 canonicalOutput1060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1061 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![-1, 3, -2], ![1, -1, 0], ![2, 0, -2]]⟩

def canonicalOutput1061 : ExponentCode := normalNode324

theorem canonicalSound1061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1061.moment H = canonicalOutput1061.moment H :=
  canonical_of_padded canonicalInput1061 canonicalOutput1061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1062 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![-1, 3, -2], ![1, 0, -1], ![2, -1, -1]]⟩

def canonicalOutput1062 : ExponentCode := normalNode325

theorem canonicalSound1062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1062.moment H = canonicalOutput1062.moment H :=
  canonical_of_padded canonicalInput1062 canonicalOutput1062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1063 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![0, 0, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput1063 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound1063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1063.moment H = canonicalOutput1063.moment H :=
  canonical_of_padded canonicalInput1063 canonicalOutput1063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1064 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 1, -1], ![0, 0, 0], ![2, 2, -4]]⟩

def canonicalOutput1064 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩

theorem canonicalSound1064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1064.moment H = canonicalOutput1064.moment H :=
  canonical_of_padded canonicalInput1064 canonicalOutput1064 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1065 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![0, 2, -2], ![0, 0, 0], ![2, 0, -2]]⟩

def canonicalOutput1065 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound1065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1065.moment H = canonicalOutput1065.moment H :=
  canonical_of_padded canonicalInput1065 canonicalOutput1065 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1066 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![0, 3, -3], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput1066 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node390⟩

theorem canonicalSound1066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1066.moment H = canonicalOutput1066.moment H :=
  canonical_of_padded canonicalInput1066 canonicalOutput1066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1067 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![1, -1, 0], ![0, 1, -1], ![1, 2, -3]]⟩

def canonicalOutput1067 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node386⟩

theorem canonicalSound1067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1067.moment H = canonicalOutput1067.moment H :=
  canonical_of_padded canonicalInput1067 canonicalOutput1067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1068 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3]]⟩

def canonicalOutput1068 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node390⟩

theorem canonicalSound1068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1068.moment H = canonicalOutput1068.moment H :=
  canonical_of_padded canonicalInput1068 canonicalOutput1068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1069 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 2, -2], ![0, 0, 0], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput1069 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound1069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1069.moment H = canonicalOutput1069.moment H :=
  canonical_of_padded canonicalInput1069 canonicalOutput1069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1070 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 2, -2], ![0, 1, -1], ![0, 2, -2], ![2, -2, 0]]⟩

def canonicalOutput1070 : ExponentCode := normalNode342

theorem canonicalSound1070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1070.moment H = canonicalOutput1070.moment H :=
  canonical_of_padded canonicalInput1070 canonicalOutput1070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1071 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 2, -2], ![1, -1, 0], ![0, 1, -1], ![1, 1, -2]]⟩

def canonicalOutput1071 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node388⟩

theorem canonicalSound1071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1071.moment H = canonicalOutput1071.moment H :=
  canonical_of_padded canonicalInput1071 canonicalOutput1071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1072 : ExponentCode := ⟨5, 3, ![![-2, -3, 5], ![0, 2, -2], ![1, -1, 0], ![1, 0, -1], ![0, 2, -2]]⟩

def canonicalOutput1072 : ExponentCode := normalNode345

theorem canonicalSound1072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1072.moment H = canonicalOutput1072.moment H :=
  canonical_of_padded canonicalInput1072 canonicalOutput1072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1073 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 2, -2], ![1, 2, -3], ![1, -1, 0]]⟩

def canonicalOutput1073 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound1073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1073.moment H = canonicalOutput1073.moment H :=
  canonical_of_padded canonicalInput1073 canonicalOutput1073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1074 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 3, -3], ![0, 2, -2], ![2, -2, 0]]⟩

def canonicalOutput1074 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code103

theorem canonicalSound1074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1074.moment H = canonicalOutput1074.moment H :=
  canonical_of_padded canonicalInput1074 canonicalOutput1074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1075 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![0, 4, -4], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput1075 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node130⟩

theorem canonicalSound1075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1075.moment H = canonicalOutput1075.moment H :=
  canonical_of_padded canonicalInput1075 canonicalOutput1075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1076 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![1, -1, 0], ![0, 1, -1], ![1, 3, -4]]⟩

def canonicalOutput1076 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node122⟩

theorem canonicalSound1076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1076.moment H = canonicalOutput1076.moment H :=
  canonical_of_padded canonicalInput1076 canonicalOutput1076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1077 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![1, -1, 0], ![1, 0, -1], ![0, 4, -4]]⟩

def canonicalOutput1077 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node130⟩

theorem canonicalSound1077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1077.moment H = canonicalOutput1077.moment H :=
  canonical_of_padded canonicalInput1077 canonicalOutput1077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1078 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![1, 1, -2], ![0, 2, -2], ![1, 0, -1]]⟩

def canonicalOutput1078 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound1078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1078.moment H = canonicalOutput1078.moment H :=
  canonical_of_padded canonicalInput1078 canonicalOutput1078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1079 : ExponentCode := ⟨4, 3, ![![-2, -3, 5], ![1, 1, -2], ![0, 3, -3], ![1, -1, 0]]⟩

def canonicalOutput1079 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound1079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1079.moment H = canonicalOutput1079.moment H :=
  canonical_of_padded canonicalInput1079 canonicalOutput1079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1080 : ExponentCode := ⟨3, 3, ![![-2, -3, 5], ![1, 4, -5], ![1, -1, 0]]⟩

def canonicalOutput1080 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩

theorem canonicalSound1080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1080.moment H = canonicalOutput1080.moment H :=
  canonical_of_padded canonicalInput1080 canonicalOutput1080 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1081 : ExponentCode := ⟨5, 5, ![![-2, -2, -1, 2, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1081 : ExponentCode := normalNode6340

theorem canonicalSound1081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1081.moment H = canonicalOutput1081.moment H :=
  canonical_of_padded canonicalInput1081 canonicalOutput1081 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1082 : ExponentCode := ⟨5, 5, ![![-2, -2, -1, 2, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1082 : ExponentCode := normalNode6340

theorem canonicalSound1082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1082.moment H = canonicalOutput1082.moment H :=
  canonical_of_padded canonicalInput1082 canonicalOutput1082 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput1083 : ExponentCode := ⟨5, 5, ![![-2, -2, -1, 2, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1083 : ExponentCode := normalNode7527

theorem canonicalSound1083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1083.moment H = canonicalOutput1083.moment H :=
  canonical_of_padded canonicalInput1083 canonicalOutput1083 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1084 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1084 : ExponentCode := normalNode357

theorem canonicalSound1084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1084.moment H = canonicalOutput1084.moment H :=
  canonical_of_padded canonicalInput1084 canonicalOutput1084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1085 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1085 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1443⟩

theorem canonicalSound1085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1085.moment H = canonicalOutput1085.moment H :=
  canonical_of_padded canonicalInput1085 canonicalOutput1085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1086 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1086 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1444⟩

theorem canonicalSound1086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1086.moment H = canonicalOutput1086.moment H :=
  canonical_of_padded canonicalInput1086 canonicalOutput1086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1087 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1087 : ExponentCode := normalNode371

theorem canonicalSound1087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1087.moment H = canonicalOutput1087.moment H :=
  canonical_of_padded canonicalInput1087 canonicalOutput1087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

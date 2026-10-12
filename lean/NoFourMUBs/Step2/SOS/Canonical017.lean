import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1088 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, 1, -2, -1]]⟩

def canonicalOutput1088 : ExponentCode := normalNode5997

theorem canonicalSound1088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1088.moment H = canonicalOutput1088.moment H :=
  canonical_of_padded canonicalInput1088 canonicalOutput1088 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1089 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput1089 : ExponentCode := normalNode9596

theorem canonicalSound1089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1089.moment H = canonicalOutput1089.moment H :=
  canonical_of_padded canonicalInput1089 canonicalOutput1089 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1090 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1090 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1445⟩

theorem canonicalSound1090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1090.moment H = canonicalOutput1090.moment H :=
  canonical_of_padded canonicalInput1090 canonicalOutput1090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1091 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput1091 : ExponentCode := normalNode7220

theorem canonicalSound1091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1091.moment H = canonicalOutput1091.moment H :=
  canonical_of_padded canonicalInput1091 canonicalOutput1091 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1092 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput1092 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node754⟩

theorem canonicalSound1092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1092.moment H = canonicalOutput1092.moment H :=
  canonical_of_padded canonicalInput1092 canonicalOutput1092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1093 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1093 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1161⟩

theorem canonicalSound1093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1093.moment H = canonicalOutput1093.moment H :=
  canonical_of_padded canonicalInput1093 canonicalOutput1093 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1094 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput1094 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩

theorem canonicalSound1094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1094.moment H = canonicalOutput1094.moment H :=
  canonical_of_padded canonicalInput1094 canonicalOutput1094 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1095 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1095 : ExponentCode := normalNode9600

theorem canonicalSound1095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1095.moment H = canonicalOutput1095.moment H :=
  canonical_of_padded canonicalInput1095 canonicalOutput1095 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1096 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput1096 : ExponentCode := normalNode7227

theorem canonicalSound1096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1096.moment H = canonicalOutput1096.moment H :=
  canonical_of_padded canonicalInput1096 canonicalOutput1096 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1097 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput1097 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node755⟩

theorem canonicalSound1097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1097.moment H = canonicalOutput1097.moment H :=
  canonical_of_padded canonicalInput1097 canonicalOutput1097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1098 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1098 : ExponentCode := normalNode362

theorem canonicalSound1098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1098.moment H = canonicalOutput1098.moment H :=
  canonical_of_padded canonicalInput1098 canonicalOutput1098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1099 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1099 : ExponentCode := normalNode363

theorem canonicalSound1099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1099.moment H = canonicalOutput1099.moment H :=
  canonical_of_padded canonicalInput1099 canonicalOutput1099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1100 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1100 : ExponentCode := normalNode364

theorem canonicalSound1100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1100.moment H = canonicalOutput1100.moment H :=
  canonical_of_padded canonicalInput1100 canonicalOutput1100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1101 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1101 : ExponentCode := normalNode365

theorem canonicalSound1101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1101.moment H = canonicalOutput1101.moment H :=
  canonical_of_padded canonicalInput1101 canonicalOutput1101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1102 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1102 : ExponentCode := normalNode378

theorem canonicalSound1102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1102.moment H = canonicalOutput1102.moment H :=
  canonical_of_padded canonicalInput1102 canonicalOutput1102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1103 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1103 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1446⟩

theorem canonicalSound1103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1103.moment H = canonicalOutput1103.moment H :=
  canonical_of_padded canonicalInput1103 canonicalOutput1103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1104 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1447⟩

theorem canonicalSound1104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1104.moment H = canonicalOutput1104.moment H :=
  canonical_of_padded canonicalInput1104 canonicalOutput1104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1105 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1105 : ExponentCode := normalNode379

theorem canonicalSound1105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1105.moment H = canonicalOutput1105.moment H :=
  canonical_of_padded canonicalInput1105 canonicalOutput1105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1106 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1106 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1446⟩

theorem canonicalSound1106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1106.moment H = canonicalOutput1106.moment H :=
  canonical_of_padded canonicalInput1106 canonicalOutput1106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1107 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 2, 1, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput1107 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code110

theorem canonicalSound1107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1107.moment H = canonicalOutput1107.moment H :=
  canonical_of_padded canonicalInput1107 canonicalOutput1107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1108 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput1108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1258⟩

theorem canonicalSound1108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1108.moment H = canonicalOutput1108.moment H :=
  canonical_of_padded canonicalInput1108 canonicalOutput1108 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1109 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1109 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code109

theorem canonicalSound1109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1109.moment H = canonicalOutput1109.moment H :=
  canonical_of_padded canonicalInput1109 canonicalOutput1109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1110 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 2, -2], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput1110 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code112

theorem canonicalSound1110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1110.moment H = canonicalOutput1110.moment H :=
  canonical_of_padded canonicalInput1110 canonicalOutput1110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1111 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1111 : ExponentCode := normalNode8893

theorem canonicalSound1111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1111.moment H = canonicalOutput1111.moment H :=
  canonical_of_padded canonicalInput1111 canonicalOutput1111 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1112 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1112 : ExponentCode := normalNode384

theorem canonicalSound1112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1112.moment H = canonicalOutput1112.moment H :=
  canonical_of_padded canonicalInput1112 canonicalOutput1112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1113 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1113 : ExponentCode := normalNode385

theorem canonicalSound1113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1113.moment H = canonicalOutput1113.moment H :=
  canonical_of_padded canonicalInput1113 canonicalOutput1113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1114 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1114 : ExponentCode := normalNode6000

theorem canonicalSound1114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1114.moment H = canonicalOutput1114.moment H :=
  canonical_of_padded canonicalInput1114 canonicalOutput1114 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1115 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1115 : ExponentCode := normalNode383

theorem canonicalSound1115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1115.moment H = canonicalOutput1115.moment H :=
  canonical_of_padded canonicalInput1115 canonicalOutput1115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1116 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1116 : ExponentCode := normalNode6000

theorem canonicalSound1116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1116.moment H = canonicalOutput1116.moment H :=
  canonical_of_padded canonicalInput1116 canonicalOutput1116 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1117 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 0, 3, -3], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1117 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code116

theorem canonicalSound1117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1117.moment H = canonicalOutput1117.moment H :=
  canonical_of_padded canonicalInput1117 canonicalOutput1117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1118 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput1118 : ExponentCode := normalNode7931

theorem canonicalSound1118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1118.moment H = canonicalOutput1118.moment H :=
  canonical_of_padded canonicalInput1118 canonicalOutput1118 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1119 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput1119 : ExponentCode := normalNode7986

theorem canonicalSound1119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1119.moment H = canonicalOutput1119.moment H :=
  canonical_of_padded canonicalInput1119 canonicalOutput1119 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1120 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput1120 : ExponentCode := normalNode8935

theorem canonicalSound1120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1120.moment H = canonicalOutput1120.moment H :=
  canonical_of_padded canonicalInput1120 canonicalOutput1120 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1121 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, -1, 0], ![1, 1, 0, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput1121 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound1121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1121.moment H = canonicalOutput1121.moment H :=
  canonical_of_padded canonicalInput1121 canonicalOutput1121 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1122 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1122 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩

theorem canonicalSound1122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1122.moment H = canonicalOutput1122.moment H :=
  canonical_of_padded canonicalInput1122 canonicalOutput1122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1123 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput1123 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1030⟩

theorem canonicalSound1123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1123.moment H = canonicalOutput1123.moment H :=
  canonical_of_padded canonicalInput1123 canonicalOutput1123 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1124 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1124 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩

theorem canonicalSound1124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1124.moment H = canonicalOutput1124.moment H :=
  canonical_of_padded canonicalInput1124 canonicalOutput1124 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1125 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![0, 1, 3, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput1125 : ExponentCode := normalNode9585

theorem canonicalSound1125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1125.moment H = canonicalOutput1125.moment H :=
  canonical_of_padded canonicalInput1125 canonicalOutput1125 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1126 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1160⟩

theorem canonicalSound1126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1126.moment H = canonicalOutput1126.moment H :=
  canonical_of_padded canonicalInput1126 canonicalOutput1126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1127 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput1127 : ExponentCode := normalNode8936

theorem canonicalSound1127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1127.moment H = canonicalOutput1127.moment H :=
  canonical_of_padded canonicalInput1127 canonicalOutput1127 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1128 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput1128 : ExponentCode := normalNode8936

theorem canonicalSound1128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1128.moment H = canonicalOutput1128.moment H :=
  canonical_of_padded canonicalInput1128 canonicalOutput1128 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1129 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1129 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1452⟩

theorem canonicalSound1129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1129.moment H = canonicalOutput1129.moment H :=
  canonical_of_padded canonicalInput1129 canonicalOutput1129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1130 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 1, -2], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1130 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩

theorem canonicalSound1130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1130.moment H = canonicalOutput1130.moment H :=
  canonical_of_padded canonicalInput1130 canonicalOutput1130 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1131 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1131 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1451⟩

theorem canonicalSound1131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1131.moment H = canonicalOutput1131.moment H :=
  canonical_of_padded canonicalInput1131 canonicalOutput1131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1132 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1240⟩

theorem canonicalSound1132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1132.moment H = canonicalOutput1132.moment H :=
  canonical_of_padded canonicalInput1132 canonicalOutput1132 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1133 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1133 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code120

theorem canonicalSound1133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1133.moment H = canonicalOutput1133.moment H :=
  canonical_of_padded canonicalInput1133 canonicalOutput1133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1134 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 2, -3], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1134 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1233⟩

theorem canonicalSound1134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1134.moment H = canonicalOutput1134.moment H :=
  canonical_of_padded canonicalInput1134 canonicalOutput1134 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1135 : ExponentCode := ⟨5, 4, ![![-2, -2, -1, 5], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1135 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩

theorem canonicalSound1135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1135.moment H = canonicalOutput1135.moment H :=
  canonical_of_padded canonicalInput1135 canonicalOutput1135 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1136 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 2, -3], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput1136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code118

theorem canonicalSound1136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1136.moment H = canonicalOutput1136.moment H :=
  canonical_of_padded canonicalInput1136 canonicalOutput1136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1137 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1137 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound1137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1137.moment H = canonicalOutput1137.moment H :=
  canonical_of_padded canonicalInput1137 canonicalOutput1137 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1138 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 2, -3], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1138 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code120

theorem canonicalSound1138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1138.moment H = canonicalOutput1138.moment H :=
  canonical_of_padded canonicalInput1138 canonicalOutput1138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1139 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1139 : ExponentCode := normalNode8936

theorem canonicalSound1139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1139.moment H = canonicalOutput1139.moment H :=
  canonical_of_padded canonicalInput1139 canonicalOutput1139 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1140 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput1140 : ExponentCode := normalNode9585

theorem canonicalSound1140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1140.moment H = canonicalOutput1140.moment H :=
  canonical_of_padded canonicalInput1140 canonicalOutput1140 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1141 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput1141 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code118

theorem canonicalSound1141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1141.moment H = canonicalOutput1141.moment H :=
  canonical_of_padded canonicalInput1141 canonicalOutput1141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1142 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput1142 : ExponentCode := normalNode9580

theorem canonicalSound1142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1142.moment H = canonicalOutput1142.moment H :=
  canonical_of_padded canonicalInput1142 canonicalOutput1142 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1143 : ExponentCode := ⟨4, 4, ![![-2, -2, -1, 5], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1143 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩

theorem canonicalSound1143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1143.moment H = canonicalOutput1143.moment H :=
  canonical_of_padded canonicalInput1143 canonicalOutput1143 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1144 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1144 : ExponentCode := normalNode10153

theorem canonicalSound1144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1144.moment H = canonicalOutput1144.moment H :=
  canonical_of_padded canonicalInput1144 canonicalOutput1144 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1145 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput1145 : ExponentCode := normalNode9558

theorem canonicalSound1145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1145.moment H = canonicalOutput1145.moment H :=
  canonical_of_padded canonicalInput1145 canonicalOutput1145 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1146 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput1146 : ExponentCode := normalNode10377

theorem canonicalSound1146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1146.moment H = canonicalOutput1146.moment H :=
  canonical_of_padded canonicalInput1146 canonicalOutput1146 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1147 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput1147 : ExponentCode := normalNode9141

theorem canonicalSound1147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1147.moment H = canonicalOutput1147.moment H :=
  canonical_of_padded canonicalInput1147 canonicalOutput1147 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1148 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1148 : ExponentCode := normalNode9986

theorem canonicalSound1148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1148.moment H = canonicalOutput1148.moment H :=
  canonical_of_padded canonicalInput1148 canonicalOutput1148 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1149 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput1149 : ExponentCode := normalNode9160

theorem canonicalSound1149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1149.moment H = canonicalOutput1149.moment H :=
  canonical_of_padded canonicalInput1149 canonicalOutput1149 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1150 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1150 : ExponentCode := normalNode6337

theorem canonicalSound1150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1150.moment H = canonicalOutput1150.moment H :=
  canonical_of_padded canonicalInput1150 canonicalOutput1150 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1151 : ExponentCode := ⟨5, 5, ![![-2, -2, 0, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1151 : ExponentCode := normalNode6337

theorem canonicalSound1151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1151.moment H = canonicalOutput1151.moment H :=
  canonical_of_padded canonicalInput1151 canonicalOutput1151 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

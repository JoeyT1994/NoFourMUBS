import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6016 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput6016 : ExponentCode := normalNode6329

theorem canonicalSound6016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6016.moment H = canonicalOutput6016.moment H :=
  canonical_of_padded canonicalInput6016 canonicalOutput6016 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6017 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6017 : ExponentCode := normalNode9599

theorem canonicalSound6017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6017.moment H = canonicalOutput6017.moment H :=
  canonical_of_padded canonicalInput6017 canonicalOutput6017 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6018 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6018 : ExponentCode := normalNode7228

theorem canonicalSound6018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6018.moment H = canonicalOutput6018.moment H :=
  canonical_of_padded canonicalInput6018 canonicalOutput6018 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6019 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6019 : ExponentCode := normalNode6335

theorem canonicalSound6019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6019.moment H = canonicalOutput6019.moment H :=
  canonical_of_padded canonicalInput6019 canonicalOutput6019 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6020 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6020 : ExponentCode := normalNode7222

theorem canonicalSound6020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6020.moment H = canonicalOutput6020.moment H :=
  canonical_of_padded canonicalInput6020 canonicalOutput6020 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6021 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput6021 : ExponentCode := normalNode7222

theorem canonicalSound6021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6021.moment H = canonicalOutput6021.moment H :=
  canonical_of_padded canonicalInput6021 canonicalOutput6021 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6022 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput6022 : ExponentCode := normalNode6335

theorem canonicalSound6022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6022.moment H = canonicalOutput6022.moment H :=
  canonical_of_padded canonicalInput6022 canonicalOutput6022 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6023 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6023 : ExponentCode := normalNode10265

theorem canonicalSound6023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6023.moment H = canonicalOutput6023.moment H :=
  canonical_of_padded canonicalInput6023 canonicalOutput6023 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6024 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6024 : ExponentCode := normalNode3109

theorem canonicalSound6024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6024.moment H = canonicalOutput6024.moment H :=
  canonical_of_padded canonicalInput6024 canonicalOutput6024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6025 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6025 : ExponentCode := normalNode3111

theorem canonicalSound6025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6025.moment H = canonicalOutput6025.moment H :=
  canonical_of_padded canonicalInput6025 canonicalOutput6025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6026 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput6026 : ExponentCode := normalNode6323

theorem canonicalSound6026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6026.moment H = canonicalOutput6026.moment H :=
  canonical_of_padded canonicalInput6026 canonicalOutput6026 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6027 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6027 : ExponentCode := normalNode3115

theorem canonicalSound6027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6027.moment H = canonicalOutput6027.moment H :=
  canonical_of_padded canonicalInput6027 canonicalOutput6027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6028 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput6028 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code112

theorem canonicalSound6028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6028.moment H = canonicalOutput6028.moment H :=
  canonical_of_padded canonicalInput6028 canonicalOutput6028 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6029 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6029 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code120

theorem canonicalSound6029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6029.moment H = canonicalOutput6029.moment H :=
  canonical_of_padded canonicalInput6029 canonicalOutput6029 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6030 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6030 : ExponentCode := normalNode10247

theorem canonicalSound6030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6030.moment H = canonicalOutput6030.moment H :=
  canonical_of_padded canonicalInput6030 canonicalOutput6030 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6031 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6031 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1240⟩

theorem canonicalSound6031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6031.moment H = canonicalOutput6031.moment H :=
  canonical_of_padded canonicalInput6031 canonicalOutput6031 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6032 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6032 : ExponentCode := normalNode6334

theorem canonicalSound6032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6032.moment H = canonicalOutput6032.moment H :=
  canonical_of_padded canonicalInput6032 canonicalOutput6032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6033 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput6033 : ExponentCode := normalNode6334

theorem canonicalSound6033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6033.moment H = canonicalOutput6033.moment H :=
  canonical_of_padded canonicalInput6033 canonicalOutput6033 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6034 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6034 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1240⟩

theorem canonicalSound6034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6034.moment H = canonicalOutput6034.moment H :=
  canonical_of_padded canonicalInput6034 canonicalOutput6034 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6035 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, 0, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput6035 : ExponentCode := normalNode10247

theorem canonicalSound6035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6035.moment H = canonicalOutput6035.moment H :=
  canonical_of_padded canonicalInput6035 canonicalOutput6035 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6036 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 1, -2], ![1, 1, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput6036 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code710

theorem canonicalSound6036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6036.moment H = canonicalOutput6036.moment H :=
  canonical_of_padded canonicalInput6036 canonicalOutput6036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6037 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput6037 : ExponentCode := normalNode5999

theorem canonicalSound6037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6037.moment H = canonicalOutput6037.moment H :=
  canonical_of_padded canonicalInput6037 canonicalOutput6037 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6038 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, 1, 2, -3], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6038 : ExponentCode := normalNode3116

theorem canonicalSound6038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6038.moment H = canonicalOutput6038.moment H :=
  canonical_of_padded canonicalInput6038 canonicalOutput6038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6039 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6039 : ExponentCode := normalNode8922

theorem canonicalSound6039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6039.moment H = canonicalOutput6039.moment H :=
  canonical_of_padded canonicalInput6039 canonicalOutput6039 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6040 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6040 : ExponentCode := normalNode7187

theorem canonicalSound6040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6040.moment H = canonicalOutput6040.moment H :=
  canonical_of_padded canonicalInput6040 canonicalOutput6040 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6041 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6041 : ExponentCode := normalNode7187

theorem canonicalSound6041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6041.moment H = canonicalOutput6041.moment H :=
  canonical_of_padded canonicalInput6041 canonicalOutput6041 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6042 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6042 : ExponentCode := normalNode9049

theorem canonicalSound6042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6042.moment H = canonicalOutput6042.moment H :=
  canonical_of_padded canonicalInput6042 canonicalOutput6042 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6043 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6043 : ExponentCode := normalNode9049

theorem canonicalSound6043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6043.moment H = canonicalOutput6043.moment H :=
  canonical_of_padded canonicalInput6043 canonicalOutput6043 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6044 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6044 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code709

theorem canonicalSound6044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6044.moment H = canonicalOutput6044.moment H :=
  canonical_of_padded canonicalInput6044 canonicalOutput6044 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6045 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6045 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code118

theorem canonicalSound6045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6045.moment H = canonicalOutput6045.moment H :=
  canonical_of_padded canonicalInput6045 canonicalOutput6045 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6046 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 0, -2], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6046 : ExponentCode := normalNode6330

theorem canonicalSound6046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6046.moment H = canonicalOutput6046.moment H :=
  canonical_of_padded canonicalInput6046 canonicalOutput6046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6047 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput6047 : ExponentCode := normalNode10312

theorem canonicalSound6047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6047.moment H = canonicalOutput6047.moment H :=
  canonical_of_padded canonicalInput6047 canonicalOutput6047 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6048 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput6048 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code260

theorem canonicalSound6048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6048.moment H = canonicalOutput6048.moment H :=
  canonical_of_padded canonicalInput6048 canonicalOutput6048 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6049 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6049 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code260

theorem canonicalSound6049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6049.moment H = canonicalOutput6049.moment H :=
  canonical_of_padded canonicalInput6049 canonicalOutput6049 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6050 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6050 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code707

theorem canonicalSound6050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6050.moment H = canonicalOutput6050.moment H :=
  canonical_of_padded canonicalInput6050 canonicalOutput6050 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6051 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 1, -3], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6051 : ExponentCode := normalNode6002

theorem canonicalSound6051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6051.moment H = canonicalOutput6051.moment H :=
  canonical_of_padded canonicalInput6051 canonicalOutput6051 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6052 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput6052 : ExponentCode := normalNode8892

theorem canonicalSound6052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6052.moment H = canonicalOutput6052.moment H :=
  canonical_of_padded canonicalInput6052 canonicalOutput6052 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6053 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 2, -4], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6053 : ExponentCode := normalNode8920

theorem canonicalSound6053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6053.moment H = canonicalOutput6053.moment H :=
  canonical_of_padded canonicalInput6053 canonicalOutput6053 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6054 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6054 : ExponentCode := normalNode8919

theorem canonicalSound6054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6054.moment H = canonicalOutput6054.moment H :=
  canonical_of_padded canonicalInput6054 canonicalOutput6054 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6055 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 2, -4], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6055 : ExponentCode := normalNode8919

theorem canonicalSound6055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6055.moment H = canonicalOutput6055.moment H :=
  canonical_of_padded canonicalInput6055 canonicalOutput6055 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6056 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6056 : ExponentCode := normalNode9048

theorem canonicalSound6056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6056.moment H = canonicalOutput6056.moment H :=
  canonical_of_padded canonicalInput6056 canonicalOutput6056 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6057 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, -2, 2, -1], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput6057 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code120

theorem canonicalSound6057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6057.moment H = canonicalOutput6057.moment H :=
  canonical_of_padded canonicalInput6057 canonicalOutput6057 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6058 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, -2, 2, -1], ![0, 2, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6058 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code118

theorem canonicalSound6058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6058.moment H = canonicalOutput6058.moment H :=
  canonical_of_padded canonicalInput6058 canonicalOutput6058 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6059 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, -2, 2, -1], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6059 : ExponentCode := normalNode6002

theorem canonicalSound6059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6059.moment H = canonicalOutput6059.moment H :=
  canonical_of_padded canonicalInput6059 canonicalOutput6059 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6060 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, -2, 3, -2], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6060 : ExponentCode := normalNode6330

theorem canonicalSound6060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6060.moment H = canonicalOutput6060.moment H :=
  canonical_of_padded canonicalInput6060 canonicalOutput6060 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6061 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, -1, 2, -2], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6061 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code260

theorem canonicalSound6061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6061.moment H = canonicalOutput6061.moment H :=
  canonical_of_padded canonicalInput6061 canonicalOutput6061 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6062 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, -1, 2, -2], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput6062 : ExponentCode := normalNode8892

theorem canonicalSound6062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6062.moment H = canonicalOutput6062.moment H :=
  canonical_of_padded canonicalInput6062 canonicalOutput6062 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6063 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, 0, 1, -2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6063 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1240⟩

theorem canonicalSound6063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6063.moment H = canonicalOutput6063.moment H :=
  canonical_of_padded canonicalInput6063 canonicalOutput6063 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6064 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, 0, 1, -2], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput6064 : ExponentCode := normalNode8922

theorem canonicalSound6064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6064.moment H = canonicalOutput6064.moment H :=
  canonical_of_padded canonicalInput6064 canonicalOutput6064 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6065 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![1, 1, 1, -3], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput6065 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code710

theorem canonicalSound6065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6065.moment H = canonicalOutput6065.moment H :=
  canonical_of_padded canonicalInput6065 canonicalOutput6065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6066 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![0, 1, 0, -1], ![2, 1, 1, -4]]⟩

def canonicalOutput6066 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1325⟩

theorem canonicalSound6066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6066.moment H = canonicalOutput6066.moment H :=
  canonical_of_padded canonicalInput6066 canonicalOutput6066 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6067 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![0, 1, 2, -3], ![2, 1, -1, -2]]⟩

def canonicalOutput6067 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code537

theorem canonicalSound6067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6067.moment H = canonicalOutput6067.moment H :=
  canonical_of_padded canonicalInput6067 canonicalOutput6067 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6068 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![0, 2, 1, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput6068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node401⟩

theorem canonicalSound6068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6068.moment H = canonicalOutput6068.moment H :=
  canonical_of_padded canonicalInput6068 canonicalOutput6068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6069 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput6069 : ExponentCode := normalNode10885

theorem canonicalSound6069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6069.moment H = canonicalOutput6069.moment H :=
  canonical_of_padded canonicalInput6069 canonicalOutput6069 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6070 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput6070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1238⟩

theorem canonicalSound6070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6070.moment H = canonicalOutput6070.moment H :=
  canonical_of_padded canonicalInput6070 canonicalOutput6070 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6071 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput6071 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code538

theorem canonicalSound6071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6071.moment H = canonicalOutput6071.moment H :=
  canonical_of_padded canonicalInput6071 canonicalOutput6071 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6072 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![1, 1, 1, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput6072 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node402⟩

theorem canonicalSound6072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6072.moment H = canonicalOutput6072.moment H :=
  canonical_of_padded canonicalInput6072 canonicalOutput6072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6073 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 1, 1], ![1, 1, 2, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput6073 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code714

theorem canonicalSound6073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6073.moment H = canonicalOutput6073.moment H :=
  canonical_of_padded canonicalInput6073 canonicalOutput6073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6074 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput6074 : ExponentCode := normalNode11207

theorem canonicalSound6074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6074.moment H = canonicalOutput6074.moment H :=
  canonical_of_padded canonicalInput6074 canonicalOutput6074 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6075 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6075 : ExponentCode := normalNode3129

theorem canonicalSound6075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6075.moment H = canonicalOutput6075.moment H :=
  canonical_of_padded canonicalInput6075 canonicalOutput6075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6076 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput6076 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1180⟩

theorem canonicalSound6076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6076.moment H = canonicalOutput6076.moment H :=
  canonical_of_padded canonicalInput6076 canonicalOutput6076 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6077 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, 2, -3], ![2, 1, -2, -1]]⟩

def canonicalOutput6077 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code568

theorem canonicalSound6077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6077.moment H = canonicalOutput6077.moment H :=
  canonical_of_padded canonicalInput6077 canonicalOutput6077 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6078 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6078 : ExponentCode := normalNode3136

theorem canonicalSound6078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6078.moment H = canonicalOutput6078.moment H :=
  canonical_of_padded canonicalInput6078 canonicalOutput6078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6079 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput6079 : ExponentCode := normalNode10353

theorem canonicalSound6079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6079.moment H = canonicalOutput6079.moment H :=
  canonical_of_padded canonicalInput6079 canonicalOutput6079 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14016 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, -1, -1, 3], ![0, 3, 1, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput14016 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code661

theorem canonicalSound14016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14016.moment H = canonicalOutput14016.moment H :=
  canonical_of_padded canonicalInput14016 canonicalOutput14016 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14017 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, -1, -1, 3], ![1, 3, -2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput14017 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1246

theorem canonicalSound14017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14017.moment H = canonicalOutput14017.moment H :=
  canonical_of_padded canonicalInput14017 canonicalOutput14017 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput14018 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, -1, -1, 3], ![1, 3, 0, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14018 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1157⟩

theorem canonicalSound14018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14018.moment H = canonicalOutput14018.moment H :=
  canonical_of_padded canonicalInput14018 canonicalOutput14018 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14019 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, -1, 0, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14019 : ExponentCode := normalNode5109

theorem canonicalSound14019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14019.moment H = canonicalOutput14019.moment H :=
  canonical_of_padded canonicalInput14019 canonicalOutput14019 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput14020 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, -1, 0, 2], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14020 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2242⟩

theorem canonicalSound14020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14020.moment H = canonicalOutput14020.moment H :=
  canonical_of_padded canonicalInput14020 canonicalOutput14020 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput14021 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, -1, 0, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput14021 : ExponentCode := normalNode7093

theorem canonicalSound14021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14021.moment H = canonicalOutput14021.moment H :=
  canonical_of_padded canonicalInput14021 canonicalOutput14021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14022 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, -1, 0, 2], ![0, 3, 1, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput14022 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code279

theorem canonicalSound14022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14022.moment H = canonicalOutput14022.moment H :=
  canonical_of_padded canonicalInput14022 canonicalOutput14022 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14023 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, -1, 0, 2], ![1, 3, 0, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput14023 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node468⟩

theorem canonicalSound14023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14023.moment H = canonicalOutput14023.moment H :=
  canonical_of_padded canonicalInput14023 canonicalOutput14023 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14024 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, -1, 3, -1], ![2, 3, -5, 0]]⟩

def canonicalOutput14024 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound14024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14024.moment H = canonicalOutput14024.moment H :=
  canonical_of_padded canonicalInput14024 canonicalOutput14024 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14025 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 0, -1, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14025 : ExponentCode := normalNode2561

theorem canonicalSound14025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14025.moment H = canonicalOutput14025.moment H :=
  canonical_of_padded canonicalInput14025 canonicalOutput14025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14026 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput14026 : ExponentCode := normalNode7095

theorem canonicalSound14026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14026.moment H = canonicalOutput14026.moment H :=
  canonical_of_padded canonicalInput14026 canonicalOutput14026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14027 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput14027 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code328

theorem canonicalSound14027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14027.moment H = canonicalOutput14027.moment H :=
  canonical_of_padded canonicalInput14027 canonicalOutput14027 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14028 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 0, -1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14028 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound14028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14028.moment H = canonicalOutput14028.moment H :=
  canonical_of_padded canonicalInput14028 canonicalOutput14028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14029 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 0, -1, 2], ![1, 3, 0, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput14029 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound14029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14029.moment H = canonicalOutput14029.moment H :=
  canonical_of_padded canonicalInput14029 canonicalOutput14029 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14030 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound14030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14030.moment H = canonicalOutput14030.moment H :=
  canonical_of_padded canonicalInput14030 canonicalOutput14030 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14031 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, -2, 2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput14031 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound14031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14031.moment H = canonicalOutput14031.moment H :=
  canonical_of_padded canonicalInput14031 canonicalOutput14031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14032 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14032 : ExponentCode := normalNode2803

theorem canonicalSound14032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14032.moment H = canonicalOutput14032.moment H :=
  canonical_of_padded canonicalInput14032 canonicalOutput14032 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14033 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput14033 : ExponentCode := normalNode10196

theorem canonicalSound14033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14033.moment H = canonicalOutput14033.moment H :=
  canonical_of_padded canonicalInput14033 canonicalOutput14033 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14034 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput14034 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1310

theorem canonicalSound14034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14034.moment H = canonicalOutput14034.moment H :=
  canonical_of_padded canonicalInput14034 canonicalOutput14034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14035 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput14035 : ExponentCode := normalNode4536

theorem canonicalSound14035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14035.moment H = canonicalOutput14035.moment H :=
  canonical_of_padded canonicalInput14035 canonicalOutput14035 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput14036 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput14036 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound14036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14036.moment H = canonicalOutput14036.moment H :=
  canonical_of_padded canonicalInput14036 canonicalOutput14036 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14037 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput14037 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound14037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14037.moment H = canonicalOutput14037.moment H :=
  canonical_of_padded canonicalInput14037 canonicalOutput14037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14038 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput14038 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩

theorem canonicalSound14038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14038.moment H = canonicalOutput14038.moment H :=
  canonical_of_padded canonicalInput14038 canonicalOutput14038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14039 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput14039 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound14039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14039.moment H = canonicalOutput14039.moment H :=
  canonical_of_padded canonicalInput14039 canonicalOutput14039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14040 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput14040 : ExponentCode := normalNode9278

theorem canonicalSound14040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14040.moment H = canonicalOutput14040.moment H :=
  canonical_of_padded canonicalInput14040 canonicalOutput14040 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14041 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, 1, -1], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput14041 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1309

theorem canonicalSound14041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14041.moment H = canonicalOutput14041.moment H :=
  canonical_of_padded canonicalInput14041 canonicalOutput14041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14042 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 1, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput14042 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node516⟩

theorem canonicalSound14042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14042.moment H = canonicalOutput14042.moment H :=
  canonical_of_padded canonicalInput14042 canonicalOutput14042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14043 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 1, 3, -3], ![2, 1, -5, 2]]⟩

def canonicalOutput14043 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound14043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14043.moment H = canonicalOutput14043.moment H :=
  canonical_of_padded canonicalInput14043 canonicalOutput14043 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14044 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 2, -2, 1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput14044 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1026

theorem canonicalSound14044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14044.moment H = canonicalOutput14044.moment H :=
  canonical_of_padded canonicalInput14044 canonicalOutput14044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput14045 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 2, -2, 1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14045 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound14045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14045.moment H = canonicalOutput14045.moment H :=
  canonical_of_padded canonicalInput14045 canonicalOutput14045 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14046 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 2, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput14046 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound14046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14046.moment H = canonicalOutput14046.moment H :=
  canonical_of_padded canonicalInput14046 canonicalOutput14046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14047 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14047 : ExponentCode := normalNode5432

theorem canonicalSound14047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14047.moment H = canonicalOutput14047.moment H :=
  canonical_of_padded canonicalInput14047 canonicalOutput14047 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput14048 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14048 : ExponentCode := normalNode10203

theorem canonicalSound14048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14048.moment H = canonicalOutput14048.moment H :=
  canonical_of_padded canonicalInput14048 canonicalOutput14048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14049 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput14049 : ExponentCode := normalNode8886

theorem canonicalSound14049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14049.moment H = canonicalOutput14049.moment H :=
  canonical_of_padded canonicalInput14049 canonicalOutput14049 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14050 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput14050 : ExponentCode := normalNode4305

theorem canonicalSound14050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14050.moment H = canonicalOutput14050.moment H :=
  canonical_of_padded canonicalInput14050 canonicalOutput14050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput14051 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 2, -1, 0], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput14051 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound14051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14051.moment H = canonicalOutput14051.moment H :=
  canonical_of_padded canonicalInput14051 canonicalOutput14051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14052 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 2, 0, -1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14052 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound14052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14052.moment H = canonicalOutput14052.moment H :=
  canonical_of_padded canonicalInput14052 canonicalOutput14052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14053 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput14053 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound14053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14053.moment H = canonicalOutput14053.moment H :=
  canonical_of_padded canonicalInput14053 canonicalOutput14053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14054 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 2, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput14054 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound14054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14054.moment H = canonicalOutput14054.moment H :=
  canonical_of_padded canonicalInput14054 canonicalOutput14054 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14055 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, -1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput14055 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound14055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14055.moment H = canonicalOutput14055.moment H :=
  canonical_of_padded canonicalInput14055 canonicalOutput14055 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14056 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 3, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput14056 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound14056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14056.moment H = canonicalOutput14056.moment H :=
  canonical_of_padded canonicalInput14056 canonicalOutput14056 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14057 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14057 : ExponentCode := normalNode3539

theorem canonicalSound14057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14057.moment H = canonicalOutput14057.moment H :=
  canonical_of_padded canonicalInput14057 canonicalOutput14057 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14058 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![2, 0, 0, -2]]⟩

def canonicalOutput14058 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code783

theorem canonicalSound14058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14058.moment H = canonicalOutput14058.moment H :=
  canonical_of_padded canonicalInput14058 canonicalOutput14058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14059 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14059 : ExponentCode := normalNode5116

theorem canonicalSound14059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14059.moment H = canonicalOutput14059.moment H :=
  canonical_of_padded canonicalInput14059 canonicalOutput14059 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput14060 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput14060 : ExponentCode := normalNode5115

theorem canonicalSound14060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14060.moment H = canonicalOutput14060.moment H :=
  canonical_of_padded canonicalInput14060 canonicalOutput14060 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput14061 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput14061 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code182

theorem canonicalSound14061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14061.moment H = canonicalOutput14061.moment H :=
  canonical_of_padded canonicalInput14061 canonicalOutput14061 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14062 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput14062 : ExponentCode := normalNode7052

theorem canonicalSound14062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14062.moment H = canonicalOutput14062.moment H :=
  canonical_of_padded canonicalInput14062 canonicalOutput14062 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14063 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 3, 0, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput14063 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound14063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14063.moment H = canonicalOutput14063.moment H :=
  canonical_of_padded canonicalInput14063 canonicalOutput14063 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14064 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![0, -1, -2, 3], ![2, 0, -1, -1]]⟩

def canonicalOutput14064 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1020

theorem canonicalSound14064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14064.moment H = canonicalOutput14064.moment H :=
  canonical_of_padded canonicalInput14064 canonicalOutput14064 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14065 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14065 : ExponentCode := normalNode6074

theorem canonicalSound14065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14065.moment H = canonicalOutput14065.moment H :=
  canonical_of_padded canonicalInput14065 canonicalOutput14065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14066 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![0, -1, -1, 2], ![2, 0, -2, 0]]⟩

def canonicalOutput14066 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound14066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14066.moment H = canonicalOutput14066.moment H :=
  canonical_of_padded canonicalInput14066 canonicalOutput14066 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14067 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![0, 0, -2, 2], ![2, -1, -1, 0]]⟩

def canonicalOutput14067 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound14067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14067.moment H = canonicalOutput14067.moment H :=
  canonical_of_padded canonicalInput14067 canonicalOutput14067 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14068 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput14068 : ExponentCode := normalNode6066

theorem canonicalSound14068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14068.moment H = canonicalOutput14068.moment H :=
  canonical_of_padded canonicalInput14068 canonicalOutput14068 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14069 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput14069 : ExponentCode := normalNode10958

theorem canonicalSound14069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14069.moment H = canonicalOutput14069.moment H :=
  canonical_of_padded canonicalInput14069 canonicalOutput14069 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput14070 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput14070 : ExponentCode := normalNode7107

theorem canonicalSound14070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14070.moment H = canonicalOutput14070.moment H :=
  canonical_of_padded canonicalInput14070 canonicalOutput14070 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14071 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput14071 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code662

theorem canonicalSound14071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14071.moment H = canonicalOutput14071.moment H :=
  canonical_of_padded canonicalInput14071 canonicalOutput14071 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14072 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![-1, 3, 1, -3], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput14072 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code662

theorem canonicalSound14072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14072.moment H = canonicalOutput14072.moment H :=
  canonical_of_padded canonicalInput14072 canonicalOutput14072 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14073 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 4, -4, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput14073 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound14073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14073.moment H = canonicalOutput14073.moment H :=
  canonical_of_padded canonicalInput14073 canonicalOutput14073 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14074 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![-1, 4, -3, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput14074 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound14074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14074.moment H = canonicalOutput14074.moment H :=
  canonical_of_padded canonicalInput14074 canonicalOutput14074 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14075 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, -2, 2, 0], ![1, 4, -4, -1]]⟩

def canonicalOutput14075 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound14075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14075.moment H = canonicalOutput14075.moment H :=
  canonical_of_padded canonicalInput14075 canonicalOutput14075 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14076 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, -1, -2, 3], ![1, 3, 0, -4]]⟩

def canonicalOutput14076 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound14076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14076.moment H = canonicalOutput14076.moment H :=
  canonical_of_padded canonicalInput14076 canonicalOutput14076 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14077 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput14077 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node756⟩

theorem canonicalSound14077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14077.moment H = canonicalOutput14077.moment H :=
  canonical_of_padded canonicalInput14077 canonicalOutput14077 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14078 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14078 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound14078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14078.moment H = canonicalOutput14078.moment H :=
  canonical_of_padded canonicalInput14078 canonicalOutput14078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14079 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, -1, -1, 2], ![0, 3, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14079 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound14079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14079.moment H = canonicalOutput14079.moment H :=
  canonical_of_padded canonicalInput14079 canonicalOutput14079 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11008 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11008 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2710⟩

theorem canonicalSound11008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11008.moment H = canonicalOutput11008.moment H :=
  canonical_of_padded canonicalInput11008 canonicalOutput11008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11009 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput11009 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2264⟩

theorem canonicalSound11009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11009.moment H = canonicalOutput11009.moment H :=
  canonical_of_padded canonicalInput11009 canonicalOutput11009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11010 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11010 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2262⟩

theorem canonicalSound11010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11010.moment H = canonicalOutput11010.moment H :=
  canonical_of_padded canonicalInput11010 canonicalOutput11010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11011 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput11011 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound11011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11011.moment H = canonicalOutput11011.moment H :=
  canonical_of_padded canonicalInput11011 canonicalOutput11011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11012 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput11012 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node690⟩

theorem canonicalSound11012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11012.moment H = canonicalOutput11012.moment H :=
  canonical_of_padded canonicalInput11012 canonicalOutput11012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11013 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput11013 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩

theorem canonicalSound11013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11013.moment H = canonicalOutput11013.moment H :=
  canonical_of_padded canonicalInput11013 canonicalOutput11013 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11014 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![1, 1, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput11014 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound11014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11014.moment H = canonicalOutput11014.moment H :=
  canonical_of_padded canonicalInput11014 canonicalOutput11014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11015 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, -1, -1, 2], ![0, 1, 2, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput11015 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code959

theorem canonicalSound11015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11015.moment H = canonicalOutput11015.moment H :=
  canonical_of_padded canonicalInput11015 canonicalOutput11015 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11016 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 1, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11016 : ExponentCode := normalNode5617

theorem canonicalSound11016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11016.moment H = canonicalOutput11016.moment H :=
  canonical_of_padded canonicalInput11016 canonicalOutput11016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11017 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11017 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound11017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11017.moment H = canonicalOutput11017.moment H :=
  canonical_of_padded canonicalInput11017 canonicalOutput11017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11018 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput11018 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1152

theorem canonicalSound11018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11018.moment H = canonicalOutput11018.moment H :=
  canonical_of_padded canonicalInput11018 canonicalOutput11018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11019 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11019 : ExponentCode := normalNode10317

theorem canonicalSound11019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11019.moment H = canonicalOutput11019.moment H :=
  canonical_of_padded canonicalInput11019 canonicalOutput11019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11020 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11020 : ExponentCode := normalNode8941

theorem canonicalSound11020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11020.moment H = canonicalOutput11020.moment H :=
  canonical_of_padded canonicalInput11020 canonicalOutput11020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11021 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11021 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound11021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11021.moment H = canonicalOutput11021.moment H :=
  canonical_of_padded canonicalInput11021 canonicalOutput11021 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11022 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput11022 : ExponentCode := normalNode4311

theorem canonicalSound11022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11022.moment H = canonicalOutput11022.moment H :=
  canonical_of_padded canonicalInput11022 canonicalOutput11022 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11023 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11023 : ExponentCode := normalNode10342

theorem canonicalSound11023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11023.moment H = canonicalOutput11023.moment H :=
  canonical_of_padded canonicalInput11023 canonicalOutput11023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11024 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11024 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2582⟩

theorem canonicalSound11024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11024.moment H = canonicalOutput11024.moment H :=
  canonical_of_padded canonicalInput11024 canonicalOutput11024 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11025 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput11025 : ExponentCode := normalNode3773

theorem canonicalSound11025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11025.moment H = canonicalOutput11025.moment H :=
  canonical_of_padded canonicalInput11025 canonicalOutput11025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11026 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11026 : ExponentCode := normalNode5437

theorem canonicalSound11026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11026.moment H = canonicalOutput11026.moment H :=
  canonical_of_padded canonicalInput11026 canonicalOutput11026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11027 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput11027 : ExponentCode := normalNode5435

theorem canonicalSound11027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11027.moment H = canonicalOutput11027.moment H :=
  canonical_of_padded canonicalInput11027 canonicalOutput11027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11028 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput11028 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound11028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11028.moment H = canonicalOutput11028.moment H :=
  canonical_of_padded canonicalInput11028 canonicalOutput11028 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11029 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11029 : ExponentCode := normalNode5328

theorem canonicalSound11029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11029.moment H = canonicalOutput11029.moment H :=
  canonical_of_padded canonicalInput11029 canonicalOutput11029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput11030 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11030 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound11030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11030.moment H = canonicalOutput11030.moment H :=
  canonical_of_padded canonicalInput11030 canonicalOutput11030 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput11031 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput11031 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound11031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11031.moment H = canonicalOutput11031.moment H :=
  canonical_of_padded canonicalInput11031 canonicalOutput11031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11032 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11032 : ExponentCode := normalNode5625

theorem canonicalSound11032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11032.moment H = canonicalOutput11032.moment H :=
  canonical_of_padded canonicalInput11032 canonicalOutput11032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11033 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11033 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound11033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11033.moment H = canonicalOutput11033.moment H :=
  canonical_of_padded canonicalInput11033 canonicalOutput11033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11034 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput11034 : ExponentCode := normalNode5432

theorem canonicalSound11034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11034.moment H = canonicalOutput11034.moment H :=
  canonical_of_padded canonicalInput11034 canonicalOutput11034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11035 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput11035 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound11035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11035.moment H = canonicalOutput11035.moment H :=
  canonical_of_padded canonicalInput11035 canonicalOutput11035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11036 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound11036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11036.moment H = canonicalOutput11036.moment H :=
  canonical_of_padded canonicalInput11036 canonicalOutput11036 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11037 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput11037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound11037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11037.moment H = canonicalOutput11037.moment H :=
  canonical_of_padded canonicalInput11037 canonicalOutput11037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11038 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput11038 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node608⟩

theorem canonicalSound11038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11038.moment H = canonicalOutput11038.moment H :=
  canonical_of_padded canonicalInput11038 canonicalOutput11038 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11039 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput11039 : ExponentCode := normalNode5431

theorem canonicalSound11039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11039.moment H = canonicalOutput11039.moment H :=
  canonical_of_padded canonicalInput11039 canonicalOutput11039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11040 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput11040 : ExponentCode := normalNode5430

theorem canonicalSound11040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11040.moment H = canonicalOutput11040.moment H :=
  canonical_of_padded canonicalInput11040 canonicalOutput11040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11041 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput11041 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound11041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11041.moment H = canonicalOutput11041.moment H :=
  canonical_of_padded canonicalInput11041 canonicalOutput11041 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11042 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, -2, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput11042 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1026

theorem canonicalSound11042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11042.moment H = canonicalOutput11042.moment H :=
  canonical_of_padded canonicalInput11042 canonicalOutput11042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11043 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, -1, -2, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11043 : ExponentCode := normalNode5627

theorem canonicalSound11043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11043.moment H = canonicalOutput11043.moment H :=
  canonical_of_padded canonicalInput11043 canonicalOutput11043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11044 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11044 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound11044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11044.moment H = canonicalOutput11044.moment H :=
  canonical_of_padded canonicalInput11044 canonicalOutput11044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11045 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11045 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node621⟩

theorem canonicalSound11045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11045.moment H = canonicalOutput11045.moment H :=
  canonical_of_padded canonicalInput11045 canonicalOutput11045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11046 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput11046 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound11046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11046.moment H = canonicalOutput11046.moment H :=
  canonical_of_padded canonicalInput11046 canonicalOutput11046 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11047 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput11047 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound11047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11047.moment H = canonicalOutput11047.moment H :=
  canonical_of_padded canonicalInput11047 canonicalOutput11047 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11048 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput11048 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound11048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11048.moment H = canonicalOutput11048.moment H :=
  canonical_of_padded canonicalInput11048 canonicalOutput11048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11049 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, 1, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput11049 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound11049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11049.moment H = canonicalOutput11049.moment H :=
  canonical_of_padded canonicalInput11049 canonicalOutput11049 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11050 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -1, 2], ![1, 1, 2, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput11050 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node585⟩

theorem canonicalSound11050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11050.moment H = canonicalOutput11050.moment H :=
  canonical_of_padded canonicalInput11050 canonicalOutput11050 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11051 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11051 : ExponentCode := normalNode5322

theorem canonicalSound11051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11051.moment H = canonicalOutput11051.moment H :=
  canonical_of_padded canonicalInput11051 canonicalOutput11051 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11052 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11052 : ExponentCode := normalNode5282

theorem canonicalSound11052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11052.moment H = canonicalOutput11052.moment H :=
  canonical_of_padded canonicalInput11052 canonicalOutput11052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11053 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11053 : ExponentCode := normalNode10722

theorem canonicalSound11053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11053.moment H = canonicalOutput11053.moment H :=
  canonical_of_padded canonicalInput11053 canonicalOutput11053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11054 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11054 : ExponentCode := normalNode10726

theorem canonicalSound11054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11054.moment H = canonicalOutput11054.moment H :=
  canonical_of_padded canonicalInput11054 canonicalOutput11054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11055 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput11055 : ExponentCode := normalNode5405

theorem canonicalSound11055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11055.moment H = canonicalOutput11055.moment H :=
  canonical_of_padded canonicalInput11055 canonicalOutput11055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11056 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![1, -1, -3, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput11056 : ExponentCode := normalNode9722

theorem canonicalSound11056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11056.moment H = canonicalOutput11056.moment H :=
  canonical_of_padded canonicalInput11056 canonicalOutput11056 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11057 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11057 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound11057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11057.moment H = canonicalOutput11057.moment H :=
  canonical_of_padded canonicalInput11057 canonicalOutput11057 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11058 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11058 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound11058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11058.moment H = canonicalOutput11058.moment H :=
  canonical_of_padded canonicalInput11058 canonicalOutput11058 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11059 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput11059 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound11059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11059.moment H = canonicalOutput11059.moment H :=
  canonical_of_padded canonicalInput11059 canonicalOutput11059 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11060 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11060 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound11060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11060.moment H = canonicalOutput11060.moment H :=
  canonical_of_padded canonicalInput11060 canonicalOutput11060 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11061 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![0, 1, -3, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput11061 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound11061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11061.moment H = canonicalOutput11061.moment H :=
  canonical_of_padded canonicalInput11061 canonicalOutput11061 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11062 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11062 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound11062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11062.moment H = canonicalOutput11062.moment H :=
  canonical_of_padded canonicalInput11062 canonicalOutput11062 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11063 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput11063 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2251⟩

theorem canonicalSound11063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11063.moment H = canonicalOutput11063.moment H :=
  canonical_of_padded canonicalInput11063 canonicalOutput11063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11064 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput11064 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound11064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11064.moment H = canonicalOutput11064.moment H :=
  canonical_of_padded canonicalInput11064 canonicalOutput11064 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11065 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput11065 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound11065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11065.moment H = canonicalOutput11065.moment H :=
  canonical_of_padded canonicalInput11065 canonicalOutput11065 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11066 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput11066 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound11066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11066.moment H = canonicalOutput11066.moment H :=
  canonical_of_padded canonicalInput11066 canonicalOutput11066 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11067 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput11067 : ExponentCode := normalNode5355

theorem canonicalSound11067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11067.moment H = canonicalOutput11067.moment H :=
  canonical_of_padded canonicalInput11067 canonicalOutput11067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11068 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput11068 : ExponentCode := normalNode5354

theorem canonicalSound11068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11068.moment H = canonicalOutput11068.moment H :=
  canonical_of_padded canonicalInput11068 canonicalOutput11068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11069 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11069 : ExponentCode := normalNode5305

theorem canonicalSound11069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11069.moment H = canonicalOutput11069.moment H :=
  canonical_of_padded canonicalInput11069 canonicalOutput11069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11070 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11070 : ExponentCode := normalNode5446

theorem canonicalSound11070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11070.moment H = canonicalOutput11070.moment H :=
  canonical_of_padded canonicalInput11070 canonicalOutput11070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11071 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11071 : ExponentCode := normalNode5498

theorem canonicalSound11071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11071.moment H = canonicalOutput11071.moment H :=
  canonical_of_padded canonicalInput11071 canonicalOutput11071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

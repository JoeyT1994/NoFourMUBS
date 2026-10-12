import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7040 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 1, -2, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput7040 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code382

theorem canonicalSound7040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7040.moment H = canonicalOutput7040.moment H :=
  canonical_of_padded canonicalInput7040 canonicalOutput7040 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput7041 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 1, 0, 1, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7041 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code346

theorem canonicalSound7041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7041.moment H = canonicalOutput7041.moment H :=
  canonical_of_padded canonicalInput7041 canonicalOutput7041 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput7042 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput7042 : ExponentCode := normalNode8178

theorem canonicalSound7042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7042.moment H = canonicalOutput7042.moment H :=
  canonical_of_padded canonicalInput7042 canonicalOutput7042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput7043 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, -2, 1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput7043 : ExponentCode := normalNode8106

theorem canonicalSound7043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7043.moment H = canonicalOutput7043.moment H :=
  canonical_of_padded canonicalInput7043 canonicalOutput7043 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7044 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7044 : ExponentCode := normalNode8176

theorem canonicalSound7044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7044.moment H = canonicalOutput7044.moment H :=
  canonical_of_padded canonicalInput7044 canonicalOutput7044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput7045 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, -1, 2, -1, 0], ![1, 1, -2, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput7045 : ExponentCode := normalNode8158

theorem canonicalSound7045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7045.moment H = canonicalOutput7045.moment H :=
  canonical_of_padded canonicalInput7045 canonicalOutput7045 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7046 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput7046 : ExponentCode := normalNode10051

theorem canonicalSound7046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7046.moment H = canonicalOutput7046.moment H :=
  canonical_of_padded canonicalInput7046 canonicalOutput7046 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput7047 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7047 : ExponentCode := normalNode8392

theorem canonicalSound7047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7047.moment H = canonicalOutput7047.moment H :=
  canonical_of_padded canonicalInput7047 canonicalOutput7047 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput7048 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, 1, 0], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7048 : ExponentCode := normalNode8160

theorem canonicalSound7048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7048.moment H = canonicalOutput7048.moment H :=
  canonical_of_padded canonicalInput7048 canonicalOutput7048 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput7049 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput7049 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code825

theorem canonicalSound7049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7049.moment H = canonicalOutput7049.moment H :=
  canonical_of_padded canonicalInput7049 canonicalOutput7049 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7050 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput7050 : ExponentCode := normalNode8378

theorem canonicalSound7050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7050.moment H = canonicalOutput7050.moment H :=
  canonical_of_padded canonicalInput7050 canonicalOutput7050 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput7051 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7051 : ExponentCode := normalNode8763

theorem canonicalSound7051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7051.moment H = canonicalOutput7051.moment H :=
  canonical_of_padded canonicalInput7051 canonicalOutput7051 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput7052 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput7052 : ExponentCode := normalNode8537

theorem canonicalSound7052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7052.moment H = canonicalOutput7052.moment H :=
  canonical_of_padded canonicalInput7052 canonicalOutput7052 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput7053 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7053 : ExponentCode := normalNode8192

theorem canonicalSound7053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7053.moment H = canonicalOutput7053.moment H :=
  canonical_of_padded canonicalInput7053 canonicalOutput7053 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput7054 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput7054 : ExponentCode := normalNode8759

theorem canonicalSound7054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7054.moment H = canonicalOutput7054.moment H :=
  canonical_of_padded canonicalInput7054 canonicalOutput7054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput7055 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -2, 1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput7055 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound7055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7055.moment H = canonicalOutput7055.moment H :=
  canonical_of_padded canonicalInput7055 canonicalOutput7055 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7056 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7056 : ExponentCode := normalNode8195

theorem canonicalSound7056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7056.moment H = canonicalOutput7056.moment H :=
  canonical_of_padded canonicalInput7056 canonicalOutput7056 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput7057 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput7057 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code830

theorem canonicalSound7057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7057.moment H = canonicalOutput7057.moment H :=
  canonical_of_padded canonicalInput7057 canonicalOutput7057 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7058 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput7058 : ExponentCode := normalNode8191

theorem canonicalSound7058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7058.moment H = canonicalOutput7058.moment H :=
  canonical_of_padded canonicalInput7058 canonicalOutput7058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput7059 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, 0, -1, -1], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7059 : ExponentCode := normalNode8206

theorem canonicalSound7059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7059.moment H = canonicalOutput7059.moment H :=
  canonical_of_padded canonicalInput7059 canonicalOutput7059 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput7060 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, 0, 0, -2], ![1, -1, -1, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput7060 : ExponentCode := normalNode8401

theorem canonicalSound7060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7060.moment H = canonicalOutput7060.moment H :=
  canonical_of_padded canonicalInput7060 canonicalOutput7060 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput7061 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, -1, 1, -1, 0], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput7061 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code972

theorem canonicalSound7061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7061.moment H = canonicalOutput7061.moment H :=
  canonical_of_padded canonicalInput7061 canonicalOutput7061 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7062 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, -1, 1, 1, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput7062 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound7062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7062.moment H = canonicalOutput7062.moment H :=
  canonical_of_padded canonicalInput7062 canonicalOutput7062 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7063 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, 0, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput7063 : ExponentCode := normalNode8192

theorem canonicalSound7063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7063.moment H = canonicalOutput7063.moment H :=
  canonical_of_padded canonicalInput7063 canonicalOutput7063 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput7064 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, 0, 0], ![0, -1, -1, 0, 2], ![1, 1, -1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput7064 : ExponentCode := normalNode8617

theorem canonicalSound7064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7064.moment H = canonicalOutput7064.moment H :=
  canonical_of_padded canonicalInput7064 canonicalOutput7064 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput7065 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, 0, 0], ![0, 0, -1, 0, 1], ![1, 0, -1, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput7065 : ExponentCode := normalNode10167

theorem canonicalSound7065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7065.moment H = canonicalOutput7065.moment H :=
  canonical_of_padded canonicalInput7065 canonicalOutput7065 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7066 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, 0, 0], ![0, 0, -1, 0, 1], ![1, 1, -1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput7066 : ExponentCode := normalNode10120

theorem canonicalSound7066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7066.moment H = canonicalOutput7066.moment H :=
  canonical_of_padded canonicalInput7066 canonicalOutput7066 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput7067 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput7067 : ExponentCode := normalNode8113

theorem canonicalSound7067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7067.moment H = canonicalOutput7067.moment H :=
  canonical_of_padded canonicalInput7067 canonicalOutput7067 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput7068 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput7068 : ExponentCode := normalNode8375

theorem canonicalSound7068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7068.moment H = canonicalOutput7068.moment H :=
  canonical_of_padded canonicalInput7068 canonicalOutput7068 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput7069 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7069 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code356

theorem canonicalSound7069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7069.moment H = canonicalOutput7069.moment H :=
  canonical_of_padded canonicalInput7069 canonicalOutput7069 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput7070 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -2, 1], ![1, -1, -2, 1, 1], ![1, 2, 0, 0, -3]]⟩

def canonicalOutput7070 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code976

theorem canonicalSound7070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7070.moment H = canonicalOutput7070.moment H :=
  canonical_of_padded canonicalInput7070 canonicalOutput7070 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7071 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -2, 1], ![1, -1, -1, 2, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput7071 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound7071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7071.moment H = canonicalOutput7071.moment H :=
  canonical_of_padded canonicalInput7071 canonicalOutput7071 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7072 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -2, 1], ![1, -1, 1, 1, -2], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput7072 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code980

theorem canonicalSound7072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7072.moment H = canonicalOutput7072.moment H :=
  canonical_of_padded canonicalInput7072 canonicalOutput7072 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7073 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 2, -1, -1, 1], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput7073 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code776

theorem canonicalSound7073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7073.moment H = canonicalOutput7073.moment H :=
  canonical_of_padded canonicalInput7073 canonicalOutput7073 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7074 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, -1, 0, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7074 : ExponentCode := normalNode8767

theorem canonicalSound7074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7074.moment H = canonicalOutput7074.moment H :=
  canonical_of_padded canonicalInput7074 canonicalOutput7074 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput7075 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, -1, 1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput7075 : ExponentCode := normalNode8200

theorem canonicalSound7075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7075.moment H = canonicalOutput7075.moment H :=
  canonical_of_padded canonicalInput7075 canonicalOutput7075 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput7076 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7076 : ExponentCode := normalNode10780

theorem canonicalSound7076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7076.moment H = canonicalOutput7076.moment H :=
  canonical_of_padded canonicalInput7076 canonicalOutput7076 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput7077 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 0, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput7077 : ExponentCode := normalNode8206

theorem canonicalSound7077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7077.moment H = canonicalOutput7077.moment H :=
  canonical_of_padded canonicalInput7077 canonicalOutput7077 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput7078 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7078 : ExponentCode := normalNode8203

theorem canonicalSound7078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7078.moment H = canonicalOutput7078.moment H :=
  canonical_of_padded canonicalInput7078 canonicalOutput7078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation173⟩ (by decide +kernel) hH

def canonicalInput7079 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, -1, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput7079 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code358

theorem canonicalSound7079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7079.moment H = canonicalOutput7079.moment H :=
  canonical_of_padded canonicalInput7079 canonicalOutput7079 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput7080 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput7080 : ExponentCode := normalNode8165

theorem canonicalSound7080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7080.moment H = canonicalOutput7080.moment H :=
  canonical_of_padded canonicalInput7080 canonicalOutput7080 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput7081 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7081 : ExponentCode := normalNode8195

theorem canonicalSound7081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7081.moment H = canonicalOutput7081.moment H :=
  canonical_of_padded canonicalInput7081 canonicalOutput7081 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput7082 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput7082 : ExponentCode := normalNode3994

theorem canonicalSound7082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7082.moment H = canonicalOutput7082.moment H :=
  canonical_of_padded canonicalInput7082 canonicalOutput7082 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7083 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput7083 : ExponentCode := normalNode8195

theorem canonicalSound7083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7083.moment H = canonicalOutput7083.moment H :=
  canonical_of_padded canonicalInput7083 canonicalOutput7083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput7084 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, 0, 0, -2], ![1, -1, -1, -1, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7084 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code354

theorem canonicalSound7084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7084.moment H = canonicalOutput7084.moment H :=
  canonical_of_padded canonicalInput7084 canonicalOutput7084 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput7085 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, 0, 1, -3], ![1, -1, -1, -1, 2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput7085 : ExponentCode := normalNode10909

theorem canonicalSound7085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7085.moment H = canonicalOutput7085.moment H :=
  canonical_of_padded canonicalInput7085 canonicalOutput7085 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, canonicalPermutation68⟩ (by decide +kernel) hH

def canonicalInput7086 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, -1, -2, 1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput7086 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound7086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7086.moment H = canonicalOutput7086.moment H :=
  canonical_of_padded canonicalInput7086 canonicalOutput7086 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7087 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, -1, 0, -1, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput7087 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound7087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7087.moment H = canonicalOutput7087.moment H :=
  canonical_of_padded canonicalInput7087 canonicalOutput7087 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7088 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, 0, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput7088 : ExponentCode := normalNode8203

theorem canonicalSound7088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7088.moment H = canonicalOutput7088.moment H :=
  canonical_of_padded canonicalInput7088 canonicalOutput7088 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput7089 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput7089 : ExponentCode := normalNode7572

theorem canonicalSound7089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7089.moment H = canonicalOutput7089.moment H :=
  canonical_of_padded canonicalInput7089 canonicalOutput7089 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput7090 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7090 : ExponentCode := normalNode7585

theorem canonicalSound7090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7090.moment H = canonicalOutput7090.moment H :=
  canonical_of_padded canonicalInput7090 canonicalOutput7090 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput7091 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, -2, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput7091 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound7091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7091.moment H = canonicalOutput7091.moment H :=
  canonical_of_padded canonicalInput7091 canonicalOutput7091 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7092 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7092 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code362

theorem canonicalSound7092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7092.moment H = canonicalOutput7092.moment H :=
  canonical_of_padded canonicalInput7092 canonicalOutput7092 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput7093 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 2, -1, -2, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput7093 : ExponentCode := normalNode4310

theorem canonicalSound7093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7093.moment H = canonicalOutput7093.moment H :=
  canonical_of_padded canonicalInput7093 canonicalOutput7093 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7094 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 3, -1, -1], ![1, -1, -2, 1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput7094 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound7094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7094.moment H = canonicalOutput7094.moment H :=
  canonical_of_padded canonicalInput7094 canonicalOutput7094 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7095 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7095 : ExponentCode := normalNode9493

theorem canonicalSound7095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7095.moment H = canonicalOutput7095.moment H :=
  canonical_of_padded canonicalInput7095 canonicalOutput7095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput7096 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput7096 : ExponentCode := normalNode9993

theorem canonicalSound7096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7096.moment H = canonicalOutput7096.moment H :=
  canonical_of_padded canonicalInput7096 canonicalOutput7096 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput7097 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, -1, 2, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput7097 : ExponentCode := normalNode8195

theorem canonicalSound7097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7097.moment H = canonicalOutput7097.moment H :=
  canonical_of_padded canonicalInput7097 canonicalOutput7097 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput7098 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7098 : ExponentCode := normalNode7583

theorem canonicalSound7098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7098.moment H = canonicalOutput7098.moment H :=
  canonical_of_padded canonicalInput7098 canonicalOutput7098 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7099 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, -1, 2, -1, 0], ![1, 0, -2, 1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput7099 : ExponentCode := normalNode8120

theorem canonicalSound7099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7099.moment H = canonicalOutput7099.moment H :=
  canonical_of_padded canonicalInput7099 canonicalOutput7099 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7100 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, -1, 2, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7100 : ExponentCode := normalNode8112

theorem canonicalSound7100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7100.moment H = canonicalOutput7100.moment H :=
  canonical_of_padded canonicalInput7100 canonicalOutput7100 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, canonicalPermutation78⟩ (by decide +kernel) hH

def canonicalInput7101 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7101 : ExponentCode := normalNode8750

theorem canonicalSound7101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7101.moment H = canonicalOutput7101.moment H :=
  canonical_of_padded canonicalInput7101 canonicalOutput7101 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput7102 : ExponentCode := ⟨6, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput7102 : ExponentCode := normalNode3668

theorem canonicalSound7102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7102.moment H = canonicalOutput7102.moment H :=
  canonical_of_padded canonicalInput7102 canonicalOutput7102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7103 : ExponentCode := ⟨6, 5, ![![-2, 0, 0, 1, 1], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput7103 : ExponentCode := normalNode3667

theorem canonicalSound7103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7103.moment H = canonicalOutput7103.moment H :=
  canonical_of_padded canonicalInput7103 canonicalOutput7103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

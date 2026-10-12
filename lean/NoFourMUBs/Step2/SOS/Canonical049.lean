import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3136 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput3136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code673

theorem canonicalSound3136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3136.moment H = canonicalOutput3136.moment H :=
  canonical_of_padded canonicalInput3136 canonicalOutput3136 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3137 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -2, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3137 : ExponentCode := normalNode8280

theorem canonicalSound3137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3137.moment H = canonicalOutput3137.moment H :=
  canonical_of_padded canonicalInput3137 canonicalOutput3137 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3138 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3138 : ExponentCode := normalNode8248

theorem canonicalSound3138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3138.moment H = canonicalOutput3138.moment H :=
  canonical_of_padded canonicalInput3138 canonicalOutput3138 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3139 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3139 : ExponentCode := normalNode8269

theorem canonicalSound3139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3139.moment H = canonicalOutput3139.moment H :=
  canonical_of_padded canonicalInput3139 canonicalOutput3139 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3140 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3140 : ExponentCode := normalNode8252

theorem canonicalSound3140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3140.moment H = canonicalOutput3140.moment H :=
  canonical_of_padded canonicalInput3140 canonicalOutput3140 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3141 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3141 : ExponentCode := normalNode7244

theorem canonicalSound3141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3141.moment H = canonicalOutput3141.moment H :=
  canonical_of_padded canonicalInput3141 canonicalOutput3141 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput3142 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3142 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound3142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3142.moment H = canonicalOutput3142.moment H :=
  canonical_of_padded canonicalInput3142 canonicalOutput3142 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3143 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3143 : ExponentCode := normalNode8162

theorem canonicalSound3143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3143.moment H = canonicalOutput3143.moment H :=
  canonical_of_padded canonicalInput3143 canonicalOutput3143 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3144 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3144 : ExponentCode := normalNode8253

theorem canonicalSound3144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3144.moment H = canonicalOutput3144.moment H :=
  canonical_of_padded canonicalInput3144 canonicalOutput3144 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3145 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 0, -2, 1, 0], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput3145 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound3145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3145.moment H = canonicalOutput3145.moment H :=
  canonical_of_padded canonicalInput3145 canonicalOutput3145 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3146 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 0, -1, -2, 2], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput3146 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code983

theorem canonicalSound3146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3146.moment H = canonicalOutput3146.moment H :=
  canonical_of_padded canonicalInput3146 canonicalOutput3146 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3147 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 0, -1, 1, -1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput3147 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound3147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3147.moment H = canonicalOutput3147.moment H :=
  canonical_of_padded canonicalInput3147 canonicalOutput3147 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3148 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 0, 0, 1, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput3148 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code667

theorem canonicalSound3148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3148.moment H = canonicalOutput3148.moment H :=
  canonical_of_padded canonicalInput3148 canonicalOutput3148 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3149 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 1, -3, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3149 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code424

theorem canonicalSound3149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3149.moment H = canonicalOutput3149.moment H :=
  canonical_of_padded canonicalInput3149 canonicalOutput3149 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3150 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3150 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound3150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3150.moment H = canonicalOutput3150.moment H :=
  canonical_of_padded canonicalInput3150 canonicalOutput3150 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3151 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 1, 0, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3151 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound3151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3151.moment H = canonicalOutput3151.moment H :=
  canonical_of_padded canonicalInput3151 canonicalOutput3151 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3152 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![1, 1, 0, 1, -3], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput3152 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code873

theorem canonicalSound3152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3152.moment H = canonicalOutput3152.moment H :=
  canonical_of_padded canonicalInput3152 canonicalOutput3152 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3153 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3153 : ExponentCode := normalNode8584

theorem canonicalSound3153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3153.moment H = canonicalOutput3153.moment H :=
  canonical_of_padded canonicalInput3153 canonicalOutput3153 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3154 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3154 : ExponentCode := normalNode8602

theorem canonicalSound3154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3154.moment H = canonicalOutput3154.moment H :=
  canonical_of_padded canonicalInput3154 canonicalOutput3154 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3155 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3155 : ExponentCode := normalNode8600

theorem canonicalSound3155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3155.moment H = canonicalOutput3155.moment H :=
  canonical_of_padded canonicalInput3155 canonicalOutput3155 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3156 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3156 : ExponentCode := normalNode8093

theorem canonicalSound3156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3156.moment H = canonicalOutput3156.moment H :=
  canonical_of_padded canonicalInput3156 canonicalOutput3156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3157 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3157 : ExponentCode := normalNode8583

theorem canonicalSound3157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3157.moment H = canonicalOutput3157.moment H :=
  canonical_of_padded canonicalInput3157 canonicalOutput3157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput3158 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3158 : ExponentCode := normalNode8473

theorem canonicalSound3158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3158.moment H = canonicalOutput3158.moment H :=
  canonical_of_padded canonicalInput3158 canonicalOutput3158 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3159 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3159 : ExponentCode := normalNode8260

theorem canonicalSound3159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3159.moment H = canonicalOutput3159.moment H :=
  canonical_of_padded canonicalInput3159 canonicalOutput3159 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3160 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3160 : ExponentCode := normalNode8234

theorem canonicalSound3160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3160.moment H = canonicalOutput3160.moment H :=
  canonical_of_padded canonicalInput3160 canonicalOutput3160 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3161 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -1, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3161 : ExponentCode := normalNode8235

theorem canonicalSound3161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3161.moment H = canonicalOutput3161.moment H :=
  canonical_of_padded canonicalInput3161 canonicalOutput3161 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3162 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3162 : ExponentCode := normalNode7242

theorem canonicalSound3162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3162.moment H = canonicalOutput3162.moment H :=
  canonical_of_padded canonicalInput3162 canonicalOutput3162 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3163 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, -1, -1, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3163 : ExponentCode := normalNode8207

theorem canonicalSound3163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3163.moment H = canonicalOutput3163.moment H :=
  canonical_of_padded canonicalInput3163 canonicalOutput3163 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3164 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput3164 : ExponentCode := normalNode8207

theorem canonicalSound3164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3164.moment H = canonicalOutput3164.moment H :=
  canonical_of_padded canonicalInput3164 canonicalOutput3164 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3165 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3165 : ExponentCode := normalNode6553

theorem canonicalSound3165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3165.moment H = canonicalOutput3165.moment H :=
  canonical_of_padded canonicalInput3165 canonicalOutput3165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3166 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, -1, 2], ![0, 2, 0, -1, -1], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3166 : ExponentCode := normalNode7491

theorem canonicalSound3166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3166.moment H = canonicalOutput3166.moment H :=
  canonical_of_padded canonicalInput3166 canonicalOutput3166 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput3167 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 0, 0, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3167 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound3167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3167.moment H = canonicalOutput3167.moment H :=
  canonical_of_padded canonicalInput3167 canonicalOutput3167 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput3168 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 0, 0, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput3168 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2497⟩

theorem canonicalSound3168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3168.moment H = canonicalOutput3168.moment H :=
  canonical_of_padded canonicalInput3168 canonicalOutput3168 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3169 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 0, 2, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3169 : ExponentCode := normalNode8258

theorem canonicalSound3169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3169.moment H = canonicalOutput3169.moment H :=
  canonical_of_padded canonicalInput3169 canonicalOutput3169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3170 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput3170 : ExponentCode := normalNode8592

theorem canonicalSound3170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3170.moment H = canonicalOutput3170.moment H :=
  canonical_of_padded canonicalInput3170 canonicalOutput3170 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3171 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput3171 : ExponentCode := normalNode8612

theorem canonicalSound3171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3171.moment H = canonicalOutput3171.moment H :=
  canonical_of_padded canonicalInput3171 canonicalOutput3171 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3172 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 2, 1, -4]]⟩

def canonicalOutput3172 : ExponentCode := normalNode8240

theorem canonicalSound3172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3172.moment H = canonicalOutput3172.moment H :=
  canonical_of_padded canonicalInput3172 canonicalOutput3172 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3173 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3173 : ExponentCode := normalNode10471

theorem canonicalSound3173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3173.moment H = canonicalOutput3173.moment H :=
  canonical_of_padded canonicalInput3173 canonicalOutput3173 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3174 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3174 : ExponentCode := normalNode10166

theorem canonicalSound3174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3174.moment H = canonicalOutput3174.moment H :=
  canonical_of_padded canonicalInput3174 canonicalOutput3174 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3175 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3175 : ExponentCode := normalNode9766

theorem canonicalSound3175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3175.moment H = canonicalOutput3175.moment H :=
  canonical_of_padded canonicalInput3175 canonicalOutput3175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3176 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3176 : ExponentCode := normalNode9765

theorem canonicalSound3176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3176.moment H = canonicalOutput3176.moment H :=
  canonical_of_padded canonicalInput3176 canonicalOutput3176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3177 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 2, 0, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3177 : ExponentCode := normalNode10369

theorem canonicalSound3177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3177.moment H = canonicalOutput3177.moment H :=
  canonical_of_padded canonicalInput3177 canonicalOutput3177 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput3178 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3178 : ExponentCode := normalNode7512

theorem canonicalSound3178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3178.moment H = canonicalOutput3178.moment H :=
  canonical_of_padded canonicalInput3178 canonicalOutput3178 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput3179 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3179 : ExponentCode := normalNode10151

theorem canonicalSound3179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3179.moment H = canonicalOutput3179.moment H :=
  canonical_of_padded canonicalInput3179 canonicalOutput3179 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput3180 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput3180 : ExponentCode := normalNode11077

theorem canonicalSound3180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3180.moment H = canonicalOutput3180.moment H :=
  canonical_of_padded canonicalInput3180 canonicalOutput3180 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3181 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3181 : ExponentCode := normalNode10164

theorem canonicalSound3181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3181.moment H = canonicalOutput3181.moment H :=
  canonical_of_padded canonicalInput3181 canonicalOutput3181 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3182 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3182 : ExponentCode := normalNode9229

theorem canonicalSound3182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3182.moment H = canonicalOutput3182.moment H :=
  canonical_of_padded canonicalInput3182 canonicalOutput3182 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3183 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3183 : ExponentCode := normalNode8356

theorem canonicalSound3183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3183.moment H = canonicalOutput3183.moment H :=
  canonical_of_padded canonicalInput3183 canonicalOutput3183 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3184 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3184 : ExponentCode := normalNode10084

theorem canonicalSound3184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3184.moment H = canonicalOutput3184.moment H :=
  canonical_of_padded canonicalInput3184 canonicalOutput3184 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3185 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3185 : ExponentCode := normalNode8348

theorem canonicalSound3185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3185.moment H = canonicalOutput3185.moment H :=
  canonical_of_padded canonicalInput3185 canonicalOutput3185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3186 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, -1, 1, 0], ![0, 2, 0, -3, 1], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3186 : ExponentCode := normalNode9991

theorem canonicalSound3186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3186.moment H = canonicalOutput3186.moment H :=
  canonical_of_padded canonicalInput3186 canonicalOutput3186 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput3187 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, -1, 1], ![0, 2, -1, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3187 : ExponentCode := normalNode8710

theorem canonicalSound3187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3187.moment H = canonicalOutput3187.moment H :=
  canonical_of_padded canonicalInput3187 canonicalOutput3187 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput3188 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3188 : ExponentCode := normalNode8136

theorem canonicalSound3188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3188.moment H = canonicalOutput3188.moment H :=
  canonical_of_padded canonicalInput3188 canonicalOutput3188 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3189 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3189 : ExponentCode := normalNode8430

theorem canonicalSound3189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3189.moment H = canonicalOutput3189.moment H :=
  canonical_of_padded canonicalInput3189 canonicalOutput3189 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3190 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput3190 : ExponentCode := normalNode10135

theorem canonicalSound3190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3190.moment H = canonicalOutput3190.moment H :=
  canonical_of_padded canonicalInput3190 canonicalOutput3190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3191 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3191 : ExponentCode := normalNode10053

theorem canonicalSound3191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3191.moment H = canonicalOutput3191.moment H :=
  canonical_of_padded canonicalInput3191 canonicalOutput3191 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3192 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3192 : ExponentCode := normalNode8364

theorem canonicalSound3192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3192.moment H = canonicalOutput3192.moment H :=
  canonical_of_padded canonicalInput3192 canonicalOutput3192 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3193 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput3193 : ExponentCode := normalNode8367

theorem canonicalSound3193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3193.moment H = canonicalOutput3193.moment H :=
  canonical_of_padded canonicalInput3193 canonicalOutput3193 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3194 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3194 : ExponentCode := normalNode9770

theorem canonicalSound3194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3194.moment H = canonicalOutput3194.moment H :=
  canonical_of_padded canonicalInput3194 canonicalOutput3194 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3195 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3195 : ExponentCode := normalNode8370

theorem canonicalSound3195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3195.moment H = canonicalOutput3195.moment H :=
  canonical_of_padded canonicalInput3195 canonicalOutput3195 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3196 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3196 : ExponentCode := normalNode8204

theorem canonicalSound3196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3196.moment H = canonicalOutput3196.moment H :=
  canonical_of_padded canonicalInput3196 canonicalOutput3196 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3197 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3197 : ExponentCode := normalNode6577

theorem canonicalSound3197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3197.moment H = canonicalOutput3197.moment H :=
  canonical_of_padded canonicalInput3197 canonicalOutput3197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3198 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3198 : ExponentCode := normalNode8352

theorem canonicalSound3198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3198.moment H = canonicalOutput3198.moment H :=
  canonical_of_padded canonicalInput3198 canonicalOutput3198 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3199 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3199 : ExponentCode := normalNode9178

theorem canonicalSound3199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3199.moment H = canonicalOutput3199.moment H :=
  canonical_of_padded canonicalInput3199 canonicalOutput3199 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation13⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

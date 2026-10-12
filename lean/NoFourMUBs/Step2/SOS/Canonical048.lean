import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3072 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![-1, 3, -1, -1, 0], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput3072 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code939

theorem canonicalSound3072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3072.moment H = canonicalOutput3072.moment H :=
  canonical_of_padded canonicalInput3072 canonicalOutput3072 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3073 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput3073 : ExponentCode := normalNode8605

theorem canonicalSound3073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3073.moment H = canonicalOutput3073.moment H :=
  canonical_of_padded canonicalInput3073 canonicalOutput3073 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3074 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3074 : ExponentCode := normalNode8088

theorem canonicalSound3074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3074.moment H = canonicalOutput3074.moment H :=
  canonical_of_padded canonicalInput3074 canonicalOutput3074 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3075 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -2, 1, 0], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput3075 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1277

theorem canonicalSound3075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3075.moment H = canonicalOutput3075.moment H :=
  canonical_of_padded canonicalInput3075 canonicalOutput3075 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3076 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput3076 : ExponentCode := normalNode8581

theorem canonicalSound3076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3076.moment H = canonicalOutput3076.moment H :=
  canonical_of_padded canonicalInput3076 canonicalOutput3076 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3077 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3077 : ExponentCode := normalNode8543

theorem canonicalSound3077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3077.moment H = canonicalOutput3077.moment H :=
  canonical_of_padded canonicalInput3077 canonicalOutput3077 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3078 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3078 : ExponentCode := normalNode10159

theorem canonicalSound3078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3078.moment H = canonicalOutput3078.moment H :=
  canonical_of_padded canonicalInput3078 canonicalOutput3078 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3079 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![1, 1, -1, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3079 : ExponentCode := normalNode8475

theorem canonicalSound3079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3079.moment H = canonicalOutput3079.moment H :=
  canonical_of_padded canonicalInput3079 canonicalOutput3079 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3080 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3080 : ExponentCode := normalNode8543

theorem canonicalSound3080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3080.moment H = canonicalOutput3080.moment H :=
  canonical_of_padded canonicalInput3080 canonicalOutput3080 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3081 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3081 : ExponentCode := normalNode8606

theorem canonicalSound3081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3081.moment H = canonicalOutput3081.moment H :=
  canonical_of_padded canonicalInput3081 canonicalOutput3081 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3082 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput3082 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound3082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3082.moment H = canonicalOutput3082.moment H :=
  canonical_of_padded canonicalInput3082 canonicalOutput3082 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3083 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3083 : ExponentCode := normalNode8601

theorem canonicalSound3083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3083.moment H = canonicalOutput3083.moment H :=
  canonical_of_padded canonicalInput3083 canonicalOutput3083 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3084 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3084 : ExponentCode := normalNode10160

theorem canonicalSound3084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3084.moment H = canonicalOutput3084.moment H :=
  canonical_of_padded canonicalInput3084 canonicalOutput3084 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3085 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3085 : ExponentCode := normalNode8483

theorem canonicalSound3085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3085.moment H = canonicalOutput3085.moment H :=
  canonical_of_padded canonicalInput3085 canonicalOutput3085 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3086 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3086 : ExponentCode := normalNode8477

theorem canonicalSound3086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3086.moment H = canonicalOutput3086.moment H :=
  canonical_of_padded canonicalInput3086 canonicalOutput3086 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3087 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, 1, -2, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3087 : ExponentCode := normalNode8477

theorem canonicalSound3087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3087.moment H = canonicalOutput3087.moment H :=
  canonical_of_padded canonicalInput3087 canonicalOutput3087 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3088 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3088 : ExponentCode := normalNode8086

theorem canonicalSound3088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3088.moment H = canonicalOutput3088.moment H :=
  canonical_of_padded canonicalInput3088 canonicalOutput3088 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3089 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -2, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3089 : ExponentCode := normalNode8276

theorem canonicalSound3089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3089.moment H = canonicalOutput3089.moment H :=
  canonical_of_padded canonicalInput3089 canonicalOutput3089 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput3090 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput3090 : ExponentCode := normalNode8095

theorem canonicalSound3090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3090.moment H = canonicalOutput3090.moment H :=
  canonical_of_padded canonicalInput3090 canonicalOutput3090 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3091 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3091 : ExponentCode := normalNode8098

theorem canonicalSound3091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3091.moment H = canonicalOutput3091.moment H :=
  canonical_of_padded canonicalInput3091 canonicalOutput3091 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3092 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3092 : ExponentCode := normalNode8098

theorem canonicalSound3092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3092.moment H = canonicalOutput3092.moment H :=
  canonical_of_padded canonicalInput3092 canonicalOutput3092 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3093 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput3093 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code906

theorem canonicalSound3093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3093.moment H = canonicalOutput3093.moment H :=
  canonical_of_padded canonicalInput3093 canonicalOutput3093 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3094 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 1, 1, -3], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput3094 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code464

theorem canonicalSound3094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3094.moment H = canonicalOutput3094.moment H :=
  canonical_of_padded canonicalInput3094 canonicalOutput3094 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3095 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3095 : ExponentCode := normalNode8261

theorem canonicalSound3095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3095.moment H = canonicalOutput3095.moment H :=
  canonical_of_padded canonicalInput3095 canonicalOutput3095 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3096 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3096 : ExponentCode := normalNode8188

theorem canonicalSound3096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3096.moment H = canonicalOutput3096.moment H :=
  canonical_of_padded canonicalInput3096 canonicalOutput3096 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3097 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput3097 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound3097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3097.moment H = canonicalOutput3097.moment H :=
  canonical_of_padded canonicalInput3097 canonicalOutput3097 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3098 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3098 : ExponentCode := normalNode8426

theorem canonicalSound3098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3098.moment H = canonicalOutput3098.moment H :=
  canonical_of_padded canonicalInput3098 canonicalOutput3098 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3099 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3099 : ExponentCode := normalNode8087

theorem canonicalSound3099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3099.moment H = canonicalOutput3099.moment H :=
  canonical_of_padded canonicalInput3099 canonicalOutput3099 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3100 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3100 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound3100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3100.moment H = canonicalOutput3100.moment H :=
  canonical_of_padded canonicalInput3100 canonicalOutput3100 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3101 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, 1, -1, -2], ![2, 0, -3, 1, 0]]⟩

def canonicalOutput3101 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code459

theorem canonicalSound3101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3101.moment H = canonicalOutput3101.moment H :=
  canonical_of_padded canonicalInput3101 canonicalOutput3101 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3102 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![1, 0, -1, 1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput3102 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound3102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3102.moment H = canonicalOutput3102.moment H :=
  canonical_of_padded canonicalInput3102 canonicalOutput3102 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3103 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![1, 0, 0, 1, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput3103 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code887

theorem canonicalSound3103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3103.moment H = canonicalOutput3103.moment H :=
  canonical_of_padded canonicalInput3103 canonicalOutput3103 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3104 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![1, 0, 1, 1, -3], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput3104 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code429

theorem canonicalSound3104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3104.moment H = canonicalOutput3104.moment H :=
  canonical_of_padded canonicalInput3104 canonicalOutput3104 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3105 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![1, 1, 0, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3105 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound3105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3105.moment H = canonicalOutput3105.moment H :=
  canonical_of_padded canonicalInput3105 canonicalOutput3105 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3106 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![-1, 2, -2, 1, 0], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput3106 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code834

theorem canonicalSound3106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3106.moment H = canonicalOutput3106.moment H :=
  canonical_of_padded canonicalInput3106 canonicalOutput3106 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3107 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![-1, 2, -1, 1, -1], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput3107 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code980

theorem canonicalSound3107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3107.moment H = canonicalOutput3107.moment H :=
  canonical_of_padded canonicalInput3107 canonicalOutput3107 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3108 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3108 : ExponentCode := normalNode8266

theorem canonicalSound3108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3108.moment H = canonicalOutput3108.moment H :=
  canonical_of_padded canonicalInput3108 canonicalOutput3108 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3109 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3109 : ExponentCode := normalNode8087

theorem canonicalSound3109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3109.moment H = canonicalOutput3109.moment H :=
  canonical_of_padded canonicalInput3109 canonicalOutput3109 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3110 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -2, 1, 0], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput3110 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1273

theorem canonicalSound3110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3110.moment H = canonicalOutput3110.moment H :=
  canonical_of_padded canonicalInput3110 canonicalOutput3110 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3111 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3111 : ExponentCode := normalNode8588

theorem canonicalSound3111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3111.moment H = canonicalOutput3111.moment H :=
  canonical_of_padded canonicalInput3111 canonicalOutput3111 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3112 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3112 : ExponentCode := normalNode8594

theorem canonicalSound3112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3112.moment H = canonicalOutput3112.moment H :=
  canonical_of_padded canonicalInput3112 canonicalOutput3112 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3113 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3113 : ExponentCode := normalNode8590

theorem canonicalSound3113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3113.moment H = canonicalOutput3113.moment H :=
  canonical_of_padded canonicalInput3113 canonicalOutput3113 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3114 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3114 : ExponentCode := normalNode9205

theorem canonicalSound3114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3114.moment H = canonicalOutput3114.moment H :=
  canonical_of_padded canonicalInput3114 canonicalOutput3114 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3115 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3115 : ExponentCode := normalNode10792

theorem canonicalSound3115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3115.moment H = canonicalOutput3115.moment H :=
  canonical_of_padded canonicalInput3115 canonicalOutput3115 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3116 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![1, 1, -1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3116 : ExponentCode := normalNode10790

theorem canonicalSound3116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3116.moment H = canonicalOutput3116.moment H :=
  canonical_of_padded canonicalInput3116 canonicalOutput3116 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3117 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3117 : ExponentCode := normalNode8557

theorem canonicalSound3117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3117.moment H = canonicalOutput3117.moment H :=
  canonical_of_padded canonicalInput3117 canonicalOutput3117 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3118 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3118 : ExponentCode := normalNode7577

theorem canonicalSound3118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3118.moment H = canonicalOutput3118.moment H :=
  canonical_of_padded canonicalInput3118 canonicalOutput3118 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3119 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 1, -1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3119 : ExponentCode := normalNode7570

theorem canonicalSound3119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3119.moment H = canonicalOutput3119.moment H :=
  canonical_of_padded canonicalInput3119 canonicalOutput3119 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3120 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput3120 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound3120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3120.moment H = canonicalOutput3120.moment H :=
  canonical_of_padded canonicalInput3120 canonicalOutput3120 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3121 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3121 : ExponentCode := normalNode9172

theorem canonicalSound3121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3121.moment H = canonicalOutput3121.moment H :=
  canonical_of_padded canonicalInput3121 canonicalOutput3121 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3122 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3122 : ExponentCode := normalNode9165

theorem canonicalSound3122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3122.moment H = canonicalOutput3122.moment H :=
  canonical_of_padded canonicalInput3122 canonicalOutput3122 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3123 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3123 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code352

theorem canonicalSound3123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3123.moment H = canonicalOutput3123.moment H :=
  canonical_of_padded canonicalInput3123 canonicalOutput3123 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3124 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3124 : ExponentCode := normalNode10022

theorem canonicalSound3124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3124.moment H = canonicalOutput3124.moment H :=
  canonical_of_padded canonicalInput3124 canonicalOutput3124 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3125 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput3125 : ExponentCode := normalNode8462

theorem canonicalSound3125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3125.moment H = canonicalOutput3125.moment H :=
  canonical_of_padded canonicalInput3125 canonicalOutput3125 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3126 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, -2, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3126 : ExponentCode := normalNode8668

theorem canonicalSound3126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3126.moment H = canonicalOutput3126.moment H :=
  canonical_of_padded canonicalInput3126 canonicalOutput3126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3127 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, -1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3127 : ExponentCode := normalNode8462

theorem canonicalSound3127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3127.moment H = canonicalOutput3127.moment H :=
  canonical_of_padded canonicalInput3127 canonicalOutput3127 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3128 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, -1, 1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3128 : ExponentCode := normalNode7577

theorem canonicalSound3128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3128.moment H = canonicalOutput3128.moment H :=
  canonical_of_padded canonicalInput3128 canonicalOutput3128 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3129 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput3129 : ExponentCode := normalNode7611

theorem canonicalSound3129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3129.moment H = canonicalOutput3129.moment H :=
  canonical_of_padded canonicalInput3129 canonicalOutput3129 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3130 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, -1, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3130 : ExponentCode := normalNode6596

theorem canonicalSound3130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3130.moment H = canonicalOutput3130.moment H :=
  canonical_of_padded canonicalInput3130 canonicalOutput3130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3131 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3131 : ExponentCode := normalNode8253

theorem canonicalSound3131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3131.moment H = canonicalOutput3131.moment H :=
  canonical_of_padded canonicalInput3131 canonicalOutput3131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3132 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3132 : ExponentCode := normalNode7252

theorem canonicalSound3132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3132.moment H = canonicalOutput3132.moment H :=
  canonical_of_padded canonicalInput3132 canonicalOutput3132 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3133 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3133 : ExponentCode := normalNode9174

theorem canonicalSound3133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3133.moment H = canonicalOutput3133.moment H :=
  canonical_of_padded canonicalInput3133 canonicalOutput3133 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3134 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 1, -2, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3134 : ExponentCode := normalNode10026

theorem canonicalSound3134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3134.moment H = canonicalOutput3134.moment H :=
  canonical_of_padded canonicalInput3134 canonicalOutput3134 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput3135 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 1, -1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3135 : ExponentCode := normalNode7579

theorem canonicalSound3135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3135.moment H = canonicalOutput3135.moment H :=
  canonical_of_padded canonicalInput3135 canonicalOutput3135 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

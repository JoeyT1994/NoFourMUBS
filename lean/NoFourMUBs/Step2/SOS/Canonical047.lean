import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3008 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 1, 1, 0, -1], ![0, 1, -2, 1, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput3008 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1151

theorem canonicalSound3008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3008.moment H = canonicalOutput3008.moment H :=
  canonical_of_padded canonicalInput3008 canonicalOutput3008 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3009 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 1, 1, 0, -1], ![1, 1, -2, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput3009 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1315

theorem canonicalSound3009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3009.moment H = canonicalOutput3009.moment H :=
  canonical_of_padded canonicalInput3009 canonicalOutput3009 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3010 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 1, 2], ![-1, 2, -2, 1, 0], ![3, -1, 2, -2, -2]]⟩

def canonicalOutput3010 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node534⟩

theorem canonicalSound3010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3010.moment H = canonicalOutput3010.moment H :=
  canonical_of_padded canonicalInput3010 canonicalOutput3010 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3011 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput3011 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound3011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3011.moment H = canonicalOutput3011.moment H :=
  canonical_of_padded canonicalInput3011 canonicalOutput3011 (by decide) (by decide)
    ⟨true, true, canonicalPermutation79, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3012 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 2, 0, 0, -1], ![1, -1, 2, -2, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3012 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound3012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3012.moment H = canonicalOutput3012.moment H :=
  canonical_of_padded canonicalInput3012 canonicalOutput3012 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3013 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 2, 0, 0, -1], ![1, 0, -2, 1, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput3013 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound3013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3013.moment H = canonicalOutput3013.moment H :=
  canonical_of_padded canonicalInput3013 canonicalOutput3013 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3014 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 2, 0, 0, -1], ![1, 0, 2, -2, -1], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput3014 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound3014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3014.moment H = canonicalOutput3014.moment H :=
  canonical_of_padded canonicalInput3014 canonicalOutput3014 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3015 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -2, 2, 0, 0], ![0, 2, 0, -2, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput3015 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code898

theorem canonicalSound3015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3015.moment H = canonicalOutput3015.moment H :=
  canonical_of_padded canonicalInput3015 canonicalOutput3015 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3016 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -2, 2, 0, 0], ![0, 3, -1, -2, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput3016 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code387

theorem canonicalSound3016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3016.moment H = canonicalOutput3016.moment H :=
  canonical_of_padded canonicalInput3016 canonicalOutput3016 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3017 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, -1, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3017 : ExponentCode := normalNode7507

theorem canonicalSound3017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3017.moment H = canonicalOutput3017.moment H :=
  canonical_of_padded canonicalInput3017 canonicalOutput3017 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput3018 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3018 : ExponentCode := normalNode10383

theorem canonicalSound3018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3018.moment H = canonicalOutput3018.moment H :=
  canonical_of_padded canonicalInput3018 canonicalOutput3018 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3019 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput3019 : ExponentCode := normalNode9983

theorem canonicalSound3019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3019.moment H = canonicalOutput3019.moment H :=
  canonical_of_padded canonicalInput3019 canonicalOutput3019 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3020 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3020 : ExponentCode := normalNode9230

theorem canonicalSound3020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3020.moment H = canonicalOutput3020.moment H :=
  canonical_of_padded canonicalInput3020 canonicalOutput3020 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3021 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 0, 0], ![0, 0, -1, 0, 1], ![1, 1, -1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3021 : ExponentCode := normalNode9783

theorem canonicalSound3021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3021.moment H = canonicalOutput3021.moment H :=
  canonical_of_padded canonicalInput3021 canonicalOutput3021 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput3022 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3022 : ExponentCode := normalNode9488

theorem canonicalSound3022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3022.moment H = canonicalOutput3022.moment H :=
  canonical_of_padded canonicalInput3022 canonicalOutput3022 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3023 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3023 : ExponentCode := normalNode9491

theorem canonicalSound3023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3023.moment H = canonicalOutput3023.moment H :=
  canonical_of_padded canonicalInput3023 canonicalOutput3023 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3024 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![-1, 2, 1, -2, 0], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput3024 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1369

theorem canonicalSound3024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3024.moment H = canonicalOutput3024.moment H :=
  canonical_of_padded canonicalInput3024 canonicalOutput3024 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3025 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3025 : ExponentCode := normalNode8677

theorem canonicalSound3025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3025.moment H = canonicalOutput3025.moment H :=
  canonical_of_padded canonicalInput3025 canonicalOutput3025 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3026 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput3026 : ExponentCode := normalNode8214

theorem canonicalSound3026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3026.moment H = canonicalOutput3026.moment H :=
  canonical_of_padded canonicalInput3026 canonicalOutput3026 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3027 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3027 : ExponentCode := normalNode8174

theorem canonicalSound3027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3027.moment H = canonicalOutput3027.moment H :=
  canonical_of_padded canonicalInput3027 canonicalOutput3027 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3028 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3028 : ExponentCode := normalNode7584

theorem canonicalSound3028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3028.moment H = canonicalOutput3028.moment H :=
  canonical_of_padded canonicalInput3028 canonicalOutput3028 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3029 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, -1, -2, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput3029 : ExponentCode := normalNode7241

theorem canonicalSound3029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3029.moment H = canonicalOutput3029.moment H :=
  canonical_of_padded canonicalInput3029 canonicalOutput3029 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput3030 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3030 : ExponentCode := normalNode8213

theorem canonicalSound3030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3030.moment H = canonicalOutput3030.moment H :=
  canonical_of_padded canonicalInput3030 canonicalOutput3030 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3031 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3031 : ExponentCode := normalNode8198

theorem canonicalSound3031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3031.moment H = canonicalOutput3031.moment H :=
  canonical_of_padded canonicalInput3031 canonicalOutput3031 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3032 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3032 : ExponentCode := normalNode9195

theorem canonicalSound3032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3032.moment H = canonicalOutput3032.moment H :=
  canonical_of_padded canonicalInput3032 canonicalOutput3032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3033 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3033 : ExponentCode := normalNode9166

theorem canonicalSound3033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3033.moment H = canonicalOutput3033.moment H :=
  canonical_of_padded canonicalInput3033 canonicalOutput3033 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3034 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 1, 0, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3034 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code347

theorem canonicalSound3034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3034.moment H = canonicalOutput3034.moment H :=
  canonical_of_padded canonicalInput3034 canonicalOutput3034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3035 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3035 : ExponentCode := normalNode8593

theorem canonicalSound3035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3035.moment H = canonicalOutput3035.moment H :=
  canonical_of_padded canonicalInput3035 canonicalOutput3035 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3036 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3036 : ExponentCode := normalNode8596

theorem canonicalSound3036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3036.moment H = canonicalOutput3036.moment H :=
  canonical_of_padded canonicalInput3036 canonicalOutput3036 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3037 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3037 : ExponentCode := normalNode10027

theorem canonicalSound3037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3037.moment H = canonicalOutput3037.moment H :=
  canonical_of_padded canonicalInput3037 canonicalOutput3037 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3038 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![1, 1, -1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3038 : ExponentCode := normalNode8472

theorem canonicalSound3038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3038.moment H = canonicalOutput3038.moment H :=
  canonical_of_padded canonicalInput3038 canonicalOutput3038 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3039 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3039 : ExponentCode := normalNode7564

theorem canonicalSound3039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3039.moment H = canonicalOutput3039.moment H :=
  canonical_of_padded canonicalInput3039 canonicalOutput3039 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3040 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3040 : ExponentCode := normalNode7561

theorem canonicalSound3040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3040.moment H = canonicalOutput3040.moment H :=
  canonical_of_padded canonicalInput3040 canonicalOutput3040 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3041 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3041 : ExponentCode := normalNode8586

theorem canonicalSound3041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3041.moment H = canonicalOutput3041.moment H :=
  canonical_of_padded canonicalInput3041 canonicalOutput3041 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3042 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3042 : ExponentCode := normalNode8513

theorem canonicalSound3042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3042.moment H = canonicalOutput3042.moment H :=
  canonical_of_padded canonicalInput3042 canonicalOutput3042 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3043 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3043 : ExponentCode := normalNode7623

theorem canonicalSound3043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3043.moment H = canonicalOutput3043.moment H :=
  canonical_of_padded canonicalInput3043 canonicalOutput3043 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3044 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3044 : ExponentCode := normalNode6594

theorem canonicalSound3044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3044.moment H = canonicalOutput3044.moment H :=
  canonical_of_padded canonicalInput3044 canonicalOutput3044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3045 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3045 : ExponentCode := normalNode10028

theorem canonicalSound3045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3045.moment H = canonicalOutput3045.moment H :=
  canonical_of_padded canonicalInput3045 canonicalOutput3045 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3046 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3046 : ExponentCode := normalNode7562

theorem canonicalSound3046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3046.moment H = canonicalOutput3046.moment H :=
  canonical_of_padded canonicalInput3046 canonicalOutput3046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3047 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3047 : ExponentCode := normalNode8441

theorem canonicalSound3047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3047.moment H = canonicalOutput3047.moment H :=
  canonical_of_padded canonicalInput3047 canonicalOutput3047 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3048 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 1, -2, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3048 : ExponentCode := normalNode8441

theorem canonicalSound3048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3048.moment H = canonicalOutput3048.moment H :=
  canonical_of_padded canonicalInput3048 canonicalOutput3048 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3049 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![0, 1, 0, 0, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3049 : ExponentCode := normalNode8434

theorem canonicalSound3049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3049.moment H = canonicalOutput3049.moment H :=
  canonical_of_padded canonicalInput3049 canonicalOutput3049 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3050 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3050 : ExponentCode := normalNode8091

theorem canonicalSound3050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3050.moment H = canonicalOutput3050.moment H :=
  canonical_of_padded canonicalInput3050 canonicalOutput3050 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3051 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3051 : ExponentCode := normalNode8092

theorem canonicalSound3051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3051.moment H = canonicalOutput3051.moment H :=
  canonical_of_padded canonicalInput3051 canonicalOutput3051 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3052 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 1, -2, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3052 : ExponentCode := normalNode8092

theorem canonicalSound3052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3052.moment H = canonicalOutput3052.moment H :=
  canonical_of_padded canonicalInput3052 canonicalOutput3052 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3053 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![0, 1, 0, -1, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3053 : ExponentCode := normalNode8513

theorem canonicalSound3053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3053.moment H = canonicalOutput3053.moment H :=
  canonical_of_padded canonicalInput3053 canonicalOutput3053 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3054 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput3054 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1373

theorem canonicalSound3054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3054.moment H = canonicalOutput3054.moment H :=
  canonical_of_padded canonicalInput3054 canonicalOutput3054 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3055 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput3055 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code672

theorem canonicalSound3055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3055.moment H = canonicalOutput3055.moment H :=
  canonical_of_padded canonicalInput3055 canonicalOutput3055 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3056 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3056 : ExponentCode := normalNode8105

theorem canonicalSound3056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3056.moment H = canonicalOutput3056.moment H :=
  canonical_of_padded canonicalInput3056 canonicalOutput3056 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3057 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3057 : ExponentCode := normalNode8106

theorem canonicalSound3057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3057.moment H = canonicalOutput3057.moment H :=
  canonical_of_padded canonicalInput3057 canonicalOutput3057 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3058 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3058 : ExponentCode := normalNode8106

theorem canonicalSound3058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3058.moment H = canonicalOutput3058.moment H :=
  canonical_of_padded canonicalInput3058 canonicalOutput3058 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3059 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3059 : ExponentCode := normalNode8105

theorem canonicalSound3059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3059.moment H = canonicalOutput3059.moment H :=
  canonical_of_padded canonicalInput3059 canonicalOutput3059 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3060 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3060 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1166

theorem canonicalSound3060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3060.moment H = canonicalOutput3060.moment H :=
  canonical_of_padded canonicalInput3060 canonicalOutput3060 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3061 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3061 : ExponentCode := normalNode8254

theorem canonicalSound3061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3061.moment H = canonicalOutput3061.moment H :=
  canonical_of_padded canonicalInput3061 canonicalOutput3061 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3062 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3062 : ExponentCode := normalNode7563

theorem canonicalSound3062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3062.moment H = canonicalOutput3062.moment H :=
  canonical_of_padded canonicalInput3062 canonicalOutput3062 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3063 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3063 : ExponentCode := normalNode8245

theorem canonicalSound3063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3063.moment H = canonicalOutput3063.moment H :=
  canonical_of_padded canonicalInput3063 canonicalOutput3063 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3064 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3064 : ExponentCode := normalNode8263

theorem canonicalSound3064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3064.moment H = canonicalOutput3064.moment H :=
  canonical_of_padded canonicalInput3064 canonicalOutput3064 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3065 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, 0, 0, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3065 : ExponentCode := normalNode6574

theorem canonicalSound3065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3065.moment H = canonicalOutput3065.moment H :=
  canonical_of_padded canonicalInput3065 canonicalOutput3065 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3066 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, 1, -2, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3066 : ExponentCode := normalNode8385

theorem canonicalSound3066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3066.moment H = canonicalOutput3066.moment H :=
  canonical_of_padded canonicalInput3066 canonicalOutput3066 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3067 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![0, 3, -2, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3067 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1335

theorem canonicalSound3067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3067.moment H = canonicalOutput3067.moment H :=
  canonical_of_padded canonicalInput3067 canonicalOutput3067 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3068 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![1, 0, 1, -2, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3068 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound3068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3068.moment H = canonicalOutput3068.moment H :=
  canonical_of_padded canonicalInput3068 canonicalOutput3068 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3069 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![1, 1, -2, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3069 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound3069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3069.moment H = canonicalOutput3069.moment H :=
  canonical_of_padded canonicalInput3069 canonicalOutput3069 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3070 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 1, 1, -1], ![1, 1, -2, 1, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput3070 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound3070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3070.moment H = canonicalOutput3070.moment H :=
  canonical_of_padded canonicalInput3070 canonicalOutput3070 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3071 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, -1, 2, -1, 0], ![-1, 2, -2, 1, 0], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput3071 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code833

theorem canonicalSound3071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3071.moment H = canonicalOutput3071.moment H :=
  canonical_of_padded canonicalInput3071 canonicalOutput3071 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3264 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3264 : ExponentCode := normalNode7624

theorem canonicalSound3264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3264.moment H = canonicalOutput3264.moment H :=
  canonical_of_padded canonicalInput3264 canonicalOutput3264 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3265 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3265 : ExponentCode := normalNode8355

theorem canonicalSound3265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3265.moment H = canonicalOutput3265.moment H :=
  canonical_of_padded canonicalInput3265 canonicalOutput3265 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3266 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput3266 : ExponentCode := normalNode8320

theorem canonicalSound3266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3266.moment H = canonicalOutput3266.moment H :=
  canonical_of_padded canonicalInput3266 canonicalOutput3266 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3267 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput3267 : ExponentCode := normalNode7612

theorem canonicalSound3267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3267.moment H = canonicalOutput3267.moment H :=
  canonical_of_padded canonicalInput3267 canonicalOutput3267 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3268 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, -1, -1, -1, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput3268 : ExponentCode := normalNode7248

theorem canonicalSound3268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3268.moment H = canonicalOutput3268.moment H :=
  canonical_of_padded canonicalInput3268 canonicalOutput3268 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3269 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, -1, 0, -1, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3269 : ExponentCode := normalNode8386

theorem canonicalSound3269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3269.moment H = canonicalOutput3269.moment H :=
  canonical_of_padded canonicalInput3269 canonicalOutput3269 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3270 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, -2, 1, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3270 : ExponentCode := normalNode8247

theorem canonicalSound3270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3270.moment H = canonicalOutput3270.moment H :=
  canonical_of_padded canonicalInput3270 canonicalOutput3270 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3271 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3271 : ExponentCode := normalNode7249

theorem canonicalSound3271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3271.moment H = canonicalOutput3271.moment H :=
  canonical_of_padded canonicalInput3271 canonicalOutput3271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3272 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3272 : ExponentCode := normalNode8381

theorem canonicalSound3272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3272.moment H = canonicalOutput3272.moment H :=
  canonical_of_padded canonicalInput3272 canonicalOutput3272 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3273 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3273 : ExponentCode := normalNode8326

theorem canonicalSound3273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3273.moment H = canonicalOutput3273.moment H :=
  canonical_of_padded canonicalInput3273 canonicalOutput3273 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3274 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 0, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3274 : ExponentCode := normalNode6595

theorem canonicalSound3274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3274.moment H = canonicalOutput3274.moment H :=
  canonical_of_padded canonicalInput3274 canonicalOutput3274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3275 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, -1, 2], ![1, -1, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3275 : ExponentCode := normalNode7240

theorem canonicalSound3275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3275.moment H = canonicalOutput3275.moment H :=
  canonical_of_padded canonicalInput3275 canonicalOutput3275 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3276 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 0, 0, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3276 : ExponentCode := normalNode9194

theorem canonicalSound3276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3276.moment H = canonicalOutput3276.moment H :=
  canonical_of_padded canonicalInput3276 canonicalOutput3276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3277 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3277 : ExponentCode := normalNode9192

theorem canonicalSound3277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3277.moment H = canonicalOutput3277.moment H :=
  canonical_of_padded canonicalInput3277 canonicalOutput3277 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3278 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3278 : ExponentCode := normalNode6556

theorem canonicalSound3278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3278.moment H = canonicalOutput3278.moment H :=
  canonical_of_padded canonicalInput3278 canonicalOutput3278 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3279 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3279 : ExponentCode := normalNode7550

theorem canonicalSound3279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3279.moment H = canonicalOutput3279.moment H :=
  canonical_of_padded canonicalInput3279 canonicalOutput3279 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3280 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, -1, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3280 : ExponentCode := normalNode10779

theorem canonicalSound3280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3280.moment H = canonicalOutput3280.moment H :=
  canonical_of_padded canonicalInput3280 canonicalOutput3280 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3281 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, 0, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3281 : ExponentCode := normalNode6577

theorem canonicalSound3281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3281.moment H = canonicalOutput3281.moment H :=
  canonical_of_padded canonicalInput3281 canonicalOutput3281 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3282 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 0, 1, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3282 : ExponentCode := normalNode8230

theorem canonicalSound3282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3282.moment H = canonicalOutput3282.moment H :=
  canonical_of_padded canonicalInput3282 canonicalOutput3282 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3283 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput3283 : ExponentCode := normalNode8426

theorem canonicalSound3283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3283.moment H = canonicalOutput3283.moment H :=
  canonical_of_padded canonicalInput3283 canonicalOutput3283 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3284 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, -1, 1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3284 : ExponentCode := normalNode8186

theorem canonicalSound3284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3284.moment H = canonicalOutput3284.moment H :=
  canonical_of_padded canonicalInput3284 canonicalOutput3284 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3285 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3285 : ExponentCode := normalNode6579

theorem canonicalSound3285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3285.moment H = canonicalOutput3285.moment H :=
  canonical_of_padded canonicalInput3285 canonicalOutput3285 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3286 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3286 : ExponentCode := normalNode8231

theorem canonicalSound3286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3286.moment H = canonicalOutput3286.moment H :=
  canonical_of_padded canonicalInput3286 canonicalOutput3286 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3287 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3287 : ExponentCode := normalNode9786

theorem canonicalSound3287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3287.moment H = canonicalOutput3287.moment H :=
  canonical_of_padded canonicalInput3287 canonicalOutput3287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3288 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3288 : ExponentCode := normalNode7624

theorem canonicalSound3288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3288.moment H = canonicalOutput3288.moment H :=
  canonical_of_padded canonicalInput3288 canonicalOutput3288 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3289 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput3289 : ExponentCode := normalNode7626

theorem canonicalSound3289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3289.moment H = canonicalOutput3289.moment H :=
  canonical_of_padded canonicalInput3289 canonicalOutput3289 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3290 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3290 : ExponentCode := normalNode10445

theorem canonicalSound3290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3290.moment H = canonicalOutput3290.moment H :=
  canonical_of_padded canonicalInput3290 canonicalOutput3290 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput3291 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3291 : ExponentCode := normalNode10062

theorem canonicalSound3291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3291.moment H = canonicalOutput3291.moment H :=
  canonical_of_padded canonicalInput3291 canonicalOutput3291 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3292 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput3292 : ExponentCode := normalNode7569

theorem canonicalSound3292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3292.moment H = canonicalOutput3292.moment H :=
  canonical_of_padded canonicalInput3292 canonicalOutput3292 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3293 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3293 : ExponentCode := normalNode6600

theorem canonicalSound3293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3293.moment H = canonicalOutput3293.moment H :=
  canonical_of_padded canonicalInput3293 canonicalOutput3293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3294 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3294 : ExponentCode := normalNode7628

theorem canonicalSound3294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3294.moment H = canonicalOutput3294.moment H :=
  canonical_of_padded canonicalInput3294 canonicalOutput3294 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3295 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 0, 1, 0, -1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3295 : ExponentCode := normalNode8355

theorem canonicalSound3295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3295.moment H = canonicalOutput3295.moment H :=
  canonical_of_padded canonicalInput3295 canonicalOutput3295 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput3296 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 0, 1, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3296 : ExponentCode := normalNode6575

theorem canonicalSound3296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3296.moment H = canonicalOutput3296.moment H :=
  canonical_of_padded canonicalInput3296 canonicalOutput3296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3297 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput3297 : ExponentCode := normalNode9170

theorem canonicalSound3297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3297.moment H = canonicalOutput3297.moment H :=
  canonical_of_padded canonicalInput3297 canonicalOutput3297 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3298 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput3298 : ExponentCode := normalNode6617

theorem canonicalSound3298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3298.moment H = canonicalOutput3298.moment H :=
  canonical_of_padded canonicalInput3298 canonicalOutput3298 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3299 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, -1, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3299 : ExponentCode := normalNode7574

theorem canonicalSound3299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3299.moment H = canonicalOutput3299.moment H :=
  canonical_of_padded canonicalInput3299 canonicalOutput3299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3300 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3300 : ExponentCode := normalNode8170

theorem canonicalSound3300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3300.moment H = canonicalOutput3300.moment H :=
  canonical_of_padded canonicalInput3300 canonicalOutput3300 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput3301 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, -1, 1, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3301 : ExponentCode := normalNode10783

theorem canonicalSound3301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3301.moment H = canonicalOutput3301.moment H :=
  canonical_of_padded canonicalInput3301 canonicalOutput3301 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3302 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3302 : ExponentCode := normalNode7619

theorem canonicalSound3302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3302.moment H = canonicalOutput3302.moment H :=
  canonical_of_padded canonicalInput3302 canonicalOutput3302 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3303 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3303 : ExponentCode := normalNode9779

theorem canonicalSound3303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3303.moment H = canonicalOutput3303.moment H :=
  canonical_of_padded canonicalInput3303 canonicalOutput3303 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3304 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput3304 : ExponentCode := normalNode6572

theorem canonicalSound3304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3304.moment H = canonicalOutput3304.moment H :=
  canonical_of_padded canonicalInput3304 canonicalOutput3304 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3305 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3305 : ExponentCode := normalNode8657

theorem canonicalSound3305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3305.moment H = canonicalOutput3305.moment H :=
  canonical_of_padded canonicalInput3305 canonicalOutput3305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3306 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3306 : ExponentCode := normalNode7251

theorem canonicalSound3306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3306.moment H = canonicalOutput3306.moment H :=
  canonical_of_padded canonicalInput3306 canonicalOutput3306 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput3307 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3307 : ExponentCode := normalNode7629

theorem canonicalSound3307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3307.moment H = canonicalOutput3307.moment H :=
  canonical_of_padded canonicalInput3307 canonicalOutput3307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3308 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3308 : ExponentCode := normalNode8338

theorem canonicalSound3308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3308.moment H = canonicalOutput3308.moment H :=
  canonical_of_padded canonicalInput3308 canonicalOutput3308 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3309 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3309 : ExponentCode := normalNode9771

theorem canonicalSound3309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3309.moment H = canonicalOutput3309.moment H :=
  canonical_of_padded canonicalInput3309 canonicalOutput3309 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3310 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3310 : ExponentCode := normalNode7630

theorem canonicalSound3310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3310.moment H = canonicalOutput3310.moment H :=
  canonical_of_padded canonicalInput3310 canonicalOutput3310 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3311 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput3311 : ExponentCode := normalNode8252

theorem canonicalSound3311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3311.moment H = canonicalOutput3311.moment H :=
  canonical_of_padded canonicalInput3311 canonicalOutput3311 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3312 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput3312 : ExponentCode := normalNode9781

theorem canonicalSound3312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3312.moment H = canonicalOutput3312.moment H :=
  canonical_of_padded canonicalInput3312 canonicalOutput3312 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3313 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, -1, 1, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3313 : ExponentCode := normalNode6606

theorem canonicalSound3313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3313.moment H = canonicalOutput3313.moment H :=
  canonical_of_padded canonicalInput3313 canonicalOutput3313 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3314 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3314 : ExponentCode := normalNode9770

theorem canonicalSound3314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3314.moment H = canonicalOutput3314.moment H :=
  canonical_of_padded canonicalInput3314 canonicalOutput3314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3315 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3315 : ExponentCode := normalNode9777

theorem canonicalSound3315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3315.moment H = canonicalOutput3315.moment H :=
  canonical_of_padded canonicalInput3315 canonicalOutput3315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3316 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3316 : ExponentCode := normalNode8199

theorem canonicalSound3316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3316.moment H = canonicalOutput3316.moment H :=
  canonical_of_padded canonicalInput3316 canonicalOutput3316 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3317 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3317 : ExponentCode := normalNode6597

theorem canonicalSound3317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3317.moment H = canonicalOutput3317.moment H :=
  canonical_of_padded canonicalInput3317 canonicalOutput3317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3318 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3318 : ExponentCode := normalNode8248

theorem canonicalSound3318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3318.moment H = canonicalOutput3318.moment H :=
  canonical_of_padded canonicalInput3318 canonicalOutput3318 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3319 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3319 : ExponentCode := normalNode10117

theorem canonicalSound3319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3319.moment H = canonicalOutput3319.moment H :=
  canonical_of_padded canonicalInput3319 canonicalOutput3319 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3320 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, -1, 1], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3320 : ExponentCode := normalNode9772

theorem canonicalSound3320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3320.moment H = canonicalOutput3320.moment H :=
  canonical_of_padded canonicalInput3320 canonicalOutput3320 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3321 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3321 : ExponentCode := normalNode6571

theorem canonicalSound3321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3321.moment H = canonicalOutput3321.moment H :=
  canonical_of_padded canonicalInput3321 canonicalOutput3321 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3322 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3322 : ExponentCode := normalNode8176

theorem canonicalSound3322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3322.moment H = canonicalOutput3322.moment H :=
  canonical_of_padded canonicalInput3322 canonicalOutput3322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3323 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3323 : ExponentCode := normalNode6612

theorem canonicalSound3323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3323.moment H = canonicalOutput3323.moment H :=
  canonical_of_padded canonicalInput3323 canonicalOutput3323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3324 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3324 : ExponentCode := normalNode10033

theorem canonicalSound3324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3324.moment H = canonicalOutput3324.moment H :=
  canonical_of_padded canonicalInput3324 canonicalOutput3324 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3325 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3325 : ExponentCode := normalNode10782

theorem canonicalSound3325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3325.moment H = canonicalOutput3325.moment H :=
  canonical_of_padded canonicalInput3325 canonicalOutput3325 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3326 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput3326 : ExponentCode := normalNode10782

theorem canonicalSound3326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3326.moment H = canonicalOutput3326.moment H :=
  canonical_of_padded canonicalInput3326 canonicalOutput3326 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3327 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 1, -1], ![1, -1, 0, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3327 : ExponentCode := normalNode10039

theorem canonicalSound3327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3327.moment H = canonicalOutput3327.moment H :=
  canonical_of_padded canonicalInput3327 canonicalOutput3327 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

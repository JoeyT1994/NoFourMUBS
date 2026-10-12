import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4352 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 1, -1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4352 : ExponentCode := normalNode10408

theorem canonicalSound4352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4352.moment H = canonicalOutput4352.moment H :=
  canonical_of_padded canonicalInput4352 canonicalOutput4352 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput4353 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code383

theorem canonicalSound4353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4353.moment H = canonicalOutput4353.moment H :=
  canonical_of_padded canonicalInput4353 canonicalOutput4353 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4354 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4354 : ExponentCode := normalNode8103

theorem canonicalSound4354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4354.moment H = canonicalOutput4354.moment H :=
  canonical_of_padded canonicalInput4354 canonicalOutput4354 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4355 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4355 : ExponentCode := normalNode6631

theorem canonicalSound4355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4355.moment H = canonicalOutput4355.moment H :=
  canonical_of_padded canonicalInput4355 canonicalOutput4355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4356 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4356 : ExponentCode := normalNode8182

theorem canonicalSound4356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4356.moment H = canonicalOutput4356.moment H :=
  canonical_of_padded canonicalInput4356 canonicalOutput4356 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4357 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, -1, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4357 : ExponentCode := normalNode8489

theorem canonicalSound4357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4357.moment H = canonicalOutput4357.moment H :=
  canonical_of_padded canonicalInput4357 canonicalOutput4357 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4358 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4358 : ExponentCode := normalNode8190

theorem canonicalSound4358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4358.moment H = canonicalOutput4358.moment H :=
  canonical_of_padded canonicalInput4358 canonicalOutput4358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4359 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code379

theorem canonicalSound4359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4359.moment H = canonicalOutput4359.moment H :=
  canonical_of_padded canonicalInput4359 canonicalOutput4359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4360 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, -1, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code379

theorem canonicalSound4360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4360.moment H = canonicalOutput4360.moment H :=
  canonical_of_padded canonicalInput4360 canonicalOutput4360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput4361 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, -1, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4361 : ExponentCode := normalNode8197

theorem canonicalSound4361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4361.moment H = canonicalOutput4361.moment H :=
  canonical_of_padded canonicalInput4361 canonicalOutput4361 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4362 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4362 : ExponentCode := normalNode8555

theorem canonicalSound4362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4362.moment H = canonicalOutput4362.moment H :=
  canonical_of_padded canonicalInput4362 canonicalOutput4362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4363 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4363 : ExponentCode := normalNode8249

theorem canonicalSound4363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4363.moment H = canonicalOutput4363.moment H :=
  canonical_of_padded canonicalInput4363 canonicalOutput4363 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4364 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4364 : ExponentCode := normalNode8233

theorem canonicalSound4364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4364.moment H = canonicalOutput4364.moment H :=
  canonical_of_padded canonicalInput4364 canonicalOutput4364 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4365 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4365 : ExponentCode := normalNode8268

theorem canonicalSound4365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4365.moment H = canonicalOutput4365.moment H :=
  canonical_of_padded canonicalInput4365 canonicalOutput4365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4366 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code374

theorem canonicalSound4366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4366.moment H = canonicalOutput4366.moment H :=
  canonical_of_padded canonicalInput4366 canonicalOutput4366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4367 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4367 : ExponentCode := normalNode8255

theorem canonicalSound4367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4367.moment H = canonicalOutput4367.moment H :=
  canonical_of_padded canonicalInput4367 canonicalOutput4367 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4368 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, 1, -3], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4368 : ExponentCode := normalNode8305

theorem canonicalSound4368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4368.moment H = canonicalOutput4368.moment H :=
  canonical_of_padded canonicalInput4368 canonicalOutput4368 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4369 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4369 : ExponentCode := normalNode8164

theorem canonicalSound4369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4369.moment H = canonicalOutput4369.moment H :=
  canonical_of_padded canonicalInput4369 canonicalOutput4369 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4370 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4370 : ExponentCode := normalNode8161

theorem canonicalSound4370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4370.moment H = canonicalOutput4370.moment H :=
  canonical_of_padded canonicalInput4370 canonicalOutput4370 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput4371 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 0, 2], ![1, 1, -1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4371 : ExponentCode := normalNode10408

theorem canonicalSound4371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4371.moment H = canonicalOutput4371.moment H :=
  canonical_of_padded canonicalInput4371 canonicalOutput4371 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput4372 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput4372 : ExponentCode := normalNode10801

theorem canonicalSound4372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4372.moment H = canonicalOutput4372.moment H :=
  canonical_of_padded canonicalInput4372 canonicalOutput4372 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4373 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, -1, 0], ![1, 1, -1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4373 : ExponentCode := normalNode8633

theorem canonicalSound4373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4373.moment H = canonicalOutput4373.moment H :=
  canonical_of_padded canonicalInput4373 canonicalOutput4373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4374 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput4374 : ExponentCode := normalNode10801

theorem canonicalSound4374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4374.moment H = canonicalOutput4374.moment H :=
  canonical_of_padded canonicalInput4374 canonicalOutput4374 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4375 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput4375 : ExponentCode := normalNode8629

theorem canonicalSound4375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4375.moment H = canonicalOutput4375.moment H :=
  canonical_of_padded canonicalInput4375 canonicalOutput4375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4376 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, -1, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput4376 : ExponentCode := normalNode10424

theorem canonicalSound4376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4376.moment H = canonicalOutput4376.moment H :=
  canonical_of_padded canonicalInput4376 canonicalOutput4376 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4377 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4377 : ExponentCode := normalNode8500

theorem canonicalSound4377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4377.moment H = canonicalOutput4377.moment H :=
  canonical_of_padded canonicalInput4377 canonicalOutput4377 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4378 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -3, 1]]⟩

def canonicalOutput4378 : ExponentCode := normalNode8774

theorem canonicalSound4378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4378.moment H = canonicalOutput4378.moment H :=
  canonical_of_padded canonicalInput4378 canonicalOutput4378 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4379 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput4379 : ExponentCode := normalNode10155

theorem canonicalSound4379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4379.moment H = canonicalOutput4379.moment H :=
  canonical_of_padded canonicalInput4379 canonicalOutput4379 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4380 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4380 : ExponentCode := normalNode8608

theorem canonicalSound4380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4380.moment H = canonicalOutput4380.moment H :=
  canonical_of_padded canonicalInput4380 canonicalOutput4380 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4381 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4381 : ExponentCode := normalNode8470

theorem canonicalSound4381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4381.moment H = canonicalOutput4381.moment H :=
  canonical_of_padded canonicalInput4381 canonicalOutput4381 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4382 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![1, 1, -1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4382 : ExponentCode := normalNode8470

theorem canonicalSound4382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4382.moment H = canonicalOutput4382.moment H :=
  canonical_of_padded canonicalInput4382 canonicalOutput4382 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4383 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput4383 : ExponentCode := normalNode8580

theorem canonicalSound4383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4383.moment H = canonicalOutput4383.moment H :=
  canonical_of_padded canonicalInput4383 canonicalOutput4383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4384 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput4384 : ExponentCode := normalNode8494

theorem canonicalSound4384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4384.moment H = canonicalOutput4384.moment H :=
  canonical_of_padded canonicalInput4384 canonicalOutput4384 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4385 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4385 : ExponentCode := normalNode8480

theorem canonicalSound4385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4385.moment H = canonicalOutput4385.moment H :=
  canonical_of_padded canonicalInput4385 canonicalOutput4385 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4386 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -2, 0], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput4386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound4386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4386.moment H = canonicalOutput4386.moment H :=
  canonical_of_padded canonicalInput4386 canonicalOutput4386 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4387 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput4387 : ExponentCode := normalNode8494

theorem canonicalSound4387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4387.moment H = canonicalOutput4387.moment H :=
  canonical_of_padded canonicalInput4387 canonicalOutput4387 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4388 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput4388 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1399

theorem canonicalSound4388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4388.moment H = canonicalOutput4388.moment H :=
  canonical_of_padded canonicalInput4388 canonicalOutput4388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4389 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4389 : ExponentCode := normalNode8094

theorem canonicalSound4389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4389.moment H = canonicalOutput4389.moment H :=
  canonical_of_padded canonicalInput4389 canonicalOutput4389 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4390 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4390 : ExponentCode := normalNode8090

theorem canonicalSound4390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4390.moment H = canonicalOutput4390.moment H :=
  canonical_of_padded canonicalInput4390 canonicalOutput4390 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4391 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4391 : ExponentCode := normalNode8090

theorem canonicalSound4391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4391.moment H = canonicalOutput4391.moment H :=
  canonical_of_padded canonicalInput4391 canonicalOutput4391 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput4392 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 2, -1, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4392 : ExponentCode := normalNode8187

theorem canonicalSound4392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4392.moment H = canonicalOutput4392.moment H :=
  canonical_of_padded canonicalInput4392 canonicalOutput4392 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4393 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 2, 0, -3, 1], ![1, 0, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4393 : ExponentCode := normalNode8563

theorem canonicalSound4393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4393.moment H = canonicalOutput4393.moment H :=
  canonical_of_padded canonicalInput4393 canonicalOutput4393 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4394 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4394 : ExponentCode := normalNode8264

theorem canonicalSound4394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4394.moment H = canonicalOutput4394.moment H :=
  canonical_of_padded canonicalInput4394 canonicalOutput4394 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4395 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 2, 0, 1, -3], ![1, 0, -1, 0, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4395 : ExponentCode := normalNode8563

theorem canonicalSound4395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4395.moment H = canonicalOutput4395.moment H :=
  canonical_of_padded canonicalInput4395 canonicalOutput4395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4396 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![0, 2, 1, -1, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4396 : ExponentCode := normalNode8382

theorem canonicalSound4396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4396.moment H = canonicalOutput4396.moment H :=
  canonical_of_padded canonicalInput4396 canonicalOutput4396 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4397 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![1, 0, 1, -1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput4397 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1392

theorem canonicalSound4397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4397.moment H = canonicalOutput4397.moment H :=
  canonical_of_padded canonicalInput4397 canonicalOutput4397 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4398 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 1, 1], ![1, 0, 1, 0, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput4398 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound4398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4398.moment H = canonicalOutput4398.moment H :=
  canonical_of_padded canonicalInput4398 canonicalOutput4398 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4399 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 2, 0], ![0, 0, 1, -2, 1], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput4399 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1262

theorem canonicalSound4399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4399.moment H = canonicalOutput4399.moment H :=
  canonical_of_padded canonicalInput4399 canonicalOutput4399 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4400 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, -1, 2, 0], ![0, 1, 1, -3, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput4400 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code422

theorem canonicalSound4400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4400.moment H = canonicalOutput4400.moment H :=
  canonical_of_padded canonicalInput4400 canonicalOutput4400 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4401 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4401 : ExponentCode := normalNode6632

theorem canonicalSound4401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4401.moment H = canonicalOutput4401.moment H :=
  canonical_of_padded canonicalInput4401 canonicalOutput4401 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4402 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 0, 0, 1], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4402 : ExponentCode := normalNode10169

theorem canonicalSound4402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4402.moment H = canonicalOutput4402.moment H :=
  canonical_of_padded canonicalInput4402 canonicalOutput4402 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4403 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 0, 0, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput4403 : ExponentCode := normalNode9244

theorem canonicalSound4403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4403.moment H = canonicalOutput4403.moment H :=
  canonical_of_padded canonicalInput4403 canonicalOutput4403 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4404 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 0, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4404 : ExponentCode := normalNode10075

theorem canonicalSound4404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4404.moment H = canonicalOutput4404.moment H :=
  canonical_of_padded canonicalInput4404 canonicalOutput4404 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4405 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 0, 0, 1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4405 : ExponentCode := normalNode9504

theorem canonicalSound4405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4405.moment H = canonicalOutput4405.moment H :=
  canonical_of_padded canonicalInput4405 canonicalOutput4405 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4406 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput4406 : ExponentCode := normalNode10456

theorem canonicalSound4406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4406.moment H = canonicalOutput4406.moment H :=
  canonical_of_padded canonicalInput4406 canonicalOutput4406 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4407 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4407 : ExponentCode := normalNode6819

theorem canonicalSound4407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4407.moment H = canonicalOutput4407.moment H :=
  canonical_of_padded canonicalInput4407 canonicalOutput4407 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4408 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![-1, 2, -2, 0, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput4408 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1363

theorem canonicalSound4408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4408.moment H = canonicalOutput4408.moment H :=
  canonical_of_padded canonicalInput4408 canonicalOutput4408 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4409 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![-1, 3, -1, 0, -1], ![3, -1, -1, -2, 1]]⟩

def canonicalOutput4409 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1360

theorem canonicalSound4409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4409.moment H = canonicalOutput4409.moment H :=
  canonical_of_padded canonicalInput4409 canonicalOutput4409 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4410 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4410 : ExponentCode := normalNode8094

theorem canonicalSound4410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4410.moment H = canonicalOutput4410.moment H :=
  canonical_of_padded canonicalInput4410 canonicalOutput4410 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput4411 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput4411 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound4411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4411.moment H = canonicalOutput4411.moment H :=
  canonical_of_padded canonicalInput4411 canonicalOutput4411 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4412 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput4412 : ExponentCode := normalNode8603

theorem canonicalSound4412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4412.moment H = canonicalOutput4412.moment H :=
  canonical_of_padded canonicalInput4412 canonicalOutput4412 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4413 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput4413 : ExponentCode := normalNode8094

theorem canonicalSound4413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4413.moment H = canonicalOutput4413.moment H :=
  canonical_of_padded canonicalInput4413 canonicalOutput4413 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4414 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput4414 : ExponentCode := normalNode8580

theorem canonicalSound4414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4414.moment H = canonicalOutput4414.moment H :=
  canonical_of_padded canonicalInput4414 canonicalOutput4414 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4415 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput4415 : ExponentCode := normalNode8474

theorem canonicalSound4415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4415.moment H = canonicalOutput4415.moment H :=
  canonical_of_padded canonicalInput4415 canonicalOutput4415 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation22⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

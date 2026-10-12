import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5376 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![1, 1, 1, -3], ![0, 2, -3, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput5376 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code630

theorem canonicalSound5376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5376.moment H = canonicalOutput5376.moment H :=
  canonical_of_padded canonicalInput5376 canonicalOutput5376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5377 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![1, 3, -3, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput5377 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound5377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5377.moment H = canonicalOutput5377.moment H :=
  canonical_of_padded canonicalInput5377 canonicalOutput5377 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5378 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![-1, 2, 1, -1, -1], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput5378 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound5378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5378.moment H = canonicalOutput5378.moment H :=
  canonical_of_padded canonicalInput5378 canonicalOutput5378 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5379 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -2, 0, 3], ![0, 2, 0, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5379 : ExponentCode := normalNode8073

theorem canonicalSound5379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5379.moment H = canonicalOutput5379.moment H :=
  canonical_of_padded canonicalInput5379 canonicalOutput5379 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput5380 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -2, 0, 3], ![0, 2, 0, 0, -2], ![1, 0, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5380 : ExponentCode := normalNode8074

theorem canonicalSound5380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5380.moment H = canonicalOutput5380.moment H :=
  canonical_of_padded canonicalInput5380 canonicalOutput5380 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5381 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, -1, 3], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5381 : ExponentCode := normalNode8465

theorem canonicalSound5381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5381.moment H = canonicalOutput5381.moment H :=
  canonical_of_padded canonicalInput5381 canonicalOutput5381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5382 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput5382 : ExponentCode := normalNode8524

theorem canonicalSound5382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5382.moment H = canonicalOutput5382.moment H :=
  canonical_of_padded canonicalInput5382 canonicalOutput5382 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput5383 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, -1, 3], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5383 : ExponentCode := normalNode8102

theorem canonicalSound5383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5383.moment H = canonicalOutput5383.moment H :=
  canonical_of_padded canonicalInput5383 canonicalOutput5383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5384 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, -1, 3], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5384 : ExponentCode := normalNode8189

theorem canonicalSound5384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5384.moment H = canonicalOutput5384.moment H :=
  canonical_of_padded canonicalInput5384 canonicalOutput5384 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5385 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, -1, 3], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5385 : ExponentCode := normalNode8256

theorem canonicalSound5385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5385.moment H = canonicalOutput5385.moment H :=
  canonical_of_padded canonicalInput5385 canonicalOutput5385 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5386 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, -1, 3], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5386 : ExponentCode := normalNode8270

theorem canonicalSound5386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5386.moment H = canonicalOutput5386.moment H :=
  canonical_of_padded canonicalInput5386 canonicalOutput5386 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5387 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput5387 : ExponentCode := normalNode10426

theorem canonicalSound5387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5387.moment H = canonicalOutput5387.moment H :=
  canonical_of_padded canonicalInput5387 canonicalOutput5387 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput5388 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, -1, 0], ![1, 1, -1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5388 : ExponentCode := normalNode8303

theorem canonicalSound5388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5388.moment H = canonicalOutput5388.moment H :=
  canonical_of_padded canonicalInput5388 canonicalOutput5388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5389 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput5389 : ExponentCode := normalNode10425

theorem canonicalSound5389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5389.moment H = canonicalOutput5389.moment H :=
  canonical_of_padded canonicalInput5389 canonicalOutput5389 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5390 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![1, 0, 0, -1, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput5390 : ExponentCode := normalNode10422

theorem canonicalSound5390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5390.moment H = canonicalOutput5390.moment H :=
  canonical_of_padded canonicalInput5390 canonicalOutput5390 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5391 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput5391 : ExponentCode := normalNode9143

theorem canonicalSound5391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5391.moment H = canonicalOutput5391.moment H :=
  canonical_of_padded canonicalInput5391 canonicalOutput5391 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5392 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, -1, 1], ![1, 0, 0, -1, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput5392 : ExponentCode := normalNode8102

theorem canonicalSound5392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5392.moment H = canonicalOutput5392.moment H :=
  canonical_of_padded canonicalInput5392 canonicalOutput5392 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5393 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput5393 : ExponentCode := normalNode10413

theorem canonicalSound5393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5393.moment H = canonicalOutput5393.moment H :=
  canonical_of_padded canonicalInput5393 canonicalOutput5393 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5394 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput5394 : ExponentCode := normalNode9247

theorem canonicalSound5394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5394.moment H = canonicalOutput5394.moment H :=
  canonical_of_padded canonicalInput5394 canonicalOutput5394 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput5395 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput5395 : ExponentCode := normalNode8597

theorem canonicalSound5395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5395.moment H = canonicalOutput5395.moment H :=
  canonical_of_padded canonicalInput5395 canonicalOutput5395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput5396 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5396 : ExponentCode := normalNode8477

theorem canonicalSound5396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5396.moment H = canonicalOutput5396.moment H :=
  canonical_of_padded canonicalInput5396 canonicalOutput5396 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5397 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput5397 : ExponentCode := normalNode8524

theorem canonicalSound5397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5397.moment H = canonicalOutput5397.moment H :=
  canonical_of_padded canonicalInput5397 canonicalOutput5397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput5398 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5398 : ExponentCode := normalNode7082

theorem canonicalSound5398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5398.moment H = canonicalOutput5398.moment H :=
  canonical_of_padded canonicalInput5398 canonicalOutput5398 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5399 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput5399 : ExponentCode := normalNode8131

theorem canonicalSound5399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5399.moment H = canonicalOutput5399.moment H :=
  canonical_of_padded canonicalInput5399 canonicalOutput5399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5400 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput5400 : ExponentCode := normalNode8088

theorem canonicalSound5400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5400.moment H = canonicalOutput5400.moment H :=
  canonical_of_padded canonicalInput5400 canonicalOutput5400 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput5401 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5401 : ExponentCode := normalNode8276

theorem canonicalSound5401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5401.moment H = canonicalOutput5401.moment H :=
  canonical_of_padded canonicalInput5401 canonicalOutput5401 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput5402 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput5402 : ExponentCode := normalNode10017

theorem canonicalSound5402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5402.moment H = canonicalOutput5402.moment H :=
  canonical_of_padded canonicalInput5402 canonicalOutput5402 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput5403 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput5403 : ExponentCode := normalNode8086

theorem canonicalSound5403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5403.moment H = canonicalOutput5403.moment H :=
  canonical_of_padded canonicalInput5403 canonicalOutput5403 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput5404 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput5404 : ExponentCode := normalNode10795

theorem canonicalSound5404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5404.moment H = canonicalOutput5404.moment H :=
  canonical_of_padded canonicalInput5404 canonicalOutput5404 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput5405 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5405 : ExponentCode := normalNode7083

theorem canonicalSound5405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5405.moment H = canonicalOutput5405.moment H :=
  canonical_of_padded canonicalInput5405 canonicalOutput5405 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5406 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5406 : ExponentCode := normalNode8475

theorem canonicalSound5406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5406.moment H = canonicalOutput5406.moment H :=
  canonical_of_padded canonicalInput5406 canonicalOutput5406 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5407 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput5407 : ExponentCode := normalNode8481

theorem canonicalSound5407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5407.moment H = canonicalOutput5407.moment H :=
  canonical_of_padded canonicalInput5407 canonicalOutput5407 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5408 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 1, -1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5408 : ExponentCode := normalNode7088

theorem canonicalSound5408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5408.moment H = canonicalOutput5408.moment H :=
  canonical_of_padded canonicalInput5408 canonicalOutput5408 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput5409 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 1, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5409 : ExponentCode := normalNode8481

theorem canonicalSound5409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5409.moment H = canonicalOutput5409.moment H :=
  canonical_of_padded canonicalInput5409 canonicalOutput5409 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5410 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5410 : ExponentCode := normalNode8098

theorem canonicalSound5410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5410.moment H = canonicalOutput5410.moment H :=
  canonical_of_padded canonicalInput5410 canonicalOutput5410 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5411 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5411 : ExponentCode := normalNode8095

theorem canonicalSound5411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5411.moment H = canonicalOutput5411.moment H :=
  canonical_of_padded canonicalInput5411 canonicalOutput5411 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5412 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -1, -1], ![1, 0, -1, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code648

theorem canonicalSound5412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5412.moment H = canonicalOutput5412.moment H :=
  canonical_of_padded canonicalInput5412 canonicalOutput5412 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput5413 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5413 : ExponentCode := normalNode8100

theorem canonicalSound5413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5413.moment H = canonicalOutput5413.moment H :=
  canonical_of_padded canonicalInput5413 canonicalOutput5413 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5414 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5414 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code646

theorem canonicalSound5414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5414.moment H = canonicalOutput5414.moment H :=
  canonical_of_padded canonicalInput5414 canonicalOutput5414 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput5415 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput5415 : ExponentCode := normalNode8085

theorem canonicalSound5415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5415.moment H = canonicalOutput5415.moment H :=
  canonical_of_padded canonicalInput5415 canonicalOutput5415 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput5416 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, -1, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5416 : ExponentCode := normalNode8087

theorem canonicalSound5416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5416.moment H = canonicalOutput5416.moment H :=
  canonical_of_padded canonicalInput5416 canonicalOutput5416 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5417 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5417 : ExponentCode := normalNode8125

theorem canonicalSound5417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5417.moment H = canonicalOutput5417.moment H :=
  canonical_of_padded canonicalInput5417 canonicalOutput5417 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5418 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5418 : ExponentCode := normalNode8266

theorem canonicalSound5418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5418.moment H = canonicalOutput5418.moment H :=
  canonical_of_padded canonicalInput5418 canonicalOutput5418 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5419 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5419 : ExponentCode := normalNode8272

theorem canonicalSound5419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5419.moment H = canonicalOutput5419.moment H :=
  canonical_of_padded canonicalInput5419 canonicalOutput5419 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5420 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5420 : ExponentCode := normalNode8231

theorem canonicalSound5420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5420.moment H = canonicalOutput5420.moment H :=
  canonical_of_padded canonicalInput5420 canonicalOutput5420 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5421 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5421 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code646

theorem canonicalSound5421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5421.moment H = canonicalOutput5421.moment H :=
  canonical_of_padded canonicalInput5421 canonicalOutput5421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5422 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput5422 : ExponentCode := normalNode8261

theorem canonicalSound5422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5422.moment H = canonicalOutput5422.moment H :=
  canonical_of_padded canonicalInput5422 canonicalOutput5422 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5423 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput5423 : ExponentCode := normalNode8228

theorem canonicalSound5423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5423.moment H = canonicalOutput5423.moment H :=
  canonical_of_padded canonicalInput5423 canonicalOutput5423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5424 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5424 : ExponentCode := normalNode8426

theorem canonicalSound5424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5424.moment H = canonicalOutput5424.moment H :=
  canonical_of_padded canonicalInput5424 canonicalOutput5424 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput5425 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput5425 : ExponentCode := normalNode10412

theorem canonicalSound5425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5425.moment H = canonicalOutput5425.moment H :=
  canonical_of_padded canonicalInput5425 canonicalOutput5425 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5426 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, -2, 0, 1], ![1, 1, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code653

theorem canonicalSound5426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5426.moment H = canonicalOutput5426.moment H :=
  canonical_of_padded canonicalInput5426 canonicalOutput5426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5427 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5427 : ExponentCode := normalNode10025

theorem canonicalSound5427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5427.moment H = canonicalOutput5427.moment H :=
  canonical_of_padded canonicalInput5427 canonicalOutput5427 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput5428 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5428 : ExponentCode := normalNode8462

theorem canonicalSound5428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5428.moment H = canonicalOutput5428.moment H :=
  canonical_of_padded canonicalInput5428 canonicalOutput5428 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5429 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput5429 : ExponentCode := normalNode10794

theorem canonicalSound5429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5429.moment H = canonicalOutput5429.moment H :=
  canonical_of_padded canonicalInput5429 canonicalOutput5429 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput5430 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5430 : ExponentCode := normalNode7086

theorem canonicalSound5430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5430.moment H = canonicalOutput5430.moment H :=
  canonical_of_padded canonicalInput5430 canonicalOutput5430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput5431 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![1, 1, -2, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5431 : ExponentCode := normalNode8464

theorem canonicalSound5431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5431.moment H = canonicalOutput5431.moment H :=
  canonical_of_padded canonicalInput5431 canonicalOutput5431 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5432 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, -2, 0, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5432 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code654

theorem canonicalSound5432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5432.moment H = canonicalOutput5432.moment H :=
  canonical_of_padded canonicalInput5432 canonicalOutput5432 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput5433 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 1, 1, -1, -1], ![1, 1, -2, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5433 : ExponentCode := normalNode8084

theorem canonicalSound5433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5433.moment H = canonicalOutput5433.moment H :=
  canonical_of_padded canonicalInput5433 canonicalOutput5433 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput5434 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5434 : ExponentCode := normalNode8163

theorem canonicalSound5434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5434.moment H = canonicalOutput5434.moment H :=
  canonical_of_padded canonicalInput5434 canonicalOutput5434 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput5435 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, -2, 0, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5435 : ExponentCode := normalNode8162

theorem canonicalSound5435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5435.moment H = canonicalOutput5435.moment H :=
  canonical_of_padded canonicalInput5435 canonicalOutput5435 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput5436 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, -1, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5436 : ExponentCode := normalNode8253

theorem canonicalSound5436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5436.moment H = canonicalOutput5436.moment H :=
  canonical_of_padded canonicalInput5436 canonicalOutput5436 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5437 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, -1, 0, -1], ![1, 0, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5437 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code654

theorem canonicalSound5437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5437.moment H = canonicalOutput5437.moment H :=
  canonical_of_padded canonicalInput5437 canonicalOutput5437 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput5438 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, -1, 0, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5438 : ExponentCode := normalNode8269

theorem canonicalSound5438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5438.moment H = canonicalOutput5438.moment H :=
  canonical_of_padded canonicalInput5438 canonicalOutput5438 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5439 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5439 : ExponentCode := normalNode8248

theorem canonicalSound5439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5439.moment H = canonicalOutput5439.moment H :=
  canonical_of_padded canonicalInput5439 canonicalOutput5439 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation56⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

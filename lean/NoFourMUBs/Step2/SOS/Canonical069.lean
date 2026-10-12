import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4416 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4416 : ExponentCode := normalNode8264

theorem canonicalSound4416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4416.moment H = canonicalOutput4416.moment H :=
  canonical_of_padded canonicalInput4416 canonicalOutput4416 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput4417 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4417 : ExponentCode := normalNode8229

theorem canonicalSound4417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4417.moment H = canonicalOutput4417.moment H :=
  canonical_of_padded canonicalInput4417 canonicalOutput4417 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4418 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4418 : ExponentCode := normalNode7573

theorem canonicalSound4418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4418.moment H = canonicalOutput4418.moment H :=
  canonical_of_padded canonicalInput4418 canonicalOutput4418 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation80⟩ (by decide +kernel) hH

def canonicalInput4419 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput4419 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound4419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4419.moment H = canonicalOutput4419.moment H :=
  canonical_of_padded canonicalInput4419 canonicalOutput4419 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4420 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![1, 1, -1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput4420 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound4420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4420.moment H = canonicalOutput4420.moment H :=
  canonical_of_padded canonicalInput4420 canonicalOutput4420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4421 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![2, 0, -1, 0, -1], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput4421 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound4421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4421.moment H = canonicalOutput4421.moment H :=
  canonical_of_padded canonicalInput4421 canonicalOutput4421 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4422 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, -1, 1, 1, -1], ![3, -1, -1, 0, -1], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput4422 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1332

theorem canonicalSound4422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4422.moment H = canonicalOutput4422.moment H :=
  canonical_of_padded canonicalInput4422 canonicalOutput4422 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4423 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, -1, 3], ![0, 2, 0, -1, -1], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4423 : ExponentCode := normalNode10122

theorem canonicalSound4423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4423.moment H = canonicalOutput4423.moment H :=
  canonical_of_padded canonicalInput4423 canonicalOutput4423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4424 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4424 : ExponentCode := normalNode9535

theorem canonicalSound4424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4424.moment H = canonicalOutput4424.moment H :=
  canonical_of_padded canonicalInput4424 canonicalOutput4424 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4425 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4425 : ExponentCode := normalNode8511

theorem canonicalSound4425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4425.moment H = canonicalOutput4425.moment H :=
  canonical_of_padded canonicalInput4425 canonicalOutput4425 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4426 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4426 : ExponentCode := normalNode6637

theorem canonicalSound4426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4426.moment H = canonicalOutput4426.moment H :=
  canonical_of_padded canonicalInput4426 canonicalOutput4426 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4427 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4427 : ExponentCode := normalNode6636

theorem canonicalSound4427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4427.moment H = canonicalOutput4427.moment H :=
  canonical_of_padded canonicalInput4427 canonicalOutput4427 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4428 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4428 : ExponentCode := normalNode6817

theorem canonicalSound4428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4428.moment H = canonicalOutput4428.moment H :=
  canonical_of_padded canonicalInput4428 canonicalOutput4428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4429 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4429 : ExponentCode := normalNode10387

theorem canonicalSound4429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4429.moment H = canonicalOutput4429.moment H :=
  canonical_of_padded canonicalInput4429 canonicalOutput4429 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4430 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, -1, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4430 : ExponentCode := normalNode8552

theorem canonicalSound4430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4430.moment H = canonicalOutput4430.moment H :=
  canonical_of_padded canonicalInput4430 canonicalOutput4430 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput4431 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![-1, 2, 1, -1, -1], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput4431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound4431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4431.moment H = canonicalOutput4431.moment H :=
  canonical_of_padded canonicalInput4431 canonicalOutput4431 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4432 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput4432 : ExponentCode := normalNode8498

theorem canonicalSound4432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4432.moment H = canonicalOutput4432.moment H :=
  canonical_of_padded canonicalInput4432 canonicalOutput4432 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4433 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput4433 : ExponentCode := normalNode8729

theorem canonicalSound4433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4433.moment H = canonicalOutput4433.moment H :=
  canonical_of_padded canonicalInput4433 canonicalOutput4433 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4434 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput4434 : ExponentCode := normalNode8495

theorem canonicalSound4434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4434.moment H = canonicalOutput4434.moment H :=
  canonical_of_padded canonicalInput4434 canonicalOutput4434 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4435 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput4435 : ExponentCode := normalNode10430

theorem canonicalSound4435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4435.moment H = canonicalOutput4435.moment H :=
  canonical_of_padded canonicalInput4435 canonicalOutput4435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4436 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4436 : ExponentCode := normalNode8510

theorem canonicalSound4436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4436.moment H = canonicalOutput4436.moment H :=
  canonical_of_padded canonicalInput4436 canonicalOutput4436 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4437 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4437 : ExponentCode := normalNode8485

theorem canonicalSound4437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4437.moment H = canonicalOutput4437.moment H :=
  canonical_of_padded canonicalInput4437 canonicalOutput4437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4438 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4438 : ExponentCode := normalNode8615

theorem canonicalSound4438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4438.moment H = canonicalOutput4438.moment H :=
  canonical_of_padded canonicalInput4438 canonicalOutput4438 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4439 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput4439 : ExponentCode := normalNode8653

theorem canonicalSound4439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4439.moment H = canonicalOutput4439.moment H :=
  canonical_of_padded canonicalInput4439 canonicalOutput4439 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4440 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput4440 : ExponentCode := normalNode8495

theorem canonicalSound4440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4440.moment H = canonicalOutput4440.moment H :=
  canonical_of_padded canonicalInput4440 canonicalOutput4440 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4441 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4441 : ExponentCode := normalNode6825

theorem canonicalSound4441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4441.moment H = canonicalOutput4441.moment H :=
  canonical_of_padded canonicalInput4441 canonicalOutput4441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4442 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![0, 1, 0, 0, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput4442 : ExponentCode := normalNode8570

theorem canonicalSound4442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4442.moment H = canonicalOutput4442.moment H :=
  canonical_of_padded canonicalInput4442 canonicalOutput4442 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4443 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4443 : ExponentCode := normalNode8394

theorem canonicalSound4443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4443.moment H = canonicalOutput4443.moment H :=
  canonical_of_padded canonicalInput4443 canonicalOutput4443 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4444 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput4444 : ExponentCode := normalNode8495

theorem canonicalSound4444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4444.moment H = canonicalOutput4444.moment H :=
  canonical_of_padded canonicalInput4444 canonicalOutput4444 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4445 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4445 : ExponentCode := normalNode6822

theorem canonicalSound4445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4445.moment H = canonicalOutput4445.moment H :=
  canonical_of_padded canonicalInput4445 canonicalOutput4445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4446 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 0, -3, 1], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4446 : ExponentCode := normalNode10015

theorem canonicalSound4446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4446.moment H = canonicalOutput4446.moment H :=
  canonical_of_padded canonicalInput4446 canonicalOutput4446 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation187⟩ (by decide +kernel) hH

def canonicalInput4447 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 0, -1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput4447 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code988

theorem canonicalSound4447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4447.moment H = canonicalOutput4447.moment H :=
  canonical_of_padded canonicalInput4447 canonicalOutput4447 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4448 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 0, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput4448 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound4448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4448.moment H = canonicalOutput4448.moment H :=
  canonical_of_padded canonicalInput4448 canonicalOutput4448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4449 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4449 : ExponentCode := normalNode10142

theorem canonicalSound4449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4449.moment H = canonicalOutput4449.moment H :=
  canonical_of_padded canonicalInput4449 canonicalOutput4449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4450 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput4450 : ExponentCode := normalNode8079

theorem canonicalSound4450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4450.moment H = canonicalOutput4450.moment H :=
  canonical_of_padded canonicalInput4450 canonicalOutput4450 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4451 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4451 : ExponentCode := normalNode6827

theorem canonicalSound4451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4451.moment H = canonicalOutput4451.moment H :=
  canonical_of_padded canonicalInput4451 canonicalOutput4451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4452 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4452 : ExponentCode := normalNode10388

theorem canonicalSound4452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4452.moment H = canonicalOutput4452.moment H :=
  canonical_of_padded canonicalInput4452 canonicalOutput4452 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4453 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 2, -1, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4453 : ExponentCode := normalNode8493

theorem canonicalSound4453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4453.moment H = canonicalOutput4453.moment H :=
  canonical_of_padded canonicalInput4453 canonicalOutput4453 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput4454 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput4454 : ExponentCode := normalNode8493

theorem canonicalSound4454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4454.moment H = canonicalOutput4454.moment H :=
  canonical_of_padded canonicalInput4454 canonicalOutput4454 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4455 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 2, 0, -1, -1], ![1, -1, -1, 0, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4455 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code521

theorem canonicalSound4455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4455.moment H = canonicalOutput4455.moment H :=
  canonical_of_padded canonicalInput4455 canonicalOutput4455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4456 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 2, 0, -1, -1], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4456 : ExponentCode := normalNode8166

theorem canonicalSound4456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4456.moment H = canonicalOutput4456.moment H :=
  canonical_of_padded canonicalInput4456 canonicalOutput4456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput4457 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![1, 0, 0, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4457 : ExponentCode := normalNode8735

theorem canonicalSound4457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4457.moment H = canonicalOutput4457.moment H :=
  canonical_of_padded canonicalInput4457 canonicalOutput4457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4458 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, -1, 0, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4458 : ExponentCode := normalNode8764

theorem canonicalSound4458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4458.moment H = canonicalOutput4458.moment H :=
  canonical_of_padded canonicalInput4458 canonicalOutput4458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4459 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, -1, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4459 : ExponentCode := normalNode8616

theorem canonicalSound4459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4459.moment H = canonicalOutput4459.moment H :=
  canonical_of_padded canonicalInput4459 canonicalOutput4459 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4460 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4460 : ExponentCode := normalNode8763

theorem canonicalSound4460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4460.moment H = canonicalOutput4460.moment H :=
  canonical_of_padded canonicalInput4460 canonicalOutput4460 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput4461 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4461 : ExponentCode := normalNode10124

theorem canonicalSound4461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4461.moment H = canonicalOutput4461.moment H :=
  canonical_of_padded canonicalInput4461 canonicalOutput4461 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4462 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4462 : ExponentCode := normalNode8619

theorem canonicalSound4462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4462.moment H = canonicalOutput4462.moment H :=
  canonical_of_padded canonicalInput4462 canonicalOutput4462 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4463 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput4463 : ExponentCode := normalNode8724

theorem canonicalSound4463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4463.moment H = canonicalOutput4463.moment H :=
  canonical_of_padded canonicalInput4463 canonicalOutput4463 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4464 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4464 : ExponentCode := normalNode10406

theorem canonicalSound4464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4464.moment H = canonicalOutput4464.moment H :=
  canonical_of_padded canonicalInput4464 canonicalOutput4464 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4465 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4465 : ExponentCode := normalNode9994

theorem canonicalSound4465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4465.moment H = canonicalOutput4465.moment H :=
  canonical_of_padded canonicalInput4465 canonicalOutput4465 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4466 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4466 : ExponentCode := normalNode8701

theorem canonicalSound4466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4466.moment H = canonicalOutput4466.moment H :=
  canonical_of_padded canonicalInput4466 canonicalOutput4466 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4467 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput4467 : ExponentCode := normalNode8714

theorem canonicalSound4467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4467.moment H = canonicalOutput4467.moment H :=
  canonical_of_padded canonicalInput4467 canonicalOutput4467 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4468 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, -1, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput4468 : ExponentCode := normalNode10175

theorem canonicalSound4468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4468.moment H = canonicalOutput4468.moment H :=
  canonical_of_padded canonicalInput4468 canonicalOutput4468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4469 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4469 : ExponentCode := normalNode10167

theorem canonicalSound4469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4469.moment H = canonicalOutput4469.moment H :=
  canonical_of_padded canonicalInput4469 canonicalOutput4469 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4470 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput4470 : ExponentCode := normalNode10161

theorem canonicalSound4470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4470.moment H = canonicalOutput4470.moment H :=
  canonical_of_padded canonicalInput4470 canonicalOutput4470 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4471 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4471 : ExponentCode := normalNode10177

theorem canonicalSound4471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4471.moment H = canonicalOutput4471.moment H :=
  canonical_of_padded canonicalInput4471 canonicalOutput4471 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput4472 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4472 : ExponentCode := normalNode8759

theorem canonicalSound4472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4472.moment H = canonicalOutput4472.moment H :=
  canonical_of_padded canonicalInput4472 canonicalOutput4472 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4473 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4473 : ExponentCode := normalNode8751

theorem canonicalSound4473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4473.moment H = canonicalOutput4473.moment H :=
  canonical_of_padded canonicalInput4473 canonicalOutput4473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4474 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4474 : ExponentCode := normalNode10116

theorem canonicalSound4474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4474.moment H = canonicalOutput4474.moment H :=
  canonical_of_padded canonicalInput4474 canonicalOutput4474 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4475 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4475 : ExponentCode := normalNode8380

theorem canonicalSound4475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4475.moment H = canonicalOutput4475.moment H :=
  canonical_of_padded canonicalInput4475 canonicalOutput4475 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4476 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, -1, -2, 1], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4476 : ExponentCode := normalNode9999

theorem canonicalSound4476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4476.moment H = canonicalOutput4476.moment H :=
  canonical_of_padded canonicalInput4476 canonicalOutput4476 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4477 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, -1, -1, 0], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4477 : ExponentCode := normalNode8008

theorem canonicalSound4477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4477.moment H = canonicalOutput4477.moment H :=
  canonical_of_padded canonicalInput4477 canonicalOutput4477 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4478 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, -1, -1, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4478 : ExponentCode := normalNode10143

theorem canonicalSound4478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4478.moment H = canonicalOutput4478.moment H :=
  canonical_of_padded canonicalInput4478 canonicalOutput4478 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4479 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -2, 0], ![1, -1, -1, 0, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4479 : ExponentCode := normalNode8007

theorem canonicalSound4479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4479.moment H = canonicalOutput4479.moment H :=
  canonical_of_padded canonicalInput4479 canonicalOutput4479 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation64⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

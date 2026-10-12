import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17408 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![1, -1, 4, -4], ![0, 2, -4, 2]]⟩

def canonicalOutput17408 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound17408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17408.moment H = canonicalOutput17408.moment H :=
  canonical_of_padded canonicalInput17408 canonicalOutput17408 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17409 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![1, 0, 4, -5], ![0, 1, -4, 3]]⟩

def canonicalOutput17409 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node130⟩

theorem canonicalSound17409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17409.moment H = canonicalOutput17409.moment H :=
  canonical_of_padded canonicalInput17409 canonicalOutput17409 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17410 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-3, 2, 1, -1, 1], ![2, -1, -2, 0, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput17410 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code983

theorem canonicalSound17410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17410.moment H = canonicalOutput17410.moment H :=
  canonical_of_padded canonicalInput17410 canonicalOutput17410 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17411 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-3, 2, 1, -1, 1], ![2, -1, 1, 0, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17411 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code983

theorem canonicalSound17411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17411.moment H = canonicalOutput17411.moment H :=
  canonical_of_padded canonicalInput17411 canonicalOutput17411 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17412 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 0, 2, 0, 0], ![1, -1, -1, -1, 2], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput17412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code540

theorem canonicalSound17412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17412.moment H = canonicalOutput17412.moment H :=
  canonical_of_padded canonicalInput17412 canonicalOutput17412 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17413 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 0, 2, 0, 0], ![1, -1, -1, 0, 1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput17413 : ExponentCode := normalNode2303

theorem canonicalSound17413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17413.moment H = canonicalOutput17413.moment H :=
  canonical_of_padded canonicalInput17413 canonicalOutput17413 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17414 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 0, 2, 0, 0], ![1, 2, -1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17414 : ExponentCode := normalNode2538

theorem canonicalSound17414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17414.moment H = canonicalOutput17414.moment H :=
  canonical_of_padded canonicalInput17414 canonicalOutput17414 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17415 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 1, 1, -1, 1], ![0, 1, -2, 0, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput17415 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code961

theorem canonicalSound17415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17415.moment H = canonicalOutput17415.moment H :=
  canonical_of_padded canonicalInput17415 canonicalOutput17415 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17416 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 1, 1, -1, 1], ![1, 1, -2, -1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17416 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound17416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17416.moment H = canonicalOutput17416.moment H :=
  canonical_of_padded canonicalInput17416 canonicalOutput17416 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17417 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 1, 1, -1, 1], ![1, 1, 1, -1, -2], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput17417 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound17417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17417.moment H = canonicalOutput17417.moment H :=
  canonical_of_padded canonicalInput17417 canonicalOutput17417 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17418 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 0, -1, 1], ![0, 0, 2, 0, -2], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput17418 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound17418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17418.moment H = canonicalOutput17418.moment H :=
  canonical_of_padded canonicalInput17418 canonicalOutput17418 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17419 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 0, -1, 1], ![1, -1, 2, 0, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17419 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound17419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17419.moment H = canonicalOutput17419.moment H :=
  canonical_of_padded canonicalInput17419 canonicalOutput17419 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17420 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 0, -1, 1], ![1, 0, -2, 0, 1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput17420 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound17420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17420.moment H = canonicalOutput17420.moment H :=
  canonical_of_padded canonicalInput17420 canonicalOutput17420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17421 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 1, -1, 0], ![1, -1, -2, 0, 2], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput17421 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound17421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17421.moment H = canonicalOutput17421.moment H :=
  canonical_of_padded canonicalInput17421 canonicalOutput17421 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17422 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 1, -1, 0], ![1, -1, 1, 0, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17422 : ExponentCode := normalNode4305

theorem canonicalSound17422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17422.moment H = canonicalOutput17422.moment H :=
  canonical_of_padded canonicalInput17422 canonicalOutput17422 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17423 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 1, -1, 0], ![2, -1, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17423 : ExponentCode := normalNode5432

theorem canonicalSound17423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17423.moment H = canonicalOutput17423.moment H :=
  canonical_of_padded canonicalInput17423 canonicalOutput17423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput17424 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 1, -1, 0], ![2, -1, 1, 0, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput17424 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound17424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17424.moment H = canonicalOutput17424.moment H :=
  canonical_of_padded canonicalInput17424 canonicalOutput17424 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17425 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![-2, 2, 2, -1, -1], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput17425 : ExponentCode := normalNode5601

theorem canonicalSound17425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17425.moment H = canonicalOutput17425.moment H :=
  canonical_of_padded canonicalInput17425 canonicalOutput17425 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17426 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -2, 1, 0, 2], ![0, 2, -2, 0, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput17426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code900

theorem canonicalSound17426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17426.moment H = canonicalOutput17426.moment H :=
  canonical_of_padded canonicalInput17426 canonicalOutput17426 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17427 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -2, 1, 0, 2], ![0, 3, -2, -1, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput17427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code935

theorem canonicalSound17427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17427.moment H = canonicalOutput17427.moment H :=
  canonical_of_padded canonicalInput17427 canonicalOutput17427 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17428 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, -1, 2], ![0, 1, 1, -1, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput17428 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound17428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17428.moment H = canonicalOutput17428.moment H :=
  canonical_of_padded canonicalInput17428 canonicalOutput17428 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17429 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, -1, 2], ![0, 1, 1, 0, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput17429 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17429.moment H = canonicalOutput17429.moment H :=
  canonical_of_padded canonicalInput17429 canonicalOutput17429 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17430 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, -1, 2], ![0, 2, -2, 0, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput17430 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound17430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17430.moment H = canonicalOutput17430.moment H :=
  canonical_of_padded canonicalInput17430 canonicalOutput17430 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17431 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, -1, 2], ![1, 0, 1, -1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound17431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17431.moment H = canonicalOutput17431.moment H :=
  canonical_of_padded canonicalInput17431 canonicalOutput17431 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17432 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, -1, 2], ![1, 0, 1, 0, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17432 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17432.moment H = canonicalOutput17432.moment H :=
  canonical_of_padded canonicalInput17432 canonicalOutput17432 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17433 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, -1, 2], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput17433 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound17433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17433.moment H = canonicalOutput17433.moment H :=
  canonical_of_padded canonicalInput17433 canonicalOutput17433 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17434 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, 1, 0], ![0, 0, 1, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput17434 : ExponentCode := normalNode2907

theorem canonicalSound17434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17434.moment H = canonicalOutput17434.moment H :=
  canonical_of_padded canonicalInput17434 canonicalOutput17434 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17435 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 1, 1, 0], ![1, 0, 1, -3, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17435 : ExponentCode := normalNode1852

theorem canonicalSound17435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17435.moment H = canonicalOutput17435.moment H :=
  canonical_of_padded canonicalInput17435 canonicalOutput17435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17436 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -2, 2], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput17436 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1056

theorem canonicalSound17436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17436.moment H = canonicalOutput17436.moment H :=
  canonical_of_padded canonicalInput17436 canonicalOutput17436 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17437 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![-1, 2, -1, -1, 1], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput17437 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1011

theorem canonicalSound17437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17437.moment H = canonicalOutput17437.moment H :=
  canonical_of_padded canonicalInput17437 canonicalOutput17437 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17438 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![0, 1, -2, 0, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput17438 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17438.moment H = canonicalOutput17438.moment H :=
  canonical_of_padded canonicalInput17438 canonicalOutput17438 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17439 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![0, 1, -1, -1, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput17439 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound17439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17439.moment H = canonicalOutput17439.moment H :=
  canonical_of_padded canonicalInput17439 canonicalOutput17439 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17440 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![0, 1, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput17440 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1262

theorem canonicalSound17440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17440.moment H = canonicalOutput17440.moment H :=
  canonical_of_padded canonicalInput17440 canonicalOutput17440 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17441 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![0, 2, 0, 0, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17441 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound17441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17441.moment H = canonicalOutput17441.moment H :=
  canonical_of_padded canonicalInput17441 canonicalOutput17441 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17442 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![1, 1, -3, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17442 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound17442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17442.moment H = canonicalOutput17442.moment H :=
  canonical_of_padded canonicalInput17442 canonicalOutput17442 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17443 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput17443 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code606

theorem canonicalSound17443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17443.moment H = canonicalOutput17443.moment H :=
  canonical_of_padded canonicalInput17443 canonicalOutput17443 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17444 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![1, 1, 0, -3, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput17444 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1247

theorem canonicalSound17444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17444.moment H = canonicalOutput17444.moment H :=
  canonical_of_padded canonicalInput17444 canonicalOutput17444 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17445 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![1, 1, 0, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17445 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code988

theorem canonicalSound17445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17445.moment H = canonicalOutput17445.moment H :=
  canonical_of_padded canonicalInput17445 canonicalOutput17445 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17446 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![2, 0, 0, 0, -2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput17446 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound17446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17446.moment H = canonicalOutput17446.moment H :=
  canonical_of_padded canonicalInput17446 canonicalOutput17446 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17447 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput17447 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound17447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17447.moment H = canonicalOutput17447.moment H :=
  canonical_of_padded canonicalInput17447 canonicalOutput17447 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17448 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput17448 : ExponentCode := normalNode3806

theorem canonicalSound17448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17448.moment H = canonicalOutput17448.moment H :=
  canonical_of_padded canonicalInput17448 canonicalOutput17448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17449 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 1, -1, -2, 2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput17449 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound17449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17449.moment H = canonicalOutput17449.moment H :=
  canonical_of_padded canonicalInput17449 canonicalOutput17449 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17450 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 1, -1, -1, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput17450 : ExponentCode := normalNode4206

theorem canonicalSound17450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17450.moment H = canonicalOutput17450.moment H :=
  canonical_of_padded canonicalInput17450 canonicalOutput17450 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17451 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput17451 : ExponentCode := normalNode3806

theorem canonicalSound17451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17451.moment H = canonicalOutput17451.moment H :=
  canonical_of_padded canonicalInput17451 canonicalOutput17451 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17452 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput17452 : ExponentCode := normalNode3759

theorem canonicalSound17452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17452.moment H = canonicalOutput17452.moment H :=
  canonical_of_padded canonicalInput17452 canonicalOutput17452 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17453 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 2, 0, -1, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17453 : ExponentCode := normalNode3759

theorem canonicalSound17453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17453.moment H = canonicalOutput17453.moment H :=
  canonical_of_padded canonicalInput17453 canonicalOutput17453 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17454 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 3, -1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17454 : ExponentCode := normalNode4205

theorem canonicalSound17454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17454.moment H = canonicalOutput17454.moment H :=
  canonical_of_padded canonicalInput17454 canonicalOutput17454 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17455 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput17455 : ExponentCode := normalNode3806

theorem canonicalSound17455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17455.moment H = canonicalOutput17455.moment H :=
  canonical_of_padded canonicalInput17455 canonicalOutput17455 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17456 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![1, 0, -1, -2, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput17456 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound17456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17456.moment H = canonicalOutput17456.moment H :=
  canonical_of_padded canonicalInput17456 canonicalOutput17456 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17457 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![1, 0, -1, -1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17457 : ExponentCode := normalNode4206

theorem canonicalSound17457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17457.moment H = canonicalOutput17457.moment H :=
  canonical_of_padded canonicalInput17457 canonicalOutput17457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17458 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17458 : ExponentCode := normalNode3806

theorem canonicalSound17458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17458.moment H = canonicalOutput17458.moment H :=
  canonical_of_padded canonicalInput17458 canonicalOutput17458 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17459 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![1, 1, -2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput17459 : ExponentCode := normalNode3361

theorem canonicalSound17459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17459.moment H = canonicalOutput17459.moment H :=
  canonical_of_padded canonicalInput17459 canonicalOutput17459 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17460 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, -1, 2, 0, 0], ![1, 1, 0, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17460 : ExponentCode := normalNode3760

theorem canonicalSound17460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17460.moment H = canonicalOutput17460.moment H :=
  canonical_of_padded canonicalInput17460 canonicalOutput17460 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17461 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 1, -2, 2], ![0, 2, -2, 0, 0], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17461 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code907

theorem canonicalSound17461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17461.moment H = canonicalOutput17461.moment H :=
  canonical_of_padded canonicalInput17461 canonicalOutput17461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17462 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 1, -2, 2], ![0, 2, -2, 1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17462 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code613

theorem canonicalSound17462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17462.moment H = canonicalOutput17462.moment H :=
  canonical_of_padded canonicalInput17462 canonicalOutput17462 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17463 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 1, -2, 2], ![1, -1, 1, 0, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17463 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code886

theorem canonicalSound17463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17463.moment H = canonicalOutput17463.moment H :=
  canonical_of_padded canonicalInput17463 canonicalOutput17463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17464 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, -2, 1], ![1, -1, -2, 1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput17464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code558

theorem canonicalSound17464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17464.moment H = canonicalOutput17464.moment H :=
  canonical_of_padded canonicalInput17464 canonicalOutput17464 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17465 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, -1, 0], ![0, 2, -1, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17465 : ExponentCode := normalNode4498

theorem canonicalSound17465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17465.moment H = canonicalOutput17465.moment H :=
  canonical_of_padded canonicalInput17465 canonicalOutput17465 (by decide) (by decide)
    ⟨true, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17466 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, -1, 0], ![0, 3, -1, -1, -1], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput17466 : ExponentCode := normalNode4486

theorem canonicalSound17466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17466.moment H = canonicalOutput17466.moment H :=
  canonical_of_padded canonicalInput17466 canonicalOutput17466 (by decide) (by decide)
    ⟨true, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17467 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, -1, 0], ![1, -1, -1, 0, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17467 : ExponentCode := normalNode4385

theorem canonicalSound17467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17467.moment H = canonicalOutput17467.moment H :=
  canonical_of_padded canonicalInput17467 canonicalOutput17467 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17468 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![0, -1, -1, -1, 3], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput17468 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code942

theorem canonicalSound17468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17468.moment H = canonicalOutput17468.moment H :=
  canonical_of_padded canonicalInput17468 canonicalOutput17468 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17469 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![0, -1, -1, 0, 2], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput17469 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code850

theorem canonicalSound17469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17469.moment H = canonicalOutput17469.moment H :=
  canonical_of_padded canonicalInput17469 canonicalOutput17469 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17470 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![0, 2, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17470 : ExponentCode := normalNode4212

theorem canonicalSound17470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17470.moment H = canonicalOutput17470.moment H :=
  canonical_of_padded canonicalInput17470 canonicalOutput17470 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17471 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![0, 3, -2, -1, 0], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput17471 : ExponentCode := normalNode3786

theorem canonicalSound17471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17471.moment H = canonicalOutput17471.moment H :=
  canonical_of_padded canonicalInput17471 canonicalOutput17471 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

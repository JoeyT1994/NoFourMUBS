import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4544 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput4544 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound4544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4544.moment H = canonicalOutput4544.moment H :=
  canonical_of_padded canonicalInput4544 canonicalOutput4544 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4545 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, -1, 2], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4545 : ExponentCode := normalNode10943

theorem canonicalSound4545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4545.moment H = canonicalOutput4545.moment H :=
  canonical_of_padded canonicalInput4545 canonicalOutput4545 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput4546 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 0, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4546 : ExponentCode := normalNode6838

theorem canonicalSound4546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4546.moment H = canonicalOutput4546.moment H :=
  canonical_of_padded canonicalInput4546 canonicalOutput4546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4547 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4547 : ExponentCode := normalNode6837

theorem canonicalSound4547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4547.moment H = canonicalOutput4547.moment H :=
  canonical_of_padded canonicalInput4547 canonicalOutput4547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput4548 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4548 : ExponentCode := normalNode6836

theorem canonicalSound4548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4548.moment H = canonicalOutput4548.moment H :=
  canonical_of_padded canonicalInput4548 canonicalOutput4548 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput4549 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4549 : ExponentCode := normalNode8632

theorem canonicalSound4549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4549.moment H = canonicalOutput4549.moment H :=
  canonical_of_padded canonicalInput4549 canonicalOutput4549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4550 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4550 : ExponentCode := normalNode8616

theorem canonicalSound4550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4550.moment H = canonicalOutput4550.moment H :=
  canonical_of_padded canonicalInput4550 canonicalOutput4550 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4551 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4551 : ExponentCode := normalNode6834

theorem canonicalSound4551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4551.moment H = canonicalOutput4551.moment H :=
  canonical_of_padded canonicalInput4551 canonicalOutput4551 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4552 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4552 : ExponentCode := normalNode8675

theorem canonicalSound4552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4552.moment H = canonicalOutput4552.moment H :=
  canonical_of_padded canonicalInput4552 canonicalOutput4552 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4553 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4553 : ExponentCode := normalNode6823

theorem canonicalSound4553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4553.moment H = canonicalOutput4553.moment H :=
  canonical_of_padded canonicalInput4553 canonicalOutput4553 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput4554 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4554 : ExponentCode := normalNode10085

theorem canonicalSound4554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4554.moment H = canonicalOutput4554.moment H :=
  canonical_of_padded canonicalInput4554 canonicalOutput4554 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput4555 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4555 : ExponentCode := normalNode8676

theorem canonicalSound4555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4555.moment H = canonicalOutput4555.moment H :=
  canonical_of_padded canonicalInput4555 canonicalOutput4555 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4556 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput4556 : ExponentCode := normalNode8676

theorem canonicalSound4556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4556.moment H = canonicalOutput4556.moment H :=
  canonical_of_padded canonicalInput4556 canonicalOutput4556 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput4557 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput4557 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound4557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4557.moment H = canonicalOutput4557.moment H :=
  canonical_of_padded canonicalInput4557 canonicalOutput4557 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4558 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4558 : ExponentCode := normalNode8172

theorem canonicalSound4558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4558.moment H = canonicalOutput4558.moment H :=
  canonical_of_padded canonicalInput4558 canonicalOutput4558 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4559 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4559 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code366

theorem canonicalSound4559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4559.moment H = canonicalOutput4559.moment H :=
  canonical_of_padded canonicalInput4559 canonicalOutput4559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4560 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4560 : ExponentCode := normalNode6833

theorem canonicalSound4560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4560.moment H = canonicalOutput4560.moment H :=
  canonical_of_padded canonicalInput4560 canonicalOutput4560 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput4561 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4561 : ExponentCode := normalNode8391

theorem canonicalSound4561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4561.moment H = canonicalOutput4561.moment H :=
  canonical_of_padded canonicalInput4561 canonicalOutput4561 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput4562 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput4562 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code523

theorem canonicalSound4562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4562.moment H = canonicalOutput4562.moment H :=
  canonical_of_padded canonicalInput4562 canonicalOutput4562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4563 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4563 : ExponentCode := normalNode8144

theorem canonicalSound4563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4563.moment H = canonicalOutput4563.moment H :=
  canonical_of_padded canonicalInput4563 canonicalOutput4563 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4564 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4564 : ExponentCode := normalNode8751

theorem canonicalSound4564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4564.moment H = canonicalOutput4564.moment H :=
  canonical_of_padded canonicalInput4564 canonicalOutput4564 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4565 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4565 : ExponentCode := normalNode8675

theorem canonicalSound4565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4565.moment H = canonicalOutput4565.moment H :=
  canonical_of_padded canonicalInput4565 canonicalOutput4565 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4566 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput4566 : ExponentCode := normalNode8695

theorem canonicalSound4566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4566.moment H = canonicalOutput4566.moment H :=
  canonical_of_padded canonicalInput4566 canonicalOutput4566 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput4567 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4567 : ExponentCode := normalNode8566

theorem canonicalSound4567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4567.moment H = canonicalOutput4567.moment H :=
  canonical_of_padded canonicalInput4567 canonicalOutput4567 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4568 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput4568 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code952

theorem canonicalSound4568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4568.moment H = canonicalOutput4568.moment H :=
  canonical_of_padded canonicalInput4568 canonicalOutput4568 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4569 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4569 : ExponentCode := normalNode8172

theorem canonicalSound4569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4569.moment H = canonicalOutput4569.moment H :=
  canonical_of_padded canonicalInput4569 canonicalOutput4569 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4570 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput4570 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound4570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4570.moment H = canonicalOutput4570.moment H :=
  canonical_of_padded canonicalInput4570 canonicalOutput4570 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4571 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![1, -2, 1, -1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput4571 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound4571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4571.moment H = canonicalOutput4571.moment H :=
  canonical_of_padded canonicalInput4571 canonicalOutput4571 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4572 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -2, 1, 0], ![1, 1, 0, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput4572 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound4572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4572.moment H = canonicalOutput4572.moment H :=
  canonical_of_padded canonicalInput4572 canonicalOutput4572 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4573 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 0, 0], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4573 : ExponentCode := normalNode8486

theorem canonicalSound4573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4573.moment H = canonicalOutput4573.moment H :=
  canonical_of_padded canonicalInput4573 canonicalOutput4573 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4574 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput4574 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1381

theorem canonicalSound4574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4574.moment H = canonicalOutput4574.moment H :=
  canonical_of_padded canonicalInput4574 canonicalOutput4574 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4575 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4575 : ExponentCode := normalNode8683

theorem canonicalSound4575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4575.moment H = canonicalOutput4575.moment H :=
  canonical_of_padded canonicalInput4575 canonicalOutput4575 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4576 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4576 : ExponentCode := normalNode6832

theorem canonicalSound4576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4576.moment H = canonicalOutput4576.moment H :=
  canonical_of_padded canonicalInput4576 canonicalOutput4576 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4577 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 0, 0, 1, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4577 : ExponentCode := normalNode8697

theorem canonicalSound4577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4577.moment H = canonicalOutput4577.moment H :=
  canonical_of_padded canonicalInput4577 canonicalOutput4577 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4578 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, -1, 1], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4578 : ExponentCode := normalNode8486

theorem canonicalSound4578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4578.moment H = canonicalOutput4578.moment H :=
  canonical_of_padded canonicalInput4578 canonicalOutput4578 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4579 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4579 : ExponentCode := normalNode8648

theorem canonicalSound4579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4579.moment H = canonicalOutput4579.moment H :=
  canonical_of_padded canonicalInput4579 canonicalOutput4579 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4580 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4580 : ExponentCode := normalNode8610

theorem canonicalSound4580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4580.moment H = canonicalOutput4580.moment H :=
  canonical_of_padded canonicalInput4580 canonicalOutput4580 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4581 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4581 : ExponentCode := normalNode8610

theorem canonicalSound4581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4581.moment H = canonicalOutput4581.moment H :=
  canonical_of_padded canonicalInput4581 canonicalOutput4581 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4582 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, -2, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4582 : ExponentCode := normalNode10120

theorem canonicalSound4582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4582.moment H = canonicalOutput4582.moment H :=
  canonical_of_padded canonicalInput4582 canonicalOutput4582 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4583 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4583 : ExponentCode := normalNode8682

theorem canonicalSound4583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4583.moment H = canonicalOutput4583.moment H :=
  canonical_of_padded canonicalInput4583 canonicalOutput4583 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4584 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4584 : ExponentCode := normalNode8672

theorem canonicalSound4584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4584.moment H = canonicalOutput4584.moment H :=
  canonical_of_padded canonicalInput4584 canonicalOutput4584 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4585 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4585 : ExponentCode := normalNode8672

theorem canonicalSound4585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4585.moment H = canonicalOutput4585.moment H :=
  canonical_of_padded canonicalInput4585 canonicalOutput4585 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4586 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4586 : ExponentCode := normalNode8639

theorem canonicalSound4586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4586.moment H = canonicalOutput4586.moment H :=
  canonical_of_padded canonicalInput4586 canonicalOutput4586 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4587 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4587 : ExponentCode := normalNode8672

theorem canonicalSound4587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4587.moment H = canonicalOutput4587.moment H :=
  canonical_of_padded canonicalInput4587 canonicalOutput4587 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4588 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput4588 : ExponentCode := normalNode8642

theorem canonicalSound4588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4588.moment H = canonicalOutput4588.moment H :=
  canonical_of_padded canonicalInput4588 canonicalOutput4588 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4589 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput4589 : ExponentCode := normalNode8670

theorem canonicalSound4589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4589.moment H = canonicalOutput4589.moment H :=
  canonical_of_padded canonicalInput4589 canonicalOutput4589 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4590 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, 0, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4590 : ExponentCode := normalNode8566

theorem canonicalSound4590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4590.moment H = canonicalOutput4590.moment H :=
  canonical_of_padded canonicalInput4590 canonicalOutput4590 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4591 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput4591 : ExponentCode := normalNode8616

theorem canonicalSound4591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4591.moment H = canonicalOutput4591.moment H :=
  canonical_of_padded canonicalInput4591 canonicalOutput4591 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput4592 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, -1, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4592 : ExponentCode := normalNode8675

theorem canonicalSound4592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4592.moment H = canonicalOutput4592.moment H :=
  canonical_of_padded canonicalInput4592 canonicalOutput4592 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4593 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput4593 : ExponentCode := normalNode10118

theorem canonicalSound4593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4593.moment H = canonicalOutput4593.moment H :=
  canonical_of_padded canonicalInput4593 canonicalOutput4593 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4594 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput4594 : ExponentCode := normalNode7569

theorem canonicalSound4594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4594.moment H = canonicalOutput4594.moment H :=
  canonical_of_padded canonicalInput4594 canonicalOutput4594 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4595 : ExponentCode := ⟨4, 5, ![![-2, -1, 1, 1, 1], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput4595 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1384

theorem canonicalSound4595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4595.moment H = canonicalOutput4595.moment H :=
  canonical_of_padded canonicalInput4595 canonicalOutput4595 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4596 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 0, 0, 1, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4596 : ExponentCode := normalNode6837

theorem canonicalSound4596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4596.moment H = canonicalOutput4596.moment H :=
  canonical_of_padded canonicalInput4596 canonicalOutput4596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4597 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 0, 0, 1, -1], ![1, 0, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4597 : ExponentCode := normalNode6833

theorem canonicalSound4597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4597.moment H = canonicalOutput4597.moment H :=
  canonical_of_padded canonicalInput4597 canonicalOutput4597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput4598 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4598 : ExponentCode := normalNode6836

theorem canonicalSound4598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4598.moment H = canonicalOutput4598.moment H :=
  canonical_of_padded canonicalInput4598 canonicalOutput4598 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput4599 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, -2, 1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4599 : ExponentCode := normalNode6823

theorem canonicalSound4599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4599.moment H = canonicalOutput4599.moment H :=
  canonical_of_padded canonicalInput4599 canonicalOutput4599 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput4600 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput4600 : ExponentCode := normalNode8676

theorem canonicalSound4600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4600.moment H = canonicalOutput4600.moment H :=
  canonical_of_padded canonicalInput4600 canonicalOutput4600 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput4601 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput4601 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code523

theorem canonicalSound4601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4601.moment H = canonicalOutput4601.moment H :=
  canonical_of_padded canonicalInput4601 canonicalOutput4601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4602 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, -1, -2, 1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4602 : ExponentCode := normalNode6824

theorem canonicalSound4602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4602.moment H = canonicalOutput4602.moment H :=
  canonical_of_padded canonicalInput4602 canonicalOutput4602 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput4603 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput4603 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code522

theorem canonicalSound4603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4603.moment H = canonicalOutput4603.moment H :=
  canonical_of_padded canonicalInput4603 canonicalOutput4603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4604 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -2, 1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4604 : ExponentCode := normalNode8642

theorem canonicalSound4604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4604.moment H = canonicalOutput4604.moment H :=
  canonical_of_padded canonicalInput4604 canonicalOutput4604 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4605 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -2, 0, 2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4605 : ExponentCode := normalNode8644

theorem canonicalSound4605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4605.moment H = canonicalOutput4605.moment H :=
  canonical_of_padded canonicalInput4605 canonicalOutput4605 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4606 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -2, 1, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput4606 : ExponentCode := normalNode6823

theorem canonicalSound4606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4606.moment H = canonicalOutput4606.moment H :=
  canonical_of_padded canonicalInput4606 canonicalOutput4606 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4607 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput4607 : ExponentCode := normalNode8642

theorem canonicalSound4607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4607.moment H = canonicalOutput4607.moment H :=
  canonical_of_padded canonicalInput4607 canonicalOutput4607 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation48⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

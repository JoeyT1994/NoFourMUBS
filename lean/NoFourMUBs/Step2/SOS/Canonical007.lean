import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput448 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![-1, 2, 0, 0, -1], ![2, 0, -2, 1, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput448 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code873

theorem canonicalSound448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput448.moment H = canonicalOutput448.moment H :=
  canonical_of_padded canonicalInput448 canonicalOutput448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput449 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 0, 1, 1], ![1, 0, 1, -2, 0], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput449 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code909

theorem canonicalSound449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput449.moment H = canonicalOutput449.moment H :=
  canonical_of_padded canonicalInput449 canonicalOutput449 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput450 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 0, 1, 1], ![1, 0, 1, 0, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput450 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code909

theorem canonicalSound450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput450.moment H = canonicalOutput450.moment H :=
  canonical_of_padded canonicalInput450 canonicalOutput450 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput451 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 0, 1, 1], ![1, 1, 1, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput451 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code928

theorem canonicalSound451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput451.moment H = canonicalOutput451.moment H :=
  canonical_of_padded canonicalInput451 canonicalOutput451 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput452 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 1, 1, 0], ![0, 2, -2, -1, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput452 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code836

theorem canonicalSound452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput452.moment H = canonicalOutput452.moment H :=
  canonical_of_padded canonicalInput452 canonicalOutput452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput453 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 1, 1, 0], ![1, 0, -2, 0, 1], ![2, 2, 0, -2, -2]]⟩

def canonicalOutput453 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code909

theorem canonicalSound453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput453.moment H = canonicalOutput453.moment H :=
  canonical_of_padded canonicalInput453 canonicalOutput453 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput454 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 1, 1, 0], ![1, 1, -2, -1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput454 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code928

theorem canonicalSound454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput454.moment H = canonicalOutput454.moment H :=
  canonical_of_padded canonicalInput454 canonicalOutput454 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput455 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -2, 1, 1, 0], ![1, 2, -1, 0, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput455 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code832

theorem canonicalSound455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput455.moment H = canonicalOutput455.moment H :=
  canonical_of_padded canonicalInput455 canonicalOutput455 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput456 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, -1, 1, 1, -1], ![1, 2, -2, 0, -1], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput456 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1364

theorem canonicalSound456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput456.moment H = canonicalOutput456.moment H :=
  canonical_of_padded canonicalInput456 canonicalOutput456 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput457 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, -2, 0, 1], ![1, -2, 0, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput457 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code997

theorem canonicalSound457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput457.moment H = canonicalOutput457.moment H :=
  canonical_of_padded canonicalInput457 canonicalOutput457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput458 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput458 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code942

theorem canonicalSound458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput458.moment H = canonicalOutput458.moment H :=
  canonical_of_padded canonicalInput458 canonicalOutput458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput459 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, -2, -1], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput459 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1013

theorem canonicalSound459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput459.moment H = canonicalOutput459.moment H :=
  canonical_of_padded canonicalInput459 canonicalOutput459 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput460 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, -2, 1, 0], ![1, -2, 0, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput460 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code997

theorem canonicalSound460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput460.moment H = canonicalOutput460.moment H :=
  canonical_of_padded canonicalInput460 canonicalOutput460 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput461 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, -2, 1, 0], ![1, -2, 1, -1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput461 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code951

theorem canonicalSound461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput461.moment H = canonicalOutput461.moment H :=
  canonical_of_padded canonicalInput461 canonicalOutput461 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput462 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, -2, 1, 0], ![1, 1, 1, -1, -2], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput462 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1013

theorem canonicalSound462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput462.moment H = canonicalOutput462.moment H :=
  canonical_of_padded canonicalInput462 canonicalOutput462 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput463 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, 0, 1, -2], ![1, 1, -2, -1, 1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput463 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1013

theorem canonicalSound463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput463.moment H = canonicalOutput463.moment H :=
  canonical_of_padded canonicalInput463 canonicalOutput463 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput464 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code942

theorem canonicalSound464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput464.moment H = canonicalOutput464.moment H :=
  canonical_of_padded canonicalInput464 canonicalOutput464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput465 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 2, -2, 0, 0], ![1, -1, 1, -2, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput465 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput465.moment H = canonicalOutput465.moment H :=
  canonical_of_padded canonicalInput465 canonicalOutput465 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput466 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput466 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code875

theorem canonicalSound466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput466.moment H = canonicalOutput466.moment H :=
  canonical_of_padded canonicalInput466 canonicalOutput466 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput467 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 2, -1, 0, -1], ![1, -1, 1, -2, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput467 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput467.moment H = canonicalOutput467.moment H :=
  canonical_of_padded canonicalInput467 canonicalOutput467 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput468 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput468 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput468.moment H = canonicalOutput468.moment H :=
  canonical_of_padded canonicalInput468 canonicalOutput468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput469 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput469 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code875

theorem canonicalSound469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput469.moment H = canonicalOutput469.moment H :=
  canonical_of_padded canonicalInput469 canonicalOutput469 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput470 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput470 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code852

theorem canonicalSound470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput470.moment H = canonicalOutput470.moment H :=
  canonical_of_padded canonicalInput470 canonicalOutput470 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput471 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -2, 0, 0, 1], ![1, 0, -2, 1, 0], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput471 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code854

theorem canonicalSound471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput471.moment H = canonicalOutput471.moment H :=
  canonical_of_padded canonicalInput471 canonicalOutput471 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput472 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -2, 0, 0, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput472 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1006

theorem canonicalSound472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput472.moment H = canonicalOutput472.moment H :=
  canonical_of_padded canonicalInput472 canonicalOutput472 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput473 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -2, 0, 1, 0], ![0, 2, -2, -1, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput473 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code852

theorem canonicalSound473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput473.moment H = canonicalOutput473.moment H :=
  canonical_of_padded canonicalInput473 canonicalOutput473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput474 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -2, 0, 1, 0], ![1, 0, -2, 0, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput474 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code854

theorem canonicalSound474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput474.moment H = canonicalOutput474.moment H :=
  canonical_of_padded canonicalInput474 canonicalOutput474 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput475 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -2, 0, 1, 0], ![1, 1, -2, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput475 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1006

theorem canonicalSound475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput475.moment H = canonicalOutput475.moment H :=
  canonical_of_padded canonicalInput475 canonicalOutput475 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput476 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -1, -1, 1, 0], ![1, -1, 1, -2, 1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput476 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput476.moment H = canonicalOutput476.moment H :=
  canonical_of_padded canonicalInput476 canonicalOutput476 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput477 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, -1, 0, 1, -1], ![1, -1, 1, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput477 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput477.moment H = canonicalOutput477.moment H :=
  canonical_of_padded canonicalInput477 canonicalOutput477 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput478 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, 0, -2, 1, 0], ![0, 2, 1, -1, -2], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput478 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code936

theorem canonicalSound478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput478.moment H = canonicalOutput478.moment H :=
  canonical_of_padded canonicalInput478 canonicalOutput478 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput479 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, 0, -2, 1, 0], ![1, -2, 1, -1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code952

theorem canonicalSound479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput479.moment H = canonicalOutput479.moment H :=
  canonical_of_padded canonicalInput479 canonicalOutput479 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput480 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![1, 0, -2, 1, 0], ![1, 2, 0, 0, -3], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput480 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code931

theorem canonicalSound480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput480.moment H = canonicalOutput480.moment H :=
  canonical_of_padded canonicalInput480 canonicalOutput480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput481 : ExponentCode := ⟨3, 5, ![![-3, 0, 1, 1, 1], ![1, 2, -2, 1, -2], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput481 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput481.moment H = canonicalOutput481.moment H :=
  canonical_of_padded canonicalInput481 canonicalOutput481 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput482 : ExponentCode := ⟨4, 5, ![![-3, 0, 1, 1, 1], ![2, 0, -1, 0, -1], ![0, 2, 1, -2, -1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput482 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code422

theorem canonicalSound482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput482.moment H = canonicalOutput482.moment H :=
  canonical_of_padded canonicalInput482 canonicalOutput482 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput483 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![-2, 2, 2, -2], ![5, -2, -3, 0]]⟩

def canonicalOutput483 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code24

theorem canonicalSound483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput483.moment H = canonicalOutput483.moment H :=
  canonical_of_padded canonicalInput483 canonicalOutput483 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput484 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![-2, 3, 1, -2], ![5, -3, -2, 0]]⟩

def canonicalOutput484 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code25

theorem canonicalSound484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput484.moment H = canonicalOutput484.moment H :=
  canonical_of_padded canonicalInput484 canonicalOutput484 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput485 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![-1, -2, 2, 1], ![4, 2, -3, -3]]⟩

def canonicalOutput485 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code34

theorem canonicalSound485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput485.moment H = canonicalOutput485.moment H :=
  canonical_of_padded canonicalInput485 canonicalOutput485 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput486 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![-1, -2, 3, 0], ![4, 2, -4, -2]]⟩

def canonicalOutput486 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code35

theorem canonicalSound486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput486.moment H = canonicalOutput486.moment H :=
  canonical_of_padded canonicalInput486 canonicalOutput486 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput487 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![-1, 4, -2, -1], ![4, -4, 1, -1]]⟩

def canonicalOutput487 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput487.moment H = canonicalOutput487.moment H :=
  canonical_of_padded canonicalInput487 canonicalOutput487 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput488 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -3, 2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput488 : ExponentCode := normalNode144

theorem canonicalSound488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput488.moment H = canonicalOutput488.moment H :=
  canonical_of_padded canonicalInput488 canonicalOutput488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput489 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![0, -3, 2, 1], ![1, 1, -2, 0], ![2, 2, -1, -3]]⟩

def canonicalOutput489 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1245

theorem canonicalSound489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput489.moment H = canonicalOutput489.moment H :=
  canonical_of_padded canonicalInput489 canonicalOutput489 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput490 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![0, -3, 2, 1], ![3, 3, -3, -3]]⟩

def canonicalOutput490 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code51

theorem canonicalSound490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput490.moment H = canonicalOutput490.moment H :=
  canonical_of_padded canonicalInput490 canonicalOutput490 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput491 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 0, 0, 0], ![1, 1, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput491 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1203

theorem canonicalSound491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput491.moment H = canonicalOutput491.moment H :=
  canonical_of_padded canonicalInput491 canonicalOutput491 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput492 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput492 : ExponentCode := normalNode5402

theorem canonicalSound492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput492.moment H = canonicalOutput492.moment H :=
  canonical_of_padded canonicalInput492 canonicalOutput492 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput493 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput493 : ExponentCode := normalNode4166

theorem canonicalSound493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput493.moment H = canonicalOutput493.moment H :=
  canonical_of_padded canonicalInput493 canonicalOutput493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput494 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput494 : ExponentCode := normalNode4160

theorem canonicalSound494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput494.moment H = canonicalOutput494.moment H :=
  canonical_of_padded canonicalInput494 canonicalOutput494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput495 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![2, -1, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput495 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code48

theorem canonicalSound495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput495.moment H = canonicalOutput495.moment H :=
  canonical_of_padded canonicalInput495 canonicalOutput495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput496 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput496 : ExponentCode := normalNode88

theorem canonicalSound496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput496.moment H = canonicalOutput496.moment H :=
  canonical_of_padded canonicalInput496 canonicalOutput496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput497 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput497 : ExponentCode := normalNode4151

theorem canonicalSound497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput497.moment H = canonicalOutput497.moment H :=
  canonical_of_padded canonicalInput497 canonicalOutput497 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput498 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 2, -3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput498 : ExponentCode := normalNode151

theorem canonicalSound498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput498.moment H = canonicalOutput498.moment H :=
  canonical_of_padded canonicalInput498 canonicalOutput498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput499 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput499 : ExponentCode := normalNode81

theorem canonicalSound499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput499.moment H = canonicalOutput499.moment H :=
  canonical_of_padded canonicalInput499 canonicalOutput499 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput500 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput500 : ExponentCode := normalNode4158

theorem canonicalSound500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput500.moment H = canonicalOutput500.moment H :=
  canonical_of_padded canonicalInput500 canonicalOutput500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput501 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput501 : ExponentCode := normalNode1743

theorem canonicalSound501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput501.moment H = canonicalOutput501.moment H :=
  canonical_of_padded canonicalInput501 canonicalOutput501 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput502 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput502 : ExponentCode := normalNode5504

theorem canonicalSound502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput502.moment H = canonicalOutput502.moment H :=
  canonical_of_padded canonicalInput502 canonicalOutput502 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput503 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput503 : ExponentCode := normalNode1743

theorem canonicalSound503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput503.moment H = canonicalOutput503.moment H :=
  canonical_of_padded canonicalInput503 canonicalOutput503 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput504 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput504 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1203

theorem canonicalSound504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput504.moment H = canonicalOutput504.moment H :=
  canonical_of_padded canonicalInput504 canonicalOutput504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput505 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 1, 1, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput505 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code934

theorem canonicalSound505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput505.moment H = canonicalOutput505.moment H :=
  canonical_of_padded canonicalInput505 canonicalOutput505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput506 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![0, -2, 1, 1], ![2, 0, 1, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput506 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput506.moment H = canonicalOutput506.moment H :=
  canonical_of_padded canonicalInput506 canonicalOutput506 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput507 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![0, -2, 4, -2], ![3, 2, -5, 0]]⟩

def canonicalOutput507 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code54

theorem canonicalSound507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput507.moment H = canonicalOutput507.moment H :=
  canonical_of_padded canonicalInput507 canonicalOutput507 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput508 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput508 : ExponentCode := normalNode5322

theorem canonicalSound508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput508.moment H = canonicalOutput508.moment H :=
  canonical_of_padded canonicalInput508 canonicalOutput508 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput509 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput509 : ExponentCode := normalNode6873

theorem canonicalSound509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput509.moment H = canonicalOutput509.moment H :=
  canonical_of_padded canonicalInput509 canonicalOutput509 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput510 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput510 : ExponentCode := normalNode3390

theorem canonicalSound510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput510.moment H = canonicalOutput510.moment H :=
  canonical_of_padded canonicalInput510 canonicalOutput510 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput511 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput511 : ExponentCode := normalNode3392

theorem canonicalSound511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput511.moment H = canonicalOutput511.moment H :=
  canonical_of_padded canonicalInput511 canonicalOutput511 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10432 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, -1, 3, -2], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10432 : ExponentCode := normalNode5265

theorem canonicalSound10432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10432.moment H = canonicalOutput10432.moment H :=
  canonical_of_padded canonicalInput10432 canonicalOutput10432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10433 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, -1, 3, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput10433 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code594

theorem canonicalSound10433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10433.moment H = canonicalOutput10433.moment H :=
  canonical_of_padded canonicalInput10433 canonicalOutput10433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10434 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput10434 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1710⟩

theorem canonicalSound10434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10434.moment H = canonicalOutput10434.moment H :=
  canonical_of_padded canonicalInput10434 canonicalOutput10434 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10435 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10435 : ExponentCode := normalNode1796

theorem canonicalSound10435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10435.moment H = canonicalOutput10435.moment H :=
  canonical_of_padded canonicalInput10435 canonicalOutput10435 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10436 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10436 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2423⟩

theorem canonicalSound10436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10436.moment H = canonicalOutput10436.moment H :=
  canonical_of_padded canonicalInput10436 canonicalOutput10436 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10437 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10437 : ExponentCode := normalNode9972

theorem canonicalSound10437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10437.moment H = canonicalOutput10437.moment H :=
  canonical_of_padded canonicalInput10437 canonicalOutput10437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10438 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10438 : ExponentCode := normalNode9972

theorem canonicalSound10438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10438.moment H = canonicalOutput10438.moment H :=
  canonical_of_padded canonicalInput10438 canonicalOutput10438 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10439 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput10439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound10439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10439.moment H = canonicalOutput10439.moment H :=
  canonical_of_padded canonicalInput10439 canonicalOutput10439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10440 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10440 : ExponentCode := normalNode1755

theorem canonicalSound10440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10440.moment H = canonicalOutput10440.moment H :=
  canonical_of_padded canonicalInput10440 canonicalOutput10440 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10441 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput10441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩

theorem canonicalSound10441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10441.moment H = canonicalOutput10441.moment H :=
  canonical_of_padded canonicalInput10441 canonicalOutput10441 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10442 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput10442 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound10442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10442.moment H = canonicalOutput10442.moment H :=
  canonical_of_padded canonicalInput10442 canonicalOutput10442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10443 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1629⟩

theorem canonicalSound10443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10443.moment H = canonicalOutput10443.moment H :=
  canonical_of_padded canonicalInput10443 canonicalOutput10443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10444 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10444 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound10444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10444.moment H = canonicalOutput10444.moment H :=
  canonical_of_padded canonicalInput10444 canonicalOutput10444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10445 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![1, -1, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput10445 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code743

theorem canonicalSound10445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10445.moment H = canonicalOutput10445.moment H :=
  canonical_of_padded canonicalInput10445 canonicalOutput10445 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10446 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput10446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound10446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10446.moment H = canonicalOutput10446.moment H :=
  canonical_of_padded canonicalInput10446 canonicalOutput10446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10447 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -2, 3], ![1, 1, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput10447 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1155

theorem canonicalSound10447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10447.moment H = canonicalOutput10447.moment H :=
  canonical_of_padded canonicalInput10447 canonicalOutput10447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10448 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput10448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node392⟩

theorem canonicalSound10448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10448.moment H = canonicalOutput10448.moment H :=
  canonical_of_padded canonicalInput10448 canonicalOutput10448 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10449 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10449 : ExponentCode := normalNode4311

theorem canonicalSound10449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10449.moment H = canonicalOutput10449.moment H :=
  canonical_of_padded canonicalInput10449 canonicalOutput10449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10450 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10450 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound10450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10450.moment H = canonicalOutput10450.moment H :=
  canonical_of_padded canonicalInput10450 canonicalOutput10450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10451 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput10451 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code881

theorem canonicalSound10451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10451.moment H = canonicalOutput10451.moment H :=
  canonical_of_padded canonicalInput10451 canonicalOutput10451 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10452 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput10452 : ExponentCode := normalNode3945

theorem canonicalSound10452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10452.moment H = canonicalOutput10452.moment H :=
  canonical_of_padded canonicalInput10452 canonicalOutput10452 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10453 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10453 : ExponentCode := normalNode5289

theorem canonicalSound10453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10453.moment H = canonicalOutput10453.moment H :=
  canonical_of_padded canonicalInput10453 canonicalOutput10453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10454 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10454 : ExponentCode := normalNode5288

theorem canonicalSound10454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10454.moment H = canonicalOutput10454.moment H :=
  canonical_of_padded canonicalInput10454 canonicalOutput10454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10455 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput10455 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound10455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10455.moment H = canonicalOutput10455.moment H :=
  canonical_of_padded canonicalInput10455 canonicalOutput10455 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10456 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput10456 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1258⟩

theorem canonicalSound10456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10456.moment H = canonicalOutput10456.moment H :=
  canonical_of_padded canonicalInput10456 canonicalOutput10456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10457 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound10457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10457.moment H = canonicalOutput10457.moment H :=
  canonical_of_padded canonicalInput10457 canonicalOutput10457 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10458 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput10458 : ExponentCode := normalNode2397

theorem canonicalSound10458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10458.moment H = canonicalOutput10458.moment H :=
  canonical_of_padded canonicalInput10458 canonicalOutput10458 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10459 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10459 : ExponentCode := normalNode4299

theorem canonicalSound10459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10459.moment H = canonicalOutput10459.moment H :=
  canonical_of_padded canonicalInput10459 canonicalOutput10459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10460 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10460 : ExponentCode := normalNode4304

theorem canonicalSound10460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10460.moment H = canonicalOutput10460.moment H :=
  canonical_of_padded canonicalInput10460 canonicalOutput10460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10461 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10461 : ExponentCode := normalNode8981

theorem canonicalSound10461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10461.moment H = canonicalOutput10461.moment H :=
  canonical_of_padded canonicalInput10461 canonicalOutput10461 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10462 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10462 : ExponentCode := normalNode8981

theorem canonicalSound10462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10462.moment H = canonicalOutput10462.moment H :=
  canonical_of_padded canonicalInput10462 canonicalOutput10462 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10463 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10463 : ExponentCode := normalNode3965

theorem canonicalSound10463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10463.moment H = canonicalOutput10463.moment H :=
  canonical_of_padded canonicalInput10463 canonicalOutput10463 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10464 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10464 : ExponentCode := normalNode10346

theorem canonicalSound10464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10464.moment H = canonicalOutput10464.moment H :=
  canonical_of_padded canonicalInput10464 canonicalOutput10464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10465 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10465 : ExponentCode := normalNode8970

theorem canonicalSound10465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10465.moment H = canonicalOutput10465.moment H :=
  canonical_of_padded canonicalInput10465 canonicalOutput10465 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10466 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10466 : ExponentCode := normalNode10347

theorem canonicalSound10466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10466.moment H = canonicalOutput10466.moment H :=
  canonical_of_padded canonicalInput10466 canonicalOutput10466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10467 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput10467 : ExponentCode := normalNode10347

theorem canonicalSound10467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10467.moment H = canonicalOutput10467.moment H :=
  canonical_of_padded canonicalInput10467 canonicalOutput10467 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10468 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput10468 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound10468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10468.moment H = canonicalOutput10468.moment H :=
  canonical_of_padded canonicalInput10468 canonicalOutput10468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10469 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 4, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput10469 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1273⟩

theorem canonicalSound10469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10469.moment H = canonicalOutput10469.moment H :=
  canonical_of_padded canonicalInput10469 canonicalOutput10469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10470 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10470 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1741⟩

theorem canonicalSound10470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10470.moment H = canonicalOutput10470.moment H :=
  canonical_of_padded canonicalInput10470 canonicalOutput10470 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10471 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10471 : ExponentCode := normalNode1991

theorem canonicalSound10471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10471.moment H = canonicalOutput10471.moment H :=
  canonical_of_padded canonicalInput10471 canonicalOutput10471 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10472 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10472 : ExponentCode := normalNode8966

theorem canonicalSound10472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10472.moment H = canonicalOutput10472.moment H :=
  canonical_of_padded canonicalInput10472 canonicalOutput10472 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10473 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10473 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound10473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10473.moment H = canonicalOutput10473.moment H :=
  canonical_of_padded canonicalInput10473 canonicalOutput10473 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10474 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10474 : ExponentCode := normalNode8968

theorem canonicalSound10474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10474.moment H = canonicalOutput10474.moment H :=
  canonical_of_padded canonicalInput10474 canonicalOutput10474 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10475 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput10475 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound10475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10475.moment H = canonicalOutput10475.moment H :=
  canonical_of_padded canonicalInput10475 canonicalOutput10475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10476 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10476 : ExponentCode := normalNode1828

theorem canonicalSound10476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10476.moment H = canonicalOutput10476.moment H :=
  canonical_of_padded canonicalInput10476 canonicalOutput10476 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10477 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10477 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound10477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10477.moment H = canonicalOutput10477.moment H :=
  canonical_of_padded canonicalInput10477 canonicalOutput10477 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10478 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10478 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound10478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10478.moment H = canonicalOutput10478.moment H :=
  canonical_of_padded canonicalInput10478 canonicalOutput10478 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10479 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput10479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code965

theorem canonicalSound10479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10479.moment H = canonicalOutput10479.moment H :=
  canonical_of_padded canonicalInput10479 canonicalOutput10479 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10480 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10480 : ExponentCode := normalNode4308

theorem canonicalSound10480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10480.moment H = canonicalOutput10480.moment H :=
  canonical_of_padded canonicalInput10480 canonicalOutput10480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10481 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, -2, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput10481 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound10481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10481.moment H = canonicalOutput10481.moment H :=
  canonical_of_padded canonicalInput10481 canonicalOutput10481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10482 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, -1, -2, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput10482 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code263

theorem canonicalSound10482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10482.moment H = canonicalOutput10482.moment H :=
  canonical_of_padded canonicalInput10482 canonicalOutput10482 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10483 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput10483 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound10483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10483.moment H = canonicalOutput10483.moment H :=
  canonical_of_padded canonicalInput10483 canonicalOutput10483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10484 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10484 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound10484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10484.moment H = canonicalOutput10484.moment H :=
  canonical_of_padded canonicalInput10484 canonicalOutput10484 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10485 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, -1, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10485 : ExponentCode := normalNode5307

theorem canonicalSound10485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10485.moment H = canonicalOutput10485.moment H :=
  canonical_of_padded canonicalInput10485 canonicalOutput10485 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10486 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, -1, 4, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput10486 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code334

theorem canonicalSound10486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10486.moment H = canonicalOutput10486.moment H :=
  canonical_of_padded canonicalInput10486 canonicalOutput10486 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10487 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10487 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound10487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10487.moment H = canonicalOutput10487.moment H :=
  canonical_of_padded canonicalInput10487 canonicalOutput10487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10488 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput10488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound10488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10488.moment H = canonicalOutput10488.moment H :=
  canonical_of_padded canonicalInput10488 canonicalOutput10488 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10489 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, 1, 3, -5], ![1, -1, -2, 2]]⟩

def canonicalOutput10489 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code263

theorem canonicalSound10489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10489.moment H = canonicalOutput10489.moment H :=
  canonical_of_padded canonicalInput10489 canonicalOutput10489 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10490 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10490 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound10490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10490.moment H = canonicalOutput10490.moment H :=
  canonical_of_padded canonicalInput10490 canonicalOutput10490 (by decide) (by decide)
    ⟨false, true, canonicalPermutation34, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10491 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput10491 : ExponentCode := normalNode5338

theorem canonicalSound10491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10491.moment H = canonicalOutput10491.moment H :=
  canonical_of_padded canonicalInput10491 canonicalOutput10491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10492 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10492 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound10492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10492.moment H = canonicalOutput10492.moment H :=
  canonical_of_padded canonicalInput10492 canonicalOutput10492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10493 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10493 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound10493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10493.moment H = canonicalOutput10493.moment H :=
  canonical_of_padded canonicalInput10493 canonicalOutput10493 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10494 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10494 : ExponentCode := normalNode1778

theorem canonicalSound10494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10494.moment H = canonicalOutput10494.moment H :=
  canonical_of_padded canonicalInput10494 canonicalOutput10494 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10495 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10495 : ExponentCode := normalNode2373

theorem canonicalSound10495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10495.moment H = canonicalOutput10495.moment H :=
  canonical_of_padded canonicalInput10495 canonicalOutput10495 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

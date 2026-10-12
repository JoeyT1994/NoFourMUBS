import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6464 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6464 : ExponentCode := normalNode3391

theorem canonicalSound6464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6464.moment H = canonicalOutput6464.moment H :=
  canonical_of_padded canonicalInput6464 canonicalOutput6464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6465 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6465 : ExponentCode := normalNode3398

theorem canonicalSound6465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6465.moment H = canonicalOutput6465.moment H :=
  canonical_of_padded canonicalInput6465 canonicalOutput6465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6466 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput6466 : ExponentCode := normalNode7839

theorem canonicalSound6466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6466.moment H = canonicalOutput6466.moment H :=
  canonical_of_padded canonicalInput6466 canonicalOutput6466 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6467 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput6467 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound6467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6467.moment H = canonicalOutput6467.moment H :=
  canonical_of_padded canonicalInput6467 canonicalOutput6467 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6468 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6468 : ExponentCode := normalNode3388

theorem canonicalSound6468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6468.moment H = canonicalOutput6468.moment H :=
  canonical_of_padded canonicalInput6468 canonicalOutput6468 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6469 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6469 : ExponentCode := normalNode3390

theorem canonicalSound6469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6469.moment H = canonicalOutput6469.moment H :=
  canonical_of_padded canonicalInput6469 canonicalOutput6469 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6470 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6470 : ExponentCode := normalNode3390

theorem canonicalSound6470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6470.moment H = canonicalOutput6470.moment H :=
  canonical_of_padded canonicalInput6470 canonicalOutput6470 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6471 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6471 : ExponentCode := normalNode3395

theorem canonicalSound6471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6471.moment H = canonicalOutput6471.moment H :=
  canonical_of_padded canonicalInput6471 canonicalOutput6471 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6472 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6472 : ExponentCode := normalNode3396

theorem canonicalSound6472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6472.moment H = canonicalOutput6472.moment H :=
  canonical_of_padded canonicalInput6472 canonicalOutput6472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6473 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6473 : ExponentCode := normalNode3396

theorem canonicalSound6473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6473.moment H = canonicalOutput6473.moment H :=
  canonical_of_padded canonicalInput6473 canonicalOutput6473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6474 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput6474 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound6474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6474.moment H = canonicalOutput6474.moment H :=
  canonical_of_padded canonicalInput6474 canonicalOutput6474 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6475 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput6475 : ExponentCode := normalNode7839

theorem canonicalSound6475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6475.moment H = canonicalOutput6475.moment H :=
  canonical_of_padded canonicalInput6475 canonicalOutput6475 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6476 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput6476 : ExponentCode := normalNode7824

theorem canonicalSound6476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6476.moment H = canonicalOutput6476.moment H :=
  canonical_of_padded canonicalInput6476 canonicalOutput6476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6477 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 2, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput6477 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound6477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6477.moment H = canonicalOutput6477.moment H :=
  canonical_of_padded canonicalInput6477 canonicalOutput6477 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6478 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 2, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6478 : ExponentCode := normalNode2415

theorem canonicalSound6478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6478.moment H = canonicalOutput6478.moment H :=
  canonical_of_padded canonicalInput6478 canonicalOutput6478 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6479 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput6479 : ExponentCode := normalNode10214

theorem canonicalSound6479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6479.moment H = canonicalOutput6479.moment H :=
  canonical_of_padded canonicalInput6479 canonicalOutput6479 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6480 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput6480 : ExponentCode := normalNode7940

theorem canonicalSound6480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6480.moment H = canonicalOutput6480.moment H :=
  canonical_of_padded canonicalInput6480 canonicalOutput6480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6481 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6481 : ExponentCode := normalNode586

theorem canonicalSound6481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6481.moment H = canonicalOutput6481.moment H :=
  canonical_of_padded canonicalInput6481 canonicalOutput6481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6482 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6482 : ExponentCode := normalNode10213

theorem canonicalSound6482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6482.moment H = canonicalOutput6482.moment H :=
  canonical_of_padded canonicalInput6482 canonicalOutput6482 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6483 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6483 : ExponentCode := normalNode8914

theorem canonicalSound6483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6483.moment H = canonicalOutput6483.moment H :=
  canonical_of_padded canonicalInput6483 canonicalOutput6483 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6484 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput6484 : ExponentCode := normalNode10213

theorem canonicalSound6484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6484.moment H = canonicalOutput6484.moment H :=
  canonical_of_padded canonicalInput6484 canonicalOutput6484 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6485 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput6485 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩

theorem canonicalSound6485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6485.moment H = canonicalOutput6485.moment H :=
  canonical_of_padded canonicalInput6485 canonicalOutput6485 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6486 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput6486 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node991⟩

theorem canonicalSound6486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6486.moment H = canonicalOutput6486.moment H :=
  canonical_of_padded canonicalInput6486 canonicalOutput6486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6487 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6487 : ExponentCode := normalNode9662

theorem canonicalSound6487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6487.moment H = canonicalOutput6487.moment H :=
  canonical_of_padded canonicalInput6487 canonicalOutput6487 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6488 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![0, 2, 0, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput6488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩

theorem canonicalSound6488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6488.moment H = canonicalOutput6488.moment H :=
  canonical_of_padded canonicalInput6488 canonicalOutput6488 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6489 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput6489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound6489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6489.moment H = canonicalOutput6489.moment H :=
  canonical_of_padded canonicalInput6489 canonicalOutput6489 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6490 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, -1, 3, -3], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6490 : ExponentCode := normalNode3408

theorem canonicalSound6490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6490.moment H = canonicalOutput6490.moment H :=
  canonical_of_padded canonicalInput6490 canonicalOutput6490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6491 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput6491 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code641

theorem canonicalSound6491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6491.moment H = canonicalOutput6491.moment H :=
  canonical_of_padded canonicalInput6491 canonicalOutput6491 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6492 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput6492 : ExponentCode := normalNode7189

theorem canonicalSound6492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6492.moment H = canonicalOutput6492.moment H :=
  canonical_of_padded canonicalInput6492 canonicalOutput6492 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6493 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput6493 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound6493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6493.moment H = canonicalOutput6493.moment H :=
  canonical_of_padded canonicalInput6493 canonicalOutput6493 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6494 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput6494 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1091⟩

theorem canonicalSound6494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6494.moment H = canonicalOutput6494.moment H :=
  canonical_of_padded canonicalInput6494 canonicalOutput6494 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6495 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, -1, 2], ![1, 2, -1, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput6495 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code641

theorem canonicalSound6495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6495.moment H = canonicalOutput6495.moment H :=
  canonical_of_padded canonicalInput6495 canonicalOutput6495 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6496 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput6496 : ExponentCode := normalNode7180

theorem canonicalSound6496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6496.moment H = canonicalOutput6496.moment H :=
  canonical_of_padded canonicalInput6496 canonicalOutput6496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6497 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6497 : ExponentCode := normalNode1826

theorem canonicalSound6497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6497.moment H = canonicalOutput6497.moment H :=
  canonical_of_padded canonicalInput6497 canonicalOutput6497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6498 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6498 : ExponentCode := normalNode8954

theorem canonicalSound6498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6498.moment H = canonicalOutput6498.moment H :=
  canonical_of_padded canonicalInput6498 canonicalOutput6498 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6499 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6499 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩

theorem canonicalSound6499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6499.moment H = canonicalOutput6499.moment H :=
  canonical_of_padded canonicalInput6499 canonicalOutput6499 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6500 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6500 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1551⟩

theorem canonicalSound6500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6500.moment H = canonicalOutput6500.moment H :=
  canonical_of_padded canonicalInput6500 canonicalOutput6500 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6501 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6501 : ExponentCode := normalNode10512

theorem canonicalSound6501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6501.moment H = canonicalOutput6501.moment H :=
  canonical_of_padded canonicalInput6501 canonicalOutput6501 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6502 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6502 : ExponentCode := normalNode10513

theorem canonicalSound6502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6502.moment H = canonicalOutput6502.moment H :=
  canonical_of_padded canonicalInput6502 canonicalOutput6502 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6503 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6503 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2416⟩

theorem canonicalSound6503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6503.moment H = canonicalOutput6503.moment H :=
  canonical_of_padded canonicalInput6503 canonicalOutput6503 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6504 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6504 : ExponentCode := normalNode9683

theorem canonicalSound6504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6504.moment H = canonicalOutput6504.moment H :=
  canonical_of_padded canonicalInput6504 canonicalOutput6504 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6505 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6505 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1094⟩

theorem canonicalSound6505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6505.moment H = canonicalOutput6505.moment H :=
  canonical_of_padded canonicalInput6505 canonicalOutput6505 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6506 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 0, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput6506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1156⟩

theorem canonicalSound6506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6506.moment H = canonicalOutput6506.moment H :=
  canonical_of_padded canonicalInput6506 canonicalOutput6506 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6507 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6507 : ExponentCode := normalNode7864

theorem canonicalSound6507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6507.moment H = canonicalOutput6507.moment H :=
  canonical_of_padded canonicalInput6507 canonicalOutput6507 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6508 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6508 : ExponentCode := normalNode9363

theorem canonicalSound6508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6508.moment H = canonicalOutput6508.moment H :=
  canonical_of_padded canonicalInput6508 canonicalOutput6508 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6509 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput6509 : ExponentCode := normalNode9034

theorem canonicalSound6509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6509.moment H = canonicalOutput6509.moment H :=
  canonical_of_padded canonicalInput6509 canonicalOutput6509 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6510 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6510 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound6510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6510.moment H = canonicalOutput6510.moment H :=
  canonical_of_padded canonicalInput6510 canonicalOutput6510 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6511 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput6511 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound6511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6511.moment H = canonicalOutput6511.moment H :=
  canonical_of_padded canonicalInput6511 canonicalOutput6511 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6512 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound6512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6512.moment H = canonicalOutput6512.moment H :=
  canonical_of_padded canonicalInput6512 canonicalOutput6512 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput6513 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6513 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2742⟩

theorem canonicalSound6513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6513.moment H = canonicalOutput6513.moment H :=
  canonical_of_padded canonicalInput6513 canonicalOutput6513 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6514 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput6514 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2718⟩

theorem canonicalSound6514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6514.moment H = canonicalOutput6514.moment H :=
  canonical_of_padded canonicalInput6514 canonicalOutput6514 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6515 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput6515 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound6515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6515.moment H = canonicalOutput6515.moment H :=
  canonical_of_padded canonicalInput6515 canonicalOutput6515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6516 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput6516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1696⟩

theorem canonicalSound6516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6516.moment H = canonicalOutput6516.moment H :=
  canonical_of_padded canonicalInput6516 canonicalOutput6516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6517 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6517 : ExponentCode := normalNode7897

theorem canonicalSound6517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6517.moment H = canonicalOutput6517.moment H :=
  canonical_of_padded canonicalInput6517 canonicalOutput6517 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6518 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6518 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2580⟩

theorem canonicalSound6518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6518.moment H = canonicalOutput6518.moment H :=
  canonical_of_padded canonicalInput6518 canonicalOutput6518 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6519 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6519 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound6519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6519.moment H = canonicalOutput6519.moment H :=
  canonical_of_padded canonicalInput6519 canonicalOutput6519 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6520 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput6520 : ExponentCode := normalNode8997

theorem canonicalSound6520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6520.moment H = canonicalOutput6520.moment H :=
  canonical_of_padded canonicalInput6520 canonicalOutput6520 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6521 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput6521 : ExponentCode := normalNode7913

theorem canonicalSound6521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6521.moment H = canonicalOutput6521.moment H :=
  canonical_of_padded canonicalInput6521 canonicalOutput6521 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6522 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6522 : ExponentCode := normalNode8997

theorem canonicalSound6522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6522.moment H = canonicalOutput6522.moment H :=
  canonical_of_padded canonicalInput6522 canonicalOutput6522 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6523 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6523 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound6523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6523.moment H = canonicalOutput6523.moment H :=
  canonical_of_padded canonicalInput6523 canonicalOutput6523 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6524 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput6524 : ExponentCode := normalNode10527

theorem canonicalSound6524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6524.moment H = canonicalOutput6524.moment H :=
  canonical_of_padded canonicalInput6524 canonicalOutput6524 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6525 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput6525 : ExponentCode := normalNode8987

theorem canonicalSound6525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6525.moment H = canonicalOutput6525.moment H :=
  canonical_of_padded canonicalInput6525 canonicalOutput6525 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6526 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6526 : ExponentCode := normalNode9416

theorem canonicalSound6526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6526.moment H = canonicalOutput6526.moment H :=
  canonical_of_padded canonicalInput6526 canonicalOutput6526 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6527 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6527 : ExponentCode := normalNode8973

theorem canonicalSound6527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6527.moment H = canonicalOutput6527.moment H :=
  canonical_of_padded canonicalInput6527 canonicalOutput6527 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

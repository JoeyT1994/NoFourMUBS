import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14464 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput14464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1090

theorem canonicalSound14464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14464.moment H = canonicalOutput14464.moment H :=
  canonical_of_padded canonicalInput14464 canonicalOutput14464 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14465 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14465 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node766⟩

theorem canonicalSound14465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14465.moment H = canonicalOutput14465.moment H :=
  canonical_of_padded canonicalInput14465 canonicalOutput14465 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14466 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput14466 : ExponentCode := normalNode7362

theorem canonicalSound14466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14466.moment H = canonicalOutput14466.moment H :=
  canonical_of_padded canonicalInput14466 canonicalOutput14466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14467 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14467 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2489⟩

theorem canonicalSound14467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14467.moment H = canonicalOutput14467.moment H :=
  canonical_of_padded canonicalInput14467 canonicalOutput14467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14468 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14468 : ExponentCode := normalNode7367

theorem canonicalSound14468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14468.moment H = canonicalOutput14468.moment H :=
  canonical_of_padded canonicalInput14468 canonicalOutput14468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14469 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14469 : ExponentCode := normalNode7359

theorem canonicalSound14469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14469.moment H = canonicalOutput14469.moment H :=
  canonical_of_padded canonicalInput14469 canonicalOutput14469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14470 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput14470 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1329

theorem canonicalSound14470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14470.moment H = canonicalOutput14470.moment H :=
  canonical_of_padded canonicalInput14470 canonicalOutput14470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14471 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14471 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound14471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14471.moment H = canonicalOutput14471.moment H :=
  canonical_of_padded canonicalInput14471 canonicalOutput14471 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14472 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14472 : ExponentCode := normalNode7361

theorem canonicalSound14472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14472.moment H = canonicalOutput14472.moment H :=
  canonical_of_padded canonicalInput14472 canonicalOutput14472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14473 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput14473 : ExponentCode := normalNode7344

theorem canonicalSound14473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14473.moment H = canonicalOutput14473.moment H :=
  canonical_of_padded canonicalInput14473 canonicalOutput14473 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14474 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14474 : ExponentCode := normalNode7360

theorem canonicalSound14474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14474.moment H = canonicalOutput14474.moment H :=
  canonical_of_padded canonicalInput14474 canonicalOutput14474 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14475 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput14475 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1330

theorem canonicalSound14475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14475.moment H = canonicalOutput14475.moment H :=
  canonical_of_padded canonicalInput14475 canonicalOutput14475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14476 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 3, -3], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput14476 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1090

theorem canonicalSound14476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14476.moment H = canonicalOutput14476.moment H :=
  canonical_of_padded canonicalInput14476 canonicalOutput14476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14477 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 1, 4, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput14477 : ExponentCode := normalNode9434

theorem canonicalSound14477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14477.moment H = canonicalOutput14477.moment H :=
  canonical_of_padded canonicalInput14477 canonicalOutput14477 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14478 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput14478 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1353⟩

theorem canonicalSound14478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14478.moment H = canonicalOutput14478.moment H :=
  canonical_of_padded canonicalInput14478 canonicalOutput14478 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14479 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14479 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound14479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14479.moment H = canonicalOutput14479.moment H :=
  canonical_of_padded canonicalInput14479 canonicalOutput14479 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14480 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, -1, 0], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput14480 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node585⟩

theorem canonicalSound14480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14480.moment H = canonicalOutput14480.moment H :=
  canonical_of_padded canonicalInput14480 canonicalOutput14480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14481 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14481 : ExponentCode := normalNode9722

theorem canonicalSound14481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14481.moment H = canonicalOutput14481.moment H :=
  canonical_of_padded canonicalInput14481 canonicalOutput14481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14482 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14482 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩

theorem canonicalSound14482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14482.moment H = canonicalOutput14482.moment H :=
  canonical_of_padded canonicalInput14482 canonicalOutput14482 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14483 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14483 : ExponentCode := normalNode9945

theorem canonicalSound14483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14483.moment H = canonicalOutput14483.moment H :=
  canonical_of_padded canonicalInput14483 canonicalOutput14483 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14484 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![-1, 2, 2, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14484 : ExponentCode := normalNode9475

theorem canonicalSound14484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14484.moment H = canonicalOutput14484.moment H :=
  canonical_of_padded canonicalInput14484 canonicalOutput14484 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14485 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -2, 2, 0], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14485 : ExponentCode := normalNode10736

theorem canonicalSound14485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14485.moment H = canonicalOutput14485.moment H :=
  canonical_of_padded canonicalInput14485 canonicalOutput14485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14486 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput14486 : ExponentCode := normalNode6490

theorem canonicalSound14486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14486.moment H = canonicalOutput14486.moment H :=
  canonical_of_padded canonicalInput14486 canonicalOutput14486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14487 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14487 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node759⟩

theorem canonicalSound14487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14487.moment H = canonicalOutput14487.moment H :=
  canonical_of_padded canonicalInput14487 canonicalOutput14487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14488 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput14488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node777⟩

theorem canonicalSound14488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14488.moment H = canonicalOutput14488.moment H :=
  canonical_of_padded canonicalInput14488 canonicalOutput14488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14489 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14489 : ExponentCode := normalNode6472

theorem canonicalSound14489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14489.moment H = canonicalOutput14489.moment H :=
  canonical_of_padded canonicalInput14489 canonicalOutput14489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14490 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14490 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2388⟩

theorem canonicalSound14490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14490.moment H = canonicalOutput14490.moment H :=
  canonical_of_padded canonicalInput14490 canonicalOutput14490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14491 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14491 : ExponentCode := normalNode6474

theorem canonicalSound14491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14491.moment H = canonicalOutput14491.moment H :=
  canonical_of_padded canonicalInput14491 canonicalOutput14491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14492 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput14492 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound14492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14492.moment H = canonicalOutput14492.moment H :=
  canonical_of_padded canonicalInput14492 canonicalOutput14492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14493 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput14493 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound14493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14493.moment H = canonicalOutput14493.moment H :=
  canonical_of_padded canonicalInput14493 canonicalOutput14493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14494 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 2, 0, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput14494 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node760⟩

theorem canonicalSound14494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14494.moment H = canonicalOutput14494.moment H :=
  canonical_of_padded canonicalInput14494 canonicalOutput14494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14495 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput14495 : ExponentCode := normalNode10316

theorem canonicalSound14495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14495.moment H = canonicalOutput14495.moment H :=
  canonical_of_padded canonicalInput14495 canonicalOutput14495 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14496 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 0, 1], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput14496 : ExponentCode := normalNode9587

theorem canonicalSound14496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14496.moment H = canonicalOutput14496.moment H :=
  canonical_of_padded canonicalInput14496 canonicalOutput14496 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14497 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 0, 1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14497 : ExponentCode := normalNode7293

theorem canonicalSound14497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14497.moment H = canonicalOutput14497.moment H :=
  canonical_of_padded canonicalInput14497 canonicalOutput14497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14498 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14498 : ExponentCode := normalNode7295

theorem canonicalSound14498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14498.moment H = canonicalOutput14498.moment H :=
  canonical_of_padded canonicalInput14498 canonicalOutput14498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14499 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14499 : ExponentCode := normalNode7296

theorem canonicalSound14499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14499.moment H = canonicalOutput14499.moment H :=
  canonical_of_padded canonicalInput14499 canonicalOutput14499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14500 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14500 : ExponentCode := normalNode7304

theorem canonicalSound14500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14500.moment H = canonicalOutput14500.moment H :=
  canonical_of_padded canonicalInput14500 canonicalOutput14500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14501 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput14501 : ExponentCode := normalNode7310

theorem canonicalSound14501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14501.moment H = canonicalOutput14501.moment H :=
  canonical_of_padded canonicalInput14501 canonicalOutput14501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14502 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14502 : ExponentCode := normalNode7305

theorem canonicalSound14502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14502.moment H = canonicalOutput14502.moment H :=
  canonical_of_padded canonicalInput14502 canonicalOutput14502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14503 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput14503 : ExponentCode := normalNode7311

theorem canonicalSound14503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14503.moment H = canonicalOutput14503.moment H :=
  canonical_of_padded canonicalInput14503 canonicalOutput14503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14504 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 1, 2, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14504 : ExponentCode := normalNode7306

theorem canonicalSound14504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14504.moment H = canonicalOutput14504.moment H :=
  canonical_of_padded canonicalInput14504 canonicalOutput14504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14505 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![-1, 1, 2, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput14505 : ExponentCode := normalNode7309

theorem canonicalSound14505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14505.moment H = canonicalOutput14505.moment H :=
  canonical_of_padded canonicalInput14505 canonicalOutput14505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14506 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14506 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2399⟩

theorem canonicalSound14506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14506.moment H = canonicalOutput14506.moment H :=
  canonical_of_padded canonicalInput14506 canonicalOutput14506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14507 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput14507 : ExponentCode := normalNode7397

theorem canonicalSound14507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14507.moment H = canonicalOutput14507.moment H :=
  canonical_of_padded canonicalInput14507 canonicalOutput14507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14508 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput14508 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2490⟩

theorem canonicalSound14508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14508.moment H = canonicalOutput14508.moment H :=
  canonical_of_padded canonicalInput14508 canonicalOutput14508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14509 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput14509 : ExponentCode := normalNode7401

theorem canonicalSound14509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14509.moment H = canonicalOutput14509.moment H :=
  canonical_of_padded canonicalInput14509 canonicalOutput14509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14510 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput14510 : ExponentCode := normalNode7403

theorem canonicalSound14510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14510.moment H = canonicalOutput14510.moment H :=
  canonical_of_padded canonicalInput14510 canonicalOutput14510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14511 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14511 : ExponentCode := normalNode11065

theorem canonicalSound14511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14511.moment H = canonicalOutput14511.moment H :=
  canonical_of_padded canonicalInput14511 canonicalOutput14511 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14512 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput14512 : ExponentCode := normalNode7381

theorem canonicalSound14512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14512.moment H = canonicalOutput14512.moment H :=
  canonical_of_padded canonicalInput14512 canonicalOutput14512 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14513 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput14513 : ExponentCode := normalNode7402

theorem canonicalSound14513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14513.moment H = canonicalOutput14513.moment H :=
  canonical_of_padded canonicalInput14513 canonicalOutput14513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14514 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14514 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2390⟩

theorem canonicalSound14514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14514.moment H = canonicalOutput14514.moment H :=
  canonical_of_padded canonicalInput14514 canonicalOutput14514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14515 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput14515 : ExponentCode := normalNode7406

theorem canonicalSound14515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14515.moment H = canonicalOutput14515.moment H :=
  canonical_of_padded canonicalInput14515 canonicalOutput14515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14516 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3], ![0, 1, -1, 0]]⟩

def canonicalOutput14516 : ExponentCode := normalNode7403

theorem canonicalSound14516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14516.moment H = canonicalOutput14516.moment H :=
  canonical_of_padded canonicalInput14516 canonicalOutput14516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14517 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14517 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1176⟩

theorem canonicalSound14517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14517.moment H = canonicalOutput14517.moment H :=
  canonical_of_padded canonicalInput14517 canonicalOutput14517 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14518 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 0, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput14518 : ExponentCode := normalNode7390

theorem canonicalSound14518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14518.moment H = canonicalOutput14518.moment H :=
  canonical_of_padded canonicalInput14518 canonicalOutput14518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14519 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput14519 : ExponentCode := normalNode7407

theorem canonicalSound14519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14519.moment H = canonicalOutput14519.moment H :=
  canonical_of_padded canonicalInput14519 canonicalOutput14519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14520 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![0, 0, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput14520 : ExponentCode := normalNode7391

theorem canonicalSound14520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14520.moment H = canonicalOutput14520.moment H :=
  canonical_of_padded canonicalInput14520 canonicalOutput14520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14521 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![0, 0, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput14521 : ExponentCode := normalNode7408

theorem canonicalSound14521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14521.moment H = canonicalOutput14521.moment H :=
  canonical_of_padded canonicalInput14521 canonicalOutput14521 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14522 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput14522 : ExponentCode := normalNode7406

theorem canonicalSound14522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14522.moment H = canonicalOutput14522.moment H :=
  canonical_of_padded canonicalInput14522 canonicalOutput14522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14523 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput14523 : ExponentCode := normalNode7404

theorem canonicalSound14523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14523.moment H = canonicalOutput14523.moment H :=
  canonical_of_padded canonicalInput14523 canonicalOutput14523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14524 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14524 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1171⟩

theorem canonicalSound14524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14524.moment H = canonicalOutput14524.moment H :=
  canonical_of_padded canonicalInput14524 canonicalOutput14524 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14525 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14525 : ExponentCode := normalNode10352

theorem canonicalSound14525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14525.moment H = canonicalOutput14525.moment H :=
  canonical_of_padded canonicalInput14525 canonicalOutput14525 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14526 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 1, 0], ![1, 1, -1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput14526 : ExponentCode := normalNode7408

theorem canonicalSound14526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14526.moment H = canonicalOutput14526.moment H :=
  canonical_of_padded canonicalInput14526 canonicalOutput14526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14527 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14527 : ExponentCode := normalNode7317

theorem canonicalSound14527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14527.moment H = canonicalOutput14527.moment H :=
  canonical_of_padded canonicalInput14527 canonicalOutput14527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

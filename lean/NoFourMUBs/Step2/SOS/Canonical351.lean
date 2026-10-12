import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22464 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![1, -3, 2, 0], ![0, 3, -5, 2]]⟩

def canonicalOutput22464 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node75⟩

theorem canonicalSound22464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22464.moment H = canonicalOutput22464.moment H :=
  canonical_of_padded canonicalInput22464 canonicalOutput22464 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22465 : ExponentCode := ⟨4, 4, ![![-1, 0, 3, -2], ![1, -2, -1, 2], ![0, 0, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput22465 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1322⟩

theorem canonicalSound22465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22465.moment H = canonicalOutput22465.moment H :=
  canonical_of_padded canonicalInput22465 canonicalOutput22465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22466 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![1, -2, 2, -1], ![0, 2, -5, 3]]⟩

def canonicalOutput22466 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound22466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22466.moment H = canonicalOutput22466.moment H :=
  canonical_of_padded canonicalInput22466 canonicalOutput22466 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22467 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![1, 2, -1, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput22467 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound22467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22467.moment H = canonicalOutput22467.moment H :=
  canonical_of_padded canonicalInput22467 canonicalOutput22467 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22468 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![1, 2, 0, -3], ![0, -2, -3, 5]]⟩

def canonicalOutput22468 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node75⟩

theorem canonicalSound22468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22468.moment H = canonicalOutput22468.moment H :=
  canonical_of_padded canonicalInput22468 canonicalOutput22468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22469 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![2, -3, 0, 1], ![-1, 3, -3, 1]]⟩

def canonicalOutput22469 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound22469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22469.moment H = canonicalOutput22469.moment H :=
  canonical_of_padded canonicalInput22469 canonicalOutput22469 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22470 : ExponentCode := ⟨3, 4, ![![-1, 0, 3, -2], ![3, -3, 0, 0], ![-2, 3, -3, 2]]⟩

def canonicalOutput22470 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node91⟩

theorem canonicalSound22470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22470.moment H = canonicalOutput22470.moment H :=
  canonical_of_padded canonicalInput22470 canonicalOutput22470 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22471 : ExponentCode := ⟨4, 4, ![![-1, 0, 4, -3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput22471 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound22471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22471.moment H = canonicalOutput22471.moment H :=
  canonical_of_padded canonicalInput22471 canonicalOutput22471 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22472 : ExponentCode := ⟨4, 4, ![![-1, 0, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput22472 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node908⟩

theorem canonicalSound22472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22472.moment H = canonicalOutput22472.moment H :=
  canonical_of_padded canonicalInput22472 canonicalOutput22472 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22473 : ExponentCode := ⟨3, 4, ![![-1, 0, 4, -3], ![0, 2, -3, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput22473 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound22473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22473.moment H = canonicalOutput22473.moment H :=
  canonical_of_padded canonicalInput22473 canonicalOutput22473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22474 : ExponentCode := ⟨6, 2, ![![-1, 1], ![1, -1], ![3, -3], ![-2, 2], ![-1, 1], ![0, 0]]⟩

def canonicalOutput22474 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node118⟩

theorem canonicalSound22474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22474.moment H = canonicalOutput22474.moment H :=
  canonical_of_padded canonicalInput22474 canonicalOutput22474 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22475 : ExponentCode := ⟨5, 4, ![![-1, 1, -4, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22475 : ExponentCode := normalNode9839

theorem canonicalSound22475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22475.moment H = canonicalOutput22475.moment H :=
  canonical_of_padded canonicalInput22475 canonicalOutput22475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22476 : ExponentCode := ⟨5, 4, ![![-1, 1, -4, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22476 : ExponentCode := normalNode9838

theorem canonicalSound22476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22476.moment H = canonicalOutput22476.moment H :=
  canonical_of_padded canonicalInput22476 canonicalOutput22476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22477 : ExponentCode := ⟨5, 4, ![![-1, 1, -4, 4], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22477 : ExponentCode := normalNode9640

theorem canonicalSound22477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22477.moment H = canonicalOutput22477.moment H :=
  canonical_of_padded canonicalInput22477 canonicalOutput22477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22478 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput22478 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1147

theorem canonicalSound22478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22478.moment H = canonicalOutput22478.moment H :=
  canonical_of_padded canonicalInput22478 canonicalOutput22478 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22479 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22479 : ExponentCode := normalNode11082

theorem canonicalSound22479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22479.moment H = canonicalOutput22479.moment H :=
  canonical_of_padded canonicalInput22479 canonicalOutput22479 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22480 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22480 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1328

theorem canonicalSound22480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22480.moment H = canonicalOutput22480.moment H :=
  canonical_of_padded canonicalInput22480 canonicalOutput22480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22481 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22481 : ExponentCode := normalNode11082

theorem canonicalSound22481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22481.moment H = canonicalOutput22481.moment H :=
  canonical_of_padded canonicalInput22481 canonicalOutput22481 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22482 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22482 : ExponentCode := normalNode9346

theorem canonicalSound22482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22482.moment H = canonicalOutput22482.moment H :=
  canonical_of_padded canonicalInput22482 canonicalOutput22482 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22483 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22483 : ExponentCode := normalNode9357

theorem canonicalSound22483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22483.moment H = canonicalOutput22483.moment H :=
  canonical_of_padded canonicalInput22483 canonicalOutput22483 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22484 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![-1, 1, 4, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22484 : ExponentCode := normalNode9431

theorem canonicalSound22484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22484.moment H = canonicalOutput22484.moment H :=
  canonical_of_padded canonicalInput22484 canonicalOutput22484 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22485 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput22485 : ExponentCode := normalNode9741

theorem canonicalSound22485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22485.moment H = canonicalOutput22485.moment H :=
  canonical_of_padded canonicalInput22485 canonicalOutput22485 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22486 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -2, 2, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22486 : ExponentCode := normalNode9644

theorem canonicalSound22486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22486.moment H = canonicalOutput22486.moment H :=
  canonical_of_padded canonicalInput22486 canonicalOutput22486 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22487 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput22487 : ExponentCode := normalNode6523

theorem canonicalSound22487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22487.moment H = canonicalOutput22487.moment H :=
  canonical_of_padded canonicalInput22487 canonicalOutput22487 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22488 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput22488 : ExponentCode := normalNode6520

theorem canonicalSound22488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22488.moment H = canonicalOutput22488.moment H :=
  canonical_of_padded canonicalInput22488 canonicalOutput22488 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22489 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput22489 : ExponentCode := normalNode7477

theorem canonicalSound22489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22489.moment H = canonicalOutput22489.moment H :=
  canonical_of_padded canonicalInput22489 canonicalOutput22489 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22490 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22490 : ExponentCode := normalNode7468

theorem canonicalSound22490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22490.moment H = canonicalOutput22490.moment H :=
  canonical_of_padded canonicalInput22490 canonicalOutput22490 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22491 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22491 : ExponentCode := normalNode9360

theorem canonicalSound22491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22491.moment H = canonicalOutput22491.moment H :=
  canonical_of_padded canonicalInput22491 canonicalOutput22491 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22492 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, -1, 2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput22492 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound22492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22492.moment H = canonicalOutput22492.moment H :=
  canonical_of_padded canonicalInput22492 canonicalOutput22492 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22493 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput22493 : ExponentCode := normalNode7482

theorem canonicalSound22493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22493.moment H = canonicalOutput22493.moment H :=
  canonical_of_padded canonicalInput22493 canonicalOutput22493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22494 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput22494 : ExponentCode := normalNode10549

theorem canonicalSound22494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22494.moment H = canonicalOutput22494.moment H :=
  canonical_of_padded canonicalInput22494 canonicalOutput22494 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22495 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, -1, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput22495 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound22495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22495.moment H = canonicalOutput22495.moment H :=
  canonical_of_padded canonicalInput22495 canonicalOutput22495 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22496 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22496 : ExponentCode := normalNode9752

theorem canonicalSound22496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22496.moment H = canonicalOutput22496.moment H :=
  canonical_of_padded canonicalInput22496 canonicalOutput22496 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22497 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22497 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node252⟩

theorem canonicalSound22497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22497.moment H = canonicalOutput22497.moment H :=
  canonical_of_padded canonicalInput22497 canonicalOutput22497 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22498 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22498 : ExponentCode := normalNode7446

theorem canonicalSound22498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22498.moment H = canonicalOutput22498.moment H :=
  canonical_of_padded canonicalInput22498 canonicalOutput22498 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22499 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22499 : ExponentCode := normalNode9672

theorem canonicalSound22499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22499.moment H = canonicalOutput22499.moment H :=
  canonical_of_padded canonicalInput22499 canonicalOutput22499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22500 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput22500 : ExponentCode := normalNode7463

theorem canonicalSound22500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22500.moment H = canonicalOutput22500.moment H :=
  canonical_of_padded canonicalInput22500 canonicalOutput22500 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22501 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput22501 : ExponentCode := normalNode6494

theorem canonicalSound22501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22501.moment H = canonicalOutput22501.moment H :=
  canonical_of_padded canonicalInput22501 canonicalOutput22501 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22502 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput22502 : ExponentCode := normalNode7386

theorem canonicalSound22502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22502.moment H = canonicalOutput22502.moment H :=
  canonical_of_padded canonicalInput22502 canonicalOutput22502 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22503 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, 0, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput22503 : ExponentCode := normalNode6289

theorem canonicalSound22503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22503.moment H = canonicalOutput22503.moment H :=
  canonical_of_padded canonicalInput22503 canonicalOutput22503 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22504 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput22504 : ExponentCode := normalNode6498

theorem canonicalSound22504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22504.moment H = canonicalOutput22504.moment H :=
  canonical_of_padded canonicalInput22504 canonicalOutput22504 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22505 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 3, -3], ![0, 0, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22505 : ExponentCode := normalNode9672

theorem canonicalSound22505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22505.moment H = canonicalOutput22505.moment H :=
  canonical_of_padded canonicalInput22505 canonicalOutput22505 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22506 : ExponentCode := ⟨4, 4, ![![-1, 1, -4, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput22506 : ExponentCode := normalNode9756

theorem canonicalSound22506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22506.moment H = canonicalOutput22506.moment H :=
  canonical_of_padded canonicalInput22506 canonicalOutput22506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22507 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, 0, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput22507 : ExponentCode := normalNode6267

theorem canonicalSound22507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22507.moment H = canonicalOutput22507.moment H :=
  canonical_of_padded canonicalInput22507 canonicalOutput22507 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22508 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput22508 : ExponentCode := normalNode10777

theorem canonicalSound22508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22508.moment H = canonicalOutput22508.moment H :=
  canonical_of_padded canonicalInput22508 canonicalOutput22508 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22509 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, 1, 1, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput22509 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node148⟩

theorem canonicalSound22509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22509.moment H = canonicalOutput22509.moment H :=
  canonical_of_padded canonicalInput22509 canonicalOutput22509 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22510 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, 1, 2, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput22510 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound22510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22510.moment H = canonicalOutput22510.moment H :=
  canonical_of_padded canonicalInput22510 canonicalOutput22510 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22511 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![0, 1, 3, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput22511 : ExponentCode := normalNode5583

theorem canonicalSound22511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22511.moment H = canonicalOutput22511.moment H :=
  canonical_of_padded canonicalInput22511 canonicalOutput22511 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22512 : ExponentCode := ⟨3, 4, ![![-1, 1, -4, 4], ![1, -1, 2, -2], ![0, 0, 2, -2]]⟩

def canonicalOutput22512 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound22512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22512.moment H = canonicalOutput22512.moment H :=
  canonical_of_padded canonicalInput22512 canonicalOutput22512 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22513 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22513 : ExponentCode := normalNode10481

theorem canonicalSound22513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22513.moment H = canonicalOutput22513.moment H :=
  canonical_of_padded canonicalInput22513 canonicalOutput22513 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22514 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22514 : ExponentCode := normalNode10498

theorem canonicalSound22514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22514.moment H = canonicalOutput22514.moment H :=
  canonical_of_padded canonicalInput22514 canonicalOutput22514 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22515 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22515 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩

theorem canonicalSound22515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22515.moment H = canonicalOutput22515.moment H :=
  canonical_of_padded canonicalInput22515 canonicalOutput22515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22516 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22516 : ExponentCode := normalNode9639

theorem canonicalSound22516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22516.moment H = canonicalOutput22516.moment H :=
  canonical_of_padded canonicalInput22516 canonicalOutput22516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22517 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput22517 : ExponentCode := normalNode9814

theorem canonicalSound22517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22517.moment H = canonicalOutput22517.moment H :=
  canonical_of_padded canonicalInput22517 canonicalOutput22517 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22518 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput22518 : ExponentCode := normalNode9801

theorem canonicalSound22518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22518.moment H = canonicalOutput22518.moment H :=
  canonical_of_padded canonicalInput22518 canonicalOutput22518 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22519 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![2, -2, 0, 0]]⟩

def canonicalOutput22519 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1176

theorem canonicalSound22519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22519.moment H = canonicalOutput22519.moment H :=
  canonical_of_padded canonicalInput22519 canonicalOutput22519 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22520 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput22520 : ExponentCode := normalNode11167

theorem canonicalSound22520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22520.moment H = canonicalOutput22520.moment H :=
  canonical_of_padded canonicalInput22520 canonicalOutput22520 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22521 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, -1, 1], ![1, -1, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput22521 : ExponentCode := normalNode11167

theorem canonicalSound22521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22521.moment H = canonicalOutput22521.moment H :=
  canonical_of_padded canonicalInput22521 canonicalOutput22521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput22522 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22522 : ExponentCode := normalNode11111

theorem canonicalSound22522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22522.moment H = canonicalOutput22522.moment H :=
  canonical_of_padded canonicalInput22522 canonicalOutput22522 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22523 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput22523 : ExponentCode := normalNode9817

theorem canonicalSound22523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22523.moment H = canonicalOutput22523.moment H :=
  canonical_of_padded canonicalInput22523 canonicalOutput22523 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22524 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22524 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound22524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22524.moment H = canonicalOutput22524.moment H :=
  canonical_of_padded canonicalInput22524 canonicalOutput22524 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput22525 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput22525 : ExponentCode := normalNode10953

theorem canonicalSound22525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22525.moment H = canonicalOutput22525.moment H :=
  canonical_of_padded canonicalInput22525 canonicalOutput22525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22526 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput22526 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1269

theorem canonicalSound22526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22526.moment H = canonicalOutput22526.moment H :=
  canonical_of_padded canonicalInput22526 canonicalOutput22526 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22527 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput22527 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1394

theorem canonicalSound22527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22527.moment H = canonicalOutput22527.moment H :=
  canonical_of_padded canonicalInput22527 canonicalOutput22527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

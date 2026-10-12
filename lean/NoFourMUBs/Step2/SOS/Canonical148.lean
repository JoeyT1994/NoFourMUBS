import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9472 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9472 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound9472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9472.moment H = canonicalOutput9472.moment H :=
  canonical_of_padded canonicalInput9472 canonicalOutput9472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput9473 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9473 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound9473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9473.moment H = canonicalOutput9473.moment H :=
  canonical_of_padded canonicalInput9473 canonicalOutput9473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput9474 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9474 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound9474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9474.moment H = canonicalOutput9474.moment H :=
  canonical_of_padded canonicalInput9474 canonicalOutput9474 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput9475 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9475 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound9475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9475.moment H = canonicalOutput9475.moment H :=
  canonical_of_padded canonicalInput9475 canonicalOutput9475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput9476 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9476 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound9476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9476.moment H = canonicalOutput9476.moment H :=
  canonical_of_padded canonicalInput9476 canonicalOutput9476 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9477 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9477 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound9477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9477.moment H = canonicalOutput9477.moment H :=
  canonical_of_padded canonicalInput9477 canonicalOutput9477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput9478 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9478 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound9478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9478.moment H = canonicalOutput9478.moment H :=
  canonical_of_padded canonicalInput9478 canonicalOutput9478 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput9479 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9479 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound9479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9479.moment H = canonicalOutput9479.moment H :=
  canonical_of_padded canonicalInput9479 canonicalOutput9479 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput9480 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9480 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound9480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9480.moment H = canonicalOutput9480.moment H :=
  canonical_of_padded canonicalInput9480 canonicalOutput9480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput9481 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9481 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound9481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9481.moment H = canonicalOutput9481.moment H :=
  canonical_of_padded canonicalInput9481 canonicalOutput9481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9482 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9482 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound9482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9482.moment H = canonicalOutput9482.moment H :=
  canonical_of_padded canonicalInput9482 canonicalOutput9482 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9483 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9483 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound9483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9483.moment H = canonicalOutput9483.moment H :=
  canonical_of_padded canonicalInput9483 canonicalOutput9483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput9484 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9484 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound9484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9484.moment H = canonicalOutput9484.moment H :=
  canonical_of_padded canonicalInput9484 canonicalOutput9484 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9485 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9485 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound9485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9485.moment H = canonicalOutput9485.moment H :=
  canonical_of_padded canonicalInput9485 canonicalOutput9485 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9486 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9486 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound9486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9486.moment H = canonicalOutput9486.moment H :=
  canonical_of_padded canonicalInput9486 canonicalOutput9486 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput9487 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9487 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound9487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9487.moment H = canonicalOutput9487.moment H :=
  canonical_of_padded canonicalInput9487 canonicalOutput9487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput9488 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9488 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound9488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9488.moment H = canonicalOutput9488.moment H :=
  canonical_of_padded canonicalInput9488 canonicalOutput9488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput9489 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9489 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound9489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9489.moment H = canonicalOutput9489.moment H :=
  canonical_of_padded canonicalInput9489 canonicalOutput9489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput9490 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9490 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound9490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9490.moment H = canonicalOutput9490.moment H :=
  canonical_of_padded canonicalInput9490 canonicalOutput9490 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9491 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9491 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound9491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9491.moment H = canonicalOutput9491.moment H :=
  canonical_of_padded canonicalInput9491 canonicalOutput9491 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput9492 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9492 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound9492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9492.moment H = canonicalOutput9492.moment H :=
  canonical_of_padded canonicalInput9492 canonicalOutput9492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput9493 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9493 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound9493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9493.moment H = canonicalOutput9493.moment H :=
  canonical_of_padded canonicalInput9493 canonicalOutput9493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput9494 : ExponentCode := ⟨6, 6, ![![-2, 0, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9494 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound9494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9494.moment H = canonicalOutput9494.moment H :=
  canonical_of_padded canonicalInput9494 canonicalOutput9494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput9495 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![-2, 2, -3, 3], ![4, -2, 0, -2]]⟩

def canonicalOutput9495 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code57

theorem canonicalSound9495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9495.moment H = canonicalOutput9495.moment H :=
  canonical_of_padded canonicalInput9495 canonicalOutput9495 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9496 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![-2, 3, -2, 1], ![4, -3, -1, 0]]⟩

def canonicalOutput9496 : ExponentCode := normalNode241

theorem canonicalSound9496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9496.moment H = canonicalOutput9496.moment H :=
  canonical_of_padded canonicalInput9496 canonicalOutput9496 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9497 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![-2, 3, -1, 0], ![4, -3, -2, 1]]⟩

def canonicalOutput9497 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node94⟩

theorem canonicalSound9497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9497.moment H = canonicalOutput9497.moment H :=
  canonical_of_padded canonicalInput9497 canonicalOutput9497 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9498 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![-1, 2, -3, 2], ![3, -2, 0, -1]]⟩

def canonicalOutput9498 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound9498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9498.moment H = canonicalOutput9498.moment H :=
  canonical_of_padded canonicalInput9498 canonicalOutput9498 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9499 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![-1, 3, -2, 0], ![3, -3, -1, 1]]⟩

def canonicalOutput9499 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound9499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9499.moment H = canonicalOutput9499.moment H :=
  canonical_of_padded canonicalInput9499 canonicalOutput9499 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9500 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![-1, 3, -1, -1], ![3, -3, -2, 2]]⟩

def canonicalOutput9500 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound9500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9500.moment H = canonicalOutput9500.moment H :=
  canonical_of_padded canonicalInput9500 canonicalOutput9500 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9501 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![0, 2, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput9501 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code393

theorem canonicalSound9501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9501.moment H = canonicalOutput9501.moment H :=
  canonical_of_padded canonicalInput9501 canonicalOutput9501 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9502 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![0, 2, -1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput9502 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code394

theorem canonicalSound9502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9502.moment H = canonicalOutput9502.moment H :=
  canonical_of_padded canonicalInput9502 canonicalOutput9502 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9503 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput9503 : ExponentCode := normalNode11215

theorem canonicalSound9503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9503.moment H = canonicalOutput9503.moment H :=
  canonical_of_padded canonicalInput9503 canonicalOutput9503 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput9504 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput9504 : ExponentCode := normalNode7476

theorem canonicalSound9504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9504.moment H = canonicalOutput9504.moment H :=
  canonical_of_padded canonicalInput9504 canonicalOutput9504 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput9505 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput9505 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code279

theorem canonicalSound9505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9505.moment H = canonicalOutput9505.moment H :=
  canonical_of_padded canonicalInput9505 canonicalOutput9505 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9506 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![1, 2, -2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9506 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code279

theorem canonicalSound9506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9506.moment H = canonicalOutput9506.moment H :=
  canonical_of_padded canonicalInput9506 canonicalOutput9506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9507 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, -1, 4], ![1, 2, -1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9507 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1066

theorem canonicalSound9507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9507.moment H = canonicalOutput9507.moment H :=
  canonical_of_padded canonicalInput9507 canonicalOutput9507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9508 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -3, 0, 3], ![0, 1, -2, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput9508 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code150

theorem canonicalSound9508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9508.moment H = canonicalOutput9508.moment H :=
  canonical_of_padded canonicalInput9508 canonicalOutput9508 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9509 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput9509 : ExponentCode := normalNode2042

theorem canonicalSound9509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9509.moment H = canonicalOutput9509.moment H :=
  canonical_of_padded canonicalInput9509 canonicalOutput9509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9510 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, -3, 2, 1], ![2, 3, -5, 0]]⟩

def canonicalOutput9510 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node75⟩

theorem canonicalSound9510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9510.moment H = canonicalOutput9510.moment H :=
  canonical_of_padded canonicalInput9510 canonicalOutput9510 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9511 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9511 : ExponentCode := normalNode3149

theorem canonicalSound9511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9511.moment H = canonicalOutput9511.moment H :=
  canonical_of_padded canonicalInput9511 canonicalOutput9511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9512 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9512 : ExponentCode := normalNode3150

theorem canonicalSound9512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9512.moment H = canonicalOutput9512.moment H :=
  canonical_of_padded canonicalInput9512 canonicalOutput9512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9513 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput9513 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩

theorem canonicalSound9513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9513.moment H = canonicalOutput9513.moment H :=
  canonical_of_padded canonicalInput9513 canonicalOutput9513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9514 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput9514 : ExponentCode := normalNode9946

theorem canonicalSound9514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9514.moment H = canonicalOutput9514.moment H :=
  canonical_of_padded canonicalInput9514 canonicalOutput9514 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9515 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9515 : ExponentCode := normalNode9546

theorem canonicalSound9515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9515.moment H = canonicalOutput9515.moment H :=
  canonical_of_padded canonicalInput9515 canonicalOutput9515 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9516 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput9516 : ExponentCode := normalNode6461

theorem canonicalSound9516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9516.moment H = canonicalOutput9516.moment H :=
  canonical_of_padded canonicalInput9516 canonicalOutput9516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9517 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9517 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound9517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9517.moment H = canonicalOutput9517.moment H :=
  canonical_of_padded canonicalInput9517 canonicalOutput9517 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9518 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9518 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound9518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9518.moment H = canonicalOutput9518.moment H :=
  canonical_of_padded canonicalInput9518 canonicalOutput9518 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9519 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, -2, -2, 4], ![2, 2, -1, -3]]⟩

def canonicalOutput9519 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound9519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9519.moment H = canonicalOutput9519.moment H :=
  canonical_of_padded canonicalInput9519 canonicalOutput9519 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9520 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput9520 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound9520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9520.moment H = canonicalOutput9520.moment H :=
  canonical_of_padded canonicalInput9520 canonicalOutput9520 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9521 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9521 : ExponentCode := normalNode3392

theorem canonicalSound9521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9521.moment H = canonicalOutput9521.moment H :=
  canonical_of_padded canonicalInput9521 canonicalOutput9521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9522 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput9522 : ExponentCode := normalNode6719

theorem canonicalSound9522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9522.moment H = canonicalOutput9522.moment H :=
  canonical_of_padded canonicalInput9522 canonicalOutput9522 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9523 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9523 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code421

theorem canonicalSound9523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9523.moment H = canonicalOutput9523.moment H :=
  canonical_of_padded canonicalInput9523 canonicalOutput9523 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9524 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput9524 : ExponentCode := normalNode7824

theorem canonicalSound9524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9524.moment H = canonicalOutput9524.moment H :=
  canonical_of_padded canonicalInput9524 canonicalOutput9524 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9525 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput9525 : ExponentCode := normalNode7839

theorem canonicalSound9525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9525.moment H = canonicalOutput9525.moment H :=
  canonical_of_padded canonicalInput9525 canonicalOutput9525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9526 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9526 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code767

theorem canonicalSound9526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9526.moment H = canonicalOutput9526.moment H :=
  canonical_of_padded canonicalInput9526 canonicalOutput9526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9527 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9527 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code768

theorem canonicalSound9527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9527.moment H = canonicalOutput9527.moment H :=
  canonical_of_padded canonicalInput9527 canonicalOutput9527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9528 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, -2, -1, 3], ![2, 2, -2, -2]]⟩

def canonicalOutput9528 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound9528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9528.moment H = canonicalOutput9528.moment H :=
  canonical_of_padded canonicalInput9528 canonicalOutput9528 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9529 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![2, 3, -2, -3]]⟩

def canonicalOutput9529 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code159

theorem canonicalSound9529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9529.moment H = canonicalOutput9529.moment H :=
  canonical_of_padded canonicalInput9529 canonicalOutput9529 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9530 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9530 : ExponentCode := normalNode1787

theorem canonicalSound9530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9530.moment H = canonicalOutput9530.moment H :=
  canonical_of_padded canonicalInput9530 canonicalOutput9530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9531 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 0, -2, 2], ![2, 2, -1, -3]]⟩

def canonicalOutput9531 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code162

theorem canonicalSound9531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9531.moment H = canonicalOutput9531.moment H :=
  canonical_of_padded canonicalInput9531 canonicalOutput9531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9532 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 1, -3, 2], ![2, 1, 0, -3]]⟩

def canonicalOutput9532 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code439

theorem canonicalSound9532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9532.moment H = canonicalOutput9532.moment H :=
  canonical_of_padded canonicalInput9532 canonicalOutput9532 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9533 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9533 : ExponentCode := normalNode2036

theorem canonicalSound9533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9533.moment H = canonicalOutput9533.moment H :=
  canonical_of_padded canonicalInput9533 canonicalOutput9533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9534 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, -1, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput9534 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code147

theorem canonicalSound9534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9534.moment H = canonicalOutput9534.moment H :=
  canonical_of_padded canonicalInput9534 canonicalOutput9534 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9535 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput9535 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code435

theorem canonicalSound9535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9535.moment H = canonicalOutput9535.moment H :=
  canonical_of_padded canonicalInput9535 canonicalOutput9535 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24448 : ExponentCode := ⟨3, 4, ![![0, -2, 2, 0], ![3, 0, 0, -3], ![-3, 2, -2, 3]]⟩

def canonicalOutput24448 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node192⟩

theorem canonicalSound24448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24448.moment H = canonicalOutput24448.moment H :=
  canonical_of_padded canonicalInput24448 canonicalOutput24448 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24449 : ExponentCode := ⟨4, 5, ![![0, -2, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput24449 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1276

theorem canonicalSound24449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24449.moment H = canonicalOutput24449.moment H :=
  canonical_of_padded canonicalInput24449 canonicalOutput24449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24450 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24450 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound24450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24450.moment H = canonicalOutput24450.moment H :=
  canonical_of_padded canonicalInput24450 canonicalOutput24450 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput24451 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24451 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound24451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24451.moment H = canonicalOutput24451.moment H :=
  canonical_of_padded canonicalInput24451 canonicalOutput24451 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput24452 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24452 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24452.moment H = canonicalOutput24452.moment H :=
  canonical_of_padded canonicalInput24452 canonicalOutput24452 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput24453 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24453 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound24453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24453.moment H = canonicalOutput24453.moment H :=
  canonical_of_padded canonicalInput24453 canonicalOutput24453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24454 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24454 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24454.moment H = canonicalOutput24454.moment H :=
  canonical_of_padded canonicalInput24454 canonicalOutput24454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24455 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24455 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound24455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24455.moment H = canonicalOutput24455.moment H :=
  canonical_of_padded canonicalInput24455 canonicalOutput24455 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput24456 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24456 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound24456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24456.moment H = canonicalOutput24456.moment H :=
  canonical_of_padded canonicalInput24456 canonicalOutput24456 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput24457 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24457 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound24457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24457.moment H = canonicalOutput24457.moment H :=
  canonical_of_padded canonicalInput24457 canonicalOutput24457 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24458 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24458 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound24458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24458.moment H = canonicalOutput24458.moment H :=
  canonical_of_padded canonicalInput24458 canonicalOutput24458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24459 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24459 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound24459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24459.moment H = canonicalOutput24459.moment H :=
  canonical_of_padded canonicalInput24459 canonicalOutput24459 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput24460 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24460 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound24460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24460.moment H = canonicalOutput24460.moment H :=
  canonical_of_padded canonicalInput24460 canonicalOutput24460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput24461 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24461 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound24461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24461.moment H = canonicalOutput24461.moment H :=
  canonical_of_padded canonicalInput24461 canonicalOutput24461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput24462 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24462 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound24462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24462.moment H = canonicalOutput24462.moment H :=
  canonical_of_padded canonicalInput24462 canonicalOutput24462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput24463 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24463 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound24463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24463.moment H = canonicalOutput24463.moment H :=
  canonical_of_padded canonicalInput24463 canonicalOutput24463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput24464 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24464 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound24464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24464.moment H = canonicalOutput24464.moment H :=
  canonical_of_padded canonicalInput24464 canonicalOutput24464 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24465 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24465 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound24465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24465.moment H = canonicalOutput24465.moment H :=
  canonical_of_padded canonicalInput24465 canonicalOutput24465 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24466 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24466 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound24466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24466.moment H = canonicalOutput24466.moment H :=
  canonical_of_padded canonicalInput24466 canonicalOutput24466 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput24467 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24467 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound24467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24467.moment H = canonicalOutput24467.moment H :=
  canonical_of_padded canonicalInput24467 canonicalOutput24467 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput24468 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24468 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24468.moment H = canonicalOutput24468.moment H :=
  canonical_of_padded canonicalInput24468 canonicalOutput24468 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24469 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24469 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound24469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24469.moment H = canonicalOutput24469.moment H :=
  canonical_of_padded canonicalInput24469 canonicalOutput24469 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput24470 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24470 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24470.moment H = canonicalOutput24470.moment H :=
  canonical_of_padded canonicalInput24470 canonicalOutput24470 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput24471 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24471 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound24471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24471.moment H = canonicalOutput24471.moment H :=
  canonical_of_padded canonicalInput24471 canonicalOutput24471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput24472 : ExponentCode := ⟨6, 6, ![![0, -2, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput24472 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound24472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24472.moment H = canonicalOutput24472.moment H :=
  canonical_of_padded canonicalInput24472 canonicalOutput24472 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput24473 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-4, 3, -1, 2], ![4, -1, -2, -1]]⟩

def canonicalOutput24473 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code92

theorem canonicalSound24473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24473.moment H = canonicalOutput24473.moment H :=
  canonical_of_padded canonicalInput24473 canonicalOutput24473 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24474 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-3, 1, -2, 4], ![3, 1, -1, -3]]⟩

def canonicalOutput24474 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound24474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24474.moment H = canonicalOutput24474.moment H :=
  canonical_of_padded canonicalInput24474 canonicalOutput24474 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24475 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-3, 3, -1, 1], ![3, -1, -2, 0]]⟩

def canonicalOutput24475 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound24475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24475.moment H = canonicalOutput24475.moment H :=
  canonical_of_padded canonicalInput24475 canonicalOutput24475 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24476 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-3, 4, -1, 0], ![3, -2, -2, 1]]⟩

def canonicalOutput24476 : ExponentCode := normalNode241

theorem canonicalSound24476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24476.moment H = canonicalOutput24476.moment H :=
  canonical_of_padded canonicalInput24476 canonicalOutput24476 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24477 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-2, 0, -3, 5], ![2, 2, 0, -4]]⟩

def canonicalOutput24477 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code54

theorem canonicalSound24477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24477.moment H = canonicalOutput24477.moment H :=
  canonical_of_padded canonicalInput24477 canonicalOutput24477 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24478 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-2, 1, -2, 3], ![2, 1, -1, -2]]⟩

def canonicalOutput24478 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound24478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24478.moment H = canonicalOutput24478.moment H :=
  canonical_of_padded canonicalInput24478 canonicalOutput24478 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24479 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-2, 4, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput24479 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound24479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24479.moment H = canonicalOutput24479.moment H :=
  canonical_of_padded canonicalInput24479 canonicalOutput24479 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24480 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-1, 0, -3, 4], ![1, 2, 0, -3]]⟩

def canonicalOutput24480 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound24480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24480.moment H = canonicalOutput24480.moment H :=
  canonical_of_padded canonicalInput24480 canonicalOutput24480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24481 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24481 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2719⟩

theorem canonicalSound24481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24481.moment H = canonicalOutput24481.moment H :=
  canonical_of_padded canonicalInput24481 canonicalOutput24481 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24482 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![-1, 0, 1, 0], ![0, 1, -4, 3], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24482 : ExponentCode := normalNode10512

theorem canonicalSound24482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24482.moment H = canonicalOutput24482.moment H :=
  canonical_of_padded canonicalInput24482 canonicalOutput24482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24483 : ExponentCode := ⟨4, 4, ![![0, -2, 3, -1], ![-1, 1, -4, 4], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24483 : ExponentCode := normalNode6520

theorem canonicalSound24483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24483.moment H = canonicalOutput24483.moment H :=
  canonical_of_padded canonicalInput24483 canonicalOutput24483 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24484 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![-1, 4, -1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput24484 : ExponentCode := normalNode235

theorem canonicalSound24484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24484.moment H = canonicalOutput24484.moment H :=
  canonical_of_padded canonicalInput24484 canonicalOutput24484 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24485 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24485 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2757⟩

theorem canonicalSound24485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24485.moment H = canonicalOutput24485.moment H :=
  canonical_of_padded canonicalInput24485 canonicalOutput24485 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24486 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24486 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound24486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24486.moment H = canonicalOutput24486.moment H :=
  canonical_of_padded canonicalInput24486 canonicalOutput24486 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24487 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24487 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound24487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24487.moment H = canonicalOutput24487.moment H :=
  canonical_of_padded canonicalInput24487 canonicalOutput24487 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24488 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24488 : ExponentCode := normalNode10597

theorem canonicalSound24488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24488.moment H = canonicalOutput24488.moment H :=
  canonical_of_padded canonicalInput24488 canonicalOutput24488 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24489 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![-1, 1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24489 : ExponentCode := normalNode10824

theorem canonicalSound24489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24489.moment H = canonicalOutput24489.moment H :=
  canonical_of_padded canonicalInput24489 canonicalOutput24489 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24490 : ExponentCode := ⟨5, 4, ![![0, -2, 3, -1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 0, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24490 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound24490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24490.moment H = canonicalOutput24490.moment H :=
  canonical_of_padded canonicalInput24490 canonicalOutput24490 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24491 : ExponentCode := ⟨4, 4, ![![0, -2, 3, -1], ![0, 1, -4, 3], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24491 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound24491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24491.moment H = canonicalOutput24491.moment H :=
  canonical_of_padded canonicalInput24491 canonicalOutput24491 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24492 : ExponentCode := ⟨4, 4, ![![0, -2, 3, -1], ![0, 1, -4, 3], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24492 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound24492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24492.moment H = canonicalOutput24492.moment H :=
  canonical_of_padded canonicalInput24492 canonicalOutput24492 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24493 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![1, -2, 1, 0], ![-1, 4, -4, 1]]⟩

def canonicalOutput24493 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound24493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24493.moment H = canonicalOutput24493.moment H :=
  canonical_of_padded canonicalInput24493 canonicalOutput24493 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24494 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![1, 0, 1, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput24494 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩

theorem canonicalSound24494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24494.moment H = canonicalOutput24494.moment H :=
  canonical_of_padded canonicalInput24494 canonicalOutput24494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24495 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![1, 1, 0, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput24495 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound24495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24495.moment H = canonicalOutput24495.moment H :=
  canonical_of_padded canonicalInput24495 canonicalOutput24495 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24496 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![2, -2, 1, -1], ![-2, 4, -4, 2]]⟩

def canonicalOutput24496 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound24496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24496.moment H = canonicalOutput24496.moment H :=
  canonical_of_padded canonicalInput24496 canonicalOutput24496 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24497 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![2, -1, -1, 0], ![-2, 3, -2, 1]]⟩

def canonicalOutput24497 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound24497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24497.moment H = canonicalOutput24497.moment H :=
  canonical_of_padded canonicalInput24497 canonicalOutput24497 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24498 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![2, 0, 1, -3], ![-2, 2, -4, 4]]⟩

def canonicalOutput24498 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code35

theorem canonicalSound24498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24498.moment H = canonicalOutput24498.moment H :=
  canonical_of_padded canonicalInput24498 canonicalOutput24498 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24499 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![2, 1, 0, -3], ![-2, 1, -3, 4]]⟩

def canonicalOutput24499 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound24499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24499.moment H = canonicalOutput24499.moment H :=
  canonical_of_padded canonicalInput24499 canonicalOutput24499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24500 : ExponentCode := ⟨3, 4, ![![0, -2, 3, -1], ![3, -1, -1, -1], ![-3, 3, -2, 2]]⟩

def canonicalOutput24500 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound24500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24500.moment H = canonicalOutput24500.moment H :=
  canonical_of_padded canonicalInput24500 canonicalOutput24500 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24501 : ExponentCode := ⟨5, 4, ![![0, -2, 4, -2], ![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24501 : ExponentCode := normalNode9656

theorem canonicalSound24501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24501.moment H = canonicalOutput24501.moment H :=
  canonical_of_padded canonicalInput24501 canonicalOutput24501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24502 : ExponentCode := ⟨4, 4, ![![0, -2, 4, -2], ![-1, 1, -4, 4], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24502 : ExponentCode := normalNode7477

theorem canonicalSound24502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24502.moment H = canonicalOutput24502.moment H :=
  canonical_of_padded canonicalInput24502 canonicalOutput24502 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24503 : ExponentCode := ⟨5, 4, ![![0, -2, 4, -2], ![0, 0, -3, 3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24503 : ExponentCode := normalNode10612

theorem canonicalSound24503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24503.moment H = canonicalOutput24503.moment H :=
  canonical_of_padded canonicalInput24503 canonicalOutput24503 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24504 : ExponentCode := ⟨5, 4, ![![0, -2, 4, -2], ![0, 0, -3, 3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24504 : ExponentCode := normalNode10843

theorem canonicalSound24504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24504.moment H = canonicalOutput24504.moment H :=
  canonical_of_padded canonicalInput24504 canonicalOutput24504 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24505 : ExponentCode := ⟨5, 4, ![![0, -2, 4, -2], ![0, 0, -3, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24505 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound24505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24505.moment H = canonicalOutput24505.moment H :=
  canonical_of_padded canonicalInput24505 canonicalOutput24505 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24506 : ExponentCode := ⟨4, 4, ![![0, -2, 4, -2], ![0, 1, -4, 3], ![-1, 1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput24506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩

theorem canonicalSound24506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24506.moment H = canonicalOutput24506.moment H :=
  canonical_of_padded canonicalInput24506 canonicalOutput24506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24507 : ExponentCode := ⟨4, 4, ![![0, -2, 4, -2], ![0, 1, -4, 3], ![0, 1, 0, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24507 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound24507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24507.moment H = canonicalOutput24507.moment H :=
  canonical_of_padded canonicalInput24507 canonicalOutput24507 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24508 : ExponentCode := ⟨3, 4, ![![0, -1, -4, 5], ![0, 0, 3, -3], ![0, 1, 1, -2]]⟩

def canonicalOutput24508 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound24508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24508.moment H = canonicalOutput24508.moment H :=
  canonical_of_padded canonicalInput24508 canonicalOutput24508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24509 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput24509 : ExponentCode := normalNode9356

theorem canonicalSound24509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24509.moment H = canonicalOutput24509.moment H :=
  canonical_of_padded canonicalInput24509 canonicalOutput24509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24510 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24510 : ExponentCode := normalNode10825

theorem canonicalSound24510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24510.moment H = canonicalOutput24510.moment H :=
  canonical_of_padded canonicalInput24510 canonicalOutput24510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24511 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24511 : ExponentCode := normalNode10826

theorem canonicalSound24511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24511.moment H = canonicalOutput24511.moment H :=
  canonical_of_padded canonicalInput24511 canonicalOutput24511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

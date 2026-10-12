import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11456 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11456 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound11456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11456.moment H = canonicalOutput11456.moment H :=
  canonical_of_padded canonicalInput11456 canonicalOutput11456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation306, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11457 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1045⟩

theorem canonicalSound11457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11457.moment H = canonicalOutput11457.moment H :=
  canonical_of_padded canonicalInput11457 canonicalOutput11457 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation306, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput11458 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11458 : ExponentCode := normalNode4310

theorem canonicalSound11458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11458.moment H = canonicalOutput11458.moment H :=
  canonical_of_padded canonicalInput11458 canonicalOutput11458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11459 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11459 : ExponentCode := normalNode4310

theorem canonicalSound11459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11459.moment H = canonicalOutput11459.moment H :=
  canonical_of_padded canonicalInput11459 canonicalOutput11459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11460 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 1, -1, -1, 0], ![1, 0, -2, -1, 2, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11460 : ExponentCode := normalNode4310

theorem canonicalSound11460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11460.moment H = canonicalOutput11460.moment H :=
  canonical_of_padded canonicalInput11460 canonicalOutput11460 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11461 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 1, -1, -1, 0], ![1, 0, -2, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11461 : ExponentCode := normalNode4310

theorem canonicalSound11461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11461.moment H = canonicalOutput11461.moment H :=
  canonical_of_padded canonicalInput11461 canonicalOutput11461 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11462 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 0, 1, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11462 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code831

theorem canonicalSound11462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11462.moment H = canonicalOutput11462.moment H :=
  canonical_of_padded canonicalInput11462 canonicalOutput11462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11463 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11463 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound11463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11463.moment H = canonicalOutput11463.moment H :=
  canonical_of_padded canonicalInput11463 canonicalOutput11463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11464 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11464 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound11464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11464.moment H = canonicalOutput11464.moment H :=
  canonical_of_padded canonicalInput11464 canonicalOutput11464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11465 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 1, 1, 0, 0], ![-1, 2, -2, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11465 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound11465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11465.moment H = canonicalOutput11465.moment H :=
  canonical_of_padded canonicalInput11465 canonicalOutput11465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation304, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput11466 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11466 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11466.moment H = canonicalOutput11466.moment H :=
  canonical_of_padded canonicalInput11466 canonicalOutput11466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11467 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11467 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11467.moment H = canonicalOutput11467.moment H :=
  canonical_of_padded canonicalInput11467 canonicalOutput11467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11468 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 1, 1, 0, 0], ![2, 2, -2, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11468 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound11468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11468.moment H = canonicalOutput11468.moment H :=
  canonical_of_padded canonicalInput11468 canonicalOutput11468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11469 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11469 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound11469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11469.moment H = canonicalOutput11469.moment H :=
  canonical_of_padded canonicalInput11469 canonicalOutput11469 (by decide) (by decide)
    ⟨false, true, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11470 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11470 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound11470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11470.moment H = canonicalOutput11470.moment H :=
  canonical_of_padded canonicalInput11470 canonicalOutput11470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11471 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11471 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound11471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11471.moment H = canonicalOutput11471.moment H :=
  canonical_of_padded canonicalInput11471 canonicalOutput11471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11472 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11472 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound11472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11472.moment H = canonicalOutput11472.moment H :=
  canonical_of_padded canonicalInput11472 canonicalOutput11472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation299, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11473 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11473 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound11473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11473.moment H = canonicalOutput11473.moment H :=
  canonical_of_padded canonicalInput11473 canonicalOutput11473 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11474 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, -1, 1, 0, 0], ![-1, 1, -1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11474 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound11474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11474.moment H = canonicalOutput11474.moment H :=
  canonical_of_padded canonicalInput11474 canonicalOutput11474 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput11475 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11475 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11475.moment H = canonicalOutput11475.moment H :=
  canonical_of_padded canonicalInput11475 canonicalOutput11475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput11476 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11476 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11476.moment H = canonicalOutput11476.moment H :=
  canonical_of_padded canonicalInput11476 canonicalOutput11476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput11477 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, -1, 1, 0, 0], ![2, 1, -1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11477 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound11477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11477.moment H = canonicalOutput11477.moment H :=
  canonical_of_padded canonicalInput11477 canonicalOutput11477 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput11478 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11478 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound11478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11478.moment H = canonicalOutput11478.moment H :=
  canonical_of_padded canonicalInput11478 canonicalOutput11478 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput11479 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, -2, 1, 0], ![-1, 1, -2, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11479.moment H = canonicalOutput11479.moment H :=
  canonical_of_padded canonicalInput11479 canonicalOutput11479 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11480 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11480 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11480.moment H = canonicalOutput11480.moment H :=
  canonical_of_padded canonicalInput11480 canonicalOutput11480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11481 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, 1, -2, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11481 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11481.moment H = canonicalOutput11481.moment H :=
  canonical_of_padded canonicalInput11481 canonicalOutput11481 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11482 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, -2, 1, 0], ![2, 1, -2, 1, -2, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11482 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11482.moment H = canonicalOutput11482.moment H :=
  canonical_of_padded canonicalInput11482 canonicalOutput11482 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11483 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, 1, -2, 0], ![-1, 1, -2, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11483 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11483.moment H = canonicalOutput11483.moment H :=
  canonical_of_padded canonicalInput11483 canonicalOutput11483 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput11484 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11484 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11484.moment H = canonicalOutput11484.moment H :=
  canonical_of_padded canonicalInput11484 canonicalOutput11484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation354⟩ (by decide +kernel) hH

def canonicalInput11485 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11485 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11485.moment H = canonicalOutput11485.moment H :=
  canonical_of_padded canonicalInput11485 canonicalOutput11485 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation354⟩ (by decide +kernel) hH

def canonicalInput11486 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 1, 1, -2, 0], ![2, 1, -2, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11486 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11486.moment H = canonicalOutput11486.moment H :=
  canonical_of_padded canonicalInput11486 canonicalOutput11486 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11487 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 2, -2, 0, 0], ![-1, 1, -1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11487 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound11487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11487.moment H = canonicalOutput11487.moment H :=
  canonical_of_padded canonicalInput11487 canonicalOutput11487 (by decide) (by decide)
    ⟨true, false, canonicalPermutation12, OAI.MUB6.Certificate.PairSemantics.permutation297⟩ (by decide +kernel) hH

def canonicalInput11488 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11488 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11488.moment H = canonicalOutput11488.moment H :=
  canonical_of_padded canonicalInput11488 canonicalOutput11488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11489 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11489 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11489.moment H = canonicalOutput11489.moment H :=
  canonical_of_padded canonicalInput11489 canonicalOutput11489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11490 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -2, 2, -2, 0, 0], ![2, 1, -4, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11490 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound11490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11490.moment H = canonicalOutput11490.moment H :=
  canonical_of_padded canonicalInput11490 canonicalOutput11490 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11491 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11491 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11491.moment H = canonicalOutput11491.moment H :=
  canonical_of_padded canonicalInput11491 canonicalOutput11491 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11492 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11492 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound11492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11492.moment H = canonicalOutput11492.moment H :=
  canonical_of_padded canonicalInput11492 canonicalOutput11492 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput11493 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11493 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11493.moment H = canonicalOutput11493.moment H :=
  canonical_of_padded canonicalInput11493 canonicalOutput11493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11494 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11494 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11494.moment H = canonicalOutput11494.moment H :=
  canonical_of_padded canonicalInput11494 canonicalOutput11494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11495 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11495 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound11495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11495.moment H = canonicalOutput11495.moment H :=
  canonical_of_padded canonicalInput11495 canonicalOutput11495 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11496 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, 1, -2, 0, 0], ![-1, 2, -2, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11496 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound11496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11496.moment H = canonicalOutput11496.moment H :=
  canonical_of_padded canonicalInput11496 canonicalOutput11496 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11497 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, 1, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11497 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11497.moment H = canonicalOutput11497.moment H :=
  canonical_of_padded canonicalInput11497 canonicalOutput11497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11498 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, 1, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11498 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11498.moment H = canonicalOutput11498.moment H :=
  canonical_of_padded canonicalInput11498 canonicalOutput11498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11499 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, -1, 1, -2, 0, 0], ![2, -1, -2, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11499 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound11499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11499.moment H = canonicalOutput11499.moment H :=
  canonical_of_padded canonicalInput11499 canonicalOutput11499 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput11500 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11500 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound11500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11500.moment H = canonicalOutput11500.moment H :=
  canonical_of_padded canonicalInput11500 canonicalOutput11500 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11501 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11501 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound11501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11501.moment H = canonicalOutput11501.moment H :=
  canonical_of_padded canonicalInput11501 canonicalOutput11501 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11502 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11502 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound11502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11502.moment H = canonicalOutput11502.moment H :=
  canonical_of_padded canonicalInput11502 canonicalOutput11502 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11503 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11503 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound11503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11503.moment H = canonicalOutput11503.moment H :=
  canonical_of_padded canonicalInput11503 canonicalOutput11503 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11504 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11504 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound11504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11504.moment H = canonicalOutput11504.moment H :=
  canonical_of_padded canonicalInput11504 canonicalOutput11504 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11505 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11505 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11505.moment H = canonicalOutput11505.moment H :=
  canonical_of_padded canonicalInput11505 canonicalOutput11505 (by decide) (by decide)
    ⟨false, false, canonicalPermutation109, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11506 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11506 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11506.moment H = canonicalOutput11506.moment H :=
  canonical_of_padded canonicalInput11506 canonicalOutput11506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11507 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 1, -1, 0, 0], ![0, 0, -2, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11507 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound11507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11507.moment H = canonicalOutput11507.moment H :=
  canonical_of_padded canonicalInput11507 canonicalOutput11507 (by decide) (by decide)
    ⟨true, false, canonicalPermutation12, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11508 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 1, -1, 0, 0], ![0, 3, -2, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11508 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound11508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11508.moment H = canonicalOutput11508.moment H :=
  canonical_of_padded canonicalInput11508 canonicalOutput11508 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11509 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11509 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11509.moment H = canonicalOutput11509.moment H :=
  canonical_of_padded canonicalInput11509 canonicalOutput11509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11510 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -3, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11510 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11510.moment H = canonicalOutput11510.moment H :=
  canonical_of_padded canonicalInput11510 canonicalOutput11510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11511 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11511 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound11511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11511.moment H = canonicalOutput11511.moment H :=
  canonical_of_padded canonicalInput11511 canonicalOutput11511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput11512 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 0, -1, 0, 0], ![0, 1, -3, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11512 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound11512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11512.moment H = canonicalOutput11512.moment H :=
  canonical_of_padded canonicalInput11512 canonicalOutput11512 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11513 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 0, -1, 0, 0], ![0, 1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11513 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound11513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11513.moment H = canonicalOutput11513.moment H :=
  canonical_of_padded canonicalInput11513 canonicalOutput11513 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput11514 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11514 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11514.moment H = canonicalOutput11514.moment H :=
  canonical_of_padded canonicalInput11514 canonicalOutput11514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11515 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11515 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11515.moment H = canonicalOutput11515.moment H :=
  canonical_of_padded canonicalInput11515 canonicalOutput11515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11516 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 1, -1, -1, 0], ![0, 1, -2, -1, 2, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11516 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11516.moment H = canonicalOutput11516.moment H :=
  canonical_of_padded canonicalInput11516 canonicalOutput11516 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11517 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 1, -1, -1, 0], ![0, 1, -2, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11517 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11517.moment H = canonicalOutput11517.moment H :=
  canonical_of_padded canonicalInput11517 canonicalOutput11517 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11518 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -2, 1, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11518 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11518.moment H = canonicalOutput11518.moment H :=
  canonical_of_padded canonicalInput11518 canonicalOutput11518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11519 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11519 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound11519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11519.moment H = canonicalOutput11519.moment H :=
  canonical_of_padded canonicalInput11519 canonicalOutput11519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

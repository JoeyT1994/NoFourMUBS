import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23616 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23616 : ExponentCode := normalNode8064

theorem canonicalSound23616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23616.moment H = canonicalOutput23616.moment H :=
  canonical_of_padded canonicalInput23616 canonicalOutput23616 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23617 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23617 : ExponentCode := normalNode8068

theorem canonicalSound23617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23617.moment H = canonicalOutput23617.moment H :=
  canonical_of_padded canonicalInput23617 canonicalOutput23617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput23618 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23618 : ExponentCode := normalNode8458

theorem canonicalSound23618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23618.moment H = canonicalOutput23618.moment H :=
  canonical_of_padded canonicalInput23618 canonicalOutput23618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput23619 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23619 : ExponentCode := normalNode10045

theorem canonicalSound23619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23619.moment H = canonicalOutput23619.moment H :=
  canonical_of_padded canonicalInput23619 canonicalOutput23619 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation388⟩ (by decide +kernel) hH

def canonicalInput23620 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23620 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound23620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23620.moment H = canonicalOutput23620.moment H :=
  canonical_of_padded canonicalInput23620 canonicalOutput23620 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput23621 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23621 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23621.moment H = canonicalOutput23621.moment H :=
  canonical_of_padded canonicalInput23621 canonicalOutput23621 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23622 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23622 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23622.moment H = canonicalOutput23622.moment H :=
  canonical_of_padded canonicalInput23622 canonicalOutput23622 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23623 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23623 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound23623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23623.moment H = canonicalOutput23623.moment H :=
  canonical_of_padded canonicalInput23623 canonicalOutput23623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23624 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23624 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound23624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23624.moment H = canonicalOutput23624.moment H :=
  canonical_of_padded canonicalInput23624 canonicalOutput23624 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput23625 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23625 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound23625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23625.moment H = canonicalOutput23625.moment H :=
  canonical_of_padded canonicalInput23625 canonicalOutput23625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23626 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23626 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound23626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23626.moment H = canonicalOutput23626.moment H :=
  canonical_of_padded canonicalInput23626 canonicalOutput23626 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23627 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23627 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound23627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23627.moment H = canonicalOutput23627.moment H :=
  canonical_of_padded canonicalInput23627 canonicalOutput23627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation297, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23628 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23628 : ExponentCode := normalNode10818

theorem canonicalSound23628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23628.moment H = canonicalOutput23628.moment H :=
  canonical_of_padded canonicalInput23628 canonicalOutput23628 (by decide) (by decide)
    ⟨false, true, canonicalPermutation154, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput23629 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23629 : ExponentCode := normalNode10455

theorem canonicalSound23629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23629.moment H = canonicalOutput23629.moment H :=
  canonical_of_padded canonicalInput23629 canonicalOutput23629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput23630 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23630 : ExponentCode := normalNode10375

theorem canonicalSound23630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23630.moment H = canonicalOutput23630.moment H :=
  canonical_of_padded canonicalInput23630 canonicalOutput23630 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput23631 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23631 : ExponentCode := normalNode8064

theorem canonicalSound23631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23631.moment H = canonicalOutput23631.moment H :=
  canonical_of_padded canonicalInput23631 canonicalOutput23631 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23632 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23632 : ExponentCode := normalNode8066

theorem canonicalSound23632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23632.moment H = canonicalOutput23632.moment H :=
  canonical_of_padded canonicalInput23632 canonicalOutput23632 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23633 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23633 : ExponentCode := normalNode8066

theorem canonicalSound23633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23633.moment H = canonicalOutput23633.moment H :=
  canonical_of_padded canonicalInput23633 canonicalOutput23633 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23634 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23634 : ExponentCode := normalNode8064

theorem canonicalSound23634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23634.moment H = canonicalOutput23634.moment H :=
  canonical_of_padded canonicalInput23634 canonicalOutput23634 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23635 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23635 : ExponentCode := normalNode8066

theorem canonicalSound23635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23635.moment H = canonicalOutput23635.moment H :=
  canonical_of_padded canonicalInput23635 canonicalOutput23635 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23636 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23636 : ExponentCode := normalNode8361

theorem canonicalSound23636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23636.moment H = canonicalOutput23636.moment H :=
  canonical_of_padded canonicalInput23636 canonicalOutput23636 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23637 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23637 : ExponentCode := normalNode8067

theorem canonicalSound23637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23637.moment H = canonicalOutput23637.moment H :=
  canonical_of_padded canonicalInput23637 canonicalOutput23637 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23638 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23638 : ExponentCode := normalNode8067

theorem canonicalSound23638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23638.moment H = canonicalOutput23638.moment H :=
  canonical_of_padded canonicalInput23638 canonicalOutput23638 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23639 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23639 : ExponentCode := normalNode8361

theorem canonicalSound23639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23639.moment H = canonicalOutput23639.moment H :=
  canonical_of_padded canonicalInput23639 canonicalOutput23639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23640 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23640 : ExponentCode := normalNode8066

theorem canonicalSound23640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23640.moment H = canonicalOutput23640.moment H :=
  canonical_of_padded canonicalInput23640 canonicalOutput23640 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23641 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23641 : ExponentCode := normalNode8066

theorem canonicalSound23641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23641.moment H = canonicalOutput23641.moment H :=
  canonical_of_padded canonicalInput23641 canonicalOutput23641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23642 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23642 : ExponentCode := normalNode8067

theorem canonicalSound23642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23642.moment H = canonicalOutput23642.moment H :=
  canonical_of_padded canonicalInput23642 canonicalOutput23642 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23643 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23643 : ExponentCode := normalNode8361

theorem canonicalSound23643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23643.moment H = canonicalOutput23643.moment H :=
  canonical_of_padded canonicalInput23643 canonicalOutput23643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23644 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23644 : ExponentCode := normalNode8361

theorem canonicalSound23644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23644.moment H = canonicalOutput23644.moment H :=
  canonical_of_padded canonicalInput23644 canonicalOutput23644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23645 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23645 : ExponentCode := normalNode8067

theorem canonicalSound23645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23645.moment H = canonicalOutput23645.moment H :=
  canonical_of_padded canonicalInput23645 canonicalOutput23645 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23646 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23646 : ExponentCode := normalNode8066

theorem canonicalSound23646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23646.moment H = canonicalOutput23646.moment H :=
  canonical_of_padded canonicalInput23646 canonicalOutput23646 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23647 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23647 : ExponentCode := normalNode8064

theorem canonicalSound23647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23647.moment H = canonicalOutput23647.moment H :=
  canonical_of_padded canonicalInput23647 canonicalOutput23647 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23648 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23648 : ExponentCode := normalNode8066

theorem canonicalSound23648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23648.moment H = canonicalOutput23648.moment H :=
  canonical_of_padded canonicalInput23648 canonicalOutput23648 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23649 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23649 : ExponentCode := normalNode8066

theorem canonicalSound23649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23649.moment H = canonicalOutput23649.moment H :=
  canonical_of_padded canonicalInput23649 canonicalOutput23649 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23650 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23650 : ExponentCode := normalNode8064

theorem canonicalSound23650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23650.moment H = canonicalOutput23650.moment H :=
  canonical_of_padded canonicalInput23650 canonicalOutput23650 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23651 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23651 : ExponentCode := normalNode8067

theorem canonicalSound23651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23651.moment H = canonicalOutput23651.moment H :=
  canonical_of_padded canonicalInput23651 canonicalOutput23651 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23652 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23652 : ExponentCode := normalNode8066

theorem canonicalSound23652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23652.moment H = canonicalOutput23652.moment H :=
  canonical_of_padded canonicalInput23652 canonicalOutput23652 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23653 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23653 : ExponentCode := normalNode8361

theorem canonicalSound23653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23653.moment H = canonicalOutput23653.moment H :=
  canonical_of_padded canonicalInput23653 canonicalOutput23653 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23654 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23654 : ExponentCode := normalNode8361

theorem canonicalSound23654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23654.moment H = canonicalOutput23654.moment H :=
  canonical_of_padded canonicalInput23654 canonicalOutput23654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23655 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23655 : ExponentCode := normalNode8066

theorem canonicalSound23655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23655.moment H = canonicalOutput23655.moment H :=
  canonical_of_padded canonicalInput23655 canonicalOutput23655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23656 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23656 : ExponentCode := normalNode8067

theorem canonicalSound23656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23656.moment H = canonicalOutput23656.moment H :=
  canonical_of_padded canonicalInput23656 canonicalOutput23656 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23657 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23657 : ExponentCode := normalNode8361

theorem canonicalSound23657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23657.moment H = canonicalOutput23657.moment H :=
  canonical_of_padded canonicalInput23657 canonicalOutput23657 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23658 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23658 : ExponentCode := normalNode8361

theorem canonicalSound23658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23658.moment H = canonicalOutput23658.moment H :=
  canonical_of_padded canonicalInput23658 canonicalOutput23658 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23659 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23659 : ExponentCode := normalNode8361

theorem canonicalSound23659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23659.moment H = canonicalOutput23659.moment H :=
  canonical_of_padded canonicalInput23659 canonicalOutput23659 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23660 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23660 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound23660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23660.moment H = canonicalOutput23660.moment H :=
  canonical_of_padded canonicalInput23660 canonicalOutput23660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23661 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23661 : ExponentCode := normalNode8361

theorem canonicalSound23661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23661.moment H = canonicalOutput23661.moment H :=
  canonical_of_padded canonicalInput23661 canonicalOutput23661 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23662 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23662 : ExponentCode := normalNode8361

theorem canonicalSound23662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23662.moment H = canonicalOutput23662.moment H :=
  canonical_of_padded canonicalInput23662 canonicalOutput23662 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23663 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23663 : ExponentCode := normalNode8361

theorem canonicalSound23663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23663.moment H = canonicalOutput23663.moment H :=
  canonical_of_padded canonicalInput23663 canonicalOutput23663 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23664 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23664 : ExponentCode := normalNode8066

theorem canonicalSound23664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23664.moment H = canonicalOutput23664.moment H :=
  canonical_of_padded canonicalInput23664 canonicalOutput23664 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23665 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23665 : ExponentCode := normalNode8067

theorem canonicalSound23665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23665.moment H = canonicalOutput23665.moment H :=
  canonical_of_padded canonicalInput23665 canonicalOutput23665 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23666 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23666 : ExponentCode := normalNode8361

theorem canonicalSound23666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23666.moment H = canonicalOutput23666.moment H :=
  canonical_of_padded canonicalInput23666 canonicalOutput23666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23667 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23667 : ExponentCode := normalNode8361

theorem canonicalSound23667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23667.moment H = canonicalOutput23667.moment H :=
  canonical_of_padded canonicalInput23667 canonicalOutput23667 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23668 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23668 : ExponentCode := normalNode8067

theorem canonicalSound23668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23668.moment H = canonicalOutput23668.moment H :=
  canonical_of_padded canonicalInput23668 canonicalOutput23668 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23669 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23669 : ExponentCode := normalNode8066

theorem canonicalSound23669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23669.moment H = canonicalOutput23669.moment H :=
  canonical_of_padded canonicalInput23669 canonicalOutput23669 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23670 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23670 : ExponentCode := normalNode8067

theorem canonicalSound23670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23670.moment H = canonicalOutput23670.moment H :=
  canonical_of_padded canonicalInput23670 canonicalOutput23670 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23671 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23671 : ExponentCode := normalNode8361

theorem canonicalSound23671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23671.moment H = canonicalOutput23671.moment H :=
  canonical_of_padded canonicalInput23671 canonicalOutput23671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23672 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23672 : ExponentCode := normalNode8066

theorem canonicalSound23672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23672.moment H = canonicalOutput23672.moment H :=
  canonical_of_padded canonicalInput23672 canonicalOutput23672 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23673 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23673 : ExponentCode := normalNode8066

theorem canonicalSound23673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23673.moment H = canonicalOutput23673.moment H :=
  canonical_of_padded canonicalInput23673 canonicalOutput23673 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23674 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23674 : ExponentCode := normalNode8361

theorem canonicalSound23674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23674.moment H = canonicalOutput23674.moment H :=
  canonical_of_padded canonicalInput23674 canonicalOutput23674 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23675 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23675 : ExponentCode := normalNode8067

theorem canonicalSound23675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23675.moment H = canonicalOutput23675.moment H :=
  canonical_of_padded canonicalInput23675 canonicalOutput23675 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23676 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23676 : ExponentCode := normalNode8066

theorem canonicalSound23676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23676.moment H = canonicalOutput23676.moment H :=
  canonical_of_padded canonicalInput23676 canonicalOutput23676 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23677 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23677 : ExponentCode := normalNode8361

theorem canonicalSound23677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23677.moment H = canonicalOutput23677.moment H :=
  canonical_of_padded canonicalInput23677 canonicalOutput23677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23678 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23678 : ExponentCode := normalNode8067

theorem canonicalSound23678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23678.moment H = canonicalOutput23678.moment H :=
  canonical_of_padded canonicalInput23678 canonicalOutput23678 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23679 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23679 : ExponentCode := normalNode8067

theorem canonicalSound23679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23679.moment H = canonicalOutput23679.moment H :=
  canonical_of_padded canonicalInput23679 canonicalOutput23679 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, canonicalPermutation47⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

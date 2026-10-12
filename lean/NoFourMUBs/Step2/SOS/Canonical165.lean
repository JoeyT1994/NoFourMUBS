import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10560 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput10560 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node608⟩

theorem canonicalSound10560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10560.moment H = canonicalOutput10560.moment H :=
  canonical_of_padded canonicalInput10560 canonicalOutput10560 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10561 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput10561 : ExponentCode := normalNode4260

theorem canonicalSound10561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10561.moment H = canonicalOutput10561.moment H :=
  canonical_of_padded canonicalInput10561 canonicalOutput10561 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10562 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10562 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound10562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10562.moment H = canonicalOutput10562.moment H :=
  canonical_of_padded canonicalInput10562 canonicalOutput10562 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10563 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput10563 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound10563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10563.moment H = canonicalOutput10563.moment H :=
  canonical_of_padded canonicalInput10563 canonicalOutput10563 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10564 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10564 : ExponentCode := normalNode5436

theorem canonicalSound10564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10564.moment H = canonicalOutput10564.moment H :=
  canonical_of_padded canonicalInput10564 canonicalOutput10564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10565 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10565 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound10565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10565.moment H = canonicalOutput10565.moment H :=
  canonical_of_padded canonicalInput10565 canonicalOutput10565 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10566 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, -4, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput10566 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1275⟩

theorem canonicalSound10566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10566.moment H = canonicalOutput10566.moment H :=
  canonical_of_padded canonicalInput10566 canonicalOutput10566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10567 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10567 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound10567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10567.moment H = canonicalOutput10567.moment H :=
  canonical_of_padded canonicalInput10567 canonicalOutput10567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10568 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput10568 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound10568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10568.moment H = canonicalOutput10568.moment H :=
  canonical_of_padded canonicalInput10568 canonicalOutput10568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10569 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, -3, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput10569 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound10569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10569.moment H = canonicalOutput10569.moment H :=
  canonical_of_padded canonicalInput10569 canonicalOutput10569 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10570 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput10570 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound10570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10570.moment H = canonicalOutput10570.moment H :=
  canonical_of_padded canonicalInput10570 canonicalOutput10570 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10571 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 1, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput10571 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound10571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10571.moment H = canonicalOutput10571.moment H :=
  canonical_of_padded canonicalInput10571 canonicalOutput10571 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10572 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10572 : ExponentCode := normalNode10922

theorem canonicalSound10572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10572.moment H = canonicalOutput10572.moment H :=
  canonical_of_padded canonicalInput10572 canonicalOutput10572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10573 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 0, -3, 3], ![2, 0, 0, -2]]⟩

def canonicalOutput10573 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound10573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10573.moment H = canonicalOutput10573.moment H :=
  canonical_of_padded canonicalInput10573 canonicalOutput10573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10574 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput10574 : ExponentCode := normalNode5379

theorem canonicalSound10574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10574.moment H = canonicalOutput10574.moment H :=
  canonical_of_padded canonicalInput10574 canonicalOutput10574 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10575 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10575 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1636⟩

theorem canonicalSound10575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10575.moment H = canonicalOutput10575.moment H :=
  canonical_of_padded canonicalInput10575 canonicalOutput10575 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10576 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput10576 : ExponentCode := normalNode9442

theorem canonicalSound10576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10576.moment H = canonicalOutput10576.moment H :=
  canonical_of_padded canonicalInput10576 canonicalOutput10576 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10577 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 4, -3], ![0, 0, -3, 3], ![2, 0, -1, -1]]⟩

def canonicalOutput10577 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1183⟩

theorem canonicalSound10577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10577.moment H = canonicalOutput10577.moment H :=
  canonical_of_padded canonicalInput10577 canonicalOutput10577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10578 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 4, -3], ![0, 1, -2, 1], ![2, -1, -2, 1]]⟩

def canonicalOutput10578 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node578⟩

theorem canonicalSound10578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10578.moment H = canonicalOutput10578.moment H :=
  canonical_of_padded canonicalInput10578 canonicalOutput10578 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10579 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10579 : ExponentCode := normalNode5612

theorem canonicalSound10579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10579.moment H = canonicalOutput10579.moment H :=
  canonical_of_padded canonicalInput10579 canonicalOutput10579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10580 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 4, -3], ![1, 0, -4, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10580 : ExponentCode := normalNode9755

theorem canonicalSound10580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10580.moment H = canonicalOutput10580.moment H :=
  canonical_of_padded canonicalInput10580 canonicalOutput10580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10581 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10581 : ExponentCode := normalNode5415

theorem canonicalSound10581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10581.moment H = canonicalOutput10581.moment H :=
  canonical_of_padded canonicalInput10581 canonicalOutput10581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10582 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10582 : ExponentCode := normalNode5439

theorem canonicalSound10582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10582.moment H = canonicalOutput10582.moment H :=
  canonical_of_padded canonicalInput10582 canonicalOutput10582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10583 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10583 : ExponentCode := normalNode10922

theorem canonicalSound10583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10583.moment H = canonicalOutput10583.moment H :=
  canonical_of_padded canonicalInput10583 canonicalOutput10583 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10584 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10584 : ExponentCode := normalNode5442

theorem canonicalSound10584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10584.moment H = canonicalOutput10584.moment H :=
  canonical_of_padded canonicalInput10584 canonicalOutput10584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10585 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10585 : ExponentCode := normalNode11153

theorem canonicalSound10585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10585.moment H = canonicalOutput10585.moment H :=
  canonical_of_padded canonicalInput10585 canonicalOutput10585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10586 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10586 : ExponentCode := normalNode11182

theorem canonicalSound10586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10586.moment H = canonicalOutput10586.moment H :=
  canonical_of_padded canonicalInput10586 canonicalOutput10586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10587 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10587 : ExponentCode := normalNode11154

theorem canonicalSound10587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10587.moment H = canonicalOutput10587.moment H :=
  canonical_of_padded canonicalInput10587 canonicalOutput10587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10588 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput10588 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound10588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10588.moment H = canonicalOutput10588.moment H :=
  canonical_of_padded canonicalInput10588 canonicalOutput10588 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10589 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10589 : ExponentCode := normalNode11155

theorem canonicalSound10589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10589.moment H = canonicalOutput10589.moment H :=
  canonical_of_padded canonicalInput10589 canonicalOutput10589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10590 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10590 : ExponentCode := normalNode11109

theorem canonicalSound10590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10590.moment H = canonicalOutput10590.moment H :=
  canonical_of_padded canonicalInput10590 canonicalOutput10590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10591 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput10591 : ExponentCode := normalNode11155

theorem canonicalSound10591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10591.moment H = canonicalOutput10591.moment H :=
  canonical_of_padded canonicalInput10591 canonicalOutput10591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10592 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput10592 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound10592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10592.moment H = canonicalOutput10592.moment H :=
  canonical_of_padded canonicalInput10592 canonicalOutput10592 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10593 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10593 : ExponentCode := normalNode5454

theorem canonicalSound10593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10593.moment H = canonicalOutput10593.moment H :=
  canonical_of_padded canonicalInput10593 canonicalOutput10593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10594 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput10594 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound10594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10594.moment H = canonicalOutput10594.moment H :=
  canonical_of_padded canonicalInput10594 canonicalOutput10594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10595 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput10595 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound10595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10595.moment H = canonicalOutput10595.moment H :=
  canonical_of_padded canonicalInput10595 canonicalOutput10595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10596 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput10596 : ExponentCode := normalNode11191

theorem canonicalSound10596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10596.moment H = canonicalOutput10596.moment H :=
  canonical_of_padded canonicalInput10596 canonicalOutput10596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10597 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput10597 : ExponentCode := normalNode11191

theorem canonicalSound10597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10597.moment H = canonicalOutput10597.moment H :=
  canonical_of_padded canonicalInput10597 canonicalOutput10597 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10598 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput10598 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound10598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10598.moment H = canonicalOutput10598.moment H :=
  canonical_of_padded canonicalInput10598 canonicalOutput10598 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10599 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 0, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput10599 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound10599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10599.moment H = canonicalOutput10599.moment H :=
  canonical_of_padded canonicalInput10599 canonicalOutput10599 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10600 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 1, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput10600 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound10600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10600.moment H = canonicalOutput10600.moment H :=
  canonical_of_padded canonicalInput10600 canonicalOutput10600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10601 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 1, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput10601 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound10601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10601.moment H = canonicalOutput10601.moment H :=
  canonical_of_padded canonicalInput10601 canonicalOutput10601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10602 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10602 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1166

theorem canonicalSound10602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10602.moment H = canonicalOutput10602.moment H :=
  canonical_of_padded canonicalInput10602 canonicalOutput10602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10603 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10603 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound10603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10603.moment H = canonicalOutput10603.moment H :=
  canonical_of_padded canonicalInput10603 canonicalOutput10603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10604 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10604 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2710⟩

theorem canonicalSound10604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10604.moment H = canonicalOutput10604.moment H :=
  canonical_of_padded canonicalInput10604 canonicalOutput10604 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10605 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10605 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound10605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10605.moment H = canonicalOutput10605.moment H :=
  canonical_of_padded canonicalInput10605 canonicalOutput10605 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10606 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10606 : ExponentCode := normalNode11216

theorem canonicalSound10606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10606.moment H = canonicalOutput10606.moment H :=
  canonical_of_padded canonicalInput10606 canonicalOutput10606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10607 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput10607 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound10607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10607.moment H = canonicalOutput10607.moment H :=
  canonical_of_padded canonicalInput10607 canonicalOutput10607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10608 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10608 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound10608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10608.moment H = canonicalOutput10608.moment H :=
  canonical_of_padded canonicalInput10608 canonicalOutput10608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10609 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10609 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2225⟩

theorem canonicalSound10609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10609.moment H = canonicalOutput10609.moment H :=
  canonical_of_padded canonicalInput10609 canonicalOutput10609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10610 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10610 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound10610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10610.moment H = canonicalOutput10610.moment H :=
  canonical_of_padded canonicalInput10610 canonicalOutput10610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10611 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10611 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound10611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10611.moment H = canonicalOutput10611.moment H :=
  canonical_of_padded canonicalInput10611 canonicalOutput10611 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10612 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10612 : ExponentCode := normalNode11118

theorem canonicalSound10612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10612.moment H = canonicalOutput10612.moment H :=
  canonical_of_padded canonicalInput10612 canonicalOutput10612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10613 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10613 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound10613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10613.moment H = canonicalOutput10613.moment H :=
  canonical_of_padded canonicalInput10613 canonicalOutput10613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10614 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound10614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10614.moment H = canonicalOutput10614.moment H :=
  canonical_of_padded canonicalInput10614 canonicalOutput10614 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10615 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 4, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput10615 : ExponentCode := normalNode11207

theorem canonicalSound10615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10615.moment H = canonicalOutput10615.moment H :=
  canonical_of_padded canonicalInput10615 canonicalOutput10615 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10616 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10616 : ExponentCode := normalNode5246

theorem canonicalSound10616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10616.moment H = canonicalOutput10616.moment H :=
  canonical_of_padded canonicalInput10616 canonicalOutput10616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10617 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10617 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2196⟩

theorem canonicalSound10617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10617.moment H = canonicalOutput10617.moment H :=
  canonical_of_padded canonicalInput10617 canonicalOutput10617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10618 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10618 : ExponentCode := normalNode3758

theorem canonicalSound10618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10618.moment H = canonicalOutput10618.moment H :=
  canonical_of_padded canonicalInput10618 canonicalOutput10618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10619 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10619 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2198⟩

theorem canonicalSound10619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10619.moment H = canonicalOutput10619.moment H :=
  canonical_of_padded canonicalInput10619 canonicalOutput10619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10620 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput10620 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound10620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10620.moment H = canonicalOutput10620.moment H :=
  canonical_of_padded canonicalInput10620 canonicalOutput10620 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10621 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10621 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound10621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10621.moment H = canonicalOutput10621.moment H :=
  canonical_of_padded canonicalInput10621 canonicalOutput10621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10622 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput10622 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound10622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10622.moment H = canonicalOutput10622.moment H :=
  canonical_of_padded canonicalInput10622 canonicalOutput10622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10623 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10623 : ExponentCode := normalNode1827

theorem canonicalSound10623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10623.moment H = canonicalOutput10623.moment H :=
  canonical_of_padded canonicalInput10623 canonicalOutput10623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

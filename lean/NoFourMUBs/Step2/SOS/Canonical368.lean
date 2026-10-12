import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23552 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23552 : ExponentCode := normalNode8063

theorem canonicalSound23552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23552.moment H = canonicalOutput23552.moment H :=
  canonical_of_padded canonicalInput23552 canonicalOutput23552 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23553 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23553 : ExponentCode := normalNode6527

theorem canonicalSound23553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23553.moment H = canonicalOutput23553.moment H :=
  canonical_of_padded canonicalInput23553 canonicalOutput23553 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23554 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23554 : ExponentCode := normalNode8237

theorem canonicalSound23554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23554.moment H = canonicalOutput23554.moment H :=
  canonical_of_padded canonicalInput23554 canonicalOutput23554 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation392⟩ (by decide +kernel) hH

def canonicalInput23555 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23555 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23555.moment H = canonicalOutput23555.moment H :=
  canonical_of_padded canonicalInput23555 canonicalOutput23555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23556 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23556 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23556.moment H = canonicalOutput23556.moment H :=
  canonical_of_padded canonicalInput23556 canonicalOutput23556 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23557 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23557 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23557.moment H = canonicalOutput23557.moment H :=
  canonical_of_padded canonicalInput23557 canonicalOutput23557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23558 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23558 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23558.moment H = canonicalOutput23558.moment H :=
  canonical_of_padded canonicalInput23558 canonicalOutput23558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23559 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23559 : ExponentCode := normalNode10818

theorem canonicalSound23559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23559.moment H = canonicalOutput23559.moment H :=
  canonical_of_padded canonicalInput23559 canonicalOutput23559 (by decide) (by decide)
    ⟨false, true, canonicalPermutation148, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput23560 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23560 : ExponentCode := normalNode10455

theorem canonicalSound23560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23560.moment H = canonicalOutput23560.moment H :=
  canonical_of_padded canonicalInput23560 canonicalOutput23560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation405⟩ (by decide +kernel) hH

def canonicalInput23561 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23561 : ExponentCode := normalNode10375

theorem canonicalSound23561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23561.moment H = canonicalOutput23561.moment H :=
  canonical_of_padded canonicalInput23561 canonicalOutput23561 (by decide) (by decide)
    ⟨false, false, canonicalPermutation150, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput23562 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23562 : ExponentCode := normalNode8064

theorem canonicalSound23562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23562.moment H = canonicalOutput23562.moment H :=
  canonical_of_padded canonicalInput23562 canonicalOutput23562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23563 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23563 : ExponentCode := normalNode8066

theorem canonicalSound23563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23563.moment H = canonicalOutput23563.moment H :=
  canonical_of_padded canonicalInput23563 canonicalOutput23563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23564 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23564 : ExponentCode := normalNode8066

theorem canonicalSound23564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23564.moment H = canonicalOutput23564.moment H :=
  canonical_of_padded canonicalInput23564 canonicalOutput23564 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23565 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23565 : ExponentCode := normalNode8064

theorem canonicalSound23565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23565.moment H = canonicalOutput23565.moment H :=
  canonical_of_padded canonicalInput23565 canonicalOutput23565 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23566 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23566 : ExponentCode := normalNode8066

theorem canonicalSound23566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23566.moment H = canonicalOutput23566.moment H :=
  canonical_of_padded canonicalInput23566 canonicalOutput23566 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23567 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23567 : ExponentCode := normalNode8361

theorem canonicalSound23567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23567.moment H = canonicalOutput23567.moment H :=
  canonical_of_padded canonicalInput23567 canonicalOutput23567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23568 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23568 : ExponentCode := normalNode8067

theorem canonicalSound23568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23568.moment H = canonicalOutput23568.moment H :=
  canonical_of_padded canonicalInput23568 canonicalOutput23568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23569 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23569 : ExponentCode := normalNode8067

theorem canonicalSound23569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23569.moment H = canonicalOutput23569.moment H :=
  canonical_of_padded canonicalInput23569 canonicalOutput23569 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23570 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23570 : ExponentCode := normalNode8361

theorem canonicalSound23570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23570.moment H = canonicalOutput23570.moment H :=
  canonical_of_padded canonicalInput23570 canonicalOutput23570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23571 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23571 : ExponentCode := normalNode8066

theorem canonicalSound23571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23571.moment H = canonicalOutput23571.moment H :=
  canonical_of_padded canonicalInput23571 canonicalOutput23571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23572 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23572 : ExponentCode := normalNode8066

theorem canonicalSound23572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23572.moment H = canonicalOutput23572.moment H :=
  canonical_of_padded canonicalInput23572 canonicalOutput23572 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23573 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23573 : ExponentCode := normalNode8067

theorem canonicalSound23573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23573.moment H = canonicalOutput23573.moment H :=
  canonical_of_padded canonicalInput23573 canonicalOutput23573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23574 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23574 : ExponentCode := normalNode8361

theorem canonicalSound23574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23574.moment H = canonicalOutput23574.moment H :=
  canonical_of_padded canonicalInput23574 canonicalOutput23574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23575 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23575 : ExponentCode := normalNode8361

theorem canonicalSound23575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23575.moment H = canonicalOutput23575.moment H :=
  canonical_of_padded canonicalInput23575 canonicalOutput23575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23576 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23576 : ExponentCode := normalNode8067

theorem canonicalSound23576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23576.moment H = canonicalOutput23576.moment H :=
  canonical_of_padded canonicalInput23576 canonicalOutput23576 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23577 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23577 : ExponentCode := normalNode8066

theorem canonicalSound23577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23577.moment H = canonicalOutput23577.moment H :=
  canonical_of_padded canonicalInput23577 canonicalOutput23577 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23578 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23578 : ExponentCode := normalNode8064

theorem canonicalSound23578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23578.moment H = canonicalOutput23578.moment H :=
  canonical_of_padded canonicalInput23578 canonicalOutput23578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23579 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23579 : ExponentCode := normalNode8066

theorem canonicalSound23579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23579.moment H = canonicalOutput23579.moment H :=
  canonical_of_padded canonicalInput23579 canonicalOutput23579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23580 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23580 : ExponentCode := normalNode8066

theorem canonicalSound23580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23580.moment H = canonicalOutput23580.moment H :=
  canonical_of_padded canonicalInput23580 canonicalOutput23580 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23581 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23581 : ExponentCode := normalNode8064

theorem canonicalSound23581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23581.moment H = canonicalOutput23581.moment H :=
  canonical_of_padded canonicalInput23581 canonicalOutput23581 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23582 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23582 : ExponentCode := normalNode8067

theorem canonicalSound23582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23582.moment H = canonicalOutput23582.moment H :=
  canonical_of_padded canonicalInput23582 canonicalOutput23582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23583 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23583 : ExponentCode := normalNode8066

theorem canonicalSound23583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23583.moment H = canonicalOutput23583.moment H :=
  canonical_of_padded canonicalInput23583 canonicalOutput23583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23584 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23584 : ExponentCode := normalNode8361

theorem canonicalSound23584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23584.moment H = canonicalOutput23584.moment H :=
  canonical_of_padded canonicalInput23584 canonicalOutput23584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23585 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23585 : ExponentCode := normalNode8361

theorem canonicalSound23585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23585.moment H = canonicalOutput23585.moment H :=
  canonical_of_padded canonicalInput23585 canonicalOutput23585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23586 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23586 : ExponentCode := normalNode8066

theorem canonicalSound23586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23586.moment H = canonicalOutput23586.moment H :=
  canonical_of_padded canonicalInput23586 canonicalOutput23586 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23587 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23587 : ExponentCode := normalNode8067

theorem canonicalSound23587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23587.moment H = canonicalOutput23587.moment H :=
  canonical_of_padded canonicalInput23587 canonicalOutput23587 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23588 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23588 : ExponentCode := normalNode8361

theorem canonicalSound23588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23588.moment H = canonicalOutput23588.moment H :=
  canonical_of_padded canonicalInput23588 canonicalOutput23588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23589 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23589 : ExponentCode := normalNode8361

theorem canonicalSound23589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23589.moment H = canonicalOutput23589.moment H :=
  canonical_of_padded canonicalInput23589 canonicalOutput23589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23590 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23590 : ExponentCode := normalNode8361

theorem canonicalSound23590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23590.moment H = canonicalOutput23590.moment H :=
  canonical_of_padded canonicalInput23590 canonicalOutput23590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23591 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23591 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound23591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23591.moment H = canonicalOutput23591.moment H :=
  canonical_of_padded canonicalInput23591 canonicalOutput23591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23592 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23592 : ExponentCode := normalNode8361

theorem canonicalSound23592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23592.moment H = canonicalOutput23592.moment H :=
  canonical_of_padded canonicalInput23592 canonicalOutput23592 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23593 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23593 : ExponentCode := normalNode8361

theorem canonicalSound23593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23593.moment H = canonicalOutput23593.moment H :=
  canonical_of_padded canonicalInput23593 canonicalOutput23593 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23594 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23594 : ExponentCode := normalNode8361

theorem canonicalSound23594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23594.moment H = canonicalOutput23594.moment H :=
  canonical_of_padded canonicalInput23594 canonicalOutput23594 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23595 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23595 : ExponentCode := normalNode8066

theorem canonicalSound23595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23595.moment H = canonicalOutput23595.moment H :=
  canonical_of_padded canonicalInput23595 canonicalOutput23595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23596 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23596 : ExponentCode := normalNode8067

theorem canonicalSound23596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23596.moment H = canonicalOutput23596.moment H :=
  canonical_of_padded canonicalInput23596 canonicalOutput23596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23597 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23597 : ExponentCode := normalNode8361

theorem canonicalSound23597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23597.moment H = canonicalOutput23597.moment H :=
  canonical_of_padded canonicalInput23597 canonicalOutput23597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23598 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23598 : ExponentCode := normalNode8361

theorem canonicalSound23598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23598.moment H = canonicalOutput23598.moment H :=
  canonical_of_padded canonicalInput23598 canonicalOutput23598 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, canonicalPermutation282⟩ (by decide +kernel) hH

def canonicalInput23599 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23599 : ExponentCode := normalNode8067

theorem canonicalSound23599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23599.moment H = canonicalOutput23599.moment H :=
  canonical_of_padded canonicalInput23599 canonicalOutput23599 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23600 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23600 : ExponentCode := normalNode8066

theorem canonicalSound23600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23600.moment H = canonicalOutput23600.moment H :=
  canonical_of_padded canonicalInput23600 canonicalOutput23600 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23601 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23601 : ExponentCode := normalNode8067

theorem canonicalSound23601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23601.moment H = canonicalOutput23601.moment H :=
  canonical_of_padded canonicalInput23601 canonicalOutput23601 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23602 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23602 : ExponentCode := normalNode8361

theorem canonicalSound23602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23602.moment H = canonicalOutput23602.moment H :=
  canonical_of_padded canonicalInput23602 canonicalOutput23602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23603 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23603 : ExponentCode := normalNode8066

theorem canonicalSound23603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23603.moment H = canonicalOutput23603.moment H :=
  canonical_of_padded canonicalInput23603 canonicalOutput23603 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23604 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23604 : ExponentCode := normalNode8066

theorem canonicalSound23604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23604.moment H = canonicalOutput23604.moment H :=
  canonical_of_padded canonicalInput23604 canonicalOutput23604 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23605 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23605 : ExponentCode := normalNode8361

theorem canonicalSound23605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23605.moment H = canonicalOutput23605.moment H :=
  canonical_of_padded canonicalInput23605 canonicalOutput23605 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation317⟩ (by decide +kernel) hH

def canonicalInput23606 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23606 : ExponentCode := normalNode8067

theorem canonicalSound23606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23606.moment H = canonicalOutput23606.moment H :=
  canonical_of_padded canonicalInput23606 canonicalOutput23606 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23607 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23607 : ExponentCode := normalNode8066

theorem canonicalSound23607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23607.moment H = canonicalOutput23607.moment H :=
  canonical_of_padded canonicalInput23607 canonicalOutput23607 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23608 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23608 : ExponentCode := normalNode8361

theorem canonicalSound23608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23608.moment H = canonicalOutput23608.moment H :=
  canonical_of_padded canonicalInput23608 canonicalOutput23608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23609 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23609 : ExponentCode := normalNode8067

theorem canonicalSound23609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23609.moment H = canonicalOutput23609.moment H :=
  canonical_of_padded canonicalInput23609 canonicalOutput23609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23610 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23610 : ExponentCode := normalNode8067

theorem canonicalSound23610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23610.moment H = canonicalOutput23610.moment H :=
  canonical_of_padded canonicalInput23610 canonicalOutput23610 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput23611 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23611 : ExponentCode := normalNode8361

theorem canonicalSound23611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23611.moment H = canonicalOutput23611.moment H :=
  canonical_of_padded canonicalInput23611 canonicalOutput23611 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23612 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23612 : ExponentCode := normalNode8066

theorem canonicalSound23612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23612.moment H = canonicalOutput23612.moment H :=
  canonical_of_padded canonicalInput23612 canonicalOutput23612 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23613 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23613 : ExponentCode := normalNode8064

theorem canonicalSound23613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23613.moment H = canonicalOutput23613.moment H :=
  canonical_of_padded canonicalInput23613 canonicalOutput23613 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23614 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23614 : ExponentCode := normalNode8066

theorem canonicalSound23614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23614.moment H = canonicalOutput23614.moment H :=
  canonical_of_padded canonicalInput23614 canonicalOutput23614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23615 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23615 : ExponentCode := normalNode8066

theorem canonicalSound23615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23615.moment H = canonicalOutput23615.moment H :=
  canonical_of_padded canonicalInput23615 canonicalOutput23615 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation29⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33536 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33536 : ExponentCode := normalNode10453

theorem canonicalSound33536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33536.moment H = canonicalOutput33536.moment H :=
  canonical_of_padded canonicalInput33536 canonicalOutput33536 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33537 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33537 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound33537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33537.moment H = canonicalOutput33537.moment H :=
  canonical_of_padded canonicalInput33537 canonicalOutput33537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33538 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33538 : ExponentCode := normalNode10453

theorem canonicalSound33538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33538.moment H = canonicalOutput33538.moment H :=
  canonical_of_padded canonicalInput33538 canonicalOutput33538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation255, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33539 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33539 : ExponentCode := normalNode10453

theorem canonicalSound33539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33539.moment H = canonicalOutput33539.moment H :=
  canonical_of_padded canonicalInput33539 canonicalOutput33539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation255, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33540 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33540 : ExponentCode := normalNode10453

theorem canonicalSound33540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33540.moment H = canonicalOutput33540.moment H :=
  canonical_of_padded canonicalInput33540 canonicalOutput33540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation255, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33541 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33541 : ExponentCode := normalNode8067

theorem canonicalSound33541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33541.moment H = canonicalOutput33541.moment H :=
  canonical_of_padded canonicalInput33541 canonicalOutput33541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33542 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33542 : ExponentCode := normalNode10435

theorem canonicalSound33542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33542.moment H = canonicalOutput33542.moment H :=
  canonical_of_padded canonicalInput33542 canonicalOutput33542 (by decide) (by decide)
    ⟨false, false, canonicalPermutation394, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33543 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33543 : ExponentCode := normalNode10453

theorem canonicalSound33543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33543.moment H = canonicalOutput33543.moment H :=
  canonical_of_padded canonicalInput33543 canonicalOutput33543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33544 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33544 : ExponentCode := normalNode10453

theorem canonicalSound33544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33544.moment H = canonicalOutput33544.moment H :=
  canonical_of_padded canonicalInput33544 canonicalOutput33544 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33545 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33545 : ExponentCode := normalNode10435

theorem canonicalSound33545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33545.moment H = canonicalOutput33545.moment H :=
  canonical_of_padded canonicalInput33545 canonicalOutput33545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation220, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33546 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33546 : ExponentCode := normalNode8067

theorem canonicalSound33546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33546.moment H = canonicalOutput33546.moment H :=
  canonical_of_padded canonicalInput33546 canonicalOutput33546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33547 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33547 : ExponentCode := normalNode10435

theorem canonicalSound33547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33547.moment H = canonicalOutput33547.moment H :=
  canonical_of_padded canonicalInput33547 canonicalOutput33547 (by decide) (by decide)
    ⟨false, false, canonicalPermutation222, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33548 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33548 : ExponentCode := normalNode10453

theorem canonicalSound33548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33548.moment H = canonicalOutput33548.moment H :=
  canonical_of_padded canonicalInput33548 canonicalOutput33548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33549 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33549 : ExponentCode := normalNode8067

theorem canonicalSound33549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33549.moment H = canonicalOutput33549.moment H :=
  canonical_of_padded canonicalInput33549 canonicalOutput33549 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33550 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33550 : ExponentCode := normalNode8067

theorem canonicalSound33550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33550.moment H = canonicalOutput33550.moment H :=
  canonical_of_padded canonicalInput33550 canonicalOutput33550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33551 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33551 : ExponentCode := normalNode10453

theorem canonicalSound33551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33551.moment H = canonicalOutput33551.moment H :=
  canonical_of_padded canonicalInput33551 canonicalOutput33551 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33552 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33552 : ExponentCode := normalNode10435

theorem canonicalSound33552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33552.moment H = canonicalOutput33552.moment H :=
  canonical_of_padded canonicalInput33552 canonicalOutput33552 (by decide) (by decide)
    ⟨false, false, canonicalPermutation326, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33553 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33553 : ExponentCode := normalNode8067

theorem canonicalSound33553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33553.moment H = canonicalOutput33553.moment H :=
  canonical_of_padded canonicalInput33553 canonicalOutput33553 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33554 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33554 : ExponentCode := normalNode10453

theorem canonicalSound33554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33554.moment H = canonicalOutput33554.moment H :=
  canonical_of_padded canonicalInput33554 canonicalOutput33554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33555 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33555 : ExponentCode := normalNode10435

theorem canonicalSound33555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33555.moment H = canonicalOutput33555.moment H :=
  canonical_of_padded canonicalInput33555 canonicalOutput33555 (by decide) (by decide)
    ⟨false, false, canonicalPermutation222, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33556 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33556 : ExponentCode := normalNode10435

theorem canonicalSound33556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33556.moment H = canonicalOutput33556.moment H :=
  canonical_of_padded canonicalInput33556 canonicalOutput33556 (by decide) (by decide)
    ⟨false, false, canonicalPermutation326, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33557 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33557 : ExponentCode := normalNode10453

theorem canonicalSound33557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33557.moment H = canonicalOutput33557.moment H :=
  canonical_of_padded canonicalInput33557 canonicalOutput33557 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33558 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33558 : ExponentCode := normalNode8067

theorem canonicalSound33558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33558.moment H = canonicalOutput33558.moment H :=
  canonical_of_padded canonicalInput33558 canonicalOutput33558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33559 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33559 : ExponentCode := normalNode10869

theorem canonicalSound33559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33559.moment H = canonicalOutput33559.moment H :=
  canonical_of_padded canonicalInput33559 canonicalOutput33559 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33560 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33560 : ExponentCode := normalNode8067

theorem canonicalSound33560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33560.moment H = canonicalOutput33560.moment H :=
  canonical_of_padded canonicalInput33560 canonicalOutput33560 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33561 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33561 : ExponentCode := normalNode8067

theorem canonicalSound33561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33561.moment H = canonicalOutput33561.moment H :=
  canonical_of_padded canonicalInput33561 canonicalOutput33561 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33562 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33562 : ExponentCode := normalNode10869

theorem canonicalSound33562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33562.moment H = canonicalOutput33562.moment H :=
  canonical_of_padded canonicalInput33562 canonicalOutput33562 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33563 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33563 : ExponentCode := normalNode10434

theorem canonicalSound33563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33563.moment H = canonicalOutput33563.moment H :=
  canonical_of_padded canonicalInput33563 canonicalOutput33563 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput33564 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33564 : ExponentCode := normalNode10433

theorem canonicalSound33564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33564.moment H = canonicalOutput33564.moment H :=
  canonical_of_padded canonicalInput33564 canonicalOutput33564 (by decide) (by decide)
    ⟨false, false, canonicalPermutation339, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput33565 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33565 : ExponentCode := normalNode10396

theorem canonicalSound33565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33565.moment H = canonicalOutput33565.moment H :=
  canonical_of_padded canonicalInput33565 canonicalOutput33565 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput33566 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33566 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33566.moment H = canonicalOutput33566.moment H :=
  canonical_of_padded canonicalInput33566 canonicalOutput33566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33567 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33567 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33567.moment H = canonicalOutput33567.moment H :=
  canonical_of_padded canonicalInput33567 canonicalOutput33567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33568 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33568 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33568.moment H = canonicalOutput33568.moment H :=
  canonical_of_padded canonicalInput33568 canonicalOutput33568 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33569 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33569 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33569.moment H = canonicalOutput33569.moment H :=
  canonical_of_padded canonicalInput33569 canonicalOutput33569 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33570 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33570 : ExponentCode := normalNode10685

theorem canonicalSound33570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33570.moment H = canonicalOutput33570.moment H :=
  canonical_of_padded canonicalInput33570 canonicalOutput33570 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput33571 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33571 : ExponentCode := normalNode10452

theorem canonicalSound33571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33571.moment H = canonicalOutput33571.moment H :=
  canonical_of_padded canonicalInput33571 canonicalOutput33571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation272, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput33572 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33572 : ExponentCode := normalNode10367

theorem canonicalSound33572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33572.moment H = canonicalOutput33572.moment H :=
  canonical_of_padded canonicalInput33572 canonicalOutput33572 (by decide) (by decide)
    ⟨false, false, canonicalPermutation125, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput33573 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33573 : ExponentCode := normalNode10869

theorem canonicalSound33573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33573.moment H = canonicalOutput33573.moment H :=
  canonical_of_padded canonicalInput33573 canonicalOutput33573 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33574 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33574 : ExponentCode := normalNode8067

theorem canonicalSound33574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33574.moment H = canonicalOutput33574.moment H :=
  canonical_of_padded canonicalInput33574 canonicalOutput33574 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33575 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33575 : ExponentCode := normalNode8067

theorem canonicalSound33575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33575.moment H = canonicalOutput33575.moment H :=
  canonical_of_padded canonicalInput33575 canonicalOutput33575 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33576 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33576 : ExponentCode := normalNode10869

theorem canonicalSound33576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33576.moment H = canonicalOutput33576.moment H :=
  canonical_of_padded canonicalInput33576 canonicalOutput33576 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33577 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33577 : ExponentCode := normalNode8067

theorem canonicalSound33577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33577.moment H = canonicalOutput33577.moment H :=
  canonical_of_padded canonicalInput33577 canonicalOutput33577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33578 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33578 : ExponentCode := normalNode10453

theorem canonicalSound33578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33578.moment H = canonicalOutput33578.moment H :=
  canonical_of_padded canonicalInput33578 canonicalOutput33578 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33579 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33579 : ExponentCode := normalNode10435

theorem canonicalSound33579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33579.moment H = canonicalOutput33579.moment H :=
  canonical_of_padded canonicalInput33579 canonicalOutput33579 (by decide) (by decide)
    ⟨false, false, canonicalPermutation395, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33580 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33580 : ExponentCode := normalNode10435

theorem canonicalSound33580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33580.moment H = canonicalOutput33580.moment H :=
  canonical_of_padded canonicalInput33580 canonicalOutput33580 (by decide) (by decide)
    ⟨false, false, canonicalPermutation212, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33581 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33581 : ExponentCode := normalNode10453

theorem canonicalSound33581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33581.moment H = canonicalOutput33581.moment H :=
  canonical_of_padded canonicalInput33581 canonicalOutput33581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33582 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33582 : ExponentCode := normalNode8067

theorem canonicalSound33582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33582.moment H = canonicalOutput33582.moment H :=
  canonical_of_padded canonicalInput33582 canonicalOutput33582 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33583 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33583 : ExponentCode := normalNode8067

theorem canonicalSound33583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33583.moment H = canonicalOutput33583.moment H :=
  canonical_of_padded canonicalInput33583 canonicalOutput33583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33584 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33584 : ExponentCode := normalNode10435

theorem canonicalSound33584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33584.moment H = canonicalOutput33584.moment H :=
  canonical_of_padded canonicalInput33584 canonicalOutput33584 (by decide) (by decide)
    ⟨false, false, canonicalPermutation395, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33585 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33585 : ExponentCode := normalNode10453

theorem canonicalSound33585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33585.moment H = canonicalOutput33585.moment H :=
  canonical_of_padded canonicalInput33585 canonicalOutput33585 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33586 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33586 : ExponentCode := normalNode10453

theorem canonicalSound33586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33586.moment H = canonicalOutput33586.moment H :=
  canonical_of_padded canonicalInput33586 canonicalOutput33586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33587 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33587 : ExponentCode := normalNode10435

theorem canonicalSound33587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33587.moment H = canonicalOutput33587.moment H :=
  canonical_of_padded canonicalInput33587 canonicalOutput33587 (by decide) (by decide)
    ⟨false, false, canonicalPermutation212, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33588 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33588 : ExponentCode := normalNode8067

theorem canonicalSound33588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33588.moment H = canonicalOutput33588.moment H :=
  canonical_of_padded canonicalInput33588 canonicalOutput33588 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33589 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33589 : ExponentCode := normalNode10869

theorem canonicalSound33589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33589.moment H = canonicalOutput33589.moment H :=
  canonical_of_padded canonicalInput33589 canonicalOutput33589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33590 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33590 : ExponentCode := normalNode8067

theorem canonicalSound33590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33590.moment H = canonicalOutput33590.moment H :=
  canonical_of_padded canonicalInput33590 canonicalOutput33590 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33591 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33591 : ExponentCode := normalNode8067

theorem canonicalSound33591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33591.moment H = canonicalOutput33591.moment H :=
  canonical_of_padded canonicalInput33591 canonicalOutput33591 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33592 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33592 : ExponentCode := normalNode10869

theorem canonicalSound33592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33592.moment H = canonicalOutput33592.moment H :=
  canonical_of_padded canonicalInput33592 canonicalOutput33592 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33593 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33593 : ExponentCode := normalNode10435

theorem canonicalSound33593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33593.moment H = canonicalOutput33593.moment H :=
  canonical_of_padded canonicalInput33593 canonicalOutput33593 (by decide) (by decide)
    ⟨false, false, canonicalPermutation317, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33594 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33594 : ExponentCode := normalNode8067

theorem canonicalSound33594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33594.moment H = canonicalOutput33594.moment H :=
  canonical_of_padded canonicalInput33594 canonicalOutput33594 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33595 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33595 : ExponentCode := normalNode10453

theorem canonicalSound33595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33595.moment H = canonicalOutput33595.moment H :=
  canonical_of_padded canonicalInput33595 canonicalOutput33595 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33596 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33596 : ExponentCode := normalNode10453

theorem canonicalSound33596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33596.moment H = canonicalOutput33596.moment H :=
  canonical_of_padded canonicalInput33596 canonicalOutput33596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33597 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33597 : ExponentCode := normalNode8067

theorem canonicalSound33597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33597.moment H = canonicalOutput33597.moment H :=
  canonical_of_padded canonicalInput33597 canonicalOutput33597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33598 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33598 : ExponentCode := normalNode10435

theorem canonicalSound33598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33598.moment H = canonicalOutput33598.moment H :=
  canonical_of_padded canonicalInput33598 canonicalOutput33598 (by decide) (by decide)
    ⟨false, false, canonicalPermutation275, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33599 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33599 : ExponentCode := normalNode10453

theorem canonicalSound33599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33599.moment H = canonicalOutput33599.moment H :=
  canonical_of_padded canonicalInput33599 canonicalOutput33599 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, canonicalPermutation130⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

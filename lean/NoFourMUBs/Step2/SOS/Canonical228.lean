import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14592 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput14592 : ExponentCode := normalNode7466

theorem canonicalSound14592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14592.moment H = canonicalOutput14592.moment H :=
  canonical_of_padded canonicalInput14592 canonicalOutput14592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14593 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput14593 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2507⟩

theorem canonicalSound14593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14593.moment H = canonicalOutput14593.moment H :=
  canonical_of_padded canonicalInput14593 canonicalOutput14593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14594 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 1, -1, 0]]⟩

def canonicalOutput14594 : ExponentCode := normalNode7464

theorem canonicalSound14594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14594.moment H = canonicalOutput14594.moment H :=
  canonical_of_padded canonicalInput14594 canonicalOutput14594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14595 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput14595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2496⟩

theorem canonicalSound14595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14595.moment H = canonicalOutput14595.moment H :=
  canonical_of_padded canonicalInput14595 canonicalOutput14595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14596 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput14596 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2507⟩

theorem canonicalSound14596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14596.moment H = canonicalOutput14596.moment H :=
  canonical_of_padded canonicalInput14596 canonicalOutput14596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14597 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput14597 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2391⟩

theorem canonicalSound14597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14597.moment H = canonicalOutput14597.moment H :=
  canonical_of_padded canonicalInput14597 canonicalOutput14597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14598 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput14598 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2391⟩

theorem canonicalSound14598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14598.moment H = canonicalOutput14598.moment H :=
  canonical_of_padded canonicalInput14598 canonicalOutput14598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14599 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 2, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14599 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node915⟩

theorem canonicalSound14599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14599.moment H = canonicalOutput14599.moment H :=
  canonical_of_padded canonicalInput14599 canonicalOutput14599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14600 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14600 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2505⟩

theorem canonicalSound14600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14600.moment H = canonicalOutput14600.moment H :=
  canonical_of_padded canonicalInput14600 canonicalOutput14600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14601 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput14601 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩

theorem canonicalSound14601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14601.moment H = canonicalOutput14601.moment H :=
  canonical_of_padded canonicalInput14601 canonicalOutput14601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14602 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14602 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound14602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14602.moment H = canonicalOutput14602.moment H :=
  canonical_of_padded canonicalInput14602 canonicalOutput14602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14603 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput14603 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound14603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14603.moment H = canonicalOutput14603.moment H :=
  canonical_of_padded canonicalInput14603 canonicalOutput14603 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14604 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 0, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput14604 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node908⟩

theorem canonicalSound14604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14604.moment H = canonicalOutput14604.moment H :=
  canonical_of_padded canonicalInput14604 canonicalOutput14604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14605 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14605 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound14605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14605.moment H = canonicalOutput14605.moment H :=
  canonical_of_padded canonicalInput14605 canonicalOutput14605 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14606 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput14606 : ExponentCode := normalNode7473

theorem canonicalSound14606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14606.moment H = canonicalOutput14606.moment H :=
  canonical_of_padded canonicalInput14606 canonicalOutput14606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14607 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14607 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound14607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14607.moment H = canonicalOutput14607.moment H :=
  canonical_of_padded canonicalInput14607 canonicalOutput14607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14608 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, 1, -2, 1], ![1, 0, 4, -5]]⟩

def canonicalOutput14608 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node142⟩

theorem canonicalSound14608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14608.moment H = canonicalOutput14608.moment H :=
  canonical_of_padded canonicalInput14608 canonicalOutput14608 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14609 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14609 : ExponentCode := normalNode7363

theorem canonicalSound14609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14609.moment H = canonicalOutput14609.moment H :=
  canonical_of_padded canonicalInput14609 canonicalOutput14609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14610 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14610 : ExponentCode := normalNode7361

theorem canonicalSound14610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14610.moment H = canonicalOutput14610.moment H :=
  canonical_of_padded canonicalInput14610 canonicalOutput14610 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14611 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, -1, 1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14611 : ExponentCode := normalNode11065

theorem canonicalSound14611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14611.moment H = canonicalOutput14611.moment H :=
  canonical_of_padded canonicalInput14611 canonicalOutput14611 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14612 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14612 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩

theorem canonicalSound14612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14612.moment H = canonicalOutput14612.moment H :=
  canonical_of_padded canonicalInput14612 canonicalOutput14612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14613 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, -1, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14613 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound14613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14613.moment H = canonicalOutput14613.moment H :=
  canonical_of_padded canonicalInput14613 canonicalOutput14613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14614 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound14614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14614.moment H = canonicalOutput14614.moment H :=
  canonical_of_padded canonicalInput14614 canonicalOutput14614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14615 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14615 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound14615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14615.moment H = canonicalOutput14615.moment H :=
  canonical_of_padded canonicalInput14615 canonicalOutput14615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14616 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14616 : ExponentCode := normalNode7479

theorem canonicalSound14616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14616.moment H = canonicalOutput14616.moment H :=
  canonical_of_padded canonicalInput14616 canonicalOutput14616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14617 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput14617 : ExponentCode := normalNode7448

theorem canonicalSound14617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14617.moment H = canonicalOutput14617.moment H :=
  canonical_of_padded canonicalInput14617 canonicalOutput14617 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14618 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14618 : ExponentCode := normalNode7403

theorem canonicalSound14618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14618.moment H = canonicalOutput14618.moment H :=
  canonical_of_padded canonicalInput14618 canonicalOutput14618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14619 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput14619 : ExponentCode := normalNode7473

theorem canonicalSound14619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14619.moment H = canonicalOutput14619.moment H :=
  canonical_of_padded canonicalInput14619 canonicalOutput14619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14620 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14620 : ExponentCode := normalNode7404

theorem canonicalSound14620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14620.moment H = canonicalOutput14620.moment H :=
  canonical_of_padded canonicalInput14620 canonicalOutput14620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14621 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 0, 1, -1]]⟩

def canonicalOutput14621 : ExponentCode := normalNode7466

theorem canonicalSound14621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14621.moment H = canonicalOutput14621.moment H :=
  canonical_of_padded canonicalInput14621 canonicalOutput14621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14622 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput14622 : ExponentCode := normalNode7383

theorem canonicalSound14622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14622.moment H = canonicalOutput14622.moment H :=
  canonical_of_padded canonicalInput14622 canonicalOutput14622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14623 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput14623 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound14623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14623.moment H = canonicalOutput14623.moment H :=
  canonical_of_padded canonicalInput14623 canonicalOutput14623 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation71⟩ (by decide +kernel) hH

def canonicalInput14624 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 3, -4]]⟩

def canonicalOutput14624 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound14624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14624.moment H = canonicalOutput14624.moment H :=
  canonical_of_padded canonicalInput14624 canonicalOutput14624 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14625 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput14625 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound14625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14625.moment H = canonicalOutput14625.moment H :=
  canonical_of_padded canonicalInput14625 canonicalOutput14625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14626 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput14626 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩

theorem canonicalSound14626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14626.moment H = canonicalOutput14626.moment H :=
  canonical_of_padded canonicalInput14626 canonicalOutput14626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14627 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput14627 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound14627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14627.moment H = canonicalOutput14627.moment H :=
  canonical_of_padded canonicalInput14627 canonicalOutput14627 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14628 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput14628 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2489⟩

theorem canonicalSound14628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14628.moment H = canonicalOutput14628.moment H :=
  canonical_of_padded canonicalInput14628 canonicalOutput14628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14629 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14629 : ExponentCode := normalNode7360

theorem canonicalSound14629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14629.moment H = canonicalOutput14629.moment H :=
  canonical_of_padded canonicalInput14629 canonicalOutput14629 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14630 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput14630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node899⟩

theorem canonicalSound14630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14630.moment H = canonicalOutput14630.moment H :=
  canonical_of_padded canonicalInput14630 canonicalOutput14630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14631 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14631 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound14631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14631.moment H = canonicalOutput14631.moment H :=
  canonical_of_padded canonicalInput14631 canonicalOutput14631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14632 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput14632 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound14632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14632.moment H = canonicalOutput14632.moment H :=
  canonical_of_padded canonicalInput14632 canonicalOutput14632 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14633 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput14633 : ExponentCode := normalNode7428

theorem canonicalSound14633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14633.moment H = canonicalOutput14633.moment H :=
  canonical_of_padded canonicalInput14633 canonicalOutput14633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14634 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput14634 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node907⟩

theorem canonicalSound14634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14634.moment H = canonicalOutput14634.moment H :=
  canonical_of_padded canonicalInput14634 canonicalOutput14634 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput14635 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput14635 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node766⟩

theorem canonicalSound14635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14635.moment H = canonicalOutput14635.moment H :=
  canonical_of_padded canonicalInput14635 canonicalOutput14635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14636 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput14636 : ExponentCode := normalNode7406

theorem canonicalSound14636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14636.moment H = canonicalOutput14636.moment H :=
  canonical_of_padded canonicalInput14636 canonicalOutput14636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14637 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput14637 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound14637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14637.moment H = canonicalOutput14637.moment H :=
  canonical_of_padded canonicalInput14637 canonicalOutput14637 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14638 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput14638 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound14638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14638.moment H = canonicalOutput14638.moment H :=
  canonical_of_padded canonicalInput14638 canonicalOutput14638 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput14639 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput14639 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node907⟩

theorem canonicalSound14639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14639.moment H = canonicalOutput14639.moment H :=
  canonical_of_padded canonicalInput14639 canonicalOutput14639 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14640 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, -1, 0]]⟩

def canonicalOutput14640 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound14640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14640.moment H = canonicalOutput14640.moment H :=
  canonical_of_padded canonicalInput14640 canonicalOutput14640 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14641 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 1, -2], ![0, 0, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput14641 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩

theorem canonicalSound14641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14641.moment H = canonicalOutput14641.moment H :=
  canonical_of_padded canonicalInput14641 canonicalOutput14641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14642 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput14642 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩

theorem canonicalSound14642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14642.moment H = canonicalOutput14642.moment H :=
  canonical_of_padded canonicalInput14642 canonicalOutput14642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14643 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 1, -2], ![1, -1, 2, -2], ![0, 1, -1, 0]]⟩

def canonicalOutput14643 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩

theorem canonicalSound14643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14643.moment H = canonicalOutput14643.moment H :=
  canonical_of_padded canonicalInput14643 canonicalOutput14643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14644 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput14644 : ExponentCode := normalNode7408

theorem canonicalSound14644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14644.moment H = canonicalOutput14644.moment H :=
  canonical_of_padded canonicalInput14644 canonicalOutput14644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14645 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![0, -1, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput14645 : ExponentCode := normalNode7419

theorem canonicalSound14645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14645.moment H = canonicalOutput14645.moment H :=
  canonical_of_padded canonicalInput14645 canonicalOutput14645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14646 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![0, 0, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound14646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14646.moment H = canonicalOutput14646.moment H :=
  canonical_of_padded canonicalInput14646 canonicalOutput14646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14647 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput14647 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound14647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14647.moment H = canonicalOutput14647.moment H :=
  canonical_of_padded canonicalInput14647 canonicalOutput14647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14648 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput14648 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound14648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14648.moment H = canonicalOutput14648.moment H :=
  canonical_of_padded canonicalInput14648 canonicalOutput14648 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14649 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput14649 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound14649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14649.moment H = canonicalOutput14649.moment H :=
  canonical_of_padded canonicalInput14649 canonicalOutput14649 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14650 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 2, -3], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput14650 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound14650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14650.moment H = canonicalOutput14650.moment H :=
  canonical_of_padded canonicalInput14650 canonicalOutput14650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14651 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput14651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound14651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14651.moment H = canonicalOutput14651.moment H :=
  canonical_of_padded canonicalInput14651 canonicalOutput14651 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14652 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14652 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound14652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14652.moment H = canonicalOutput14652.moment H :=
  canonical_of_padded canonicalInput14652 canonicalOutput14652 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14653 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, 2, -2, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput14653 : ExponentCode := normalNode1002

theorem canonicalSound14653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14653.moment H = canonicalOutput14653.moment H :=
  canonical_of_padded canonicalInput14653 canonicalOutput14653 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14654 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput14654 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound14654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14654.moment H = canonicalOutput14654.moment H :=
  canonical_of_padded canonicalInput14654 canonicalOutput14654 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14655 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput14655 : ExponentCode := normalNode5980

theorem canonicalSound14655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14655.moment H = canonicalOutput14655.moment H :=
  canonical_of_padded canonicalInput14655 canonicalOutput14655 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

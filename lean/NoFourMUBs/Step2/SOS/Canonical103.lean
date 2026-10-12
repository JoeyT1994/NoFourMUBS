import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6592 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput6592 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound6592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6592.moment H = canonicalOutput6592.moment H :=
  canonical_of_padded canonicalInput6592 canonicalOutput6592 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6593 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput6593 : ExponentCode := normalNode3535

theorem canonicalSound6593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6593.moment H = canonicalOutput6593.moment H :=
  canonical_of_padded canonicalInput6593 canonicalOutput6593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6594 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput6594 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2753⟩

theorem canonicalSound6594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6594.moment H = canonicalOutput6594.moment H :=
  canonical_of_padded canonicalInput6594 canonicalOutput6594 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6595 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput6595 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1193⟩

theorem canonicalSound6595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6595.moment H = canonicalOutput6595.moment H :=
  canonical_of_padded canonicalInput6595 canonicalOutput6595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6596 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput6596 : ExponentCode := normalNode9859

theorem canonicalSound6596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6596.moment H = canonicalOutput6596.moment H :=
  canonical_of_padded canonicalInput6596 canonicalOutput6596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6597 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6597 : ExponentCode := normalNode3542

theorem canonicalSound6597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6597.moment H = canonicalOutput6597.moment H :=
  canonical_of_padded canonicalInput6597 canonicalOutput6597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6598 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput6598 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node494⟩

theorem canonicalSound6598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6598.moment H = canonicalOutput6598.moment H :=
  canonical_of_padded canonicalInput6598 canonicalOutput6598 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6599 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput6599 : ExponentCode := normalNode7905

theorem canonicalSound6599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6599.moment H = canonicalOutput6599.moment H :=
  canonical_of_padded canonicalInput6599 canonicalOutput6599 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6600 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput6600 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound6600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6600.moment H = canonicalOutput6600.moment H :=
  canonical_of_padded canonicalInput6600 canonicalOutput6600 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6601 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6601 : ExponentCode := normalNode9651

theorem canonicalSound6601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6601.moment H = canonicalOutput6601.moment H :=
  canonical_of_padded canonicalInput6601 canonicalOutput6601 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6602 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6602 : ExponentCode := normalNode9651

theorem canonicalSound6602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6602.moment H = canonicalOutput6602.moment H :=
  canonical_of_padded canonicalInput6602 canonicalOutput6602 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6603 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput6603 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1166⟩

theorem canonicalSound6603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6603.moment H = canonicalOutput6603.moment H :=
  canonical_of_padded canonicalInput6603 canonicalOutput6603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6604 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6604 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2144⟩

theorem canonicalSound6604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6604.moment H = canonicalOutput6604.moment H :=
  canonical_of_padded canonicalInput6604 canonicalOutput6604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6605 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput6605 : ExponentCode := normalNode9652

theorem canonicalSound6605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6605.moment H = canonicalOutput6605.moment H :=
  canonical_of_padded canonicalInput6605 canonicalOutput6605 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6606 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6606 : ExponentCode := normalNode9653

theorem canonicalSound6606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6606.moment H = canonicalOutput6606.moment H :=
  canonical_of_padded canonicalInput6606 canonicalOutput6606 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6607 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6607 : ExponentCode := normalNode9653

theorem canonicalSound6607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6607.moment H = canonicalOutput6607.moment H :=
  canonical_of_padded canonicalInput6607 canonicalOutput6607 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6608 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput6608 : ExponentCode := normalNode9654

theorem canonicalSound6608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6608.moment H = canonicalOutput6608.moment H :=
  canonical_of_padded canonicalInput6608 canonicalOutput6608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6609 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6609 : ExponentCode := normalNode3489

theorem canonicalSound6609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6609.moment H = canonicalOutput6609.moment H :=
  canonical_of_padded canonicalInput6609 canonicalOutput6609 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6610 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6610 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2011⟩

theorem canonicalSound6610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6610.moment H = canonicalOutput6610.moment H :=
  canonical_of_padded canonicalInput6610 canonicalOutput6610 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6611 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput6611 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node461⟩

theorem canonicalSound6611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6611.moment H = canonicalOutput6611.moment H :=
  canonical_of_padded canonicalInput6611 canonicalOutput6611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6612 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput6612 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code632

theorem canonicalSound6612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6612.moment H = canonicalOutput6612.moment H :=
  canonical_of_padded canonicalInput6612 canonicalOutput6612 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6613 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput6613 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1158⟩

theorem canonicalSound6613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6613.moment H = canonicalOutput6613.moment H :=
  canonical_of_padded canonicalInput6613 canonicalOutput6613 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6614 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput6614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1097⟩

theorem canonicalSound6614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6614.moment H = canonicalOutput6614.moment H :=
  canonical_of_padded canonicalInput6614 canonicalOutput6614 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6615 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6615 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node780⟩

theorem canonicalSound6615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6615.moment H = canonicalOutput6615.moment H :=
  canonical_of_padded canonicalInput6615 canonicalOutput6615 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6616 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput6616 : ExponentCode := normalNode7894

theorem canonicalSound6616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6616.moment H = canonicalOutput6616.moment H :=
  canonical_of_padded canonicalInput6616 canonicalOutput6616 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6617 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, 1, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput6617 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1097⟩

theorem canonicalSound6617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6617.moment H = canonicalOutput6617.moment H :=
  canonical_of_padded canonicalInput6617 canonicalOutput6617 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6618 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, 2, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput6618 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code632

theorem canonicalSound6618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6618.moment H = canonicalOutput6618.moment H :=
  canonical_of_padded canonicalInput6618 canonicalOutput6618 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6619 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6619 : ExponentCode := normalNode9046

theorem canonicalSound6619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6619.moment H = canonicalOutput6619.moment H :=
  canonical_of_padded canonicalInput6619 canonicalOutput6619 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6620 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6620 : ExponentCode := normalNode10543

theorem canonicalSound6620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6620.moment H = canonicalOutput6620.moment H :=
  canonical_of_padded canonicalInput6620 canonicalOutput6620 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6621 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6621 : ExponentCode := normalNode10608

theorem canonicalSound6621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6621.moment H = canonicalOutput6621.moment H :=
  canonical_of_padded canonicalInput6621 canonicalOutput6621 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6622 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput6622 : ExponentCode := normalNode10608

theorem canonicalSound6622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6622.moment H = canonicalOutput6622.moment H :=
  canonical_of_padded canonicalInput6622 canonicalOutput6622 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6623 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput6623 : ExponentCode := normalNode10730

theorem canonicalSound6623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6623.moment H = canonicalOutput6623.moment H :=
  canonical_of_padded canonicalInput6623 canonicalOutput6623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6624 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput6624 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1266⟩

theorem canonicalSound6624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6624.moment H = canonicalOutput6624.moment H :=
  canonical_of_padded canonicalInput6624 canonicalOutput6624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6625 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6625 : ExponentCode := normalNode9899

theorem canonicalSound6625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6625.moment H = canonicalOutput6625.moment H :=
  canonical_of_padded canonicalInput6625 canonicalOutput6625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6626 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6626 : ExponentCode := normalNode9668

theorem canonicalSound6626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6626.moment H = canonicalOutput6626.moment H :=
  canonical_of_padded canonicalInput6626 canonicalOutput6626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6627 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6627 : ExponentCode := normalNode9668

theorem canonicalSound6627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6627.moment H = canonicalOutput6627.moment H :=
  canonical_of_padded canonicalInput6627 canonicalOutput6627 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6628 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6628 : ExponentCode := normalNode3103

theorem canonicalSound6628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6628.moment H = canonicalOutput6628.moment H :=
  canonical_of_padded canonicalInput6628 canonicalOutput6628 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6629 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, -2, 3, -2], ![1, 2, 0, -3]]⟩

def canonicalOutput6629 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code463

theorem canonicalSound6629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6629.moment H = canonicalOutput6629.moment H :=
  canonical_of_padded canonicalInput6629 canonicalOutput6629 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6630 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput6630 : ExponentCode := normalNode7221

theorem canonicalSound6630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6630.moment H = canonicalOutput6630.moment H :=
  canonical_of_padded canonicalInput6630 canonicalOutput6630 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6631 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput6631 : ExponentCode := normalNode7470

theorem canonicalSound6631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6631.moment H = canonicalOutput6631.moment H :=
  canonical_of_padded canonicalInput6631 canonicalOutput6631 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6632 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, -1, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput6632 : ExponentCode := normalNode7976

theorem canonicalSound6632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6632.moment H = canonicalOutput6632.moment H :=
  canonical_of_padded canonicalInput6632 canonicalOutput6632 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6633 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, -1, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput6633 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1060⟩

theorem canonicalSound6633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6633.moment H = canonicalOutput6633.moment H :=
  canonical_of_padded canonicalInput6633 canonicalOutput6633 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6634 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, 1, 0, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput6634 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1060⟩

theorem canonicalSound6634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6634.moment H = canonicalOutput6634.moment H :=
  canonical_of_padded canonicalInput6634 canonicalOutput6634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6635 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -2, 2], ![1, 2, 0, -3], ![1, -2, 3, -2]]⟩

def canonicalOutput6635 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code463

theorem canonicalSound6635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6635.moment H = canonicalOutput6635.moment H :=
  canonical_of_padded canonicalInput6635 canonicalOutput6635 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6636 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6636 : ExponentCode := normalNode3498

theorem canonicalSound6636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6636.moment H = canonicalOutput6636.moment H :=
  canonical_of_padded canonicalInput6636 canonicalOutput6636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6637 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6637 : ExponentCode := normalNode3499

theorem canonicalSound6637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6637.moment H = canonicalOutput6637.moment H :=
  canonical_of_padded canonicalInput6637 canonicalOutput6637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6638 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6638 : ExponentCode := normalNode3527

theorem canonicalSound6638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6638.moment H = canonicalOutput6638.moment H :=
  canonical_of_padded canonicalInput6638 canonicalOutput6638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6639 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput6639 : ExponentCode := normalNode10715

theorem canonicalSound6639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6639.moment H = canonicalOutput6639.moment H :=
  canonical_of_padded canonicalInput6639 canonicalOutput6639 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6640 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput6640 : ExponentCode := normalNode7205

theorem canonicalSound6640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6640.moment H = canonicalOutput6640.moment H :=
  canonical_of_padded canonicalInput6640 canonicalOutput6640 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6641 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6641 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1252⟩

theorem canonicalSound6641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6641.moment H = canonicalOutput6641.moment H :=
  canonical_of_padded canonicalInput6641 canonicalOutput6641 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6642 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6642 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩

theorem canonicalSound6642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6642.moment H = canonicalOutput6642.moment H :=
  canonical_of_padded canonicalInput6642 canonicalOutput6642 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6643 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6643 : ExponentCode := normalNode10860

theorem canonicalSound6643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6643.moment H = canonicalOutput6643.moment H :=
  canonical_of_padded canonicalInput6643 canonicalOutput6643 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6644 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6644 : ExponentCode := normalNode10621

theorem canonicalSound6644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6644.moment H = canonicalOutput6644.moment H :=
  canonical_of_padded canonicalInput6644 canonicalOutput6644 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6645 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6645 : ExponentCode := normalNode10853

theorem canonicalSound6645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6645.moment H = canonicalOutput6645.moment H :=
  canonical_of_padded canonicalInput6645 canonicalOutput6645 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6646 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6646 : ExponentCode := normalNode9082

theorem canonicalSound6646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6646.moment H = canonicalOutput6646.moment H :=
  canonical_of_padded canonicalInput6646 canonicalOutput6646 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6647 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, -1, 3, -4]]⟩

def canonicalOutput6647 : ExponentCode := normalNode7936

theorem canonicalSound6647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6647.moment H = canonicalOutput6647.moment H :=
  canonical_of_padded canonicalInput6647 canonicalOutput6647 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput6648 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6648 : ExponentCode := normalNode10860

theorem canonicalSound6648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6648.moment H = canonicalOutput6648.moment H :=
  canonical_of_padded canonicalInput6648 canonicalOutput6648 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6649 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6649 : ExponentCode := normalNode10824

theorem canonicalSound6649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6649.moment H = canonicalOutput6649.moment H :=
  canonical_of_padded canonicalInput6649 canonicalOutput6649 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6650 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput6650 : ExponentCode := normalNode10597

theorem canonicalSound6650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6650.moment H = canonicalOutput6650.moment H :=
  canonical_of_padded canonicalInput6650 canonicalOutput6650 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6651 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput6651 : ExponentCode := normalNode3579

theorem canonicalSound6651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6651.moment H = canonicalOutput6651.moment H :=
  canonical_of_padded canonicalInput6651 canonicalOutput6651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6652 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput6652 : ExponentCode := normalNode839

theorem canonicalSound6652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6652.moment H = canonicalOutput6652.moment H :=
  canonical_of_padded canonicalInput6652 canonicalOutput6652 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6653 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6653 : ExponentCode := normalNode10513

theorem canonicalSound6653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6653.moment H = canonicalOutput6653.moment H :=
  canonical_of_padded canonicalInput6653 canonicalOutput6653 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6654 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6654 : ExponentCode := normalNode10605

theorem canonicalSound6654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6654.moment H = canonicalOutput6654.moment H :=
  canonical_of_padded canonicalInput6654 canonicalOutput6654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6655 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput6655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩

theorem canonicalSound6655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6655.moment H = canonicalOutput6655.moment H :=
  canonical_of_padded canonicalInput6655 canonicalOutput6655 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

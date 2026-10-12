import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19584 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19584 : ExponentCode := normalNode10921

theorem canonicalSound19584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19584.moment H = canonicalOutput19584.moment H :=
  canonical_of_padded canonicalInput19584 canonicalOutput19584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19585 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput19585 : ExponentCode := normalNode9918

theorem canonicalSound19585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19585.moment H = canonicalOutput19585.moment H :=
  canonical_of_padded canonicalInput19585 canonicalOutput19585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19586 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput19586 : ExponentCode := normalNode9712

theorem canonicalSound19586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19586.moment H = canonicalOutput19586.moment H :=
  canonical_of_padded canonicalInput19586 canonicalOutput19586 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19587 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound19587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19587.moment H = canonicalOutput19587.moment H :=
  canonical_of_padded canonicalInput19587 canonicalOutput19587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19588 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19588 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound19588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19588.moment H = canonicalOutput19588.moment H :=
  canonical_of_padded canonicalInput19588 canonicalOutput19588 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19589 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput19589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1082⟩

theorem canonicalSound19589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19589.moment H = canonicalOutput19589.moment H :=
  canonical_of_padded canonicalInput19589 canonicalOutput19589 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19590 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19590 : ExponentCode := normalNode5403

theorem canonicalSound19590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19590.moment H = canonicalOutput19590.moment H :=
  canonical_of_padded canonicalInput19590 canonicalOutput19590 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19591 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19591 : ExponentCode := normalNode5412

theorem canonicalSound19591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19591.moment H = canonicalOutput19591.moment H :=
  canonical_of_padded canonicalInput19591 canonicalOutput19591 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19592 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19592 : ExponentCode := normalNode9928

theorem canonicalSound19592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19592.moment H = canonicalOutput19592.moment H :=
  canonical_of_padded canonicalInput19592 canonicalOutput19592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19593 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput19593 : ExponentCode := normalNode9932

theorem canonicalSound19593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19593.moment H = canonicalOutput19593.moment H :=
  canonical_of_padded canonicalInput19593 canonicalOutput19593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19594 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19594 : ExponentCode := normalNode9929

theorem canonicalSound19594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19594.moment H = canonicalOutput19594.moment H :=
  canonical_of_padded canonicalInput19594 canonicalOutput19594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19595 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩

theorem canonicalSound19595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19595.moment H = canonicalOutput19595.moment H :=
  canonical_of_padded canonicalInput19595 canonicalOutput19595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19596 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput19596 : ExponentCode := normalNode9932

theorem canonicalSound19596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19596.moment H = canonicalOutput19596.moment H :=
  canonical_of_padded canonicalInput19596 canonicalOutput19596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19597 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19597 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound19597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19597.moment H = canonicalOutput19597.moment H :=
  canonical_of_padded canonicalInput19597 canonicalOutput19597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19598 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19598 : ExponentCode := normalNode5402

theorem canonicalSound19598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19598.moment H = canonicalOutput19598.moment H :=
  canonical_of_padded canonicalInput19598 canonicalOutput19598 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19599 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19599 : ExponentCode := normalNode5413

theorem canonicalSound19599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19599.moment H = canonicalOutput19599.moment H :=
  canonical_of_padded canonicalInput19599 canonicalOutput19599 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19600 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19600 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩

theorem canonicalSound19600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19600.moment H = canonicalOutput19600.moment H :=
  canonical_of_padded canonicalInput19600 canonicalOutput19600 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19601 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput19601 : ExponentCode := normalNode9940

theorem canonicalSound19601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19601.moment H = canonicalOutput19601.moment H :=
  canonical_of_padded canonicalInput19601 canonicalOutput19601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19602 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19602 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1212⟩

theorem canonicalSound19602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19602.moment H = canonicalOutput19602.moment H :=
  canonical_of_padded canonicalInput19602 canonicalOutput19602 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19603 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19603 : ExponentCode := normalNode9940

theorem canonicalSound19603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19603.moment H = canonicalOutput19603.moment H :=
  canonical_of_padded canonicalInput19603 canonicalOutput19603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19604 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput19604 : ExponentCode := normalNode9940

theorem canonicalSound19604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19604.moment H = canonicalOutput19604.moment H :=
  canonical_of_padded canonicalInput19604 canonicalOutput19604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19605 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput19605 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1318⟩

theorem canonicalSound19605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19605.moment H = canonicalOutput19605.moment H :=
  canonical_of_padded canonicalInput19605 canonicalOutput19605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19606 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput19606 : ExponentCode := normalNode9716

theorem canonicalSound19606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19606.moment H = canonicalOutput19606.moment H :=
  canonical_of_padded canonicalInput19606 canonicalOutput19606 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19607 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19607 : ExponentCode := normalNode9720

theorem canonicalSound19607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19607.moment H = canonicalOutput19607.moment H :=
  canonical_of_padded canonicalInput19607 canonicalOutput19607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19608 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput19608 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩

theorem canonicalSound19608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19608.moment H = canonicalOutput19608.moment H :=
  canonical_of_padded canonicalInput19608 canonicalOutput19608 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput19609 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19609 : ExponentCode := normalNode10913

theorem canonicalSound19609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19609.moment H = canonicalOutput19609.moment H :=
  canonical_of_padded canonicalInput19609 canonicalOutput19609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19610 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput19610 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩

theorem canonicalSound19610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19610.moment H = canonicalOutput19610.moment H :=
  canonical_of_padded canonicalInput19610 canonicalOutput19610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19611 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput19611 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1300⟩

theorem canonicalSound19611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19611.moment H = canonicalOutput19611.moment H :=
  canonical_of_padded canonicalInput19611 canonicalOutput19611 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19612 : ExponentCode := ⟨3, 4, ![![-1, 0, -2, 3], ![0, -1, 4, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput19612 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound19612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19612.moment H = canonicalOutput19612.moment H :=
  canonical_of_padded canonicalInput19612 canonicalOutput19612 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19613 : ExponentCode := ⟨3, 4, ![![-1, 0, -2, 3], ![0, 0, -2, 2], ![1, 0, 4, -5]]⟩

def canonicalOutput19613 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩

theorem canonicalSound19613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19613.moment H = canonicalOutput19613.moment H :=
  canonical_of_padded canonicalInput19613 canonicalOutput19613 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19614 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19614 : ExponentCode := normalNode5535

theorem canonicalSound19614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19614.moment H = canonicalOutput19614.moment H :=
  canonical_of_padded canonicalInput19614 canonicalOutput19614 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19615 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19615 : ExponentCode := normalNode9914

theorem canonicalSound19615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19615.moment H = canonicalOutput19615.moment H :=
  canonical_of_padded canonicalInput19615 canonicalOutput19615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19616 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput19616 : ExponentCode := normalNode9937

theorem canonicalSound19616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19616.moment H = canonicalOutput19616.moment H :=
  canonical_of_padded canonicalInput19616 canonicalOutput19616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19617 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19617 : ExponentCode := normalNode9960

theorem canonicalSound19617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19617.moment H = canonicalOutput19617.moment H :=
  canonical_of_padded canonicalInput19617 canonicalOutput19617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19618 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19618 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19618.moment H = canonicalOutput19618.moment H :=
  canonical_of_padded canonicalInput19618 canonicalOutput19618 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput19619 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput19619 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound19619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19619.moment H = canonicalOutput19619.moment H :=
  canonical_of_padded canonicalInput19619 canonicalOutput19619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19620 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput19620 : ExponentCode := normalNode9950

theorem canonicalSound19620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19620.moment H = canonicalOutput19620.moment H :=
  canonical_of_padded canonicalInput19620 canonicalOutput19620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19621 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19621 : ExponentCode := normalNode9960

theorem canonicalSound19621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19621.moment H = canonicalOutput19621.moment H :=
  canonical_of_padded canonicalInput19621 canonicalOutput19621 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19622 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19622 : ExponentCode := normalNode9955

theorem canonicalSound19622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19622.moment H = canonicalOutput19622.moment H :=
  canonical_of_padded canonicalInput19622 canonicalOutput19622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19623 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput19623 : ExponentCode := normalNode9955

theorem canonicalSound19623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19623.moment H = canonicalOutput19623.moment H :=
  canonical_of_padded canonicalInput19623 canonicalOutput19623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19624 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput19624 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1167⟩

theorem canonicalSound19624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19624.moment H = canonicalOutput19624.moment H :=
  canonical_of_padded canonicalInput19624 canonicalOutput19624 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19625 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput19625 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1169⟩

theorem canonicalSound19625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19625.moment H = canonicalOutput19625.moment H :=
  canonical_of_padded canonicalInput19625 canonicalOutput19625 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19626 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -2, 0, 1]]⟩

def canonicalOutput19626 : ExponentCode := normalNode7188

theorem canonicalSound19626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19626.moment H = canonicalOutput19626.moment H :=
  canonical_of_padded canonicalInput19626 canonicalOutput19626 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19627 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput19627 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound19627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19627.moment H = canonicalOutput19627.moment H :=
  canonical_of_padded canonicalInput19627 canonicalOutput19627 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput19628 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19628 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound19628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19628.moment H = canonicalOutput19628.moment H :=
  canonical_of_padded canonicalInput19628 canonicalOutput19628 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19629 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19629 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound19629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19629.moment H = canonicalOutput19629.moment H :=
  canonical_of_padded canonicalInput19629 canonicalOutput19629 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19630 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput19630 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound19630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19630.moment H = canonicalOutput19630.moment H :=
  canonical_of_padded canonicalInput19630 canonicalOutput19630 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19631 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19631 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node292⟩

theorem canonicalSound19631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19631.moment H = canonicalOutput19631.moment H :=
  canonical_of_padded canonicalInput19631 canonicalOutput19631 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19632 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput19632 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound19632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19632.moment H = canonicalOutput19632.moment H :=
  canonical_of_padded canonicalInput19632 canonicalOutput19632 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19633 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput19633 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound19633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19633.moment H = canonicalOutput19633.moment H :=
  canonical_of_padded canonicalInput19633 canonicalOutput19633 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19634 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput19634 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node201⟩

theorem canonicalSound19634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19634.moment H = canonicalOutput19634.moment H :=
  canonical_of_padded canonicalInput19634 canonicalOutput19634 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19635 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput19635 : ExponentCode := normalNode5528

theorem canonicalSound19635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19635.moment H = canonicalOutput19635.moment H :=
  canonical_of_padded canonicalInput19635 canonicalOutput19635 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19636 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput19636 : ExponentCode := normalNode9950

theorem canonicalSound19636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19636.moment H = canonicalOutput19636.moment H :=
  canonical_of_padded canonicalInput19636 canonicalOutput19636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19637 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput19637 : ExponentCode := normalNode9951

theorem canonicalSound19637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19637.moment H = canonicalOutput19637.moment H :=
  canonical_of_padded canonicalInput19637 canonicalOutput19637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19638 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput19638 : ExponentCode := normalNode9952

theorem canonicalSound19638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19638.moment H = canonicalOutput19638.moment H :=
  canonical_of_padded canonicalInput19638 canonicalOutput19638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19639 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput19639 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node267⟩

theorem canonicalSound19639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19639.moment H = canonicalOutput19639.moment H :=
  canonical_of_padded canonicalInput19639 canonicalOutput19639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19640 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput19640 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound19640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19640.moment H = canonicalOutput19640.moment H :=
  canonical_of_padded canonicalInput19640 canonicalOutput19640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19641 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput19641 : ExponentCode := normalNode9950

theorem canonicalSound19641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19641.moment H = canonicalOutput19641.moment H :=
  canonical_of_padded canonicalInput19641 canonicalOutput19641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19642 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput19642 : ExponentCode := normalNode9969

theorem canonicalSound19642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19642.moment H = canonicalOutput19642.moment H :=
  canonical_of_padded canonicalInput19642 canonicalOutput19642 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19643 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput19643 : ExponentCode := normalNode9963

theorem canonicalSound19643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19643.moment H = canonicalOutput19643.moment H :=
  canonical_of_padded canonicalInput19643 canonicalOutput19643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19644 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput19644 : ExponentCode := normalNode10924

theorem canonicalSound19644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19644.moment H = canonicalOutput19644.moment H :=
  canonical_of_padded canonicalInput19644 canonicalOutput19644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19645 : ExponentCode := ⟨5, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput19645 : ExponentCode := normalNode9964

theorem canonicalSound19645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19645.moment H = canonicalOutput19645.moment H :=
  canonical_of_padded canonicalInput19645 canonicalOutput19645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19646 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput19646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound19646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19646.moment H = canonicalOutput19646.moment H :=
  canonical_of_padded canonicalInput19646 canonicalOutput19646 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19647 : ExponentCode := ⟨4, 4, ![![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput19647 : ExponentCode := normalNode10925

theorem canonicalSound19647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19647.moment H = canonicalOutput19647.moment H :=
  canonical_of_padded canonicalInput19647 canonicalOutput19647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

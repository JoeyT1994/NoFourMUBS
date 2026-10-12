import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23680 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23680 : ExponentCode := normalNode8361

theorem canonicalSound23680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23680.moment H = canonicalOutput23680.moment H :=
  canonical_of_padded canonicalInput23680 canonicalOutput23680 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, OAI.MUB6.Certificate.PairSemantics.permutation267⟩ (by decide +kernel) hH

def canonicalInput23681 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23681 : ExponentCode := normalNode8066

theorem canonicalSound23681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23681.moment H = canonicalOutput23681.moment H :=
  canonical_of_padded canonicalInput23681 canonicalOutput23681 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23682 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23682 : ExponentCode := normalNode8064

theorem canonicalSound23682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23682.moment H = canonicalOutput23682.moment H :=
  canonical_of_padded canonicalInput23682 canonicalOutput23682 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23683 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23683 : ExponentCode := normalNode8066

theorem canonicalSound23683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23683.moment H = canonicalOutput23683.moment H :=
  canonical_of_padded canonicalInput23683 canonicalOutput23683 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23684 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23684 : ExponentCode := normalNode8066

theorem canonicalSound23684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23684.moment H = canonicalOutput23684.moment H :=
  canonical_of_padded canonicalInput23684 canonicalOutput23684 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput23685 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23685 : ExponentCode := normalNode8064

theorem canonicalSound23685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23685.moment H = canonicalOutput23685.moment H :=
  canonical_of_padded canonicalInput23685 canonicalOutput23685 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput23686 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23686 : ExponentCode := normalNode8068

theorem canonicalSound23686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23686.moment H = canonicalOutput23686.moment H :=
  canonical_of_padded canonicalInput23686 canonicalOutput23686 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput23687 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23687 : ExponentCode := normalNode8458

theorem canonicalSound23687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23687.moment H = canonicalOutput23687.moment H :=
  canonical_of_padded canonicalInput23687 canonicalOutput23687 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput23688 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23688 : ExponentCode := normalNode10045

theorem canonicalSound23688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23688.moment H = canonicalOutput23688.moment H :=
  canonical_of_padded canonicalInput23688 canonicalOutput23688 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation388⟩ (by decide +kernel) hH

def canonicalInput23689 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23689 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23689.moment H = canonicalOutput23689.moment H :=
  canonical_of_padded canonicalInput23689 canonicalOutput23689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23690 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23690 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23690.moment H = canonicalOutput23690.moment H :=
  canonical_of_padded canonicalInput23690 canonicalOutput23690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23691 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23691 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound23691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23691.moment H = canonicalOutput23691.moment H :=
  canonical_of_padded canonicalInput23691 canonicalOutput23691 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23692 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -4, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23692 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound23692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23692.moment H = canonicalOutput23692.moment H :=
  canonical_of_padded canonicalInput23692 canonicalOutput23692 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23693 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23693 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23693.moment H = canonicalOutput23693.moment H :=
  canonical_of_padded canonicalInput23693 canonicalOutput23693 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23694 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23694 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23694.moment H = canonicalOutput23694.moment H :=
  canonical_of_padded canonicalInput23694 canonicalOutput23694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23695 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23695 : ExponentCode := normalNode3766

theorem canonicalSound23695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23695.moment H = canonicalOutput23695.moment H :=
  canonical_of_padded canonicalInput23695 canonicalOutput23695 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput23696 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23696 : ExponentCode := normalNode10446

theorem canonicalSound23696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23696.moment H = canonicalOutput23696.moment H :=
  canonical_of_padded canonicalInput23696 canonicalOutput23696 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput23697 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23697 : ExponentCode := normalNode10743

theorem canonicalSound23697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23697.moment H = canonicalOutput23697.moment H :=
  canonical_of_padded canonicalInput23697 canonicalOutput23697 (by decide) (by decide)
    ⟨false, true, canonicalPermutation283, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput23698 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23698 : ExponentCode := normalNode3656

theorem canonicalSound23698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23698.moment H = canonicalOutput23698.moment H :=
  canonical_of_padded canonicalInput23698 canonicalOutput23698 (by decide) (by decide)
    ⟨false, true, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23699 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23699 : ExponentCode := normalNode8064

theorem canonicalSound23699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23699.moment H = canonicalOutput23699.moment H :=
  canonical_of_padded canonicalInput23699 canonicalOutput23699 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23700 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23700 : ExponentCode := normalNode8064

theorem canonicalSound23700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23700.moment H = canonicalOutput23700.moment H :=
  canonical_of_padded canonicalInput23700 canonicalOutput23700 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23701 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23701 : ExponentCode := normalNode3656

theorem canonicalSound23701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23701.moment H = canonicalOutput23701.moment H :=
  canonical_of_padded canonicalInput23701 canonicalOutput23701 (by decide) (by decide)
    ⟨false, true, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23702 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23702 : ExponentCode := normalNode8064

theorem canonicalSound23702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23702.moment H = canonicalOutput23702.moment H :=
  canonical_of_padded canonicalInput23702 canonicalOutput23702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23703 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23703 : ExponentCode := normalNode11165

theorem canonicalSound23703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23703.moment H = canonicalOutput23703.moment H :=
  canonical_of_padded canonicalInput23703 canonicalOutput23703 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23704 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23704 : ExponentCode := normalNode10869

theorem canonicalSound23704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23704.moment H = canonicalOutput23704.moment H :=
  canonical_of_padded canonicalInput23704 canonicalOutput23704 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23705 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23705 : ExponentCode := normalNode10869

theorem canonicalSound23705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23705.moment H = canonicalOutput23705.moment H :=
  canonical_of_padded canonicalInput23705 canonicalOutput23705 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23706 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23706 : ExponentCode := normalNode11165

theorem canonicalSound23706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23706.moment H = canonicalOutput23706.moment H :=
  canonical_of_padded canonicalInput23706 canonicalOutput23706 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23707 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23707 : ExponentCode := normalNode8064

theorem canonicalSound23707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23707.moment H = canonicalOutput23707.moment H :=
  canonical_of_padded canonicalInput23707 canonicalOutput23707 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23708 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23708 : ExponentCode := normalNode8064

theorem canonicalSound23708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23708.moment H = canonicalOutput23708.moment H :=
  canonical_of_padded canonicalInput23708 canonicalOutput23708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23709 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23709 : ExponentCode := normalNode10869

theorem canonicalSound23709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23709.moment H = canonicalOutput23709.moment H :=
  canonical_of_padded canonicalInput23709 canonicalOutput23709 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23710 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23710 : ExponentCode := normalNode11165

theorem canonicalSound23710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23710.moment H = canonicalOutput23710.moment H :=
  canonical_of_padded canonicalInput23710 canonicalOutput23710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23711 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23711 : ExponentCode := normalNode11165

theorem canonicalSound23711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23711.moment H = canonicalOutput23711.moment H :=
  canonical_of_padded canonicalInput23711 canonicalOutput23711 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23712 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23712 : ExponentCode := normalNode10869

theorem canonicalSound23712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23712.moment H = canonicalOutput23712.moment H :=
  canonical_of_padded canonicalInput23712 canonicalOutput23712 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23713 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23713 : ExponentCode := normalNode8064

theorem canonicalSound23713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23713.moment H = canonicalOutput23713.moment H :=
  canonical_of_padded canonicalInput23713 canonicalOutput23713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23714 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23714 : ExponentCode := normalNode3656

theorem canonicalSound23714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23714.moment H = canonicalOutput23714.moment H :=
  canonical_of_padded canonicalInput23714 canonicalOutput23714 (by decide) (by decide)
    ⟨false, true, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23715 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23715 : ExponentCode := normalNode8064

theorem canonicalSound23715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23715.moment H = canonicalOutput23715.moment H :=
  canonical_of_padded canonicalInput23715 canonicalOutput23715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23716 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23716 : ExponentCode := normalNode8064

theorem canonicalSound23716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23716.moment H = canonicalOutput23716.moment H :=
  canonical_of_padded canonicalInput23716 canonicalOutput23716 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23717 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23717 : ExponentCode := normalNode3656

theorem canonicalSound23717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23717.moment H = canonicalOutput23717.moment H :=
  canonical_of_padded canonicalInput23717 canonicalOutput23717 (by decide) (by decide)
    ⟨false, true, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23718 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23718 : ExponentCode := normalNode10869

theorem canonicalSound23718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23718.moment H = canonicalOutput23718.moment H :=
  canonical_of_padded canonicalInput23718 canonicalOutput23718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23719 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23719 : ExponentCode := normalNode8064

theorem canonicalSound23719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23719.moment H = canonicalOutput23719.moment H :=
  canonical_of_padded canonicalInput23719 canonicalOutput23719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23720 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23720 : ExponentCode := normalNode11165

theorem canonicalSound23720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23720.moment H = canonicalOutput23720.moment H :=
  canonical_of_padded canonicalInput23720 canonicalOutput23720 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23721 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23721 : ExponentCode := normalNode11165

theorem canonicalSound23721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23721.moment H = canonicalOutput23721.moment H :=
  canonical_of_padded canonicalInput23721 canonicalOutput23721 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23722 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23722 : ExponentCode := normalNode8064

theorem canonicalSound23722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23722.moment H = canonicalOutput23722.moment H :=
  canonical_of_padded canonicalInput23722 canonicalOutput23722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23723 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23723 : ExponentCode := normalNode10869

theorem canonicalSound23723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23723.moment H = canonicalOutput23723.moment H :=
  canonical_of_padded canonicalInput23723 canonicalOutput23723 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23724 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23724 : ExponentCode := normalNode11165

theorem canonicalSound23724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23724.moment H = canonicalOutput23724.moment H :=
  canonical_of_padded canonicalInput23724 canonicalOutput23724 (by decide) (by decide)
    ⟨false, true, canonicalPermutation284, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23725 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23725 : ExponentCode := normalNode11165

theorem canonicalSound23725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23725.moment H = canonicalOutput23725.moment H :=
  canonical_of_padded canonicalInput23725 canonicalOutput23725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23726 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23726 : ExponentCode := normalNode11165

theorem canonicalSound23726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23726.moment H = canonicalOutput23726.moment H :=
  canonical_of_padded canonicalInput23726 canonicalOutput23726 (by decide) (by decide)
    ⟨false, true, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23727 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23727 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound23727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23727.moment H = canonicalOutput23727.moment H :=
  canonical_of_padded canonicalInput23727 canonicalOutput23727 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23728 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23728 : ExponentCode := normalNode11165

theorem canonicalSound23728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23728.moment H = canonicalOutput23728.moment H :=
  canonical_of_padded canonicalInput23728 canonicalOutput23728 (by decide) (by decide)
    ⟨false, true, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23729 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23729 : ExponentCode := normalNode11165

theorem canonicalSound23729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23729.moment H = canonicalOutput23729.moment H :=
  canonical_of_padded canonicalInput23729 canonicalOutput23729 (by decide) (by decide)
    ⟨false, true, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23730 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23730 : ExponentCode := normalNode11165

theorem canonicalSound23730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23730.moment H = canonicalOutput23730.moment H :=
  canonical_of_padded canonicalInput23730 canonicalOutput23730 (by decide) (by decide)
    ⟨false, true, canonicalPermutation285, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23731 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23731 : ExponentCode := normalNode8064

theorem canonicalSound23731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23731.moment H = canonicalOutput23731.moment H :=
  canonical_of_padded canonicalInput23731 canonicalOutput23731 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23732 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23732 : ExponentCode := normalNode10869

theorem canonicalSound23732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23732.moment H = canonicalOutput23732.moment H :=
  canonical_of_padded canonicalInput23732 canonicalOutput23732 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23733 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23733 : ExponentCode := normalNode11165

theorem canonicalSound23733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23733.moment H = canonicalOutput23733.moment H :=
  canonical_of_padded canonicalInput23733 canonicalOutput23733 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23734 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23734 : ExponentCode := normalNode11165

theorem canonicalSound23734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23734.moment H = canonicalOutput23734.moment H :=
  canonical_of_padded canonicalInput23734 canonicalOutput23734 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23735 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23735 : ExponentCode := normalNode10869

theorem canonicalSound23735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23735.moment H = canonicalOutput23735.moment H :=
  canonical_of_padded canonicalInput23735 canonicalOutput23735 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23736 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23736 : ExponentCode := normalNode8064

theorem canonicalSound23736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23736.moment H = canonicalOutput23736.moment H :=
  canonical_of_padded canonicalInput23736 canonicalOutput23736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23737 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23737 : ExponentCode := normalNode10869

theorem canonicalSound23737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23737.moment H = canonicalOutput23737.moment H :=
  canonical_of_padded canonicalInput23737 canonicalOutput23737 (by decide) (by decide)
    ⟨false, true, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23738 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23738 : ExponentCode := normalNode11165

theorem canonicalSound23738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23738.moment H = canonicalOutput23738.moment H :=
  canonical_of_padded canonicalInput23738 canonicalOutput23738 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23739 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23739 : ExponentCode := normalNode8064

theorem canonicalSound23739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23739.moment H = canonicalOutput23739.moment H :=
  canonical_of_padded canonicalInput23739 canonicalOutput23739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23740 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23740 : ExponentCode := normalNode8064

theorem canonicalSound23740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23740.moment H = canonicalOutput23740.moment H :=
  canonical_of_padded canonicalInput23740 canonicalOutput23740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23741 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23741 : ExponentCode := normalNode11165

theorem canonicalSound23741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23741.moment H = canonicalOutput23741.moment H :=
  canonical_of_padded canonicalInput23741 canonicalOutput23741 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23742 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23742 : ExponentCode := normalNode10869

theorem canonicalSound23742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23742.moment H = canonicalOutput23742.moment H :=
  canonical_of_padded canonicalInput23742 canonicalOutput23742 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23743 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23743 : ExponentCode := normalNode8064

theorem canonicalSound23743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23743.moment H = canonicalOutput23743.moment H :=
  canonical_of_padded canonicalInput23743 canonicalOutput23743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10688 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10688 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound10688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10688.moment H = canonicalOutput10688.moment H :=
  canonical_of_padded canonicalInput10688 canonicalOutput10688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10689 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -2, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput10689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound10689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10689.moment H = canonicalOutput10689.moment H :=
  canonical_of_padded canonicalInput10689 canonicalOutput10689 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput10690 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound10690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10690.moment H = canonicalOutput10690.moment H :=
  canonical_of_padded canonicalInput10690 canonicalOutput10690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput10691 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, -2, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput10691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound10691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10691.moment H = canonicalOutput10691.moment H :=
  canonical_of_padded canonicalInput10691 canonicalOutput10691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10692 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 1, -1], ![0, 1, -4, 3]]⟩

def canonicalOutput10692 : ExponentCode := normalNode5510

theorem canonicalSound10692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10692.moment H = canonicalOutput10692.moment H :=
  canonical_of_padded canonicalInput10692 canonicalOutput10692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10693 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput10693 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound10693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10693.moment H = canonicalOutput10693.moment H :=
  canonical_of_padded canonicalInput10693 canonicalOutput10693 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10694 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput10694 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound10694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10694.moment H = canonicalOutput10694.moment H :=
  canonical_of_padded canonicalInput10694 canonicalOutput10694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10695 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput10695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound10695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10695.moment H = canonicalOutput10695.moment H :=
  canonical_of_padded canonicalInput10695 canonicalOutput10695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10696 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound10696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10696.moment H = canonicalOutput10696.moment H :=
  canonical_of_padded canonicalInput10696 canonicalOutput10696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10697 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput10697 : ExponentCode := normalNode11001

theorem canonicalSound10697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10697.moment H = canonicalOutput10697.moment H :=
  canonical_of_padded canonicalInput10697 canonicalOutput10697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10698 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2450⟩

theorem canonicalSound10698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10698.moment H = canonicalOutput10698.moment H :=
  canonical_of_padded canonicalInput10698 canonicalOutput10698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10699 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10699 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2844⟩

theorem canonicalSound10699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10699.moment H = canonicalOutput10699.moment H :=
  canonical_of_padded canonicalInput10699 canonicalOutput10699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10700 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10700 : ExponentCode := normalNode11158

theorem canonicalSound10700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10700.moment H = canonicalOutput10700.moment H :=
  canonical_of_padded canonicalInput10700 canonicalOutput10700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10701 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![2, -2, 3, -3]]⟩

def canonicalOutput10701 : ExponentCode := normalNode10928

theorem canonicalSound10701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10701.moment H = canonicalOutput10701.moment H :=
  canonical_of_padded canonicalInput10701 canonicalOutput10701 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10702 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10702 : ExponentCode := normalNode5504

theorem canonicalSound10702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10702.moment H = canonicalOutput10702.moment H :=
  canonical_of_padded canonicalInput10702 canonicalOutput10702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10703 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound10703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10703.moment H = canonicalOutput10703.moment H :=
  canonical_of_padded canonicalInput10703 canonicalOutput10703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10704 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput10704 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound10704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10704.moment H = canonicalOutput10704.moment H :=
  canonical_of_padded canonicalInput10704 canonicalOutput10704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10705 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10705 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound10705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10705.moment H = canonicalOutput10705.moment H :=
  canonical_of_padded canonicalInput10705 canonicalOutput10705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10706 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10706 : ExponentCode := normalNode5226

theorem canonicalSound10706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10706.moment H = canonicalOutput10706.moment H :=
  canonical_of_padded canonicalInput10706 canonicalOutput10706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10707 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput10707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound10707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10707.moment H = canonicalOutput10707.moment H :=
  canonical_of_padded canonicalInput10707 canonicalOutput10707 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10708 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10708 : ExponentCode := normalNode5508

theorem canonicalSound10708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10708.moment H = canonicalOutput10708.moment H :=
  canonical_of_padded canonicalInput10708 canonicalOutput10708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10709 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput10709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound10709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10709.moment H = canonicalOutput10709.moment H :=
  canonical_of_padded canonicalInput10709 canonicalOutput10709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10710 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10710 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound10710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10710.moment H = canonicalOutput10710.moment H :=
  canonical_of_padded canonicalInput10710 canonicalOutput10710 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10711 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput10711 : ExponentCode := normalNode5534

theorem canonicalSound10711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10711.moment H = canonicalOutput10711.moment H :=
  canonical_of_padded canonicalInput10711 canonicalOutput10711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10712 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput10712 : ExponentCode := normalNode5527

theorem canonicalSound10712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10712.moment H = canonicalOutput10712.moment H :=
  canonical_of_padded canonicalInput10712 canonicalOutput10712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10713 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput10713 : ExponentCode := normalNode5535

theorem canonicalSound10713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10713.moment H = canonicalOutput10713.moment H :=
  canonical_of_padded canonicalInput10713 canonicalOutput10713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10714 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![1, -2, -3, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput10714 : ExponentCode := normalNode9870

theorem canonicalSound10714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10714.moment H = canonicalOutput10714.moment H :=
  canonical_of_padded canonicalInput10714 canonicalOutput10714 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10715 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![1, -2, 3, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput10715 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1172⟩

theorem canonicalSound10715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10715.moment H = canonicalOutput10715.moment H :=
  canonical_of_padded canonicalInput10715 canonicalOutput10715 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10716 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10716 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound10716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10716.moment H = canonicalOutput10716.moment H :=
  canonical_of_padded canonicalInput10716 canonicalOutput10716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10717 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 0, -4, 3]]⟩

def canonicalOutput10717 : ExponentCode := normalNode9706

theorem canonicalSound10717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10717.moment H = canonicalOutput10717.moment H :=
  canonical_of_padded canonicalInput10717 canonicalOutput10717 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10718 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, -2, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput10718 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound10718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10718.moment H = canonicalOutput10718.moment H :=
  canonical_of_padded canonicalInput10718 canonicalOutput10718 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10719 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10719 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩

theorem canonicalSound10719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10719.moment H = canonicalOutput10719.moment H :=
  canonical_of_padded canonicalInput10719 canonicalOutput10719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10720 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -4, 3], ![2, -2, 1, -1]]⟩

def canonicalOutput10720 : ExponentCode := normalNode5520

theorem canonicalSound10720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10720.moment H = canonicalOutput10720.moment H :=
  canonical_of_padded canonicalInput10720 canonicalOutput10720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10721 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -2, 0, 0]]⟩

def canonicalOutput10721 : ExponentCode := normalNode5522

theorem canonicalSound10721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10721.moment H = canonicalOutput10721.moment H :=
  canonical_of_padded canonicalInput10721 canonicalOutput10721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10722 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput10722 : ExponentCode := normalNode5524

theorem canonicalSound10722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10722.moment H = canonicalOutput10722.moment H :=
  canonical_of_padded canonicalInput10722 canonicalOutput10722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10723 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput10723 : ExponentCode := normalNode5525

theorem canonicalSound10723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10723.moment H = canonicalOutput10723.moment H :=
  canonical_of_padded canonicalInput10723 canonicalOutput10723 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10724 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10724 : ExponentCode := normalNode11158

theorem canonicalSound10724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10724.moment H = canonicalOutput10724.moment H :=
  canonical_of_padded canonicalInput10724 canonicalOutput10724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10725 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -4, 3], ![2, -2, 2, -2]]⟩

def canonicalOutput10725 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code728

theorem canonicalSound10725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10725.moment H = canonicalOutput10725.moment H :=
  canonical_of_padded canonicalInput10725 canonicalOutput10725 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10726 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput10726 : ExponentCode := normalNode5536

theorem canonicalSound10726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10726.moment H = canonicalOutput10726.moment H :=
  canonical_of_padded canonicalInput10726 canonicalOutput10726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10727 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10727 : ExponentCode := normalNode3873

theorem canonicalSound10727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10727.moment H = canonicalOutput10727.moment H :=
  canonical_of_padded canonicalInput10727 canonicalOutput10727 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10728 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10728 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound10728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10728.moment H = canonicalOutput10728.moment H :=
  canonical_of_padded canonicalInput10728 canonicalOutput10728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10729 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -3, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput10729 : ExponentCode := normalNode4062

theorem canonicalSound10729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10729.moment H = canonicalOutput10729.moment H :=
  canonical_of_padded canonicalInput10729 canonicalOutput10729 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10730 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput10730 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1194

theorem canonicalSound10730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10730.moment H = canonicalOutput10730.moment H :=
  canonical_of_padded canonicalInput10730 canonicalOutput10730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10731 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput10731 : ExponentCode := normalNode5538

theorem canonicalSound10731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10731.moment H = canonicalOutput10731.moment H :=
  canonical_of_padded canonicalInput10731 canonicalOutput10731 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10732 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -2, -3, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput10732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code770

theorem canonicalSound10732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10732.moment H = canonicalOutput10732.moment H :=
  canonical_of_padded canonicalInput10732 canonicalOutput10732 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10733 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput10733 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound10733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10733.moment H = canonicalOutput10733.moment H :=
  canonical_of_padded canonicalInput10733 canonicalOutput10733 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10734 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput10734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩

theorem canonicalSound10734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10734.moment H = canonicalOutput10734.moment H :=
  canonical_of_padded canonicalInput10734 canonicalOutput10734 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10735 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10735 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound10735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10735.moment H = canonicalOutput10735.moment H :=
  canonical_of_padded canonicalInput10735 canonicalOutput10735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10736 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10736 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound10736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10736.moment H = canonicalOutput10736.moment H :=
  canonical_of_padded canonicalInput10736 canonicalOutput10736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10737 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput10737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound10737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10737.moment H = canonicalOutput10737.moment H :=
  canonical_of_padded canonicalInput10737 canonicalOutput10737 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10738 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10738 : ExponentCode := normalNode11155

theorem canonicalSound10738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10738.moment H = canonicalOutput10738.moment H :=
  canonical_of_padded canonicalInput10738 canonicalOutput10738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10739 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -4, 3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10739 : ExponentCode := normalNode5453

theorem canonicalSound10739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10739.moment H = canonicalOutput10739.moment H :=
  canonical_of_padded canonicalInput10739 canonicalOutput10739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10740 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10740 : ExponentCode := normalNode5252

theorem canonicalSound10740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10740.moment H = canonicalOutput10740.moment H :=
  canonical_of_padded canonicalInput10740 canonicalOutput10740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10741 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10741 : ExponentCode := normalNode5543

theorem canonicalSound10741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10741.moment H = canonicalOutput10741.moment H :=
  canonical_of_padded canonicalInput10741 canonicalOutput10741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10742 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput10742 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound10742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10742.moment H = canonicalOutput10742.moment H :=
  canonical_of_padded canonicalInput10742 canonicalOutput10742 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10743 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput10743 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2243⟩

theorem canonicalSound10743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10743.moment H = canonicalOutput10743.moment H :=
  canonical_of_padded canonicalInput10743 canonicalOutput10743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10744 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput10744 : ExponentCode := normalNode5542

theorem canonicalSound10744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10744.moment H = canonicalOutput10744.moment H :=
  canonical_of_padded canonicalInput10744 canonicalOutput10744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10745 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput10745 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩

theorem canonicalSound10745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10745.moment H = canonicalOutput10745.moment H :=
  canonical_of_padded canonicalInput10745 canonicalOutput10745 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10746 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -1, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput10746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound10746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10746.moment H = canonicalOutput10746.moment H :=
  canonical_of_padded canonicalInput10746 canonicalOutput10746 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10747 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10747 : ExponentCode := normalNode11005

theorem canonicalSound10747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10747.moment H = canonicalOutput10747.moment H :=
  canonical_of_padded canonicalInput10747 canonicalOutput10747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10748 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, 0, -4, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput10748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1343⟩

theorem canonicalSound10748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10748.moment H = canonicalOutput10748.moment H :=
  canonical_of_padded canonicalInput10748 canonicalOutput10748 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10749 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput10749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound10749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10749.moment H = canonicalOutput10749.moment H :=
  canonical_of_padded canonicalInput10749 canonicalOutput10749 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10750 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, 1, -3, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput10750 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1198

theorem canonicalSound10750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10750.moment H = canonicalOutput10750.moment H :=
  canonical_of_padded canonicalInput10750 canonicalOutput10750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10751 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10751 : ExponentCode := normalNode11146

theorem canonicalSound10751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10751.moment H = canonicalOutput10751.moment H :=
  canonical_of_padded canonicalInput10751 canonicalOutput10751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical18
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput704 : ExponentCode := ⟨3, 5, ![![-3, 1, 1, 1, 0], ![1, -2, 1, 1, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput704 : ExponentCode := normalNode215

theorem canonicalSound704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput704.moment H = canonicalOutput704.moment H :=
  canonical_of_padded canonicalInput704 canonicalOutput704 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput705 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![0, -2, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput705 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput705.moment H = canonicalOutput705.moment H :=
  canonical_of_padded canonicalInput705 canonicalOutput705 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput706 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![0, -2, 1, -1, 2, 0], ![3, 1, -2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput706 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput706.moment H = canonicalOutput706.moment H :=
  canonical_of_padded canonicalInput706 canonicalOutput706 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput707 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, -1, 2, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput707 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput707.moment H = canonicalOutput707.moment H :=
  canonical_of_padded canonicalInput707 canonicalOutput707 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput708 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, -1, 2, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput708 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput708.moment H = canonicalOutput708.moment H :=
  canonical_of_padded canonicalInput708 canonicalOutput708 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput709 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput709 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput709.moment H = canonicalOutput709.moment H :=
  canonical_of_padded canonicalInput709 canonicalOutput709 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput710 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -2, -1, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput710 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput710.moment H = canonicalOutput710.moment H :=
  canonical_of_padded canonicalInput710 canonicalOutput710 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput711 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![3, -2, 1, -1, -1, 0], ![0, 1, -2, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput711.moment H = canonicalOutput711.moment H :=
  canonical_of_padded canonicalInput711 canonicalOutput711 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation363, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput712 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, 2, -1, 0], ![3, -2, 1, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput712 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput712.moment H = canonicalOutput712.moment H :=
  canonical_of_padded canonicalInput712 canonicalOutput712 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput713 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![-1, -1, 2], ![1, -1, 0], ![1, 2, -3], ![2, -1, -1]]⟩

def canonicalOutput713 : ExponentCode := normalNode3008

theorem canonicalSound713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput713.moment H = canonicalOutput713.moment H :=
  canonical_of_padded canonicalInput713 canonicalOutput713 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput714 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![-1, 1, 0], ![0, 1, -1], ![1, -2, 1], ![3, -1, -2]]⟩

def canonicalOutput714 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node532⟩

theorem canonicalSound714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput714.moment H = canonicalOutput714.moment H :=
  canonical_of_padded canonicalInput714 canonicalOutput714 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput715 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![-1, 1, 0], ![1, -2, 1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput715 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput715.moment H = canonicalOutput715.moment H :=
  canonical_of_padded canonicalInput715 canonicalOutput715 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput716 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![-1, 2, -1], ![0, 0, 0], ![1, -2, 1], ![3, -1, -2]]⟩

def canonicalOutput716 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput716.moment H = canonicalOutput716.moment H :=
  canonical_of_padded canonicalInput716 canonicalOutput716 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput717 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![-1, 2, -1], ![0, 1, -1], ![1, -2, 1], ![3, -2, -1]]⟩

def canonicalOutput717 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node538⟩

theorem canonicalSound717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput717.moment H = canonicalOutput717.moment H :=
  canonical_of_padded canonicalInput717 canonicalOutput717 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput718 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![-1, 2, -1], ![1, -3, 2], ![3, 0, -3]]⟩

def canonicalOutput718 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput718.moment H = canonicalOutput718.moment H :=
  canonical_of_padded canonicalInput718 canonicalOutput718 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput719 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![-1, 2, -1], ![1, -2, 1], ![1, 1, -2], ![2, -2, 0]]⟩

def canonicalOutput719 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput719.moment H = canonicalOutput719.moment H :=
  canonical_of_padded canonicalInput719 canonicalOutput719 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput720 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, -3, 3], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput720 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput720.moment H = canonicalOutput720.moment H :=
  canonical_of_padded canonicalInput720 canonicalOutput720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput721 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, -3, 3], ![2, -1, -1], ![1, 3, -4]]⟩

def canonicalOutput721 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput721.moment H = canonicalOutput721.moment H :=
  canonical_of_padded canonicalInput721 canonicalOutput721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput722 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, -3, 3], ![2, 0, -2], ![1, 2, -3]]⟩

def canonicalOutput722 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node96⟩

theorem canonicalSound722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput722.moment H = canonicalOutput722.moment H :=
  canonical_of_padded canonicalInput722 canonicalOutput722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput723 : ExponentCode := ⟨3, 3, ![![-3, 1, 2], ![0, -3, 3], ![3, 2, -5]]⟩

def canonicalOutput723 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node17⟩

theorem canonicalSound723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput723.moment H = canonicalOutput723.moment H :=
  canonical_of_padded canonicalInput723 canonicalOutput723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput724 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -2, 2], ![0, 0, 0], ![1, 2, -3], ![2, -1, -1]]⟩

def canonicalOutput724 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput724.moment H = canonicalOutput724.moment H :=
  canonical_of_padded canonicalInput724 canonicalOutput724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput725 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -2, 2], ![1, -1, 0], ![0, 3, -3], ![2, -1, -1]]⟩

def canonicalOutput725 : ExponentCode := normalNode201

theorem canonicalSound725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput725.moment H = canonicalOutput725.moment H :=
  canonical_of_padded canonicalInput725 canonicalOutput725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput726 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -2, 2], ![1, -1, 0], ![1, 2, -3], ![1, 0, -1]]⟩

def canonicalOutput726 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node360⟩

theorem canonicalSound726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput726.moment H = canonicalOutput726.moment H :=
  canonical_of_padded canonicalInput726 canonicalOutput726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput727 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![2, 3, -5]]⟩

def canonicalOutput727 : ExponentCode := normalNode197

theorem canonicalSound727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput727.moment H = canonicalOutput727.moment H :=
  canonical_of_padded canonicalInput727 canonicalOutput727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput728 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, 1, -3]]⟩

def canonicalOutput728 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node876⟩

theorem canonicalSound728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput728.moment H = canonicalOutput728.moment H :=
  canonical_of_padded canonicalInput728 canonicalOutput728 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput729 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -1, 1], ![0, 0, 0], ![0, 2, -2], ![3, -2, -1]]⟩

def canonicalOutput729 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput729.moment H = canonicalOutput729.moment H :=
  canonical_of_padded canonicalInput729 canonicalOutput729 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput730 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -1, 1], ![0, 1, -1], ![0, 2, -2], ![3, -3, 0]]⟩

def canonicalOutput730 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node334⟩

theorem canonicalSound730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput730.moment H = canonicalOutput730.moment H :=
  canonical_of_padded canonicalInput730 canonicalOutput730 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput731 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput731 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node872⟩

theorem canonicalSound731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput731.moment H = canonicalOutput731.moment H :=
  canonical_of_padded canonicalInput731 canonicalOutput731 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput732 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 0, 0], ![0, 1, -1], ![1, 1, -2], ![2, -3, 1]]⟩

def canonicalOutput732 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput732.moment H = canonicalOutput732.moment H :=
  canonical_of_padded canonicalInput732 canonicalOutput732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput733 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 1, -1], ![-1, 2, -1], ![1, -3, 2], ![3, -1, -2]]⟩

def canonicalOutput733 : ExponentCode := normalNode191

theorem canonicalSound733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput733.moment H = canonicalOutput733.moment H :=
  canonical_of_padded canonicalInput733 canonicalOutput733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput734 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 1, -1], ![0, -2, 2], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput734 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node356⟩

theorem canonicalSound734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput734.moment H = canonicalOutput734.moment H :=
  canonical_of_padded canonicalInput734 canonicalOutput734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput735 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 1, -1], ![0, 0, 0], ![1, 1, -2], ![2, -3, 1]]⟩

def canonicalOutput735 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput735.moment H = canonicalOutput735.moment H :=
  canonical_of_padded canonicalInput735 canonicalOutput735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput736 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 1, -1], ![0, 1, -1], ![0, -2, 2], ![3, -1, -2]]⟩

def canonicalOutput736 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node354⟩

theorem canonicalSound736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput736.moment H = canonicalOutput736.moment H :=
  canonical_of_padded canonicalInput736 canonicalOutput736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput737 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 1, -1], ![1, -3, 2], ![0, 2, -2], ![2, -1, -1]]⟩

def canonicalOutput737 : ExponentCode := normalNode227

theorem canonicalSound737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput737.moment H = canonicalOutput737.moment H :=
  canonical_of_padded canonicalInput737 canonicalOutput737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput738 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 2, -2], ![0, 1, -1], ![1, -4, 3], ![2, 0, -2]]⟩

def canonicalOutput738 : ExponentCode := normalNode225

theorem canonicalSound738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput738.moment H = canonicalOutput738.moment H :=
  canonical_of_padded canonicalInput738 canonicalOutput738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput739 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 2, -2], ![0, 1, -1], ![1, -3, 2], ![2, -1, -1]]⟩

def canonicalOutput739 : ExponentCode := normalNode227

theorem canonicalSound739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput739.moment H = canonicalOutput739.moment H :=
  canonical_of_padded canonicalInput739 canonicalOutput739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput740 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![0, 2, -2], ![0, 1, -1], ![1, 0, -1], ![2, -4, 2]]⟩

def canonicalOutput740 : ExponentCode := normalNode229

theorem canonicalSound740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput740.moment H = canonicalOutput740.moment H :=
  canonical_of_padded canonicalInput740 canonicalOutput740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput741 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, 2, -2], ![2, -4, 2], ![1, 1, -2]]⟩

def canonicalOutput741 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput741.moment H = canonicalOutput741.moment H :=
  canonical_of_padded canonicalInput741 canonicalOutput741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput742 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, 3, -3], ![1, -2, 1], ![2, -2, 0]]⟩

def canonicalOutput742 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput742.moment H = canonicalOutput742.moment H :=
  canonical_of_padded canonicalInput742 canonicalOutput742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput743 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, 3, -3], ![2, -4, 2], ![1, 0, -1]]⟩

def canonicalOutput743 : ExponentCode := normalNode241

theorem canonicalSound743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput743.moment H = canonicalOutput743.moment H :=
  canonical_of_padded canonicalInput743 canonicalOutput743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput744 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![0, 3, -3], ![2, -2, 0], ![1, -2, 1]]⟩

def canonicalOutput744 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput744.moment H = canonicalOutput744.moment H :=
  canonical_of_padded canonicalInput744 canonicalOutput744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput745 : ExponentCode := ⟨3, 3, ![![-3, 1, 2], ![0, 3, -3], ![3, -4, 1]]⟩

def canonicalOutput745 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node18⟩

theorem canonicalSound745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput745.moment H = canonicalOutput745.moment H :=
  canonical_of_padded canonicalInput745 canonicalOutput745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput746 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, -4, 3], ![1, 2, -3], ![1, 1, -2]]⟩

def canonicalOutput746 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput746.moment H = canonicalOutput746.moment H :=
  canonical_of_padded canonicalInput746 canonicalOutput746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput747 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, -3, 2], ![0, 3, -3], ![2, -1, -1]]⟩

def canonicalOutput747 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput747.moment H = canonicalOutput747.moment H :=
  canonical_of_padded canonicalInput747 canonicalOutput747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput748 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![1, -2, 1], ![0, -1, 1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput748 : ExponentCode := normalNode215

theorem canonicalSound748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput748.moment H = canonicalOutput748.moment H :=
  canonical_of_padded canonicalInput748 canonicalOutput748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput749 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![1, -2, 1], ![1, -2, 1], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput749 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput749.moment H = canonicalOutput749.moment H :=
  canonical_of_padded canonicalInput749 canonicalOutput749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput750 : ExponentCode := ⟨5, 3, ![![-3, 1, 2], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput750 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput750.moment H = canonicalOutput750.moment H :=
  canonical_of_padded canonicalInput750 canonicalOutput750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput751 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw594step0⟩

def canonicalOutput751 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput751.moment H = canonicalOutput751.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw594step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw594step0 = OAI.MUB6.Certificate.PairSemantics.raw594.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw594).trans (OAI.MUB6.Certificate.PairSemantics.canonical594 hH)

def canonicalInput752 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, 1, -2], ![1, -3, 2], ![1, 1, -2]]⟩

def canonicalOutput752 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput752.moment H = canonicalOutput752.moment H :=
  canonical_of_padded canonicalInput752 canonicalOutput752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput753 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, 2, -3], ![1, -4, 3], ![1, 1, -2]]⟩

def canonicalOutput753 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput753.moment H = canonicalOutput753.moment H :=
  canonical_of_padded canonicalInput753 canonicalOutput753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput754 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, 2, -3], ![1, -3, 2], ![1, 0, -1]]⟩

def canonicalOutput754 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput754.moment H = canonicalOutput754.moment H :=
  canonical_of_padded canonicalInput754 canonicalOutput754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput755 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, 3, -4], ![1, -4, 3], ![1, 0, -1]]⟩

def canonicalOutput755 : ExponentCode := normalNode242

theorem canonicalSound755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput755.moment H = canonicalOutput755.moment H :=
  canonical_of_padded canonicalInput755 canonicalOutput755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput756 : ExponentCode := ⟨4, 3, ![![-3, 1, 2], ![1, 3, -4], ![1, -2, 1], ![1, -2, 1]]⟩

def canonicalOutput756 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput756.moment H = canonicalOutput756.moment H :=
  canonical_of_padded canonicalInput756 canonicalOutput756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput757 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![-2, 2, -2, 2], ![5, -3, 0, -2]]⟩

def canonicalOutput757 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code24

theorem canonicalSound757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput757.moment H = canonicalOutput757.moment H :=
  canonical_of_padded canonicalInput757 canonicalOutput757 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput758 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![-1, -2, 2, 1], ![4, 1, -4, -1]]⟩

def canonicalOutput758 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput758.moment H = canonicalOutput758.moment H :=
  canonical_of_padded canonicalInput758 canonicalOutput758 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput759 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![-1, 1, -2, 2], ![4, -2, 0, -2]]⟩

def canonicalOutput759 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput759.moment H = canonicalOutput759.moment H :=
  canonical_of_padded canonicalInput759 canonicalOutput759 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput760 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![-1, 2, -2, 1], ![4, -3, 0, -1]]⟩

def canonicalOutput760 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput760.moment H = canonicalOutput760.moment H :=
  canonical_of_padded canonicalInput760 canonicalOutput760 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput761 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![-1, 3, -1, -1], ![4, -4, -1, 1]]⟩

def canonicalOutput761 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput761.moment H = canonicalOutput761.moment H :=
  canonical_of_padded canonicalInput761 canonicalOutput761 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput762 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, -3, 2, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput762 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node94⟩

theorem canonicalSound762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput762.moment H = canonicalOutput762.moment H :=
  canonical_of_padded canonicalInput762 canonicalOutput762 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput763 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, -2, -1, 3], ![3, 1, -1, -3]]⟩

def canonicalOutput763 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput763.moment H = canonicalOutput763.moment H :=
  canonical_of_padded canonicalInput763 canonicalOutput763 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput764 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, -2, 3, -1], ![3, 1, -5, 1]]⟩

def canonicalOutput764 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node76⟩

theorem canonicalSound764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput764.moment H = canonicalOutput764.moment H :=
  canonical_of_padded canonicalInput764 canonicalOutput764 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput765 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, 1, -3, 2], ![3, -2, 1, -2]]⟩

def canonicalOutput765 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput765.moment H = canonicalOutput765.moment H :=
  canonical_of_padded canonicalInput765 canonicalOutput765 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput766 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, 2, -3, 1], ![3, -3, 1, -1]]⟩

def canonicalOutput766 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput766.moment H = canonicalOutput766.moment H :=
  canonical_of_padded canonicalInput766 canonicalOutput766 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput767 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, 2, -1, -1], ![3, -3, -1, 1]]⟩

def canonicalOutput767 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput767.moment H = canonicalOutput767.moment H :=
  canonical_of_padded canonicalInput767 canonicalOutput767 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

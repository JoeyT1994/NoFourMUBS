import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16704 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16704 : ExponentCode := normalNode4269

theorem canonicalSound16704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16704.moment H = canonicalOutput16704.moment H :=
  canonical_of_padded canonicalInput16704 canonicalOutput16704 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16705 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![1, -1, 1, -1, 0], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput16705 : ExponentCode := normalNode4293

theorem canonicalSound16705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16705.moment H = canonicalOutput16705.moment H :=
  canonical_of_padded canonicalInput16705 canonicalOutput16705 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16706 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![1, -1, 1, 0, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput16706 : ExponentCode := normalNode2316

theorem canonicalSound16706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16706.moment H = canonicalOutput16706.moment H :=
  canonical_of_padded canonicalInput16706 canonicalOutput16706 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16707 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 2, -3], ![0, 1, -1, -2, 2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16707 : ExponentCode := normalNode11037

theorem canonicalSound16707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16707.moment H = canonicalOutput16707.moment H :=
  canonical_of_padded canonicalInput16707 canonicalOutput16707 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16708 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 2, -3], ![0, 1, -1, -1, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16708 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound16708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16708.moment H = canonicalOutput16708.moment H :=
  canonical_of_padded canonicalInput16708 canonicalOutput16708 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16709 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 2, -3], ![0, 1, -1, 0, 0], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput16709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2773⟩

theorem canonicalSound16709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16709.moment H = canonicalOutput16709.moment H :=
  canonical_of_padded canonicalInput16709 canonicalOutput16709 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16710 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, 2, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput16710 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound16710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16710.moment H = canonicalOutput16710.moment H :=
  canonical_of_padded canonicalInput16710 canonicalOutput16710 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16711 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -3, 1], ![0, 1, -3, 1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16711 : ExponentCode := normalNode7690

theorem canonicalSound16711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16711.moment H = canonicalOutput16711.moment H :=
  canonical_of_padded canonicalInput16711 canonicalOutput16711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16712 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -3, 1], ![0, 1, -2, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound16712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16712.moment H = canonicalOutput16712.moment H :=
  canonical_of_padded canonicalInput16712 canonicalOutput16712 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16713 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![-2, 2, -1, 1, 0], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput16713 : ExponentCode := normalNode4383

theorem canonicalSound16713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16713.moment H = canonicalOutput16713.moment H :=
  canonical_of_padded canonicalInput16713 canonicalOutput16713 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16714 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![-1, 2, -3, 1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput16714 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code771

theorem canonicalSound16714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16714.moment H = canonicalOutput16714.moment H :=
  canonical_of_padded canonicalInput16714 canonicalOutput16714 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16715 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![-1, 2, -2, 0, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput16715 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound16715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16715.moment H = canonicalOutput16715.moment H :=
  canonical_of_padded canonicalInput16715 canonicalOutput16715 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16716 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![-1, 2, -1, 0, 0], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput16716 : ExponentCode := normalNode4269

theorem canonicalSound16716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16716.moment H = canonicalOutput16716.moment H :=
  canonical_of_padded canonicalInput16716 canonicalOutput16716 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16717 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![-1, 2, -1, 1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput16717 : ExponentCode := normalNode4269

theorem canonicalSound16717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16717.moment H = canonicalOutput16717.moment H :=
  canonical_of_padded canonicalInput16717 canonicalOutput16717 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16718 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![-1, 2, 0, 0, -1], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16718 : ExponentCode := normalNode3773

theorem canonicalSound16718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16718.moment H = canonicalOutput16718.moment H :=
  canonical_of_padded canonicalInput16718 canonicalOutput16718 (by decide) (by decide)
    ⟨true, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16719 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, -1, 0, 1, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput16719 : ExponentCode := normalNode8947

theorem canonicalSound16719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16719.moment H = canonicalOutput16719.moment H :=
  canonical_of_padded canonicalInput16719 canonicalOutput16719 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16720 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -3, 0, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16720 : ExponentCode := normalNode3535

theorem canonicalSound16720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16720.moment H = canonicalOutput16720.moment H :=
  canonical_of_padded canonicalInput16720 canonicalOutput16720 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16721 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -3, 1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16721 : ExponentCode := normalNode1778

theorem canonicalSound16721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16721.moment H = canonicalOutput16721.moment H :=
  canonical_of_padded canonicalInput16721 canonicalOutput16721 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16722 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, -1, 2], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16722 : ExponentCode := normalNode4013

theorem canonicalSound16722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16722.moment H = canonicalOutput16722.moment H :=
  canonical_of_padded canonicalInput16722 canonicalOutput16722 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16723 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16723 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16723.moment H = canonicalOutput16723.moment H :=
  canonical_of_padded canonicalInput16723 canonicalOutput16723 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16724 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16724 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound16724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16724.moment H = canonicalOutput16724.moment H :=
  canonical_of_padded canonicalInput16724 canonicalOutput16724 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16725 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -1, -1, 1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16725 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound16725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16725.moment H = canonicalOutput16725.moment H :=
  canonical_of_padded canonicalInput16725 canonicalOutput16725 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16726 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16726 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound16726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16726.moment H = canonicalOutput16726.moment H :=
  canonical_of_padded canonicalInput16726 canonicalOutput16726 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16727 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16727 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound16727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16727.moment H = canonicalOutput16727.moment H :=
  canonical_of_padded canonicalInput16727 canonicalOutput16727 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16728 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, -3, 1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput16728 : ExponentCode := normalNode1802

theorem canonicalSound16728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16728.moment H = canonicalOutput16728.moment H :=
  canonical_of_padded canonicalInput16728 canonicalOutput16728 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16729 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16729 : ExponentCode := normalNode3949

theorem canonicalSound16729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16729.moment H = canonicalOutput16729.moment H :=
  canonical_of_padded canonicalInput16729 canonicalOutput16729 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16730 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16730 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound16730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16730.moment H = canonicalOutput16730.moment H :=
  canonical_of_padded canonicalInput16730 canonicalOutput16730 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16731 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput16731 : ExponentCode := normalNode3753

theorem canonicalSound16731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16731.moment H = canonicalOutput16731.moment H :=
  canonical_of_padded canonicalInput16731 canonicalOutput16731 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16732 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![1, -1, 0, 1, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput16732 : ExponentCode := normalNode3949

theorem canonicalSound16732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16732.moment H = canonicalOutput16732.moment H :=
  canonical_of_padded canonicalInput16732 canonicalOutput16732 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16733 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![-2, 2, -2, 1, 1], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput16733 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code910

theorem canonicalSound16733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16733.moment H = canonicalOutput16733.moment H :=
  canonical_of_padded canonicalInput16733 canonicalOutput16733 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16734 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![-1, 2, -2, 1, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput16734 : ExponentCode := normalNode3784

theorem canonicalSound16734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16734.moment H = canonicalOutput16734.moment H :=
  canonical_of_padded canonicalInput16734 canonicalOutput16734 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16735 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![-1, 2, -1, 1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput16735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound16735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16735.moment H = canonicalOutput16735.moment H :=
  canonical_of_padded canonicalInput16735 canonicalOutput16735 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16736 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, -1, -1, -1, 3], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput16736 : ExponentCode := normalNode4559

theorem canonicalSound16736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16736.moment H = canonicalOutput16736.moment H :=
  canonical_of_padded canonicalInput16736 canonicalOutput16736 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16737 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -2, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16737 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1776⟩

theorem canonicalSound16737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16737.moment H = canonicalOutput16737.moment H :=
  canonical_of_padded canonicalInput16737 canonicalOutput16737 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16738 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound16738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16738.moment H = canonicalOutput16738.moment H :=
  canonical_of_padded canonicalInput16738 canonicalOutput16738 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16739 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16739 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound16739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16739.moment H = canonicalOutput16739.moment H :=
  canonical_of_padded canonicalInput16739 canonicalOutput16739 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16740 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -2, 2, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16740 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1776⟩

theorem canonicalSound16740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16740.moment H = canonicalOutput16740.moment H :=
  canonical_of_padded canonicalInput16740 canonicalOutput16740 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16741 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16741 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2088⟩

theorem canonicalSound16741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16741.moment H = canonicalOutput16741.moment H :=
  canonical_of_padded canonicalInput16741 canonicalOutput16741 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16742 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16742 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2607⟩

theorem canonicalSound16742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16742.moment H = canonicalOutput16742.moment H :=
  canonical_of_padded canonicalInput16742 canonicalOutput16742 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16743 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16743 : ExponentCode := normalNode4550

theorem canonicalSound16743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16743.moment H = canonicalOutput16743.moment H :=
  canonical_of_padded canonicalInput16743 canonicalOutput16743 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16744 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![0, 2, -1, 1, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput16744 : ExponentCode := normalNode4536

theorem canonicalSound16744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16744.moment H = canonicalOutput16744.moment H :=
  canonical_of_padded canonicalInput16744 canonicalOutput16744 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16745 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![1, -1, -1, -1, 2], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput16745 : ExponentCode := normalNode4536

theorem canonicalSound16745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16745.moment H = canonicalOutput16745.moment H :=
  canonical_of_padded canonicalInput16745 canonicalOutput16745 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16746 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, -1, -2, 1, 2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput16746 : ExponentCode := normalNode3988

theorem canonicalSound16746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16746.moment H = canonicalOutput16746.moment H :=
  canonical_of_padded canonicalInput16746 canonicalOutput16746 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16747 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, -1, -1, 1, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput16747 : ExponentCode := normalNode4299

theorem canonicalSound16747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16747.moment H = canonicalOutput16747.moment H :=
  canonical_of_padded canonicalInput16747 canonicalOutput16747 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16748 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, -1, 0, 1, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput16748 : ExponentCode := normalNode8945

theorem canonicalSound16748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16748.moment H = canonicalOutput16748.moment H :=
  canonical_of_padded canonicalInput16748 canonicalOutput16748 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16749 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -2, -2, 3], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16749 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1496⟩

theorem canonicalSound16749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16749.moment H = canonicalOutput16749.moment H :=
  canonical_of_padded canonicalInput16749 canonicalOutput16749 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16750 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -2, 0, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16750 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound16750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16750.moment H = canonicalOutput16750.moment H :=
  canonical_of_padded canonicalInput16750 canonicalOutput16750 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16751 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -2, 1, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16751.moment H = canonicalOutput16751.moment H :=
  canonical_of_padded canonicalInput16751 canonicalOutput16751 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16752 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound16752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16752.moment H = canonicalOutput16752.moment H :=
  canonical_of_padded canonicalInput16752 canonicalOutput16752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16753 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound16753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16753.moment H = canonicalOutput16753.moment H :=
  canonical_of_padded canonicalInput16753 canonicalOutput16753 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16754 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![1, -1, -2, 1, 1], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput16754 : ExponentCode := normalNode3753

theorem canonicalSound16754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16754.moment H = canonicalOutput16754.moment H :=
  canonical_of_padded canonicalInput16754 canonicalOutput16754 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16755 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![1, -1, -1, 1, 0], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput16755 : ExponentCode := normalNode4286

theorem canonicalSound16755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16755.moment H = canonicalOutput16755.moment H :=
  canonical_of_padded canonicalInput16755 canonicalOutput16755 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16756 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![1, -1, 0, 1, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput16756 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1726⟩

theorem canonicalSound16756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16756.moment H = canonicalOutput16756.moment H :=
  canonical_of_padded canonicalInput16756 canonicalOutput16756 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16757 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 1, -3], ![0, 1, -3, 1, 1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput16757 : ExponentCode := normalNode7690

theorem canonicalSound16757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16757.moment H = canonicalOutput16757.moment H :=
  canonical_of_padded canonicalInput16757 canonicalOutput16757 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16758 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 2, 1, -3], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16758 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound16758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16758.moment H = canonicalOutput16758.moment H :=
  canonical_of_padded canonicalInput16758 canonicalOutput16758 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16759 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 3, 0, -3], ![0, 1, -3, 1, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16759 : ExponentCode := normalNode5355

theorem canonicalSound16759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16759.moment H = canonicalOutput16759.moment H :=
  canonical_of_padded canonicalInput16759 canonicalOutput16759 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16760 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, -1, 2], ![0, 0, -1, 2, -1], ![1, 0, 3, -2, -2]]⟩

def canonicalOutput16760 : ExponentCode := normalNode2821

theorem canonicalSound16760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16760.moment H = canonicalOutput16760.moment H :=
  canonical_of_padded canonicalInput16760 canonicalOutput16760 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16761 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, -1, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16761 : ExponentCode := normalNode2699

theorem canonicalSound16761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16761.moment H = canonicalOutput16761.moment H :=
  canonical_of_padded canonicalInput16761 canonicalOutput16761 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16762 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, -1, 2], ![0, 0, 1, 2, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16762 : ExponentCode := normalNode5116

theorem canonicalSound16762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16762.moment H = canonicalOutput16762.moment H :=
  canonical_of_padded canonicalInput16762 canonicalOutput16762 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16763 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, -1, 2], ![0, 0, 2, -2, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16763 : ExponentCode := normalNode4013

theorem canonicalSound16763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16763.moment H = canonicalOutput16763.moment H :=
  canonical_of_padded canonicalInput16763 canonicalOutput16763 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16764 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1776⟩

theorem canonicalSound16764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16764.moment H = canonicalOutput16764.moment H :=
  canonical_of_padded canonicalInput16764 canonicalOutput16764 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16765 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16765 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound16765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16765.moment H = canonicalOutput16765.moment H :=
  canonical_of_padded canonicalInput16765 canonicalOutput16765 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16766 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16766 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound16766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16766.moment H = canonicalOutput16766.moment H :=
  canonical_of_padded canonicalInput16766 canonicalOutput16766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16767 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16767 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16767.moment H = canonicalOutput16767.moment H :=
  canonical_of_padded canonicalInput16767 canonicalOutput16767 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

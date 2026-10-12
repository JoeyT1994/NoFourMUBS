import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical259
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32704 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, 0, 2, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput32704 : ExponentCode := normalNode9807

theorem canonicalSound32704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32704.moment H = canonicalOutput32704.moment H :=
  canonical_of_padded canonicalInput32704 canonicalOutput32704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation352, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32705 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -3, 4]]⟩

def canonicalOutput32705 : ExponentCode := normalNode9621

theorem canonicalSound32705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32705.moment H = canonicalOutput32705.moment H :=
  canonical_of_padded canonicalInput32705 canonicalOutput32705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation352, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32706 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -3, 2]]⟩

def canonicalOutput32706 : ExponentCode := normalNode4007

theorem canonicalSound32706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32706.moment H = canonicalOutput32706.moment H :=
  canonical_of_padded canonicalInput32706 canonicalOutput32706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32707 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -2, 3, -1], ![0, 1, -3, 2]]⟩

def canonicalOutput32707 : ExponentCode := normalNode4148

theorem canonicalSound32707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32707.moment H = canonicalOutput32707.moment H :=
  canonical_of_padded canonicalInput32707 canonicalOutput32707 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32708 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput32708 : ExponentCode := normalNode5438

theorem canonicalSound32708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32708.moment H = canonicalOutput32708.moment H :=
  canonical_of_padded canonicalInput32708 canonicalOutput32708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32709 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32709 : ExponentCode := normalNode3781

theorem canonicalSound32709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32709.moment H = canonicalOutput32709.moment H :=
  canonical_of_padded canonicalInput32709 canonicalOutput32709 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32710 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32710 : ExponentCode := normalNode3765

theorem canonicalSound32710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32710.moment H = canonicalOutput32710.moment H :=
  canonical_of_padded canonicalInput32710 canonicalOutput32710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32711 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32711 : ExponentCode := normalNode8780

theorem canonicalSound32711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32711.moment H = canonicalOutput32711.moment H :=
  canonical_of_padded canonicalInput32711 canonicalOutput32711 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32712 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, -2, 1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput32712 : ExponentCode := normalNode4274

theorem canonicalSound32712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32712.moment H = canonicalOutput32712.moment H :=
  canonical_of_padded canonicalInput32712 canonicalOutput32712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32713 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32713 : ExponentCode := normalNode8789

theorem canonicalSound32713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32713.moment H = canonicalOutput32713.moment H :=
  canonical_of_padded canonicalInput32713 canonicalOutput32713 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput32714 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32714 : ExponentCode := normalNode3711

theorem canonicalSound32714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32714.moment H = canonicalOutput32714.moment H :=
  canonical_of_padded canonicalInput32714 canonicalOutput32714 (by decide) (by decide)
    ⟨false, false, canonicalPermutation179, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32715 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput32715 : ExponentCode := normalNode8828

theorem canonicalSound32715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32715.moment H = canonicalOutput32715.moment H :=
  canonical_of_padded canonicalInput32715 canonicalOutput32715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32716 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32716 : ExponentCode := normalNode3781

theorem canonicalSound32716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32716.moment H = canonicalOutput32716.moment H :=
  canonical_of_padded canonicalInput32716 canonicalOutput32716 (by decide) (by decide)
    ⟨false, false, canonicalPermutation184, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32717 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32717 : ExponentCode := normalNode3765

theorem canonicalSound32717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32717.moment H = canonicalOutput32717.moment H :=
  canonical_of_padded canonicalInput32717 canonicalOutput32717 (by decide) (by decide)
    ⟨false, false, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32718 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32718 : ExponentCode := normalNode8780

theorem canonicalSound32718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32718.moment H = canonicalOutput32718.moment H :=
  canonical_of_padded canonicalInput32718 canonicalOutput32718 (by decide) (by decide)
    ⟨false, false, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32719 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, 0, -1, 2], ![0, -2, 1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput32719 : ExponentCode := normalNode4274

theorem canonicalSound32719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32719.moment H = canonicalOutput32719.moment H :=
  canonical_of_padded canonicalInput32719 canonicalOutput32719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation128, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32720 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32720 : ExponentCode := normalNode8789

theorem canonicalSound32720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32720.moment H = canonicalOutput32720.moment H :=
  canonical_of_padded canonicalInput32720 canonicalOutput32720 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput32721 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32721 : ExponentCode := normalNode3339

theorem canonicalSound32721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32721.moment H = canonicalOutput32721.moment H :=
  canonical_of_padded canonicalInput32721 canonicalOutput32721 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32722 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32722 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2952⟩

theorem canonicalSound32722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32722.moment H = canonicalOutput32722.moment H :=
  canonical_of_padded canonicalInput32722 canonicalOutput32722 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32723 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput32723 : ExponentCode := normalNode3779

theorem canonicalSound32723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32723.moment H = canonicalOutput32723.moment H :=
  canonical_of_padded canonicalInput32723 canonicalOutput32723 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32724 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, -1, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput32724 : ExponentCode := normalNode3335

theorem canonicalSound32724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32724.moment H = canonicalOutput32724.moment H :=
  canonical_of_padded canonicalInput32724 canonicalOutput32724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32725 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput32725 : ExponentCode := normalNode3770

theorem canonicalSound32725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32725.moment H = canonicalOutput32725.moment H :=
  canonical_of_padded canonicalInput32725 canonicalOutput32725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32726 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32726 : ExponentCode := normalNode3444

theorem canonicalSound32726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32726.moment H = canonicalOutput32726.moment H :=
  canonical_of_padded canonicalInput32726 canonicalOutput32726 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32727 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32727 : ExponentCode := normalNode7642

theorem canonicalSound32727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32727.moment H = canonicalOutput32727.moment H :=
  canonical_of_padded canonicalInput32727 canonicalOutput32727 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32728 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 0, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32728 : ExponentCode := normalNode1726

theorem canonicalSound32728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32728.moment H = canonicalOutput32728.moment H :=
  canonical_of_padded canonicalInput32728 canonicalOutput32728 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32729 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput32729 : ExponentCode := normalNode8784

theorem canonicalSound32729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32729.moment H = canonicalOutput32729.moment H :=
  canonical_of_padded canonicalInput32729 canonicalOutput32729 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32730 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput32730 : ExponentCode := normalNode5367

theorem canonicalSound32730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32730.moment H = canonicalOutput32730.moment H :=
  canonical_of_padded canonicalInput32730 canonicalOutput32730 (by decide) (by decide)
    ⟨false, true, canonicalPermutation217, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32731 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, -2, 1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput32731 : ExponentCode := normalNode4223

theorem canonicalSound32731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32731.moment H = canonicalOutput32731.moment H :=
  canonical_of_padded canonicalInput32731 canonicalOutput32731 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32732 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, -2, 0, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput32732 : ExponentCode := normalNode3840

theorem canonicalSound32732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32732.moment H = canonicalOutput32732.moment H :=
  canonical_of_padded canonicalInput32732 canonicalOutput32732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32733 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, -2, 1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput32733 : ExponentCode := normalNode4280

theorem canonicalSound32733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32733.moment H = canonicalOutput32733.moment H :=
  canonical_of_padded canonicalInput32733 canonicalOutput32733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32734 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, 2, 0, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32734 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2971⟩

theorem canonicalSound32734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32734.moment H = canonicalOutput32734.moment H :=
  canonical_of_padded canonicalInput32734 canonicalOutput32734 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput32735 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![0, -3, 1, 2]]⟩

def canonicalOutput32735 : ExponentCode := normalNode3443

theorem canonicalSound32735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32735.moment H = canonicalOutput32735.moment H :=
  canonical_of_padded canonicalInput32735 canonicalOutput32735 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32736 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![0, -3, 0, 3]]⟩

def canonicalOutput32736 : ExponentCode := normalNode5493

theorem canonicalSound32736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32736.moment H = canonicalOutput32736.moment H :=
  canonical_of_padded canonicalInput32736 canonicalOutput32736 (by decide) (by decide)
    ⟨false, true, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32737 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32737 : ExponentCode := normalNode5424

theorem canonicalSound32737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32737.moment H = canonicalOutput32737.moment H :=
  canonical_of_padded canonicalInput32737 canonicalOutput32737 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32738 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -2, 0], ![0, -3, 1, 2]]⟩

def canonicalOutput32738 : ExponentCode := normalNode3474

theorem canonicalSound32738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32738.moment H = canonicalOutput32738.moment H :=
  canonical_of_padded canonicalInput32738 canonicalOutput32738 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32739 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![0, -3, 0, 3]]⟩

def canonicalOutput32739 : ExponentCode := normalNode5943

theorem canonicalSound32739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32739.moment H = canonicalOutput32739.moment H :=
  canonical_of_padded canonicalInput32739 canonicalOutput32739 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32740 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 2, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput32740 : ExponentCode := normalNode7658

theorem canonicalSound32740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32740.moment H = canonicalOutput32740.moment H :=
  canonical_of_padded canonicalInput32740 canonicalOutput32740 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32741 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -2, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput32741 : ExponentCode := normalNode6857

theorem canonicalSound32741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32741.moment H = canonicalOutput32741.moment H :=
  canonical_of_padded canonicalInput32741 canonicalOutput32741 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32742 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 2, 0]]⟩

def canonicalOutput32742 : ExponentCode := normalNode3771

theorem canonicalSound32742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32742.moment H = canonicalOutput32742.moment H :=
  canonical_of_padded canonicalInput32742 canonicalOutput32742 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput32743 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![0, -2, 0, 2, 0, 0], ![0, 1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32743 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32743.moment H = canonicalOutput32743.moment H :=
  canonical_of_padded canonicalInput32743 canonicalOutput32743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput32744 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![0, -2, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32744 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound32744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32744.moment H = canonicalOutput32744.moment H :=
  canonical_of_padded canonicalInput32744 canonicalOutput32744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation303, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput32745 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![0, -2, 3, -1, 0, 0], ![0, 1, -3, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32745 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32745.moment H = canonicalOutput32745.moment H :=
  canonical_of_padded canonicalInput32745 canonicalOutput32745 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32746 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![0, -2, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound32746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32746.moment H = canonicalOutput32746.moment H :=
  canonical_of_padded canonicalInput32746 canonicalOutput32746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation295⟩ (by decide +kernel) hH

def canonicalInput32747 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -3, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32747 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound32747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32747.moment H = canonicalOutput32747.moment H :=
  canonical_of_padded canonicalInput32747 canonicalOutput32747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation304, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput32748 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1045⟩

theorem canonicalSound32748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32748.moment H = canonicalOutput32748.moment H :=
  canonical_of_padded canonicalInput32748 canonicalOutput32748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation304, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput32749 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32749 : ExponentCode := normalNode4310

theorem canonicalSound32749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32749.moment H = canonicalOutput32749.moment H :=
  canonical_of_padded canonicalInput32749 canonicalOutput32749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput32750 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32750 : ExponentCode := normalNode4310

theorem canonicalSound32750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32750.moment H = canonicalOutput32750.moment H :=
  canonical_of_padded canonicalInput32750 canonicalOutput32750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput32751 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-5, 1, 1, 3], ![5, -2, -2, -1]]⟩

def canonicalOutput32751 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code702

theorem canonicalSound32751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32751.moment H = canonicalOutput32751.moment H :=
  canonical_of_padded canonicalInput32751 canonicalOutput32751 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32752 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-5, 1, 2, 2], ![5, -2, -3, 0]]⟩

def canonicalOutput32752 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound32752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32752.moment H = canonicalOutput32752.moment H :=
  canonical_of_padded canonicalInput32752 canonicalOutput32752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32753 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-3, -2, 1, 4], ![3, 1, -2, -2]]⟩

def canonicalOutput32753 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound32753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32753.moment H = canonicalOutput32753.moment H :=
  canonical_of_padded canonicalInput32753 canonicalOutput32753 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32754 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-3, -2, 2, 3], ![3, 1, -3, -1]]⟩

def canonicalOutput32754 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound32754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32754.moment H = canonicalOutput32754.moment H :=
  canonical_of_padded canonicalInput32754 canonicalOutput32754 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32755 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-3, -2, 4, 1], ![3, 1, -5, 1]]⟩

def canonicalOutput32755 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound32755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32755.moment H = canonicalOutput32755.moment H :=
  canonical_of_padded canonicalInput32755 canonicalOutput32755 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32756 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-2, -3, 2, 3], ![2, 2, -3, -1]]⟩

def canonicalOutput32756 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound32756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32756.moment H = canonicalOutput32756.moment H :=
  canonical_of_padded canonicalInput32756 canonicalOutput32756 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32757 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-2, -3, 4, 1], ![2, 2, -5, 1]]⟩

def canonicalOutput32757 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound32757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32757.moment H = canonicalOutput32757.moment H :=
  canonical_of_padded canonicalInput32757 canonicalOutput32757 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32758 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-2, -2, 4, 0], ![2, 1, -5, 2]]⟩

def canonicalOutput32758 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound32758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32758.moment H = canonicalOutput32758.moment H :=
  canonical_of_padded canonicalInput32758 canonicalOutput32758 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32759 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-1, -3, 2, 2], ![1, 2, -3, 0]]⟩

def canonicalOutput32759 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound32759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32759.moment H = canonicalOutput32759.moment H :=
  canonical_of_padded canonicalInput32759 canonicalOutput32759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32760 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-1, -3, 4, 0], ![1, 2, -5, 2]]⟩

def canonicalOutput32760 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound32760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32760.moment H = canonicalOutput32760.moment H :=
  canonical_of_padded canonicalInput32760 canonicalOutput32760 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32761 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-1, -2, 4, -1], ![1, 1, -5, 3]]⟩

def canonicalOutput32761 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node172⟩

theorem canonicalSound32761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32761.moment H = canonicalOutput32761.moment H :=
  canonical_of_padded canonicalInput32761 canonicalOutput32761 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32762 : ExponentCode := ⟨3, 4, ![![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput32762 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound32762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32762.moment H = canonicalOutput32762.moment H :=
  canonical_of_padded canonicalInput32762 canonicalOutput32762 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32763 : ExponentCode := ⟨3, 4, OAI.MUB6.Certificate.PairSemantics.raw8311step0⟩

def canonicalOutput32763 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound32763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32763.moment H = canonicalOutput32763.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw8311step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw8311step0 = -OAI.MUB6.Certificate.PairSemantics.raw8311 := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_neg hH OAI.MUB6.Certificate.PairSemantics.raw8311).trans (OAI.MUB6.Certificate.PairSemantics.canonical8311 hH)

def canonicalInput32764 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![0, -2, 1, -1, 2, 0], ![0, 1, -2, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32764 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound32764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32764.moment H = canonicalOutput32764.moment H :=
  canonical_of_padded canonicalInput32764 canonicalOutput32764 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32765 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![0, -2, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32765 : ExponentCode := normalNode4310

theorem canonicalSound32765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32765.moment H = canonicalOutput32765.moment H :=
  canonical_of_padded canonicalInput32765 canonicalOutput32765 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput32766 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![0, -2, 1, 2, -1, 0], ![0, 1, -2, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32766 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound32766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32766.moment H = canonicalOutput32766.moment H :=
  canonical_of_padded canonicalInput32766 canonicalOutput32766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32767 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![0, -2, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32767 : ExponentCode := normalNode4310

theorem canonicalSound32767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32767.moment H = canonicalOutput32767.moment H :=
  canonical_of_padded canonicalInput32767 canonicalOutput32767 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29632 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput29632 : ExponentCode := normalNode9790

theorem canonicalSound29632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29632.moment H = canonicalOutput29632.moment H :=
  canonical_of_padded canonicalInput29632 canonicalOutput29632 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29633 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput29633 : ExponentCode := normalNode5125

theorem canonicalSound29633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29633.moment H = canonicalOutput29633.moment H :=
  canonical_of_padded canonicalInput29633 canonicalOutput29633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29634 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput29634 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3342⟩

theorem canonicalSound29634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29634.moment H = canonicalOutput29634.moment H :=
  canonical_of_padded canonicalInput29634 canonicalOutput29634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29635 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput29635 : ExponentCode := normalNode4369

theorem canonicalSound29635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29635.moment H = canonicalOutput29635.moment H :=
  canonical_of_padded canonicalInput29635 canonicalOutput29635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput29636 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput29636 : ExponentCode := normalNode8862

theorem canonicalSound29636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29636.moment H = canonicalOutput29636.moment H :=
  canonical_of_padded canonicalInput29636 canonicalOutput29636 (by decide) (by decide)
    ⟨false, false, canonicalPermutation369, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29637 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput29637 : ExponentCode := normalNode9320

theorem canonicalSound29637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29637.moment H = canonicalOutput29637.moment H :=
  canonical_of_padded canonicalInput29637 canonicalOutput29637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29638 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput29638 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3209⟩

theorem canonicalSound29638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29638.moment H = canonicalOutput29638.moment H :=
  canonical_of_padded canonicalInput29638 canonicalOutput29638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation362, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput29639 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput29639 : ExponentCode := normalNode9324

theorem canonicalSound29639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29639.moment H = canonicalOutput29639.moment H :=
  canonical_of_padded canonicalInput29639 canonicalOutput29639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29640 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput29640 : ExponentCode := normalNode5129

theorem canonicalSound29640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29640.moment H = canonicalOutput29640.moment H :=
  canonical_of_padded canonicalInput29640 canonicalOutput29640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput29641 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput29641 : ExponentCode := normalNode8882

theorem canonicalSound29641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29641.moment H = canonicalOutput29641.moment H :=
  canonical_of_padded canonicalInput29641 canonicalOutput29641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation369, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29642 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 0, 0], ![-1, 2, 1, -2]]⟩

def canonicalOutput29642 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3078⟩

theorem canonicalSound29642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29642.moment H = canonicalOutput29642.moment H :=
  canonical_of_padded canonicalInput29642 canonicalOutput29642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation342, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29643 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 2, 0, -1]]⟩

def canonicalOutput29643 : ExponentCode := normalNode8882

theorem canonicalSound29643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29643.moment H = canonicalOutput29643.moment H :=
  canonical_of_padded canonicalInput29643 canonicalOutput29643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29644 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput29644 : ExponentCode := normalNode7720

theorem canonicalSound29644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29644.moment H = canonicalOutput29644.moment H :=
  canonical_of_padded canonicalInput29644 canonicalOutput29644 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29645 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29645 : ExponentCode := normalNode10201

theorem canonicalSound29645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29645.moment H = canonicalOutput29645.moment H :=
  canonical_of_padded canonicalInput29645 canonicalOutput29645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29646 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 0, 0], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29646 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3067⟩

theorem canonicalSound29646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29646.moment H = canonicalOutput29646.moment H :=
  canonical_of_padded canonicalInput29646 canonicalOutput29646 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput29647 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![-1, -1, -1, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput29647 : ExponentCode := normalNode7794

theorem canonicalSound29647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29647.moment H = canonicalOutput29647.moment H :=
  canonical_of_padded canonicalInput29647 canonicalOutput29647 (by decide) (by decide)
    ⟨false, false, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29648 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, 1, -1, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput29648 : ExponentCode := normalNode9304

theorem canonicalSound29648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29648.moment H = canonicalOutput29648.moment H :=
  canonical_of_padded canonicalInput29648 canonicalOutput29648 (by decide) (by decide)
    ⟨false, false, canonicalPermutation299, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29649 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2], ![-1, -2, 1, 2]]⟩

def canonicalOutput29649 : ExponentCode := normalNode10182

theorem canonicalSound29649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29649.moment H = canonicalOutput29649.moment H :=
  canonical_of_padded canonicalInput29649 canonicalOutput29649 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29650 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, -1, 0], ![1, 0, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29650 : ExponentCode := normalNode5426

theorem canonicalSound29650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29650.moment H = canonicalOutput29650.moment H :=
  canonical_of_padded canonicalInput29650 canonicalOutput29650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput29651 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, 0, 0, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput29651 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3077⟩

theorem canonicalSound29651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29651.moment H = canonicalOutput29651.moment H :=
  canonical_of_padded canonicalInput29651 canonicalOutput29651 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput29652 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![-1, -2, 1, 2]]⟩

def canonicalOutput29652 : ExponentCode := normalNode8819

theorem canonicalSound29652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29652.moment H = canonicalOutput29652.moment H :=
  canonical_of_padded canonicalInput29652 canonicalOutput29652 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29653 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -2, 0, 2], ![1, 0, 1, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput29653 : ExponentCode := normalNode5039

theorem canonicalSound29653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29653.moment H = canonicalOutput29653.moment H :=
  canonical_of_padded canonicalInput29653 canonicalOutput29653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29654 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 0, 0, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput29654 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3077⟩

theorem canonicalSound29654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29654.moment H = canonicalOutput29654.moment H :=
  canonical_of_padded canonicalInput29654 canonicalOutput29654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29655 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 2, 0, 0]]⟩

def canonicalOutput29655 : ExponentCode := normalNode3863

theorem canonicalSound29655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29655.moment H = canonicalOutput29655.moment H :=
  canonical_of_padded canonicalInput29655 canonicalOutput29655 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29656 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, 0, 0], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29656 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2549⟩

theorem canonicalSound29656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29656.moment H = canonicalOutput29656.moment H :=
  canonical_of_padded canonicalInput29656 canonicalOutput29656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29657 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 0, -1], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29657 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3091⟩

theorem canonicalSound29657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29657.moment H = canonicalOutput29657.moment H :=
  canonical_of_padded canonicalInput29657 canonicalOutput29657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29658 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput29658 : ExponentCode := normalNode2684

theorem canonicalSound29658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29658.moment H = canonicalOutput29658.moment H :=
  canonical_of_padded canonicalInput29658 canonicalOutput29658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29659 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, -1, 2], ![-2, 1, 2, -1]]⟩

def canonicalOutput29659 : ExponentCode := normalNode2230

theorem canonicalSound29659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29659.moment H = canonicalOutput29659.moment H :=
  canonical_of_padded canonicalInput29659 canonicalOutput29659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29660 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![-2, 1, 1, 0]]⟩

def canonicalOutput29660 : ExponentCode := normalNode4198

theorem canonicalSound29660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29660.moment H = canonicalOutput29660.moment H :=
  canonical_of_padded canonicalInput29660 canonicalOutput29660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29661 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput29661 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3077⟩

theorem canonicalSound29661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29661.moment H = canonicalOutput29661.moment H :=
  canonical_of_padded canonicalInput29661 canonicalOutput29661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29662 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput29662 : ExponentCode := normalNode1975

theorem canonicalSound29662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29662.moment H = canonicalOutput29662.moment H :=
  canonical_of_padded canonicalInput29662 canonicalOutput29662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29663 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -2, 0, 1], ![-2, 1, -1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput29663 : ExponentCode := normalNode2344

theorem canonicalSound29663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29663.moment H = canonicalOutput29663.moment H :=
  canonical_of_padded canonicalInput29663 canonicalOutput29663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29664 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput29664 : ExponentCode := normalNode4475

theorem canonicalSound29664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29664.moment H = canonicalOutput29664.moment H :=
  canonical_of_padded canonicalInput29664 canonicalOutput29664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29665 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 1, -1, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput29665 : ExponentCode := normalNode5215

theorem canonicalSound29665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29665.moment H = canonicalOutput29665.moment H :=
  canonical_of_padded canonicalInput29665 canonicalOutput29665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation276, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29666 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput29666 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3217⟩

theorem canonicalSound29666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29666.moment H = canonicalOutput29666.moment H :=
  canonical_of_padded canonicalInput29666 canonicalOutput29666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29667 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput29667 : ExponentCode := normalNode4949

theorem canonicalSound29667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29667.moment H = canonicalOutput29667.moment H :=
  canonical_of_padded canonicalInput29667 canonicalOutput29667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29668 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29668 : ExponentCode := normalNode2693

theorem canonicalSound29668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29668.moment H = canonicalOutput29668.moment H :=
  canonical_of_padded canonicalInput29668 canonicalOutput29668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29669 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput29669 : ExponentCode := normalNode5662

theorem canonicalSound29669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29669.moment H = canonicalOutput29669.moment H :=
  canonical_of_padded canonicalInput29669 canonicalOutput29669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29670 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29670 : ExponentCode := normalNode2685

theorem canonicalSound29670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29670.moment H = canonicalOutput29670.moment H :=
  canonical_of_padded canonicalInput29670 canonicalOutput29670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation346, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29671 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29671 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3082⟩

theorem canonicalSound29671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29671.moment H = canonicalOutput29671.moment H :=
  canonical_of_padded canonicalInput29671 canonicalOutput29671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput29672 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, -1, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput29672 : ExponentCode := normalNode1348

theorem canonicalSound29672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29672.moment H = canonicalOutput29672.moment H :=
  canonical_of_padded canonicalInput29672 canonicalOutput29672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29673 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput29673 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3077⟩

theorem canonicalSound29673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29673.moment H = canonicalOutput29673.moment H :=
  canonical_of_padded canonicalInput29673 canonicalOutput29673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29674 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput29674 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3251⟩

theorem canonicalSound29674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29674.moment H = canonicalOutput29674.moment H :=
  canonical_of_padded canonicalInput29674 canonicalOutput29674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation299, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29675 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 2, 1, -2]]⟩

def canonicalOutput29675 : ExponentCode := normalNode10476

theorem canonicalSound29675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29675.moment H = canonicalOutput29675.moment H :=
  canonical_of_padded canonicalInput29675 canonicalOutput29675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29676 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, 0, -1]]⟩

def canonicalOutput29676 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3077⟩

theorem canonicalSound29676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29676.moment H = canonicalOutput29676.moment H :=
  canonical_of_padded canonicalInput29676 canonicalOutput29676 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput29677 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput29677 : ExponentCode := normalNode4193

theorem canonicalSound29677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29677.moment H = canonicalOutput29677.moment H :=
  canonical_of_padded canonicalInput29677 canonicalOutput29677 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29678 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![0, 1, 1, -2], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29678 : ExponentCode := normalNode2691

theorem canonicalSound29678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29678.moment H = canonicalOutput29678.moment H :=
  canonical_of_padded canonicalInput29678 canonicalOutput29678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29679 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29679 : ExponentCode := normalNode862

theorem canonicalSound29679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29679.moment H = canonicalOutput29679.moment H :=
  canonical_of_padded canonicalInput29679 canonicalOutput29679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation318, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29680 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput29680 : ExponentCode := normalNode2228

theorem canonicalSound29680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29680.moment H = canonicalOutput29680.moment H :=
  canonical_of_padded canonicalInput29680 canonicalOutput29680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29681 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput29681 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3151⟩

theorem canonicalSound29681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29681.moment H = canonicalOutput29681.moment H :=
  canonical_of_padded canonicalInput29681 canonicalOutput29681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29682 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput29682 : ExponentCode := normalNode4142

theorem canonicalSound29682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29682.moment H = canonicalOutput29682.moment H :=
  canonical_of_padded canonicalInput29682 canonicalOutput29682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29683 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput29683 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3151⟩

theorem canonicalSound29683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29683.moment H = canonicalOutput29683.moment H :=
  canonical_of_padded canonicalInput29683 canonicalOutput29683 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29684 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput29684 : ExponentCode := normalNode4197

theorem canonicalSound29684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29684.moment H = canonicalOutput29684.moment H :=
  canonical_of_padded canonicalInput29684 canonicalOutput29684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29685 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput29685 : ExponentCode := normalNode5495

theorem canonicalSound29685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29685.moment H = canonicalOutput29685.moment H :=
  canonical_of_padded canonicalInput29685 canonicalOutput29685 (by decide) (by decide)
    ⟨false, false, canonicalPermutation198, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29686 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput29686 : ExponentCode := normalNode5445

theorem canonicalSound29686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29686.moment H = canonicalOutput29686.moment H :=
  canonical_of_padded canonicalInput29686 canonicalOutput29686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29687 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -2, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29687 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3190⟩

theorem canonicalSound29687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29687.moment H = canonicalOutput29687.moment H :=
  canonical_of_padded canonicalInput29687 canonicalOutput29687 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29688 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![1, -2, 0, 1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29688 : ExponentCode := normalNode7657

theorem canonicalSound29688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29688.moment H = canonicalOutput29688.moment H :=
  canonical_of_padded canonicalInput29688 canonicalOutput29688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29689 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 0, 3], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput29689 : ExponentCode := normalNode4667

theorem canonicalSound29689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29689.moment H = canonicalOutput29689.moment H :=
  canonical_of_padded canonicalInput29689 canonicalOutput29689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29690 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 0, 3], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput29690 : ExponentCode := normalNode5650

theorem canonicalSound29690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29690.moment H = canonicalOutput29690.moment H :=
  canonical_of_padded canonicalInput29690 canonicalOutput29690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29691 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, -1, 3, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput29691 : ExponentCode := normalNode1637

theorem canonicalSound29691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29691.moment H = canonicalOutput29691.moment H :=
  canonical_of_padded canonicalInput29691 canonicalOutput29691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29692 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput29692 : ExponentCode := normalNode3793

theorem canonicalSound29692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29692.moment H = canonicalOutput29692.moment H :=
  canonical_of_padded canonicalInput29692 canonicalOutput29692 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29693 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29693 : ExponentCode := normalNode3352

theorem canonicalSound29693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29693.moment H = canonicalOutput29693.moment H :=
  canonical_of_padded canonicalInput29693 canonicalOutput29693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29694 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29694 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3190⟩

theorem canonicalSound29694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29694.moment H = canonicalOutput29694.moment H :=
  canonical_of_padded canonicalInput29694 canonicalOutput29694 (by decide) (by decide)
    ⟨false, false, canonicalPermutation303, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29695 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, -2, 1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput29695 : ExponentCode := normalNode6986

theorem canonicalSound29695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29695.moment H = canonicalOutput29695.moment H :=
  canonical_of_padded canonicalInput29695 canonicalOutput29695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

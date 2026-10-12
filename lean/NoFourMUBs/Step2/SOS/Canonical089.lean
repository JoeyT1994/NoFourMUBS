import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5696 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5696 : ExponentCode := normalNode5881

theorem canonicalSound5696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5696.moment H = canonicalOutput5696.moment H :=
  canonical_of_padded canonicalInput5696 canonicalOutput5696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5697 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput5697 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound5697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5697.moment H = canonicalOutput5697.moment H :=
  canonical_of_padded canonicalInput5697 canonicalOutput5697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5698 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput5698 : ExponentCode := normalNode9472

theorem canonicalSound5698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5698.moment H = canonicalOutput5698.moment H :=
  canonical_of_padded canonicalInput5698 canonicalOutput5698 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5699 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput5699 : ExponentCode := normalNode11044

theorem canonicalSound5699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5699.moment H = canonicalOutput5699.moment H :=
  canonical_of_padded canonicalInput5699 canonicalOutput5699 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5700 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput5700 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound5700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5700.moment H = canonicalOutput5700.moment H :=
  canonical_of_padded canonicalInput5700 canonicalOutput5700 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5701 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput5701 : ExponentCode := normalNode2803

theorem canonicalSound5701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5701.moment H = canonicalOutput5701.moment H :=
  canonical_of_padded canonicalInput5701 canonicalOutput5701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5702 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5702 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound5702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5702.moment H = canonicalOutput5702.moment H :=
  canonical_of_padded canonicalInput5702 canonicalOutput5702 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5703 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput5703 : ExponentCode := normalNode5083

theorem canonicalSound5703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5703.moment H = canonicalOutput5703.moment H :=
  canonical_of_padded canonicalInput5703 canonicalOutput5703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5704 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 2, 0, -3]]⟩

def canonicalOutput5704 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node725⟩

theorem canonicalSound5704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5704.moment H = canonicalOutput5704.moment H :=
  canonical_of_padded canonicalInput5704 canonicalOutput5704 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5705 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput5705 : ExponentCode := normalNode6125

theorem canonicalSound5705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5705.moment H = canonicalOutput5705.moment H :=
  canonical_of_padded canonicalInput5705 canonicalOutput5705 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5706 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput5706 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node849⟩

theorem canonicalSound5706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5706.moment H = canonicalOutput5706.moment H :=
  canonical_of_padded canonicalInput5706 canonicalOutput5706 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5707 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput5707 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node847⟩

theorem canonicalSound5707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5707.moment H = canonicalOutput5707.moment H :=
  canonical_of_padded canonicalInput5707 canonicalOutput5707 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5708 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput5708 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound5708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5708.moment H = canonicalOutput5708.moment H :=
  canonical_of_padded canonicalInput5708 canonicalOutput5708 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5709 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput5709 : ExponentCode := normalNode2981

theorem canonicalSound5709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5709.moment H = canonicalOutput5709.moment H :=
  canonical_of_padded canonicalInput5709 canonicalOutput5709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5710 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput5710 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound5710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5710.moment H = canonicalOutput5710.moment H :=
  canonical_of_padded canonicalInput5710 canonicalOutput5710 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5711 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput5711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code173

theorem canonicalSound5711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5711.moment H = canonicalOutput5711.moment H :=
  canonical_of_padded canonicalInput5711 canonicalOutput5711 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5712 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput5712 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound5712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5712.moment H = canonicalOutput5712.moment H :=
  canonical_of_padded canonicalInput5712 canonicalOutput5712 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5713 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput5713 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound5713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5713.moment H = canonicalOutput5713.moment H :=
  canonical_of_padded canonicalInput5713 canonicalOutput5713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5714 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput5714 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node512⟩

theorem canonicalSound5714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5714.moment H = canonicalOutput5714.moment H :=
  canonical_of_padded canonicalInput5714 canonicalOutput5714 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5715 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput5715 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node850⟩

theorem canonicalSound5715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5715.moment H = canonicalOutput5715.moment H :=
  canonical_of_padded canonicalInput5715 canonicalOutput5715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5716 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput5716 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1125⟩

theorem canonicalSound5716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5716.moment H = canonicalOutput5716.moment H :=
  canonical_of_padded canonicalInput5716 canonicalOutput5716 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5717 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -4, 2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5717 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩

theorem canonicalSound5717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5717.moment H = canonicalOutput5717.moment H :=
  canonical_of_padded canonicalInput5717 canonicalOutput5717 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5718 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -4, 2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput5718 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node821⟩

theorem canonicalSound5718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5718.moment H = canonicalOutput5718.moment H :=
  canonical_of_padded canonicalInput5718 canonicalOutput5718 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5719 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, 2, -4, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput5719 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound5719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5719.moment H = canonicalOutput5719.moment H :=
  canonical_of_padded canonicalInput5719 canonicalOutput5719 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5720 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -3, 1], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5720 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code640

theorem canonicalSound5720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5720.moment H = canonicalOutput5720.moment H :=
  canonical_of_padded canonicalInput5720 canonicalOutput5720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5721 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -2, 0], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput5721 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code561

theorem canonicalSound5721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5721.moment H = canonicalOutput5721.moment H :=
  canonical_of_padded canonicalInput5721 canonicalOutput5721 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5722 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -1, -1], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput5722 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code562

theorem canonicalSound5722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5722.moment H = canonicalOutput5722.moment H :=
  canonical_of_padded canonicalInput5722 canonicalOutput5722 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5723 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -1, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput5723 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound5723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5723.moment H = canonicalOutput5723.moment H :=
  canonical_of_padded canonicalInput5723 canonicalOutput5723 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5724 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput5724 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound5724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5724.moment H = canonicalOutput5724.moment H :=
  canonical_of_padded canonicalInput5724 canonicalOutput5724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5725 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 0, -2], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput5725 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node407⟩

theorem canonicalSound5725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5725.moment H = canonicalOutput5725.moment H :=
  canonical_of_padded canonicalInput5725 canonicalOutput5725 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5726 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput5726 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5726.moment H = canonicalOutput5726.moment H :=
  canonical_of_padded canonicalInput5726 canonicalOutput5726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5727 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 0, -2], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput5727 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound5727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5727.moment H = canonicalOutput5727.moment H :=
  canonical_of_padded canonicalInput5727 canonicalOutput5727 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5728 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput5728 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound5728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5728.moment H = canonicalOutput5728.moment H :=
  canonical_of_padded canonicalInput5728 canonicalOutput5728 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5729 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5729 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound5729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5729.moment H = canonicalOutput5729.moment H :=
  canonical_of_padded canonicalInput5729 canonicalOutput5729 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5730 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput5730 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code630

theorem canonicalSound5730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5730.moment H = canonicalOutput5730.moment H :=
  canonical_of_padded canonicalInput5730 canonicalOutput5730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5731 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 2, 1, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput5731 : ExponentCode := normalNode6133

theorem canonicalSound5731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5731.moment H = canonicalOutput5731.moment H :=
  canonical_of_padded canonicalInput5731 canonicalOutput5731 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5732 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, 2, 2, -4], ![2, -1, -4, 3]]⟩

def canonicalOutput5732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound5732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5732.moment H = canonicalOutput5732.moment H :=
  canonical_of_padded canonicalInput5732 canonicalOutput5732 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5733 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, 3, -3, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput5733 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound5733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5733.moment H = canonicalOutput5733.moment H :=
  canonical_of_padded canonicalInput5733 canonicalOutput5733 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5734 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, -2, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput5734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound5734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5734.moment H = canonicalOutput5734.moment H :=
  canonical_of_padded canonicalInput5734 canonicalOutput5734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5735 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, 3, -2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput5735 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound5735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5735.moment H = canonicalOutput5735.moment H :=
  canonical_of_padded canonicalInput5735 canonicalOutput5735 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5736 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, -1, -2], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput5736 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound5736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5736.moment H = canonicalOutput5736.moment H :=
  canonical_of_padded canonicalInput5736 canonicalOutput5736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5737 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 0, -3], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput5737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node989⟩

theorem canonicalSound5737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5737.moment H = canonicalOutput5737.moment H :=
  canonical_of_padded canonicalInput5737 canonicalOutput5737 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5738 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 0, -3], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput5738 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound5738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5738.moment H = canonicalOutput5738.moment H :=
  canonical_of_padded canonicalInput5738 canonicalOutput5738 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5739 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 0, -3], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput5739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound5739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5739.moment H = canonicalOutput5739.moment H :=
  canonical_of_padded canonicalInput5739 canonicalOutput5739 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5740 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 0, -3], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput5740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound5740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5740.moment H = canonicalOutput5740.moment H :=
  canonical_of_padded canonicalInput5740 canonicalOutput5740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5741 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 1, -4], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput5741 : ExponentCode := normalNode11206

theorem canonicalSound5741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5741.moment H = canonicalOutput5741.moment H :=
  canonical_of_padded canonicalInput5741 canonicalOutput5741 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5742 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 1, -4], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput5742 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code658

theorem canonicalSound5742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5742.moment H = canonicalOutput5742.moment H :=
  canonical_of_padded canonicalInput5742 canonicalOutput5742 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5743 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 1, -4], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput5743 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code499

theorem canonicalSound5743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5743.moment H = canonicalOutput5743.moment H :=
  canonical_of_padded canonicalInput5743 canonicalOutput5743 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5744 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 1, -4], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput5744 : ExponentCode := normalNode7992

theorem canonicalSound5744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5744.moment H = canonicalOutput5744.moment H :=
  canonical_of_padded canonicalInput5744 canonicalOutput5744 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5745 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, -1, -2, 2]]⟩

def canonicalOutput5745 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code677

theorem canonicalSound5745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5745.moment H = canonicalOutput5745.moment H :=
  canonical_of_padded canonicalInput5745 canonicalOutput5745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5746 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![0, 4, 0, -4], ![2, -3, -2, 3]]⟩

def canonicalOutput5746 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1039

theorem canonicalSound5746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5746.moment H = canonicalOutput5746.moment H :=
  canonical_of_padded canonicalInput5746 canonicalOutput5746 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5747 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -3, -1, 3], ![1, 4, -1, -4]]⟩

def canonicalOutput5747 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound5747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5747.moment H = canonicalOutput5747.moment H :=
  canonical_of_padded canonicalInput5747 canonicalOutput5747 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5748 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -3, 0, 2], ![1, 4, -2, -3]]⟩

def canonicalOutput5748 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound5748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5748.moment H = canonicalOutput5748.moment H :=
  canonical_of_padded canonicalInput5748 canonicalOutput5748 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5749 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -2, -2, 3], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput5749 : ExponentCode := normalNode11206

theorem canonicalSound5749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5749.moment H = canonicalOutput5749.moment H :=
  canonical_of_padded canonicalInput5749 canonicalOutput5749 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5750 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -2, -2, 3], ![1, 3, 0, -4]]⟩

def canonicalOutput5750 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound5750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5750.moment H = canonicalOutput5750.moment H :=
  canonical_of_padded canonicalInput5750 canonicalOutput5750 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5751 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -2, -1, 2], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5751 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code675

theorem canonicalSound5751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5751.moment H = canonicalOutput5751.moment H :=
  canonical_of_padded canonicalInput5751 canonicalOutput5751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5752 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -2, -1, 2], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput5752 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code658

theorem canonicalSound5752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5752.moment H = canonicalOutput5752.moment H :=
  canonical_of_padded canonicalInput5752 canonicalOutput5752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5753 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -2, 0, 1], ![0, 0, -2, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput5753 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound5753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5753.moment H = canonicalOutput5753.moment H :=
  canonical_of_padded canonicalInput5753 canonicalOutput5753 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5754 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -2, 1, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput5754 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound5754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5754.moment H = canonicalOutput5754.moment H :=
  canonical_of_padded canonicalInput5754 canonicalOutput5754 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5755 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -2, 2, -1], ![1, 3, -4, 0]]⟩

def canonicalOutput5755 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound5755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5755.moment H = canonicalOutput5755.moment H :=
  canonical_of_padded canonicalInput5755 canonicalOutput5755 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5756 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -2, 3, -2], ![1, 3, -5, 1]]⟩

def canonicalOutput5756 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound5756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5756.moment H = canonicalOutput5756.moment H :=
  canonical_of_padded canonicalInput5756 canonicalOutput5756 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5757 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -1, -3, 3], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5757 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound5757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5757.moment H = canonicalOutput5757.moment H :=
  canonical_of_padded canonicalInput5757 canonicalOutput5757 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5758 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -1, -3, 3], ![0, 2, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5758 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound5758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5758.moment H = canonicalOutput5758.moment H :=
  canonical_of_padded canonicalInput5758 canonicalOutput5758 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5759 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -1, -3, 3], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5759 : ExponentCode := normalNode6133

theorem canonicalSound5759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5759.moment H = canonicalOutput5759.moment H :=
  canonical_of_padded canonicalInput5759 canonicalOutput5759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

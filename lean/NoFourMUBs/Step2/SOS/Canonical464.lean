import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29696 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 0, 0, 0], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2417⟩

theorem canonicalSound29696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29696.moment H = canonicalOutput29696.moment H :=
  canonical_of_padded canonicalInput29696 canonicalOutput29696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29697 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29697 : ExponentCode := normalNode2685

theorem canonicalSound29697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29697.moment H = canonicalOutput29697.moment H :=
  canonical_of_padded canonicalInput29697 canonicalOutput29697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29698 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29698 : ExponentCode := normalNode878

theorem canonicalSound29698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29698.moment H = canonicalOutput29698.moment H :=
  canonical_of_padded canonicalInput29698 canonicalOutput29698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29699 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -1, 0, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput29699 : ExponentCode := normalNode1976

theorem canonicalSound29699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29699.moment H = canonicalOutput29699.moment H :=
  canonical_of_padded canonicalInput29699 canonicalOutput29699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29700 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -1, 1, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput29700 : ExponentCode := normalNode2690

theorem canonicalSound29700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29700.moment H = canonicalOutput29700.moment H :=
  canonical_of_padded canonicalInput29700 canonicalOutput29700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29701 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29701 : ExponentCode := normalNode878

theorem canonicalSound29701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29701.moment H = canonicalOutput29701.moment H :=
  canonical_of_padded canonicalInput29701 canonicalOutput29701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation318, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29702 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput29702 : ExponentCode := normalNode620

theorem canonicalSound29702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29702.moment H = canonicalOutput29702.moment H :=
  canonical_of_padded canonicalInput29702 canonicalOutput29702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29703 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29703 : ExponentCode := normalNode883

theorem canonicalSound29703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29703.moment H = canonicalOutput29703.moment H :=
  canonical_of_padded canonicalInput29703 canonicalOutput29703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29704 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -3, 2, 3]]⟩

def canonicalOutput29704 : ExponentCode := normalNode268

theorem canonicalSound29704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29704.moment H = canonicalOutput29704.moment H :=
  canonical_of_padded canonicalInput29704 canonicalOutput29704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29705 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -2, 1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput29705 : ExponentCode := normalNode6177

theorem canonicalSound29705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29705.moment H = canonicalOutput29705.moment H :=
  canonical_of_padded canonicalInput29705 canonicalOutput29705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29706 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29706 : ExponentCode := normalNode614

theorem canonicalSound29706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29706.moment H = canonicalOutput29706.moment H :=
  canonical_of_padded canonicalInput29706 canonicalOutput29706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29707 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput29707 : ExponentCode := normalNode2974

theorem canonicalSound29707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29707.moment H = canonicalOutput29707.moment H :=
  canonical_of_padded canonicalInput29707 canonicalOutput29707 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29708 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29708 : ExponentCode := normalNode908

theorem canonicalSound29708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29708.moment H = canonicalOutput29708.moment H :=
  canonical_of_padded canonicalInput29708 canonicalOutput29708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29709 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -2, 0, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput29709 : ExponentCode := normalNode417

theorem canonicalSound29709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29709.moment H = canonicalOutput29709.moment H :=
  canonical_of_padded canonicalInput29709 canonicalOutput29709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29710 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29710 : ExponentCode := normalNode3289

theorem canonicalSound29710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29710.moment H = canonicalOutput29710.moment H :=
  canonical_of_padded canonicalInput29710 canonicalOutput29710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29711 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29711 : ExponentCode := normalNode2693

theorem canonicalSound29711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29711.moment H = canonicalOutput29711.moment H :=
  canonical_of_padded canonicalInput29711 canonicalOutput29711 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29712 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -3, 1, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput29712 : ExponentCode := normalNode6087

theorem canonicalSound29712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29712.moment H = canonicalOutput29712.moment H :=
  canonical_of_padded canonicalInput29712 canonicalOutput29712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29713 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29713 : ExponentCode := normalNode1973

theorem canonicalSound29713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29713.moment H = canonicalOutput29713.moment H :=
  canonical_of_padded canonicalInput29713 canonicalOutput29713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29714 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput29714 : ExponentCode := normalNode2685

theorem canonicalSound29714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29714.moment H = canonicalOutput29714.moment H :=
  canonical_of_padded canonicalInput29714 canonicalOutput29714 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29715 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29715 : ExponentCode := normalNode617

theorem canonicalSound29715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29715.moment H = canonicalOutput29715.moment H :=
  canonical_of_padded canonicalInput29715 canonicalOutput29715 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29716 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29716 : ExponentCode := normalNode3980

theorem canonicalSound29716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29716.moment H = canonicalOutput29716.moment H :=
  canonical_of_padded canonicalInput29716 canonicalOutput29716 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29717 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput29717 : ExponentCode := normalNode5212

theorem canonicalSound29717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29717.moment H = canonicalOutput29717.moment H :=
  canonical_of_padded canonicalInput29717 canonicalOutput29717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29718 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29718 : ExponentCode := normalNode4475

theorem canonicalSound29718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29718.moment H = canonicalOutput29718.moment H :=
  canonical_of_padded canonicalInput29718 canonicalOutput29718 (by decide) (by decide)
    ⟨false, false, canonicalPermutation205, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29719 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![1, 1, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput29719 : ExponentCode := normalNode3351

theorem canonicalSound29719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29719.moment H = canonicalOutput29719.moment H :=
  canonical_of_padded canonicalInput29719 canonicalOutput29719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29720 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput29720 : ExponentCode := normalNode2532

theorem canonicalSound29720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29720.moment H = canonicalOutput29720.moment H :=
  canonical_of_padded canonicalInput29720 canonicalOutput29720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29721 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput29721 : ExponentCode := normalNode1823

theorem canonicalSound29721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29721.moment H = canonicalOutput29721.moment H :=
  canonical_of_padded canonicalInput29721 canonicalOutput29721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29722 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![0, 0, 0, 0], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29722 : ExponentCode := normalNode10846

theorem canonicalSound29722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29722.moment H = canonicalOutput29722.moment H :=
  canonical_of_padded canonicalInput29722 canonicalOutput29722 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29723 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![0, 0, 0, 0], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29723 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2770⟩

theorem canonicalSound29723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29723.moment H = canonicalOutput29723.moment H :=
  canonical_of_padded canonicalInput29723 canonicalOutput29723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29724 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput29724 : ExponentCode := normalNode5130

theorem canonicalSound29724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29724.moment H = canonicalOutput29724.moment H :=
  canonical_of_padded canonicalInput29724 canonicalOutput29724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29725 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29725 : ExponentCode := normalNode2693

theorem canonicalSound29725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29725.moment H = canonicalOutput29725.moment H :=
  canonical_of_padded canonicalInput29725 canonicalOutput29725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29726 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, -2, 4, -2]]⟩

def canonicalOutput29726 : ExponentCode := normalNode3285

theorem canonicalSound29726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29726.moment H = canonicalOutput29726.moment H :=
  canonical_of_padded canonicalInput29726 canonicalOutput29726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29727 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -3, 2, 1]]⟩

def canonicalOutput29727 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3017⟩

theorem canonicalSound29727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29727.moment H = canonicalOutput29727.moment H :=
  canonical_of_padded canonicalInput29727 canonicalOutput29727 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput29728 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput29728 : ExponentCode := normalNode5042

theorem canonicalSound29728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29728.moment H = canonicalOutput29728.moment H :=
  canonical_of_padded canonicalInput29728 canonicalOutput29728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29729 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -2, -1, 4], ![-1, 1, 3, -3]]⟩

def canonicalOutput29729 : ExponentCode := normalNode1352

theorem canonicalSound29729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29729.moment H = canonicalOutput29729.moment H :=
  canonical_of_padded canonicalInput29729 canonicalOutput29729 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29730 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput29730 : ExponentCode := normalNode1378

theorem canonicalSound29730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29730.moment H = canonicalOutput29730.moment H :=
  canonical_of_padded canonicalInput29730 canonicalOutput29730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29731 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput29731 : ExponentCode := normalNode3584

theorem canonicalSound29731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29731.moment H = canonicalOutput29731.moment H :=
  canonical_of_padded canonicalInput29731 canonicalOutput29731 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29732 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29732 : ExponentCode := normalNode9811

theorem canonicalSound29732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29732.moment H = canonicalOutput29732.moment H :=
  canonical_of_padded canonicalInput29732 canonicalOutput29732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29733 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput29733 : ExponentCode := normalNode7355

theorem canonicalSound29733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29733.moment H = canonicalOutput29733.moment H :=
  canonical_of_padded canonicalInput29733 canonicalOutput29733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29734 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29734 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3367⟩

theorem canonicalSound29734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29734.moment H = canonicalOutput29734.moment H :=
  canonical_of_padded canonicalInput29734 canonicalOutput29734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29735 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, -1, -2, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput29735 : ExponentCode := normalNode7356

theorem canonicalSound29735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29735.moment H = canonicalOutput29735.moment H :=
  canonical_of_padded canonicalInput29735 canonicalOutput29735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29736 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29736 : ExponentCode := normalNode4911

theorem canonicalSound29736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29736.moment H = canonicalOutput29736.moment H :=
  canonical_of_padded canonicalInput29736 canonicalOutput29736 (by decide) (by decide)
    ⟨false, false, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29737 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput29737 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2937⟩

theorem canonicalSound29737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29737.moment H = canonicalOutput29737.moment H :=
  canonical_of_padded canonicalInput29737 canonicalOutput29737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29738 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![2, 0, -1, -1], ![-1, 0, 3, -2], ![0, -2, -1, 3]]⟩

def canonicalOutput29738 : ExponentCode := normalNode3528

theorem canonicalSound29738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29738.moment H = canonicalOutput29738.moment H :=
  canonical_of_padded canonicalInput29738 canonicalOutput29738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29739 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput29739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound29739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29739.moment H = canonicalOutput29739.moment H :=
  canonical_of_padded canonicalInput29739 canonicalOutput29739 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29740 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29740 : ExponentCode := normalNode9887

theorem canonicalSound29740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29740.moment H = canonicalOutput29740.moment H :=
  canonical_of_padded canonicalInput29740 canonicalOutput29740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29741 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29741 : ExponentCode := normalNode7859

theorem canonicalSound29741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29741.moment H = canonicalOutput29741.moment H :=
  canonical_of_padded canonicalInput29741 canonicalOutput29741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29742 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29742 : ExponentCode := normalNode10603

theorem canonicalSound29742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29742.moment H = canonicalOutput29742.moment H :=
  canonical_of_padded canonicalInput29742 canonicalOutput29742 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29743 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput29743 : ExponentCode := normalNode7395

theorem canonicalSound29743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29743.moment H = canonicalOutput29743.moment H :=
  canonical_of_padded canonicalInput29743 canonicalOutput29743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29744 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29744 : ExponentCode := normalNode6739

theorem canonicalSound29744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29744.moment H = canonicalOutput29744.moment H :=
  canonical_of_padded canonicalInput29744 canonicalOutput29744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29745 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29745 : ExponentCode := normalNode10599

theorem canonicalSound29745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29745.moment H = canonicalOutput29745.moment H :=
  canonical_of_padded canonicalInput29745 canonicalOutput29745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29746 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29746 : ExponentCode := normalNode10600

theorem canonicalSound29746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29746.moment H = canonicalOutput29746.moment H :=
  canonical_of_padded canonicalInput29746 canonicalOutput29746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29747 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-2, 0, 0, 2], ![2, 0, -2, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput29747 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2697⟩

theorem canonicalSound29747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29747.moment H = canonicalOutput29747.moment H :=
  canonical_of_padded canonicalInput29747 canonicalOutput29747 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29748 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, -1, 0, 2], ![2, 0, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29748 : ExponentCode := normalNode9020

theorem canonicalSound29748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29748.moment H = canonicalOutput29748.moment H :=
  canonical_of_padded canonicalInput29748 canonicalOutput29748 (by decide) (by decide)
    ⟨false, false, canonicalPermutation340, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29749 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, 0, -1, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29749 : ExponentCode := normalNode10722

theorem canonicalSound29749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29749.moment H = canonicalOutput29749.moment H :=
  canonical_of_padded canonicalInput29749 canonicalOutput29749 (by decide) (by decide)
    ⟨false, true, canonicalPermutation370, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29750 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, 0, -1, 2], ![2, 0, -1, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29750 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2539⟩

theorem canonicalSound29750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29750.moment H = canonicalOutput29750.moment H :=
  canonical_of_padded canonicalInput29750 canonicalOutput29750 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29751 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput29751 : ExponentCode := normalNode6497

theorem canonicalSound29751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29751.moment H = canonicalOutput29751.moment H :=
  canonical_of_padded canonicalInput29751 canonicalOutput29751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29752 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 1, -1, -1], ![-1, -1, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput29752 : ExponentCode := normalNode7909

theorem canonicalSound29752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29752.moment H = canonicalOutput29752.moment H :=
  canonical_of_padded canonicalInput29752 canonicalOutput29752 (by decide) (by decide)
    ⟨false, false, canonicalPermutation180, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29753 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput29753 : ExponentCode := normalNode3853

theorem canonicalSound29753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29753.moment H = canonicalOutput29753.moment H :=
  canonical_of_padded canonicalInput29753 canonicalOutput29753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29754 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![2, -1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput29754 : ExponentCode := normalNode4000

theorem canonicalSound29754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29754.moment H = canonicalOutput29754.moment H :=
  canonical_of_padded canonicalInput29754 canonicalOutput29754 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29755 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29755 : ExponentCode := normalNode3752

theorem canonicalSound29755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29755.moment H = canonicalOutput29755.moment H :=
  canonical_of_padded canonicalInput29755 canonicalOutput29755 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29756 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput29756 : ExponentCode := normalNode3747

theorem canonicalSound29756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29756.moment H = canonicalOutput29756.moment H :=
  canonical_of_padded canonicalInput29756 canonicalOutput29756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29757 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput29757 : ExponentCode := normalNode3978

theorem canonicalSound29757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29757.moment H = canonicalOutput29757.moment H :=
  canonical_of_padded canonicalInput29757 canonicalOutput29757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29758 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29758 : ExponentCode := normalNode5311

theorem canonicalSound29758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29758.moment H = canonicalOutput29758.moment H :=
  canonical_of_padded canonicalInput29758 canonicalOutput29758 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29759 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29759 : ExponentCode := normalNode4333

theorem canonicalSound29759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29759.moment H = canonicalOutput29759.moment H :=
  canonical_of_padded canonicalInput29759 canonicalOutput29759 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

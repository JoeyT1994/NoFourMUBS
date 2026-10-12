import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical112
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8704 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput8704 : ExponentCode := normalNode3529

theorem canonicalSound8704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8704.moment H = canonicalOutput8704.moment H :=
  canonical_of_padded canonicalInput8704 canonicalOutput8704 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8705 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![1, -3, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput8705 : ExponentCode := normalNode9441

theorem canonicalSound8705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8705.moment H = canonicalOutput8705.moment H :=
  canonical_of_padded canonicalInput8705 canonicalOutput8705 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8706 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![1, -3, 0, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput8706 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound8706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8706.moment H = canonicalOutput8706.moment H :=
  canonical_of_padded canonicalInput8706 canonicalOutput8706 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8707 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![1, -3, 1, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput8707 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound8707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8707.moment H = canonicalOutput8707.moment H :=
  canonical_of_padded canonicalInput8707 canonicalOutput8707 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8708 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![1, -2, -2, 3], ![1, 2, 0, -3]]⟩

def canonicalOutput8708 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound8708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8708.moment H = canonicalOutput8708.moment H :=
  canonical_of_padded canonicalInput8708 canonicalOutput8708 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8709 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8709 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound8709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8709.moment H = canonicalOutput8709.moment H :=
  canonical_of_padded canonicalInput8709 canonicalOutput8709 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8710 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput8710 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound8710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8710.moment H = canonicalOutput8710.moment H :=
  canonical_of_padded canonicalInput8710 canonicalOutput8710 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8711 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput8711 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound8711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8711.moment H = canonicalOutput8711.moment H :=
  canonical_of_padded canonicalInput8711 canonicalOutput8711 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8712 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8712 : ExponentCode := normalNode10636

theorem canonicalSound8712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8712.moment H = canonicalOutput8712.moment H :=
  canonical_of_padded canonicalInput8712 canonicalOutput8712 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8713 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8713 : ExponentCode := normalNode10592

theorem canonicalSound8713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8713.moment H = canonicalOutput8713.moment H :=
  canonical_of_padded canonicalInput8713 canonicalOutput8713 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8714 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput8714 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node832⟩

theorem canonicalSound8714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8714.moment H = canonicalOutput8714.moment H :=
  canonical_of_padded canonicalInput8714 canonicalOutput8714 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8715 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput8715 : ExponentCode := normalNode3968

theorem canonicalSound8715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8715.moment H = canonicalOutput8715.moment H :=
  canonical_of_padded canonicalInput8715 canonicalOutput8715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput8716 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 2, -2, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput8716 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound8716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8716.moment H = canonicalOutput8716.moment H :=
  canonical_of_padded canonicalInput8716 canonicalOutput8716 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8717 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput8717 : ExponentCode := normalNode4439

theorem canonicalSound8717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8717.moment H = canonicalOutput8717.moment H :=
  canonical_of_padded canonicalInput8717 canonicalOutput8717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8718 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -3, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput8718 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code592

theorem canonicalSound8718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8718.moment H = canonicalOutput8718.moment H :=
  canonical_of_padded canonicalInput8718 canonicalOutput8718 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8719 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput8719 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code577

theorem canonicalSound8719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8719.moment H = canonicalOutput8719.moment H :=
  canonical_of_padded canonicalInput8719 canonicalOutput8719 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8720 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 2, -2, -1]]⟩

def canonicalOutput8720 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound8720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8720.moment H = canonicalOutput8720.moment H :=
  canonical_of_padded canonicalInput8720 canonicalOutput8720 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8721 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput8721 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound8721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8721.moment H = canonicalOutput8721.moment H :=
  canonical_of_padded canonicalInput8721 canonicalOutput8721 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8722 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput8722 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩

theorem canonicalSound8722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8722.moment H = canonicalOutput8722.moment H :=
  canonical_of_padded canonicalInput8722 canonicalOutput8722 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8723 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 3, -3], ![0, 1, -4, 3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8723 : ExponentCode := normalNode9697

theorem canonicalSound8723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8723.moment H = canonicalOutput8723.moment H :=
  canonical_of_padded canonicalInput8723 canonicalOutput8723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8724 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput8724 : ExponentCode := normalNode4420

theorem canonicalSound8724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8724.moment H = canonicalOutput8724.moment H :=
  canonical_of_padded canonicalInput8724 canonicalOutput8724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8725 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput8725 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound8725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8725.moment H = canonicalOutput8725.moment H :=
  canonical_of_padded canonicalInput8725 canonicalOutput8725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8726 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput8726 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node920⟩

theorem canonicalSound8726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8726.moment H = canonicalOutput8726.moment H :=
  canonical_of_padded canonicalInput8726 canonicalOutput8726 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8727 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput8727 : ExponentCode := normalNode4419

theorem canonicalSound8727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8727.moment H = canonicalOutput8727.moment H :=
  canonical_of_padded canonicalInput8727 canonicalOutput8727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8728 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![0, 1, 1, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput8728 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code920

theorem canonicalSound8728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8728.moment H = canonicalOutput8728.moment H :=
  canonical_of_padded canonicalInput8728 canonicalOutput8728 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8729 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput8729 : ExponentCode := normalNode9722

theorem canonicalSound8729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8729.moment H = canonicalOutput8729.moment H :=
  canonical_of_padded canonicalInput8729 canonicalOutput8729 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8730 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8730 : ExponentCode := normalNode9706

theorem canonicalSound8730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8730.moment H = canonicalOutput8730.moment H :=
  canonical_of_padded canonicalInput8730 canonicalOutput8730 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8731 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![1, 0, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput8731 : ExponentCode := normalNode9722

theorem canonicalSound8731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8731.moment H = canonicalOutput8731.moment H :=
  canonical_of_padded canonicalInput8731 canonicalOutput8731 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8732 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![1, 0, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput8732 : ExponentCode := normalNode9729

theorem canonicalSound8732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8732.moment H = canonicalOutput8732.moment H :=
  canonical_of_padded canonicalInput8732 canonicalOutput8732 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8733 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -4, 3], ![1, 1, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput8733 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code995

theorem canonicalSound8733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8733.moment H = canonicalOutput8733.moment H :=
  canonical_of_padded canonicalInput8733 canonicalOutput8733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8734 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 0, 1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput8734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node971⟩

theorem canonicalSound8734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8734.moment H = canonicalOutput8734.moment H :=
  canonical_of_padded canonicalInput8734 canonicalOutput8734 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8735 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput8735 : ExponentCode := normalNode4567

theorem canonicalSound8735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8735.moment H = canonicalOutput8735.moment H :=
  canonical_of_padded canonicalInput8735 canonicalOutput8735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8736 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput8736 : ExponentCode := normalNode10245

theorem canonicalSound8736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8736.moment H = canonicalOutput8736.moment H :=
  canonical_of_padded canonicalInput8736 canonicalOutput8736 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8737 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 2, 0, -2], ![2, -3, 2, -1]]⟩

def canonicalOutput8737 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code783

theorem canonicalSound8737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8737.moment H = canonicalOutput8737.moment H :=
  canonical_of_padded canonicalInput8737 canonicalOutput8737 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8738 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 2, 1, -3], ![2, -3, 1, 0]]⟩

def canonicalOutput8738 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound8738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8738.moment H = canonicalOutput8738.moment H :=
  canonical_of_padded canonicalInput8738 canonicalOutput8738 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput8739 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, -2, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput8739 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound8739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8739.moment H = canonicalOutput8739.moment H :=
  canonical_of_padded canonicalInput8739 canonicalOutput8739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8740 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput8740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound8740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8740.moment H = canonicalOutput8740.moment H :=
  canonical_of_padded canonicalInput8740 canonicalOutput8740 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8741 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput8741 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1204⟩

theorem canonicalSound8741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8741.moment H = canonicalOutput8741.moment H :=
  canonical_of_padded canonicalInput8741 canonicalOutput8741 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8742 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput8742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound8742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8742.moment H = canonicalOutput8742.moment H :=
  canonical_of_padded canonicalInput8742 canonicalOutput8742 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8743 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 0, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput8743 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound8743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8743.moment H = canonicalOutput8743.moment H :=
  canonical_of_padded canonicalInput8743 canonicalOutput8743 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8744 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 1, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput8744 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound8744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8744.moment H = canonicalOutput8744.moment H :=
  canonical_of_padded canonicalInput8744 canonicalOutput8744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8745 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 1, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput8745 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound8745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8745.moment H = canonicalOutput8745.moment H :=
  canonical_of_padded canonicalInput8745 canonicalOutput8745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8746 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 2, 0, -3], ![1, -3, 2, 0]]⟩

def canonicalOutput8746 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1002

theorem canonicalSound8746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8746.moment H = canonicalOutput8746.moment H :=
  canonical_of_padded canonicalInput8746 canonicalOutput8746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8747 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput8747 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩

theorem canonicalSound8747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8747.moment H = canonicalOutput8747.moment H :=
  canonical_of_padded canonicalInput8747 canonicalOutput8747 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8748 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound8748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8748.moment H = canonicalOutput8748.moment H :=
  canonical_of_padded canonicalInput8748 canonicalOutput8748 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8749 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound8749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8749.moment H = canonicalOutput8749.moment H :=
  canonical_of_padded canonicalInput8749 canonicalOutput8749 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8750 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound8750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8750.moment H = canonicalOutput8750.moment H :=
  canonical_of_padded canonicalInput8750 canonicalOutput8750 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8751 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput8751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound8751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8751.moment H = canonicalOutput8751.moment H :=
  canonical_of_padded canonicalInput8751 canonicalOutput8751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8752 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8752 : ExponentCode := normalNode10297

theorem canonicalSound8752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8752.moment H = canonicalOutput8752.moment H :=
  canonical_of_padded canonicalInput8752 canonicalOutput8752 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8753 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound8753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8753.moment H = canonicalOutput8753.moment H :=
  canonical_of_padded canonicalInput8753 canonicalOutput8753 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8754 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput8754 : ExponentCode := normalNode10255

theorem canonicalSound8754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8754.moment H = canonicalOutput8754.moment H :=
  canonical_of_padded canonicalInput8754 canonicalOutput8754 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8755 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8755 : ExponentCode := normalNode8992

theorem canonicalSound8755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8755.moment H = canonicalOutput8755.moment H :=
  canonical_of_padded canonicalInput8755 canonicalOutput8755 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3591step0⟩

def canonicalOutput8756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound8756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8756.moment H = canonicalOutput8756.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3591step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3591step0 = OAI.MUB6.Certificate.PairSemantics.raw3591.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3591).trans (OAI.MUB6.Certificate.PairSemantics.canonical3591 hH)

def canonicalInput8757 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8757 : ExponentCode := normalNode2507

theorem canonicalSound8757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8757.moment H = canonicalOutput8757.moment H :=
  canonical_of_padded canonicalInput8757 canonicalOutput8757 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput8758 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -3, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8758 : ExponentCode := normalNode4495

theorem canonicalSound8758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8758.moment H = canonicalOutput8758.moment H :=
  canonical_of_padded canonicalInput8758 canonicalOutput8758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8759 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -3, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8759 : ExponentCode := normalNode4466

theorem canonicalSound8759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8759.moment H = canonicalOutput8759.moment H :=
  canonical_of_padded canonicalInput8759 canonicalOutput8759 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8760 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -3, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8760 : ExponentCode := normalNode5409

theorem canonicalSound8760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8760.moment H = canonicalOutput8760.moment H :=
  canonical_of_padded canonicalInput8760 canonicalOutput8760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8761 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8761 : ExponentCode := normalNode4498

theorem canonicalSound8761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8761.moment H = canonicalOutput8761.moment H :=
  canonical_of_padded canonicalInput8761 canonicalOutput8761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8762 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8762 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound8762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8762.moment H = canonicalOutput8762.moment H :=
  canonical_of_padded canonicalInput8762 canonicalOutput8762 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8763 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput8763 : ExponentCode := normalNode4536

theorem canonicalSound8763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8763.moment H = canonicalOutput8763.moment H :=
  canonical_of_padded canonicalInput8763 canonicalOutput8763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8764 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput8764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound8764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8764.moment H = canonicalOutput8764.moment H :=
  canonical_of_padded canonicalInput8764 canonicalOutput8764 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8765 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8765 : ExponentCode := normalNode4498

theorem canonicalSound8765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8765.moment H = canonicalOutput8765.moment H :=
  canonical_of_padded canonicalInput8765 canonicalOutput8765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8766 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8766 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound8766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8766.moment H = canonicalOutput8766.moment H :=
  canonical_of_padded canonicalInput8766 canonicalOutput8766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8767 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput8767 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1008

theorem canonicalSound8767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8767.moment H = canonicalOutput8767.moment H :=
  canonical_of_padded canonicalInput8767 canonicalOutput8767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31616 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput31616 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3152⟩

theorem canonicalSound31616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31616.moment H = canonicalOutput31616.moment H :=
  canonical_of_padded canonicalInput31616 canonicalOutput31616 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31617 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput31617 : ExponentCode := normalNode4198

theorem canonicalSound31617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31617.moment H = canonicalOutput31617.moment H :=
  canonical_of_padded canonicalInput31617 canonicalOutput31617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31618 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput31618 : ExponentCode := normalNode5316

theorem canonicalSound31618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31618.moment H = canonicalOutput31618.moment H :=
  canonical_of_padded canonicalInput31618 canonicalOutput31618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31619 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput31619 : ExponentCode := normalNode5427

theorem canonicalSound31619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31619.moment H = canonicalOutput31619.moment H :=
  canonical_of_padded canonicalInput31619 canonicalOutput31619 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31620 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, -2, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput31620 : ExponentCode := normalNode3349

theorem canonicalSound31620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31620.moment H = canonicalOutput31620.moment H :=
  canonical_of_padded canonicalInput31620 canonicalOutput31620 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31621 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput31621 : ExponentCode := normalNode3794

theorem canonicalSound31621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31621.moment H = canonicalOutput31621.moment H :=
  canonical_of_padded canonicalInput31621 canonicalOutput31621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31622 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput31622 : ExponentCode := normalNode7641

theorem canonicalSound31622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31622.moment H = canonicalOutput31622.moment H :=
  canonical_of_padded canonicalInput31622 canonicalOutput31622 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31623 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput31623 : ExponentCode := normalNode7656

theorem canonicalSound31623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31623.moment H = canonicalOutput31623.moment H :=
  canonical_of_padded canonicalInput31623 canonicalOutput31623 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31624 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 0, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput31624 : ExponentCode := normalNode10566

theorem canonicalSound31624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31624.moment H = canonicalOutput31624.moment H :=
  canonical_of_padded canonicalInput31624 canonicalOutput31624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31625 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput31625 : ExponentCode := normalNode8778

theorem canonicalSound31625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31625.moment H = canonicalOutput31625.moment H :=
  canonical_of_padded canonicalInput31625 canonicalOutput31625 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31626 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput31626 : ExponentCode := normalNode5620

theorem canonicalSound31626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31626.moment H = canonicalOutput31626.moment H :=
  canonical_of_padded canonicalInput31626 canonicalOutput31626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation208, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31627 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput31627 : ExponentCode := normalNode7653

theorem canonicalSound31627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31627.moment H = canonicalOutput31627.moment H :=
  canonical_of_padded canonicalInput31627 canonicalOutput31627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31628 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![-1, -1, -1, 3]]⟩

def canonicalOutput31628 : ExponentCode := normalNode7641

theorem canonicalSound31628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31628.moment H = canonicalOutput31628.moment H :=
  canonical_of_padded canonicalInput31628 canonicalOutput31628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31629 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31629 : ExponentCode := normalNode7656

theorem canonicalSound31629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31629.moment H = canonicalOutput31629.moment H :=
  canonical_of_padded canonicalInput31629 canonicalOutput31629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31630 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput31630 : ExponentCode := normalNode7261

theorem canonicalSound31630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31630.moment H = canonicalOutput31630.moment H :=
  canonical_of_padded canonicalInput31630 canonicalOutput31630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31631 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput31631 : ExponentCode := normalNode2886

theorem canonicalSound31631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31631.moment H = canonicalOutput31631.moment H :=
  canonical_of_padded canonicalInput31631 canonicalOutput31631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31632 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, -1, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput31632 : ExponentCode := normalNode2534

theorem canonicalSound31632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31632.moment H = canonicalOutput31632.moment H :=
  canonical_of_padded canonicalInput31632 canonicalOutput31632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31633 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 0, -2], ![-1, -2, 1, 2]]⟩

def canonicalOutput31633 : ExponentCode := normalNode2296

theorem canonicalSound31633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31633.moment H = canonicalOutput31633.moment H :=
  canonical_of_padded canonicalInput31633 canonicalOutput31633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31634 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, 2, -1, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput31634 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2973⟩

theorem canonicalSound31634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31634.moment H = canonicalOutput31634.moment H :=
  canonical_of_padded canonicalInput31634 canonicalOutput31634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31635 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![1, 1, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput31635 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2965⟩

theorem canonicalSound31635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31635.moment H = canonicalOutput31635.moment H :=
  canonical_of_padded canonicalInput31635 canonicalOutput31635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31636 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -2, 1], ![1, -3, 0, 2]]⟩

def canonicalOutput31636 : ExponentCode := normalNode6663

theorem canonicalSound31636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31636.moment H = canonicalOutput31636.moment H :=
  canonical_of_padded canonicalInput31636 canonicalOutput31636 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31637 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![1, -3, -1, 3]]⟩

def canonicalOutput31637 : ExponentCode := normalNode6021

theorem canonicalSound31637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31637.moment H = canonicalOutput31637.moment H :=
  canonical_of_padded canonicalInput31637 canonicalOutput31637 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31638 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![-1, -2, 0, 3]]⟩

def canonicalOutput31638 : ExponentCode := normalNode1834

theorem canonicalSound31638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31638.moment H = canonicalOutput31638.moment H :=
  canonical_of_padded canonicalInput31638 canonicalOutput31638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31639 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -2, -1, 4]]⟩

def canonicalOutput31639 : ExponentCode := normalNode1289

theorem canonicalSound31639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31639.moment H = canonicalOutput31639.moment H :=
  canonical_of_padded canonicalInput31639 canonicalOutput31639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31640 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31640 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3356⟩

theorem canonicalSound31640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31640.moment H = canonicalOutput31640.moment H :=
  canonical_of_padded canonicalInput31640 canonicalOutput31640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31641 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3]]⟩

def canonicalOutput31641 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3354⟩

theorem canonicalSound31641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31641.moment H = canonicalOutput31641.moment H :=
  canonical_of_padded canonicalInput31641 canonicalOutput31641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput31642 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![-1, -1, -2, 4]]⟩

def canonicalOutput31642 : ExponentCode := normalNode7366

theorem canonicalSound31642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31642.moment H = canonicalOutput31642.moment H :=
  canonical_of_padded canonicalInput31642 canonicalOutput31642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31643 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![1, 0, 1, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput31643 : ExponentCode := normalNode2588

theorem canonicalSound31643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31643.moment H = canonicalOutput31643.moment H :=
  canonical_of_padded canonicalInput31643 canonicalOutput31643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31644 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 0, 0, -1], ![-2, 1, -1, 2]]⟩

def canonicalOutput31644 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3079⟩

theorem canonicalSound31644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31644.moment H = canonicalOutput31644.moment H :=
  canonical_of_padded canonicalInput31644 canonicalOutput31644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31645 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput31645 : ExponentCode := normalNode4500

theorem canonicalSound31645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31645.moment H = canonicalOutput31645.moment H :=
  canonical_of_padded canonicalInput31645 canonicalOutput31645 (by decide) (by decide)
    ⟨false, false, canonicalPermutation282, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31646 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput31646 : ExponentCode := normalNode2343

theorem canonicalSound31646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31646.moment H = canonicalOutput31646.moment H :=
  canonical_of_padded canonicalInput31646 canonicalOutput31646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31647 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -1, 2], ![1, -2, 0, 1], ![-2, 2, 1, -1]]⟩

def canonicalOutput31647 : ExponentCode := normalNode5124

theorem canonicalSound31647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31647.moment H = canonicalOutput31647.moment H :=
  canonical_of_padded canonicalInput31647 canonicalOutput31647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31648 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 2, 0, 0]]⟩

def canonicalOutput31648 : ExponentCode := normalNode3865

theorem canonicalSound31648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31648.moment H = canonicalOutput31648.moment H :=
  canonical_of_padded canonicalInput31648 canonicalOutput31648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31649 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 1, 0], ![1, -2, 0, 1], ![-2, 2, -1, 1]]⟩

def canonicalOutput31649 : ExponentCode := normalNode2684

theorem canonicalSound31649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31649.moment H = canonicalOutput31649.moment H :=
  canonical_of_padded canonicalInput31649 canonicalOutput31649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31650 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 1, 0], ![1, 1, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput31650 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2967⟩

theorem canonicalSound31650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31650.moment H = canonicalOutput31650.moment H :=
  canonical_of_padded canonicalInput31650 canonicalOutput31650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31651 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, -2, -1, 2], ![-2, 2, -1, 1]]⟩

def canonicalOutput31651 : ExponentCode := normalNode2697

theorem canonicalSound31651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31651.moment H = canonicalOutput31651.moment H :=
  canonical_of_padded canonicalInput31651 canonicalOutput31651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31652 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, -2, 0, 1], ![-2, 2, -2, 2]]⟩

def canonicalOutput31652 : ExponentCode := normalNode880

theorem canonicalSound31652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31652.moment H = canonicalOutput31652.moment H :=
  canonical_of_padded canonicalInput31652 canonicalOutput31652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31653 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, -2, 0], ![-2, -1, 0, 3]]⟩

def canonicalOutput31653 : ExponentCode := normalNode1836

theorem canonicalSound31653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31653.moment H = canonicalOutput31653.moment H :=
  canonical_of_padded canonicalInput31653 canonicalOutput31653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31654 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, -1, 4]]⟩

def canonicalOutput31654 : ExponentCode := normalNode1290

theorem canonicalSound31654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31654.moment H = canonicalOutput31654.moment H :=
  canonical_of_padded canonicalInput31654 canonicalOutput31654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31655 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 2, -2, 0], ![1, -2, 1, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput31655 : ExponentCode := normalNode5838

theorem canonicalSound31655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31655.moment H = canonicalOutput31655.moment H :=
  canonical_of_padded canonicalInput31655 canonicalOutput31655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31656 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, -1, 1, 2]]⟩

def canonicalOutput31656 : ExponentCode := normalNode5130

theorem canonicalSound31656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31656.moment H = canonicalOutput31656.moment H :=
  canonical_of_padded canonicalInput31656 canonicalOutput31656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31657 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 0, 3]]⟩

def canonicalOutput31657 : ExponentCode := normalNode3506

theorem canonicalSound31657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31657.moment H = canonicalOutput31657.moment H :=
  canonical_of_padded canonicalInput31657 canonicalOutput31657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31658 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -2, 0, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31658 : ExponentCode := normalNode2020

theorem canonicalSound31658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31658.moment H = canonicalOutput31658.moment H :=
  canonical_of_padded canonicalInput31658 canonicalOutput31658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation273, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31659 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput31659 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3142⟩

theorem canonicalSound31659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31659.moment H = canonicalOutput31659.moment H :=
  canonical_of_padded canonicalInput31659 canonicalOutput31659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31660 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, -1, 4], ![-1, 1, 2, -2]]⟩

def canonicalOutput31660 : ExponentCode := normalNode1378

theorem canonicalSound31660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31660.moment H = canonicalOutput31660.moment H :=
  canonical_of_padded canonicalInput31660 canonicalOutput31660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31661 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 1, -1]]⟩

def canonicalOutput31661 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3012⟩

theorem canonicalSound31661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31661.moment H = canonicalOutput31661.moment H :=
  canonical_of_padded canonicalInput31661 canonicalOutput31661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31662 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 1, 2, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput31662 : ExponentCode := normalNode1378

theorem canonicalSound31662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31662.moment H = canonicalOutput31662.moment H :=
  canonical_of_padded canonicalInput31662 canonicalOutput31662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31663 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, 3, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput31663 : ExponentCode := normalNode3584

theorem canonicalSound31663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31663.moment H = canonicalOutput31663.moment H :=
  canonical_of_padded canonicalInput31663 canonicalOutput31663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31664 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -2, -1, 3]]⟩

def canonicalOutput31664 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2968⟩

theorem canonicalSound31664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31664.moment H = canonicalOutput31664.moment H :=
  canonical_of_padded canonicalInput31664 canonicalOutput31664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput31665 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput31665 : ExponentCode := normalNode3289

theorem canonicalSound31665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31665.moment H = canonicalOutput31665.moment H :=
  canonical_of_padded canonicalInput31665 canonicalOutput31665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31666 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -2, -2, 5]]⟩

def canonicalOutput31666 : ExponentCode := normalNode1084

theorem canonicalSound31666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31666.moment H = canonicalOutput31666.moment H :=
  canonical_of_padded canonicalInput31666 canonicalOutput31666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31667 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-2, 1, -3, 4]]⟩

def canonicalOutput31667 : ExponentCode := normalNode3577

theorem canonicalSound31667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31667.moment H = canonicalOutput31667.moment H :=
  canonical_of_padded canonicalInput31667 canonicalOutput31667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation273, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31668 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 2, -3, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput31668 : ExponentCode := normalNode2028

theorem canonicalSound31668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31668.moment H = canonicalOutput31668.moment H :=
  canonical_of_padded canonicalInput31668 canonicalOutput31668 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31669 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput31669 : ExponentCode := normalNode4078

theorem canonicalSound31669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31669.moment H = canonicalOutput31669.moment H :=
  canonical_of_padded canonicalInput31669 canonicalOutput31669 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31670 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 2, -3, 1], ![1, -3, 2, 0]]⟩

def canonicalOutput31670 : ExponentCode := normalNode3705

theorem canonicalSound31670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31670.moment H = canonicalOutput31670.moment H :=
  canonical_of_padded canonicalInput31670 canonicalOutput31670 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31671 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput31671 : ExponentCode := normalNode7672

theorem canonicalSound31671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31671.moment H = canonicalOutput31671.moment H :=
  canonical_of_padded canonicalInput31671 canonicalOutput31671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31672 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput31672 : ExponentCode := normalNode7711

theorem canonicalSound31672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31672.moment H = canonicalOutput31672.moment H :=
  canonical_of_padded canonicalInput31672 canonicalOutput31672 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31673 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput31673 : ExponentCode := normalNode7289

theorem canonicalSound31673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31673.moment H = canonicalOutput31673.moment H :=
  canonical_of_padded canonicalInput31673 canonicalOutput31673 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31674 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31674 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound31674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31674.moment H = canonicalOutput31674.moment H :=
  canonical_of_padded canonicalInput31674 canonicalOutput31674 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31675 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -2, -3, 5]]⟩

def canonicalOutput31675 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩

theorem canonicalSound31675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31675.moment H = canonicalOutput31675.moment H :=
  canonical_of_padded canonicalInput31675 canonicalOutput31675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31676 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![1, -4, 3, 0], ![-1, 4, -4, 1]]⟩

def canonicalOutput31676 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node252⟩

theorem canonicalSound31676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31676.moment H = canonicalOutput31676.moment H :=
  canonical_of_padded canonicalInput31676 canonicalOutput31676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31677 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31677 : ExponentCode := normalNode7742

theorem canonicalSound31677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31677.moment H = canonicalOutput31677.moment H :=
  canonical_of_padded canonicalInput31677 canonicalOutput31677 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31678 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, 3, -1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31678 : ExponentCode := normalNode9574

theorem canonicalSound31678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31678.moment H = canonicalOutput31678.moment H :=
  canonical_of_padded canonicalInput31678 canonicalOutput31678 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31679 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput31679 : ExponentCode := normalNode547

theorem canonicalSound31679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31679.moment H = canonicalOutput31679.moment H :=
  canonical_of_padded canonicalInput31679 canonicalOutput31679 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

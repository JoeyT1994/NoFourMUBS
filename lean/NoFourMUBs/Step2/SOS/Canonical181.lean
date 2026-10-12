import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11584 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, -3, 1, 2], ![2, 2, -3, -1]]⟩

def canonicalOutput11584 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound11584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11584.moment H = canonicalOutput11584.moment H :=
  canonical_of_padded canonicalInput11584 canonicalOutput11584 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11585 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, -3, 3, 0], ![2, 2, -5, 1]]⟩

def canonicalOutput11585 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound11585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11585.moment H = canonicalOutput11585.moment H :=
  canonical_of_padded canonicalInput11585 canonicalOutput11585 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11586 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -2, -2, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11586 : ExponentCode := normalNode3329

theorem canonicalSound11586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11586.moment H = canonicalOutput11586.moment H :=
  canonical_of_padded canonicalInput11586 canonicalOutput11586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11587 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -2, 4], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput11587 : ExponentCode := normalNode9552

theorem canonicalSound11587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11587.moment H = canonicalOutput11587.moment H :=
  canonical_of_padded canonicalInput11587 canonicalOutput11587 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11588 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -2, 4], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput11588 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node772⟩

theorem canonicalSound11588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11588.moment H = canonicalOutput11588.moment H :=
  canonical_of_padded canonicalInput11588 canonicalOutput11588 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11589 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -2, 4], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput11589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node465⟩

theorem canonicalSound11589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11589.moment H = canonicalOutput11589.moment H :=
  canonical_of_padded canonicalInput11589 canonicalOutput11589 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11590 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -1, 3], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput11590 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound11590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11590.moment H = canonicalOutput11590.moment H :=
  canonical_of_padded canonicalInput11590 canonicalOutput11590 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11591 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput11591 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1260

theorem canonicalSound11591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11591.moment H = canonicalOutput11591.moment H :=
  canonical_of_padded canonicalInput11591 canonicalOutput11591 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11592 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -1, 3], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput11592 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound11592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11592.moment H = canonicalOutput11592.moment H :=
  canonical_of_padded canonicalInput11592 canonicalOutput11592 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11593 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -1, 3], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11593 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound11593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11593.moment H = canonicalOutput11593.moment H :=
  canonical_of_padded canonicalInput11593 canonicalOutput11593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11594 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11594 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound11594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11594.moment H = canonicalOutput11594.moment H :=
  canonical_of_padded canonicalInput11594 canonicalOutput11594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11595 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, -2, -1, 3], ![2, 1, -1, -2]]⟩

def canonicalOutput11595 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound11595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11595.moment H = canonicalOutput11595.moment H :=
  canonical_of_padded canonicalInput11595 canonicalOutput11595 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11596 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput11596 : ExponentCode := normalNode5832

theorem canonicalSound11596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11596.moment H = canonicalOutput11596.moment H :=
  canonical_of_padded canonicalInput11596 canonicalOutput11596 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11597 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput11597 : ExponentCode := normalNode4032

theorem canonicalSound11597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11597.moment H = canonicalOutput11597.moment H :=
  canonical_of_padded canonicalInput11597 canonicalOutput11597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11598 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11598 : ExponentCode := normalNode4082

theorem canonicalSound11598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11598.moment H = canonicalOutput11598.moment H :=
  canonical_of_padded canonicalInput11598 canonicalOutput11598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11599 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, 1, -3, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput11599 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code783

theorem canonicalSound11599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11599.moment H = canonicalOutput11599.moment H :=
  canonical_of_padded canonicalInput11599 canonicalOutput11599 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11600 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11600 : ExponentCode := normalNode5852

theorem canonicalSound11600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11600.moment H = canonicalOutput11600.moment H :=
  canonical_of_padded canonicalInput11600 canonicalOutput11600 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11601 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![1, -1, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput11601 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1125

theorem canonicalSound11601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11601.moment H = canonicalOutput11601.moment H :=
  canonical_of_padded canonicalInput11601 canonicalOutput11601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11602 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput11602 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound11602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11602.moment H = canonicalOutput11602.moment H :=
  canonical_of_padded canonicalInput11602 canonicalOutput11602 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11603 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11603 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound11603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11603.moment H = canonicalOutput11603.moment H :=
  canonical_of_padded canonicalInput11603 canonicalOutput11603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11604 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11604 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound11604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11604.moment H = canonicalOutput11604.moment H :=
  canonical_of_padded canonicalInput11604 canonicalOutput11604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11605 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, -2, 3, -1], ![2, 1, -5, 2]]⟩

def canonicalOutput11605 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound11605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11605.moment H = canonicalOutput11605.moment H :=
  canonical_of_padded canonicalInput11605 canonicalOutput11605 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11606 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -3, 4], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput11606 : ExponentCode := normalNode6525

theorem canonicalSound11606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11606.moment H = canonicalOutput11606.moment H :=
  canonical_of_padded canonicalInput11606 canonicalOutput11606 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11607 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -3, 4], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11607 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound11607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11607.moment H = canonicalOutput11607.moment H :=
  canonical_of_padded canonicalInput11607 canonicalOutput11607 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11608 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -2, 3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11608 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound11608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11608.moment H = canonicalOutput11608.moment H :=
  canonical_of_padded canonicalInput11608 canonicalOutput11608 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput11609 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11609 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2209⟩

theorem canonicalSound11609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11609.moment H = canonicalOutput11609.moment H :=
  canonical_of_padded canonicalInput11609 canonicalOutput11609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11610 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput11610 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound11610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11610.moment H = canonicalOutput11610.moment H :=
  canonical_of_padded canonicalInput11610 canonicalOutput11610 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11611 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -2, 3], ![1, -2, 0, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput11611 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node594⟩

theorem canonicalSound11611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11611.moment H = canonicalOutput11611.moment H :=
  canonical_of_padded canonicalInput11611 canonicalOutput11611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11612 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11612 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound11612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11612.moment H = canonicalOutput11612.moment H :=
  canonical_of_padded canonicalInput11612 canonicalOutput11612 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11613 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -2, 3], ![1, 1, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput11613 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1237

theorem canonicalSound11613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11613.moment H = canonicalOutput11613.moment H :=
  canonical_of_padded canonicalInput11613 canonicalOutput11613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11614 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, -2, 0, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput11614 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1235

theorem canonicalSound11614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11614.moment H = canonicalOutput11614.moment H :=
  canonical_of_padded canonicalInput11614 canonicalOutput11614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11615 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput11615 : ExponentCode := normalNode2907

theorem canonicalSound11615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11615.moment H = canonicalOutput11615.moment H :=
  canonical_of_padded canonicalInput11615 canonicalOutput11615 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11616 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![2, 1, 0, -3]]⟩

def canonicalOutput11616 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node489⟩

theorem canonicalSound11616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11616.moment H = canonicalOutput11616.moment H :=
  canonical_of_padded canonicalInput11616 canonicalOutput11616 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11617 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11617 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound11617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11617.moment H = canonicalOutput11617.moment H :=
  canonical_of_padded canonicalInput11617 canonicalOutput11617 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11618 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11618 : ExponentCode := normalNode5083

theorem canonicalSound11618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11618.moment H = canonicalOutput11618.moment H :=
  canonical_of_padded canonicalInput11618 canonicalOutput11618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11619 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput11619 : ExponentCode := normalNode5063

theorem canonicalSound11619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11619.moment H = canonicalOutput11619.moment H :=
  canonical_of_padded canonicalInput11619 canonicalOutput11619 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11620 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput11620 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound11620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11620.moment H = canonicalOutput11620.moment H :=
  canonical_of_padded canonicalInput11620 canonicalOutput11620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11621 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11621 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound11621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11621.moment H = canonicalOutput11621.moment H :=
  canonical_of_padded canonicalInput11621 canonicalOutput11621 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11622 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11622 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound11622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11622.moment H = canonicalOutput11622.moment H :=
  canonical_of_padded canonicalInput11622 canonicalOutput11622 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11623 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput11623 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2207⟩

theorem canonicalSound11623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11623.moment H = canonicalOutput11623.moment H :=
  canonical_of_padded canonicalInput11623 canonicalOutput11623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11624 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11624 : ExponentCode := normalNode5137

theorem canonicalSound11624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11624.moment H = canonicalOutput11624.moment H :=
  canonical_of_padded canonicalInput11624 canonicalOutput11624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11625 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11625 : ExponentCode := normalNode5842

theorem canonicalSound11625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11625.moment H = canonicalOutput11625.moment H :=
  canonical_of_padded canonicalInput11625 canonicalOutput11625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11626 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput11626 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node678⟩

theorem canonicalSound11626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11626.moment H = canonicalOutput11626.moment H :=
  canonical_of_padded canonicalInput11626 canonicalOutput11626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11627 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput11627 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1261

theorem canonicalSound11627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11627.moment H = canonicalOutput11627.moment H :=
  canonical_of_padded canonicalInput11627 canonicalOutput11627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11628 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput11628 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound11628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11628.moment H = canonicalOutput11628.moment H :=
  canonical_of_padded canonicalInput11628 canonicalOutput11628 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11629 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11629 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound11629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11629.moment H = canonicalOutput11629.moment H :=
  canonical_of_padded canonicalInput11629 canonicalOutput11629 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11630 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound11630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11630.moment H = canonicalOutput11630.moment H :=
  canonical_of_padded canonicalInput11630 canonicalOutput11630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11631 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11631 : ExponentCode := normalNode5657

theorem canonicalSound11631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11631.moment H = canonicalOutput11631.moment H :=
  canonical_of_padded canonicalInput11631 canonicalOutput11631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11632 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11632 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound11632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11632.moment H = canonicalOutput11632.moment H :=
  canonical_of_padded canonicalInput11632 canonicalOutput11632 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11633 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11633 : ExponentCode := normalNode5079

theorem canonicalSound11633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11633.moment H = canonicalOutput11633.moment H :=
  canonical_of_padded canonicalInput11633 canonicalOutput11633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11634 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11634 : ExponentCode := normalNode5045

theorem canonicalSound11634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11634.moment H = canonicalOutput11634.moment H :=
  canonical_of_padded canonicalInput11634 canonicalOutput11634 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11635 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11635 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound11635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11635.moment H = canonicalOutput11635.moment H :=
  canonical_of_padded canonicalInput11635 canonicalOutput11635 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11636 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11636 : ExponentCode := normalNode10721

theorem canonicalSound11636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11636.moment H = canonicalOutput11636.moment H :=
  canonical_of_padded canonicalInput11636 canonicalOutput11636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11637 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11637 : ExponentCode := normalNode5116

theorem canonicalSound11637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11637.moment H = canonicalOutput11637.moment H :=
  canonical_of_padded canonicalInput11637 canonicalOutput11637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11638 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11638 : ExponentCode := normalNode5114

theorem canonicalSound11638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11638.moment H = canonicalOutput11638.moment H :=
  canonical_of_padded canonicalInput11638 canonicalOutput11638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11639 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![1, -1, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput11639 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1358⟩

theorem canonicalSound11639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11639.moment H = canonicalOutput11639.moment H :=
  canonical_of_padded canonicalInput11639 canonicalOutput11639 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11640 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11640 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound11640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11640.moment H = canonicalOutput11640.moment H :=
  canonical_of_padded canonicalInput11640 canonicalOutput11640 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11641 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11641 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩

theorem canonicalSound11641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11641.moment H = canonicalOutput11641.moment H :=
  canonical_of_padded canonicalInput11641 canonicalOutput11641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11642 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, -3, 3], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11642 : ExponentCode := normalNode5064

theorem canonicalSound11642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11642.moment H = canonicalOutput11642.moment H :=
  canonical_of_padded canonicalInput11642 canonicalOutput11642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11643 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11643 : ExponentCode := normalNode5447

theorem canonicalSound11643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11643.moment H = canonicalOutput11643.moment H :=
  canonical_of_padded canonicalInput11643 canonicalOutput11643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11644 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11644 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound11644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11644.moment H = canonicalOutput11644.moment H :=
  canonical_of_padded canonicalInput11644 canonicalOutput11644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11645 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -3, 3], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11645 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound11645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11645.moment H = canonicalOutput11645.moment H :=
  canonical_of_padded canonicalInput11645 canonicalOutput11645 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11646 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound11646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11646.moment H = canonicalOutput11646.moment H :=
  canonical_of_padded canonicalInput11646 canonicalOutput11646 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11647 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -3, 3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11647 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound11647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11647.moment H = canonicalOutput11647.moment H :=
  canonical_of_padded canonicalInput11647 canonicalOutput11647 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

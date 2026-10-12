import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26560 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![1, 0, -1], ![0, 3, -3], ![-1, -3, 4]]⟩

def canonicalOutput26560 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node747⟩

theorem canonicalSound26560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26560.moment H = canonicalOutput26560.moment H :=
  canonical_of_padded canonicalInput26560 canonicalOutput26560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26561 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![1, 0, -1], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput26561 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node432⟩

theorem canonicalSound26561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26561.moment H = canonicalOutput26561.moment H :=
  canonical_of_padded canonicalInput26561 canonicalOutput26561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26562 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-1, 1, 0], ![-3, 1, 2], ![4, -3, -1]]⟩

def canonicalOutput26562 : ExponentCode := normalNode2992

theorem canonicalSound26562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26562.moment H = canonicalOutput26562.moment H :=
  canonical_of_padded canonicalInput26562 canonicalOutput26562 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation270, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26563 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![-4, 1, 3], ![4, -3, -1]]⟩

def canonicalOutput26563 : ExponentCode := normalNode0

theorem canonicalSound26563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26563.moment H = canonicalOutput26563.moment H :=
  canonical_of_padded canonicalInput26563 canonicalOutput26563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26564 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![-3, 1, 2], ![3, -3, 0]]⟩

def canonicalOutput26564 : ExponentCode := normalNode160

theorem canonicalSound26564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26564.moment H = canonicalOutput26564.moment H :=
  canonical_of_padded canonicalInput26564 canonicalOutput26564 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26565 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput26565 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1537⟩

theorem canonicalSound26565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26565.moment H = canonicalOutput26565.moment H :=
  canonical_of_padded canonicalInput26565 canonicalOutput26565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26566 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![1, 0, -1], ![1, 2, -3], ![-2, -3, 5]]⟩

def canonicalOutput26566 : ExponentCode := normalNode331

theorem canonicalSound26566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26566.moment H = canonicalOutput26566.moment H :=
  canonical_of_padded canonicalInput26566 canonicalOutput26566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26567 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -2, 1], ![-1, 2, -1], ![-2, -1, 3], ![2, 1, -3]]⟩

def canonicalOutput26567 : ExponentCode := normalNode3000

theorem canonicalSound26567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26567.moment H = canonicalOutput26567.moment H :=
  canonical_of_padded canonicalInput26567 canonicalOutput26567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26568 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -2, 1], ![-1, 2, -1], ![-1, -2, 3], ![1, 2, -3]]⟩

def canonicalOutput26568 : ExponentCode := normalNode7137

theorem canonicalSound26568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26568.moment H = canonicalOutput26568.moment H :=
  canonical_of_padded canonicalInput26568 canonicalOutput26568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26569 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![-3, 0, 3], ![1, 3, -4]]⟩

def canonicalOutput26569 : ExponentCode := normalNode161

theorem canonicalSound26569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26569.moment H = canonicalOutput26569.moment H :=
  canonical_of_padded canonicalInput26569 canonicalOutput26569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26570 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26570 : ExponentCode := normalNode3025

theorem canonicalSound26570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26570.moment H = canonicalOutput26570.moment H :=
  canonical_of_padded canonicalInput26570 canonicalOutput26570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26571 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput26571 : ExponentCode := normalNode6276

theorem canonicalSound26571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26571.moment H = canonicalOutput26571.moment H :=
  canonical_of_padded canonicalInput26571 canonicalOutput26571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26572 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-2, 0, 2], ![2, -2, 0], ![-1, 3, -2]]⟩

def canonicalOutput26572 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1853⟩

theorem canonicalSound26572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26572.moment H = canonicalOutput26572.moment H :=
  canonical_of_padded canonicalInput26572 canonicalOutput26572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26573 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![2, 1, -3]]⟩

def canonicalOutput26573 : ExponentCode := normalNode2989

theorem canonicalSound26573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26573.moment H = canonicalOutput26573.moment H :=
  canonical_of_padded canonicalInput26573 canonicalOutput26573 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26574 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-2, 1, 1], ![0, 3, -3], ![1, -3, 2]]⟩

def canonicalOutput26574 : ExponentCode := normalNode5585

theorem canonicalSound26574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26574.moment H = canonicalOutput26574.moment H :=
  canonical_of_padded canonicalInput26574 canonicalOutput26574 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26575 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 1, 0], ![-2, -1, 3], ![2, 1, -3]]⟩

def canonicalOutput26575 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1858⟩

theorem canonicalSound26575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26575.moment H = canonicalOutput26575.moment H :=
  canonical_of_padded canonicalInput26575 canonicalOutput26575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26576 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 1, 0], ![-1, -2, 3], ![1, 2, -3]]⟩

def canonicalOutput26576 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2465⟩

theorem canonicalSound26576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26576.moment H = canonicalOutput26576.moment H :=
  canonical_of_padded canonicalInput26576 canonicalOutput26576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26577 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-2, -2, 4], ![2, 1, -3]]⟩

def canonicalOutput26577 : ExponentCode := normalNode973

theorem canonicalSound26577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26577.moment H = canonicalOutput26577.moment H :=
  canonical_of_padded canonicalInput26577 canonicalOutput26577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26578 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-2, -1, 3], ![2, 0, -2]]⟩

def canonicalOutput26578 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1865⟩

theorem canonicalSound26578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26578.moment H = canonicalOutput26578.moment H :=
  canonical_of_padded canonicalInput26578 canonicalOutput26578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26579 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-1, -3, 4], ![1, 2, -3]]⟩

def canonicalOutput26579 : ExponentCode := normalNode6271

theorem canonicalSound26579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26579.moment H = canonicalOutput26579.moment H :=
  canonical_of_padded canonicalInput26579 canonicalOutput26579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26580 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![-1, -2, 3], ![1, 1, -2]]⟩

def canonicalOutput26580 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2470⟩

theorem canonicalSound26580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26580.moment H = canonicalOutput26580.moment H :=
  canonical_of_padded canonicalInput26580 canonicalOutput26580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26581 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, 2, -1], ![1, 1, -2], ![-1, -2, 3]]⟩

def canonicalOutput26581 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2470⟩

theorem canonicalSound26581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26581.moment H = canonicalOutput26581.moment H :=
  canonical_of_padded canonicalInput26581 canonicalOutput26581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26582 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![0, -1, 1], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26582 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1875⟩

theorem canonicalSound26582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26582.moment H = canonicalOutput26582.moment H :=
  canonical_of_padded canonicalInput26582 canonicalOutput26582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26583 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![0, -1, 1], ![-1, -2, 3], ![0, 4, -4]]⟩

def canonicalOutput26583 : ExponentCode := normalNode7142

theorem canonicalSound26583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26583.moment H = canonicalOutput26583.moment H :=
  canonical_of_padded canonicalInput26583 canonicalOutput26583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26584 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![0, 0, 0], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput26584 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node747⟩

theorem canonicalSound26584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26584.moment H = canonicalOutput26584.moment H :=
  canonical_of_padded canonicalInput26584 canonicalOutput26584 (by decide) (by decide)
    ⟨false, false, canonicalPermutation299, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26585 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -2, 1], ![-3, 0, 3], ![1, 3, -4]]⟩

def canonicalOutput26585 : ExponentCode := normalNode161

theorem canonicalSound26585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26585.moment H = canonicalOutput26585.moment H :=
  canonical_of_padded canonicalInput26585 canonicalOutput26585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26586 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -2, 1], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26586 : ExponentCode := normalNode3025

theorem canonicalSound26586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26586.moment H = canonicalOutput26586.moment H :=
  canonical_of_padded canonicalInput26586 canonicalOutput26586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26587 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-3, -1, 4], ![1, 3, -4]]⟩

def canonicalOutput26587 : ExponentCode := normalNode115

theorem canonicalSound26587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26587.moment H = canonicalOutput26587.moment H :=
  canonical_of_padded canonicalInput26587 canonicalOutput26587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26588 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, -2, 4], ![0, 4, -4]]⟩

def canonicalOutput26588 : ExponentCode := normalNode998

theorem canonicalSound26588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26588.moment H = canonicalOutput26588.moment H :=
  canonical_of_padded canonicalInput26588 canonicalOutput26588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26589 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput26589 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2383⟩

theorem canonicalSound26589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26589.moment H = canonicalOutput26589.moment H :=
  canonical_of_padded canonicalInput26589 canonicalOutput26589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26590 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -3, 4], ![-1, 4, -3]]⟩

def canonicalOutput26590 : ExponentCode := normalNode6281

theorem canonicalSound26590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26590.moment H = canonicalOutput26590.moment H :=
  canonical_of_padded canonicalInput26590 canonicalOutput26590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26591 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput26591 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1540⟩

theorem canonicalSound26591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26591.moment H = canonicalOutput26591.moment H :=
  canonical_of_padded canonicalInput26591 canonicalOutput26591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation336, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26592 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3], ![-2, -2, 4]]⟩

def canonicalOutput26592 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1540⟩

theorem canonicalSound26592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26592.moment H = canonicalOutput26592.moment H :=
  canonical_of_padded canonicalInput26592 canonicalOutput26592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26593 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![2, -2, 0], ![-1, 3, -2]]⟩

def canonicalOutput26593 : ExponentCode := normalNode3005

theorem canonicalSound26593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26593.moment H = canonicalOutput26593.moment H :=
  canonical_of_padded canonicalInput26593 canonicalOutput26593 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26594 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 0, 2], ![-1, -1, 2], ![2, 1, -3]]⟩

def canonicalOutput26594 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2460⟩

theorem canonicalSound26594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26594.moment H = canonicalOutput26594.moment H :=
  canonical_of_padded canonicalInput26594 canonicalOutput26594 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26595 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 0, 2], ![0, 3, -3], ![1, -3, 2]]⟩

def canonicalOutput26595 : ExponentCode := normalNode4627

theorem canonicalSound26595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26595.moment H = canonicalOutput26595.moment H :=
  canonical_of_padded canonicalInput26595 canonicalOutput26595 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26596 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 0, 2], ![2, -3, 1], ![-1, 3, -2]]⟩

def canonicalOutput26596 : ExponentCode := normalNode2990

theorem canonicalSound26596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26596.moment H = canonicalOutput26596.moment H :=
  canonical_of_padded canonicalInput26596 canonicalOutput26596 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26597 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 0, 2], ![2, -2, 0], ![-1, 2, -1]]⟩

def canonicalOutput26597 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2097⟩

theorem canonicalSound26597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26597.moment H = canonicalOutput26597.moment H :=
  canonical_of_padded canonicalInput26597 canonicalOutput26597 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26598 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![-1, -2, 3], ![2, 1, -3]]⟩

def canonicalOutput26598 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1850⟩

theorem canonicalSound26598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26598.moment H = canonicalOutput26598.moment H :=
  canonical_of_padded canonicalInput26598 canonicalOutput26598 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26599 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![0, 2, -2], ![1, -3, 2]]⟩

def canonicalOutput26599 : ExponentCode := normalNode5597

theorem canonicalSound26599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26599.moment H = canonicalOutput26599.moment H :=
  canonical_of_padded canonicalInput26599 canonicalOutput26599 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26600 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, 1, 1], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput26600 : ExponentCode := normalNode5584

theorem canonicalSound26600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26600.moment H = canonicalOutput26600.moment H :=
  canonical_of_padded canonicalInput26600 canonicalOutput26600 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26601 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, 1, 0], ![1, 1, -2], ![-1, -2, 3]]⟩

def canonicalOutput26601 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2466⟩

theorem canonicalSound26601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26601.moment H = canonicalOutput26601.moment H :=
  canonical_of_padded canonicalInput26601 canonicalOutput26601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26602 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, 2, -1], ![1, 0, -1], ![-1, -2, 3]]⟩

def canonicalOutput26602 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2471⟩

theorem canonicalSound26602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26602.moment H = canonicalOutput26602.moment H :=
  canonical_of_padded canonicalInput26602 canonicalOutput26602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26603 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, 2, -1], ![1, 1, -2], ![-1, -3, 4]]⟩

def canonicalOutput26603 : ExponentCode := normalNode6272

theorem canonicalSound26603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26603.moment H = canonicalOutput26603.moment H :=
  canonical_of_padded canonicalInput26603 canonicalOutput26603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26604 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![0, 0, 0], ![0, 3, -3], ![-1, -3, 4]]⟩

def canonicalOutput26604 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node747⟩

theorem canonicalSound26604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26604.moment H = canonicalOutput26604.moment H :=
  canonical_of_padded canonicalInput26604 canonicalOutput26604 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26605 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, -1, 0], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput26605 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1540⟩

theorem canonicalSound26605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26605.moment H = canonicalOutput26605.moment H :=
  canonical_of_padded canonicalInput26605 canonicalOutput26605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26606 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, -1, 0], ![0, 3, -3], ![-2, -2, 4]]⟩

def canonicalOutput26606 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1540⟩

theorem canonicalSound26606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26606.moment H = canonicalOutput26606.moment H :=
  canonical_of_padded canonicalInput26606 canonicalOutput26606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26607 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, -4, 4], ![-2, 4, -2]]⟩

def canonicalOutput26607 : ExponentCode := normalNode998

theorem canonicalSound26607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26607.moment H = canonicalOutput26607.moment H :=
  canonical_of_padded canonicalInput26607 canonicalOutput26607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26608 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-2, 3, -1]]⟩

def canonicalOutput26608 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1887⟩

theorem canonicalSound26608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26608.moment H = canonicalOutput26608.moment H :=
  canonical_of_padded canonicalInput26608 canonicalOutput26608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26609 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, 2, -2], ![-2, -2, 4]]⟩

def canonicalOutput26609 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1539⟩

theorem canonicalSound26609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26609.moment H = canonicalOutput26609.moment H :=
  canonical_of_padded canonicalInput26609 canonicalOutput26609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26610 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-2, -3, 5]]⟩

def canonicalOutput26610 : ExponentCode := normalNode334

theorem canonicalSound26610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26610.moment H = canonicalOutput26610.moment H :=
  canonical_of_padded canonicalInput26610 canonicalOutput26610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26611 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![-2, 0, 2], ![-1, 2, -1], ![1, 2, -3]]⟩

def canonicalOutput26611 : ExponentCode := normalNode4601

theorem canonicalSound26611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26611.moment H = canonicalOutput26611.moment H :=
  canonical_of_padded canonicalInput26611 canonicalOutput26611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26612 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![-1, 3, -2]]⟩

def canonicalOutput26612 : ExponentCode := normalNode4605

theorem canonicalSound26612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26612.moment H = canonicalOutput26612.moment H :=
  canonical_of_padded canonicalInput26612 canonicalOutput26612 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26613 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -2, 1], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 3, -4]]⟩

def canonicalOutput26613 : ExponentCode := normalNode5560

theorem canonicalSound26613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26613.moment H = canonicalOutput26613.moment H :=
  canonical_of_padded canonicalInput26613 canonicalOutput26613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26614 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -2, 1], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![-1, 4, -3]]⟩

def canonicalOutput26614 : ExponentCode := normalNode3011

theorem canonicalSound26614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26614.moment H = canonicalOutput26614.moment H :=
  canonical_of_padded canonicalInput26614 canonicalOutput26614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26615 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![0, 4, -4]]⟩

def canonicalOutput26615 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2134⟩

theorem canonicalSound26615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26615.moment H = canonicalOutput26615.moment H :=
  canonical_of_padded canonicalInput26615 canonicalOutput26615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation268, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26616 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![1, 0, -1], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26616 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1879⟩

theorem canonicalSound26616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26616.moment H = canonicalOutput26616.moment H :=
  canonical_of_padded canonicalInput26616 canonicalOutput26616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation268, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26617 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![0, 0, 0], ![-1, -1, 2], ![2, -1, -1], ![-2, 4, -2]]⟩

def canonicalOutput26617 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node422⟩

theorem canonicalSound26617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26617.moment H = canonicalOutput26617.moment H :=
  canonical_of_padded canonicalInput26617 canonicalOutput26617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26618 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![0, 0, 0], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput26618 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound26618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26618.moment H = canonicalOutput26618.moment H :=
  canonical_of_padded canonicalInput26618 canonicalOutput26618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation214, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26619 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -2, 1], ![-2, 0, 2], ![-1, 2, -1], ![1, 2, -3]]⟩

def canonicalOutput26619 : ExponentCode := normalNode4601

theorem canonicalSound26619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26619.moment H = canonicalOutput26619.moment H :=
  canonical_of_padded canonicalInput26619 canonicalOutput26619 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26620 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -2, 1], ![-2, 0, 2], ![1, 1, -2], ![-1, 3, -2]]⟩

def canonicalOutput26620 : ExponentCode := normalNode4605

theorem canonicalSound26620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26620.moment H = canonicalOutput26620.moment H :=
  canonical_of_padded canonicalInput26620 canonicalOutput26620 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26621 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![-1, 2, -1], ![1, 2, -3]]⟩

def canonicalOutput26621 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1867⟩

theorem canonicalSound26621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26621.moment H = canonicalOutput26621.moment H :=
  canonical_of_padded canonicalInput26621 canonicalOutput26621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26622 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![1, 1, -2], ![-1, 3, -2]]⟩

def canonicalOutput26622 : ExponentCode := normalNode3006

theorem canonicalSound26622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26622.moment H = canonicalOutput26622.moment H :=
  canonical_of_padded canonicalInput26622 canonicalOutput26622 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26623 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![-1, 1, 0], ![1, 2, -3]]⟩

def canonicalOutput26623 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1428⟩

theorem canonicalSound26623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26623.moment H = canonicalOutput26623.moment H :=
  canonical_of_padded canonicalInput26623 canonicalOutput26623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

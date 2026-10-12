import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29568 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29568 : ExponentCode := normalNode8812

theorem canonicalSound29568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29568.moment H = canonicalOutput29568.moment H :=
  canonical_of_padded canonicalInput29568 canonicalOutput29568 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29569 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29569 : ExponentCode := normalNode9322

theorem canonicalSound29569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29569.moment H = canonicalOutput29569.moment H :=
  canonical_of_padded canonicalInput29569 canonicalOutput29569 (by decide) (by decide)
    ⟨false, false, canonicalPermutation368, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29570 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput29570 : ExponentCode := normalNode6882

theorem canonicalSound29570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29570.moment H = canonicalOutput29570.moment H :=
  canonical_of_padded canonicalInput29570 canonicalOutput29570 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29571 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29571 : ExponentCode := normalNode6877

theorem canonicalSound29571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29571.moment H = canonicalOutput29571.moment H :=
  canonical_of_padded canonicalInput29571 canonicalOutput29571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29572 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, 1, 1, -1], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29572 : ExponentCode := normalNode6865

theorem canonicalSound29572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29572.moment H = canonicalOutput29572.moment H :=
  canonical_of_padded canonicalInput29572 canonicalOutput29572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29573 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29573 : ExponentCode := normalNode6898

theorem canonicalSound29573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29573.moment H = canonicalOutput29573.moment H :=
  canonical_of_padded canonicalInput29573 canonicalOutput29573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29574 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput29574 : ExponentCode := normalNode4685

theorem canonicalSound29574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29574.moment H = canonicalOutput29574.moment H :=
  canonical_of_padded canonicalInput29574 canonicalOutput29574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29575 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, -2, 0, 2], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput29575 : ExponentCode := normalNode5658

theorem canonicalSound29575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29575.moment H = canonicalOutput29575.moment H :=
  canonical_of_padded canonicalInput29575 canonicalOutput29575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29576 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput29576 : ExponentCode := normalNode2688

theorem canonicalSound29576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29576.moment H = canonicalOutput29576.moment H :=
  canonical_of_padded canonicalInput29576 canonicalOutput29576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29577 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 1, 1, -2], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29577 : ExponentCode := normalNode2231

theorem canonicalSound29577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29577.moment H = canonicalOutput29577.moment H :=
  canonical_of_padded canonicalInput29577 canonicalOutput29577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29578 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput29578 : ExponentCode := normalNode2689

theorem canonicalSound29578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29578.moment H = canonicalOutput29578.moment H :=
  canonical_of_padded canonicalInput29578 canonicalOutput29578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29579 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29579 : ExponentCode := normalNode882

theorem canonicalSound29579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29579.moment H = canonicalOutput29579.moment H :=
  canonical_of_padded canonicalInput29579 canonicalOutput29579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29580 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput29580 : ExponentCode := normalNode4475

theorem canonicalSound29580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29580.moment H = canonicalOutput29580.moment H :=
  canonical_of_padded canonicalInput29580 canonicalOutput29580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29581 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput29581 : ExponentCode := normalNode5215

theorem canonicalSound29581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29581.moment H = canonicalOutput29581.moment H :=
  canonical_of_padded canonicalInput29581 canonicalOutput29581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29582 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29582 : ExponentCode := normalNode2692

theorem canonicalSound29582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29582.moment H = canonicalOutput29582.moment H :=
  canonical_of_padded canonicalInput29582 canonicalOutput29582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29583 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput29583 : ExponentCode := normalNode6916

theorem canonicalSound29583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29583.moment H = canonicalOutput29583.moment H :=
  canonical_of_padded canonicalInput29583 canonicalOutput29583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29584 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29584 : ExponentCode := normalNode6888

theorem canonicalSound29584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29584.moment H = canonicalOutput29584.moment H :=
  canonical_of_padded canonicalInput29584 canonicalOutput29584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29585 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput29585 : ExponentCode := normalNode3581

theorem canonicalSound29585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29585.moment H = canonicalOutput29585.moment H :=
  canonical_of_padded canonicalInput29585 canonicalOutput29585 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29586 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29586 : ExponentCode := normalNode3865

theorem canonicalSound29586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29586.moment H = canonicalOutput29586.moment H :=
  canonical_of_padded canonicalInput29586 canonicalOutput29586 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29587 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput29587 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3041⟩

theorem canonicalSound29587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29587.moment H = canonicalOutput29587.moment H :=
  canonical_of_padded canonicalInput29587 canonicalOutput29587 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29588 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput29588 : ExponentCode := normalNode3862

theorem canonicalSound29588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29588.moment H = canonicalOutput29588.moment H :=
  canonical_of_padded canonicalInput29588 canonicalOutput29588 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29589 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput29589 : ExponentCode := normalNode3864

theorem canonicalSound29589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29589.moment H = canonicalOutput29589.moment H :=
  canonical_of_padded canonicalInput29589 canonicalOutput29589 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29590 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput29590 : ExponentCode := normalNode5317

theorem canonicalSound29590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29590.moment H = canonicalOutput29590.moment H :=
  canonical_of_padded canonicalInput29590 canonicalOutput29590 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29591 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput29591 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3205⟩

theorem canonicalSound29591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29591.moment H = canonicalOutput29591.moment H :=
  canonical_of_padded canonicalInput29591 canonicalOutput29591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29592 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput29592 : ExponentCode := normalNode4265

theorem canonicalSound29592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29592.moment H = canonicalOutput29592.moment H :=
  canonical_of_padded canonicalInput29592 canonicalOutput29592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29593 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput29593 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3216⟩

theorem canonicalSound29593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29593.moment H = canonicalOutput29593.moment H :=
  canonical_of_padded canonicalInput29593 canonicalOutput29593 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29594 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput29594 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3217⟩

theorem canonicalSound29594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29594.moment H = canonicalOutput29594.moment H :=
  canonical_of_padded canonicalInput29594 canonicalOutput29594 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29595 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput29595 : ExponentCode := normalNode5320

theorem canonicalSound29595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29595.moment H = canonicalOutput29595.moment H :=
  canonical_of_padded canonicalInput29595 canonicalOutput29595 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29596 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 2, 0, -2]]⟩

def canonicalOutput29596 : ExponentCode := normalNode3884

theorem canonicalSound29596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29596.moment H = canonicalOutput29596.moment H :=
  canonical_of_padded canonicalInput29596 canonicalOutput29596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput29597 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput29597 : ExponentCode := normalNode5925

theorem canonicalSound29597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29597.moment H = canonicalOutput29597.moment H :=
  canonical_of_padded canonicalInput29597 canonicalOutput29597 (by decide) (by decide)
    ⟨false, true, canonicalPermutation208, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29598 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput29598 : ExponentCode := normalNode4083

theorem canonicalSound29598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29598.moment H = canonicalOutput29598.moment H :=
  canonical_of_padded canonicalInput29598 canonicalOutput29598 (by decide) (by decide)
    ⟨false, false, canonicalPermutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29599 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![1, -2, -1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput29599 : ExponentCode := normalNode3704

theorem canonicalSound29599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29599.moment H = canonicalOutput29599.moment H :=
  canonical_of_padded canonicalInput29599 canonicalOutput29599 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29600 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput29600 : ExponentCode := normalNode3797

theorem canonicalSound29600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29600.moment H = canonicalOutput29600.moment H :=
  canonical_of_padded canonicalInput29600 canonicalOutput29600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29601 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29601 : ExponentCode := normalNode5124

theorem canonicalSound29601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29601.moment H = canonicalOutput29601.moment H :=
  canonical_of_padded canonicalInput29601 canonicalOutput29601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29602 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput29602 : ExponentCode := normalNode2338

theorem canonicalSound29602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29602.moment H = canonicalOutput29602.moment H :=
  canonical_of_padded canonicalInput29602 canonicalOutput29602 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29603 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput29603 : ExponentCode := normalNode2341

theorem canonicalSound29603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29603.moment H = canonicalOutput29603.moment H :=
  canonical_of_padded canonicalInput29603 canonicalOutput29603 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29604 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, 1, 0, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput29604 : ExponentCode := normalNode2343

theorem canonicalSound29604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29604.moment H = canonicalOutput29604.moment H :=
  canonical_of_padded canonicalInput29604 canonicalOutput29604 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29605 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput29605 : ExponentCode := normalNode4336

theorem canonicalSound29605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29605.moment H = canonicalOutput29605.moment H :=
  canonical_of_padded canonicalInput29605 canonicalOutput29605 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29606 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput29606 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3198⟩

theorem canonicalSound29606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29606.moment H = canonicalOutput29606.moment H :=
  canonical_of_padded canonicalInput29606 canonicalOutput29606 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29607 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput29607 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3200⟩

theorem canonicalSound29607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29607.moment H = canonicalOutput29607.moment H :=
  canonical_of_padded canonicalInput29607 canonicalOutput29607 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29608 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput29608 : ExponentCode := normalNode2372

theorem canonicalSound29608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29608.moment H = canonicalOutput29608.moment H :=
  canonical_of_padded canonicalInput29608 canonicalOutput29608 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29609 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput29609 : ExponentCode := normalNode4337

theorem canonicalSound29609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29609.moment H = canonicalOutput29609.moment H :=
  canonical_of_padded canonicalInput29609 canonicalOutput29609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29610 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput29610 : ExponentCode := normalNode3452

theorem canonicalSound29610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29610.moment H = canonicalOutput29610.moment H :=
  canonical_of_padded canonicalInput29610 canonicalOutput29610 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29611 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput29611 : ExponentCode := normalNode4337

theorem canonicalSound29611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29611.moment H = canonicalOutput29611.moment H :=
  canonical_of_padded canonicalInput29611 canonicalOutput29611 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29612 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput29612 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3281⟩

theorem canonicalSound29612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29612.moment H = canonicalOutput29612.moment H :=
  canonical_of_padded canonicalInput29612 canonicalOutput29612 (by decide) (by decide)
    ⟨false, false, canonicalPermutation299, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29613 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, 1, 0, -2], ![0, -2, 2, 0]]⟩

def canonicalOutput29613 : ExponentCode := normalNode3872

theorem canonicalSound29613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29613.moment H = canonicalOutput29613.moment H :=
  canonical_of_padded canonicalInput29613 canonicalOutput29613 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29614 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput29614 : ExponentCode := normalNode5316

theorem canonicalSound29614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29614.moment H = canonicalOutput29614.moment H :=
  canonical_of_padded canonicalInput29614 canonicalOutput29614 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29615 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput29615 : ExponentCode := normalNode4367

theorem canonicalSound29615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29615.moment H = canonicalOutput29615.moment H :=
  canonical_of_padded canonicalInput29615 canonicalOutput29615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput29616 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, -2, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29616 : ExponentCode := normalNode4145

theorem canonicalSound29616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29616.moment H = canonicalOutput29616.moment H :=
  canonical_of_padded canonicalInput29616 canonicalOutput29616 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29617 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, -2, 0, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput29617 : ExponentCode := normalNode4198

theorem canonicalSound29617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29617.moment H = canonicalOutput29617.moment H :=
  canonical_of_padded canonicalInput29617 canonicalOutput29617 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29618 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput29618 : ExponentCode := normalNode2342

theorem canonicalSound29618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29618.moment H = canonicalOutput29618.moment H :=
  canonical_of_padded canonicalInput29618 canonicalOutput29618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29619 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput29619 : ExponentCode := normalNode3724

theorem canonicalSound29619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29619.moment H = canonicalOutput29619.moment H :=
  canonical_of_padded canonicalInput29619 canonicalOutput29619 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29620 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 0, 1], ![0, 0, 2, -2]]⟩

def canonicalOutput29620 : ExponentCode := normalNode3794

theorem canonicalSound29620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29620.moment H = canonicalOutput29620.moment H :=
  canonical_of_padded canonicalInput29620 canonicalOutput29620 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29621 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -2, 1, 2], ![-1, 1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput29621 : ExponentCode := normalNode6397

theorem canonicalSound29621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29621.moment H = canonicalOutput29621.moment H :=
  canonical_of_padded canonicalInput29621 canonicalOutput29621 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29622 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput29622 : ExponentCode := normalNode7720

theorem canonicalSound29622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29622.moment H = canonicalOutput29622.moment H :=
  canonical_of_padded canonicalInput29622 canonicalOutput29622 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29623 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 1, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29623 : ExponentCode := normalNode7749

theorem canonicalSound29623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29623.moment H = canonicalOutput29623.moment H :=
  canonical_of_padded canonicalInput29623 canonicalOutput29623 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29624 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput29624 : ExponentCode := normalNode5329

theorem canonicalSound29624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29624.moment H = canonicalOutput29624.moment H :=
  canonical_of_padded canonicalInput29624 canonicalOutput29624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation220, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29625 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput29625 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3355⟩

theorem canonicalSound29625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29625.moment H = canonicalOutput29625.moment H :=
  canonical_of_padded canonicalInput29625 canonicalOutput29625 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29626 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29626 : ExponentCode := normalNode4285

theorem canonicalSound29626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29626.moment H = canonicalOutput29626.moment H :=
  canonical_of_padded canonicalInput29626 canonicalOutput29626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation5, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29627 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29627 : ExponentCode := normalNode8818

theorem canonicalSound29627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29627.moment H = canonicalOutput29627.moment H :=
  canonical_of_padded canonicalInput29627 canonicalOutput29627 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29628 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 2, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput29628 : ExponentCode := normalNode2492

theorem canonicalSound29628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29628.moment H = canonicalOutput29628.moment H :=
  canonical_of_padded canonicalInput29628 canonicalOutput29628 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29629 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, -1, 1, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29629 : ExponentCode := normalNode9286

theorem canonicalSound29629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29629.moment H = canonicalOutput29629.moment H :=
  canonical_of_padded canonicalInput29629 canonicalOutput29629 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29630 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29630 : ExponentCode := normalNode8831

theorem canonicalSound29630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29630.moment H = canonicalOutput29630.moment H :=
  canonical_of_padded canonicalInput29630 canonicalOutput29630 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29631 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 0, -2], ![-1, 0, 2, -1]]⟩

def canonicalOutput29631 : ExponentCode := normalNode4285

theorem canonicalSound29631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29631.moment H = canonicalOutput29631.moment H :=
  canonical_of_padded canonicalInput29631 canonicalOutput29631 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation405, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

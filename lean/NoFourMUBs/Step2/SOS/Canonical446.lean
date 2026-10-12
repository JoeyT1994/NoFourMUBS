import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
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

def canonicalInput28544 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput28544 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3197⟩

theorem canonicalSound28544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28544.moment H = canonicalOutput28544.moment H :=
  canonical_of_padded canonicalInput28544 canonicalOutput28544 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28545 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput28545 : ExponentCode := normalNode4250

theorem canonicalSound28545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28545.moment H = canonicalOutput28545.moment H :=
  canonical_of_padded canonicalInput28545 canonicalOutput28545 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28546 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput28546 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3040⟩

theorem canonicalSound28546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28546.moment H = canonicalOutput28546.moment H :=
  canonical_of_padded canonicalInput28546 canonicalOutput28546 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28547 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28547 : ExponentCode := normalNode4323

theorem canonicalSound28547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28547.moment H = canonicalOutput28547.moment H :=
  canonical_of_padded canonicalInput28547 canonicalOutput28547 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28548 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28548 : ExponentCode := normalNode2384

theorem canonicalSound28548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28548.moment H = canonicalOutput28548.moment H :=
  canonical_of_padded canonicalInput28548 canonicalOutput28548 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28549 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28549 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2976⟩

theorem canonicalSound28549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28549.moment H = canonicalOutput28549.moment H :=
  canonical_of_padded canonicalInput28549 canonicalOutput28549 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28550 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput28550 : ExponentCode := normalNode4323

theorem canonicalSound28550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28550.moment H = canonicalOutput28550.moment H :=
  canonical_of_padded canonicalInput28550 canonicalOutput28550 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28551 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 2, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput28551 : ExponentCode := normalNode4280

theorem canonicalSound28551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28551.moment H = canonicalOutput28551.moment H :=
  canonical_of_padded canonicalInput28551 canonicalOutput28551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28552 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput28552 : ExponentCode := normalNode3779

theorem canonicalSound28552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28552.moment H = canonicalOutput28552.moment H :=
  canonical_of_padded canonicalInput28552 canonicalOutput28552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput28553 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28553 : ExponentCode := normalNode5884

theorem canonicalSound28553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28553.moment H = canonicalOutput28553.moment H :=
  canonical_of_padded canonicalInput28553 canonicalOutput28553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28554 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28554 : ExponentCode := normalNode5896

theorem canonicalSound28554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28554.moment H = canonicalOutput28554.moment H :=
  canonical_of_padded canonicalInput28554 canonicalOutput28554 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28555 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28555 : ExponentCode := normalNode2419

theorem canonicalSound28555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28555.moment H = canonicalOutput28555.moment H :=
  canonical_of_padded canonicalInput28555 canonicalOutput28555 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28556 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput28556 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3170⟩

theorem canonicalSound28556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28556.moment H = canonicalOutput28556.moment H :=
  canonical_of_padded canonicalInput28556 canonicalOutput28556 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28557 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput28557 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3170⟩

theorem canonicalSound28557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28557.moment H = canonicalOutput28557.moment H :=
  canonical_of_padded canonicalInput28557 canonicalOutput28557 (by decide) (by decide)
    ⟨false, true, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput28558 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput28558 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3167⟩

theorem canonicalSound28558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28558.moment H = canonicalOutput28558.moment H :=
  canonical_of_padded canonicalInput28558 canonicalOutput28558 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28559 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput28559 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3155⟩

theorem canonicalSound28559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28559.moment H = canonicalOutput28559.moment H :=
  canonical_of_padded canonicalInput28559 canonicalOutput28559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28560 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 0, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput28560 : ExponentCode := normalNode3450

theorem canonicalSound28560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28560.moment H = canonicalOutput28560.moment H :=
  canonical_of_padded canonicalInput28560 canonicalOutput28560 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28561 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput28561 : ExponentCode := normalNode3770

theorem canonicalSound28561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28561.moment H = canonicalOutput28561.moment H :=
  canonical_of_padded canonicalInput28561 canonicalOutput28561 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28562 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28562 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2995⟩

theorem canonicalSound28562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28562.moment H = canonicalOutput28562.moment H :=
  canonical_of_padded canonicalInput28562 canonicalOutput28562 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28563 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 0, 1, -2], ![-1, 2, 1, -2]]⟩

def canonicalOutput28563 : ExponentCode := normalNode2318

theorem canonicalSound28563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28563.moment H = canonicalOutput28563.moment H :=
  canonical_of_padded canonicalInput28563 canonicalOutput28563 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28564 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput28564 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2999⟩

theorem canonicalSound28564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28564.moment H = canonicalOutput28564.moment H :=
  canonical_of_padded canonicalInput28564 canonicalOutput28564 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28565 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput28565 : ExponentCode := normalNode2726

theorem canonicalSound28565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28565.moment H = canonicalOutput28565.moment H :=
  canonical_of_padded canonicalInput28565 canonicalOutput28565 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28566 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28566 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3345⟩

theorem canonicalSound28566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28566.moment H = canonicalOutput28566.moment H :=
  canonical_of_padded canonicalInput28566 canonicalOutput28566 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28567 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput28567 : ExponentCode := normalNode8859

theorem canonicalSound28567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28567.moment H = canonicalOutput28567.moment H :=
  canonical_of_padded canonicalInput28567 canonicalOutput28567 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28568 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28568 : ExponentCode := normalNode4295

theorem canonicalSound28568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28568.moment H = canonicalOutput28568.moment H :=
  canonical_of_padded canonicalInput28568 canonicalOutput28568 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28569 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput28569 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3078⟩

theorem canonicalSound28569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28569.moment H = canonicalOutput28569.moment H :=
  canonical_of_padded canonicalInput28569 canonicalOutput28569 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28570 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![-1, 2, 0, -1]]⟩

def canonicalOutput28570 : ExponentCode := normalNode4295

theorem canonicalSound28570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28570.moment H = canonicalOutput28570.moment H :=
  canonical_of_padded canonicalInput28570 canonicalOutput28570 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28571 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput28571 : ExponentCode := normalNode4454

theorem canonicalSound28571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28571.moment H = canonicalOutput28571.moment H :=
  canonical_of_padded canonicalInput28571 canonicalOutput28571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput28572 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput28572 : ExponentCode := normalNode8859

theorem canonicalSound28572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28572.moment H = canonicalOutput28572.moment H :=
  canonical_of_padded canonicalInput28572 canonicalOutput28572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28573 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 2, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput28573 : ExponentCode := normalNode4250

theorem canonicalSound28573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28573.moment H = canonicalOutput28573.moment H :=
  canonical_of_padded canonicalInput28573 canonicalOutput28573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput28574 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput28574 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3217⟩

theorem canonicalSound28574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28574.moment H = canonicalOutput28574.moment H :=
  canonical_of_padded canonicalInput28574 canonicalOutput28574 (by decide) (by decide)
    ⟨false, true, canonicalPermutation219, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28575 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput28575 : ExponentCode := normalNode5519

theorem canonicalSound28575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28575.moment H = canonicalOutput28575.moment H :=
  canonical_of_padded canonicalInput28575 canonicalOutput28575 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28576 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![1, -1, 1, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28576 : ExponentCode := normalNode4971

theorem canonicalSound28576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28576.moment H = canonicalOutput28576.moment H :=
  canonical_of_padded canonicalInput28576 canonicalOutput28576 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28577 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, 1, 0], ![-1, 2, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput28577 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3208⟩

theorem canonicalSound28577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28577.moment H = canonicalOutput28577.moment H :=
  canonical_of_padded canonicalInput28577 canonicalOutput28577 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput28578 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput28578 : ExponentCode := normalNode4323

theorem canonicalSound28578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28578.moment H = canonicalOutput28578.moment H :=
  canonical_of_padded canonicalInput28578 canonicalOutput28578 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28579 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput28579 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3193⟩

theorem canonicalSound28579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28579.moment H = canonicalOutput28579.moment H :=
  canonical_of_padded canonicalInput28579 canonicalOutput28579 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput28580 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput28580 : ExponentCode := normalNode10946

theorem canonicalSound28580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28580.moment H = canonicalOutput28580.moment H :=
  canonical_of_padded canonicalInput28580 canonicalOutput28580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28581 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput28581 : ExponentCode := normalNode6141

theorem canonicalSound28581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28581.moment H = canonicalOutput28581.moment H :=
  canonical_of_padded canonicalInput28581 canonicalOutput28581 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28582 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -2, 1, 0], ![-1, 2, 2, -3]]⟩

def canonicalOutput28582 : ExponentCode := normalNode6156

theorem canonicalSound28582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28582.moment H = canonicalOutput28582.moment H :=
  canonical_of_padded canonicalInput28582 canonicalOutput28582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28583 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput28583 : ExponentCode := normalNode11015

theorem canonicalSound28583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28583.moment H = canonicalOutput28583.moment H :=
  canonical_of_padded canonicalInput28583 canonicalOutput28583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28584 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 3, 0, -1]]⟩

def canonicalOutput28584 : ExponentCode := normalNode3443

theorem canonicalSound28584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28584.moment H = canonicalOutput28584.moment H :=
  canonical_of_padded canonicalInput28584 canonicalOutput28584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28585 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 1, 0, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput28585 : ExponentCode := normalNode5078

theorem canonicalSound28585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28585.moment H = canonicalOutput28585.moment H :=
  canonical_of_padded canonicalInput28585 canonicalOutput28585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28586 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 0, 0, -1], ![-2, 3, 0, -1]]⟩

def canonicalOutput28586 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3017⟩

theorem canonicalSound28586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28586.moment H = canonicalOutput28586.moment H :=
  canonical_of_padded canonicalInput28586 canonicalOutput28586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28587 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 0, 1, -2], ![-2, 3, -1, 0]]⟩

def canonicalOutput28587 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3148⟩

theorem canonicalSound28587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28587.moment H = canonicalOutput28587.moment H :=
  canonical_of_padded canonicalInput28587 canonicalOutput28587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28588 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 1, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28588 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3087⟩

theorem canonicalSound28588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28588.moment H = canonicalOutput28588.moment H :=
  canonical_of_padded canonicalInput28588 canonicalOutput28588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28589 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 1, 0, -2], ![-2, 2, 0, 0]]⟩

def canonicalOutput28589 : ExponentCode := normalNode3875

theorem canonicalSound28589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28589.moment H = canonicalOutput28589.moment H :=
  canonical_of_padded canonicalInput28589 canonicalOutput28589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation218, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28590 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput28590 : ExponentCode := normalNode10266

theorem canonicalSound28590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28590.moment H = canonicalOutput28590.moment H :=
  canonical_of_padded canonicalInput28590 canonicalOutput28590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28591 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -1, 1, 0], ![1, -1, 1, -1], ![-2, 3, 0, -1]]⟩

def canonicalOutput28591 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3012⟩

theorem canonicalSound28591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28591.moment H = canonicalOutput28591.moment H :=
  canonical_of_padded canonicalInput28591 canonicalOutput28591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28592 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, -1, 0, 0], ![-2, 3, 0, -1]]⟩

def canonicalOutput28592 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2976⟩

theorem canonicalSound28592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28592.moment H = canonicalOutput28592.moment H :=
  canonical_of_padded canonicalInput28592 canonicalOutput28592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28593 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, -1, 1, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput28593 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3126⟩

theorem canonicalSound28593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28593.moment H = canonicalOutput28593.moment H :=
  canonical_of_padded canonicalInput28593 canonicalOutput28593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28594 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, -1, 0, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput28594 : ExponentCode := normalNode9067

theorem canonicalSound28594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28594.moment H = canonicalOutput28594.moment H :=
  canonical_of_padded canonicalInput28594 canonicalOutput28594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28595 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![-1, 2, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput28595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2853⟩

theorem canonicalSound28595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28595.moment H = canonicalOutput28595.moment H :=
  canonical_of_padded canonicalInput28595 canonicalOutput28595 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28596 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, -1, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput28596 : ExponentCode := normalNode11163

theorem canonicalSound28596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28596.moment H = canonicalOutput28596.moment H :=
  canonical_of_padded canonicalInput28596 canonicalOutput28596 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28597 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 1, -1], ![1, -2, 1, 0], ![-2, 3, 0, -1]]⟩

def canonicalOutput28597 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2971⟩

theorem canonicalSound28597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28597.moment H = canonicalOutput28597.moment H :=
  canonical_of_padded canonicalInput28597 canonicalOutput28597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28598 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![1, -2, 0, 1], ![-2, 3, 0, -1]]⟩

def canonicalOutput28598 : ExponentCode := normalNode3444

theorem canonicalSound28598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28598.moment H = canonicalOutput28598.moment H :=
  canonical_of_padded canonicalInput28598 canonicalOutput28598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28599 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![1, -2, 1, 0], ![-2, 3, -1, 0]]⟩

def canonicalOutput28599 : ExponentCode := normalNode3363

theorem canonicalSound28599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28599.moment H = canonicalOutput28599.moment H :=
  canonical_of_padded canonicalInput28599 canonicalOutput28599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28600 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 0, -1], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28600 : ExponentCode := normalNode2395

theorem canonicalSound28600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28600.moment H = canonicalOutput28600.moment H :=
  canonical_of_padded canonicalInput28600 canonicalOutput28600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28601 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 0, -1], ![1, 1, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28601 : ExponentCode := normalNode2956

theorem canonicalSound28601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28601.moment H = canonicalOutput28601.moment H :=
  canonical_of_padded canonicalInput28601 canonicalOutput28601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28602 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28602 : ExponentCode := normalNode5077

theorem canonicalSound28602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28602.moment H = canonicalOutput28602.moment H :=
  canonical_of_padded canonicalInput28602 canonicalOutput28602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28603 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![-2, 2, 0, 0]]⟩

def canonicalOutput28603 : ExponentCode := normalNode3770

theorem canonicalSound28603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28603.moment H = canonicalOutput28603.moment H :=
  canonical_of_padded canonicalInput28603 canonicalOutput28603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28604 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 1, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput28604 : ExponentCode := normalNode2726

theorem canonicalSound28604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28604.moment H = canonicalOutput28604.moment H :=
  canonical_of_padded canonicalInput28604 canonicalOutput28604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28605 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 1, 0, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput28605 : ExponentCode := normalNode2632

theorem canonicalSound28605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28605.moment H = canonicalOutput28605.moment H :=
  canonical_of_padded canonicalInput28605 canonicalOutput28605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28606 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput28606 : ExponentCode := normalNode2560

theorem canonicalSound28606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28606.moment H = canonicalOutput28606.moment H :=
  canonical_of_padded canonicalInput28606 canonicalOutput28606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28607 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, 0, 1, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28607 : ExponentCode := normalNode2736

theorem canonicalSound28607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28607.moment H = canonicalOutput28607.moment H :=
  canonical_of_padded canonicalInput28607 canonicalOutput28607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

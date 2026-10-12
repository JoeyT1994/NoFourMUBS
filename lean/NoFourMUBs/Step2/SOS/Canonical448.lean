import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28672 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -2, 2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput28672 : ExponentCode := normalNode829

theorem canonicalSound28672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28672.moment H = canonicalOutput28672.moment H :=
  canonical_of_padded canonicalInput28672 canonicalOutput28672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28673 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput28673 : ExponentCode := normalNode7018

theorem canonicalSound28673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28673.moment H = canonicalOutput28673.moment H :=
  canonical_of_padded canonicalInput28673 canonicalOutput28673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28674 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 3, 1, -3]]⟩

def canonicalOutput28674 : ExponentCode := normalNode6212

theorem canonicalSound28674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28674.moment H = canonicalOutput28674.moment H :=
  canonical_of_padded canonicalInput28674 canonicalOutput28674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28675 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -3, 3, 1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28675 : ExponentCode := normalNode6092

theorem canonicalSound28675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28675.moment H = canonicalOutput28675.moment H :=
  canonical_of_padded canonicalInput28675 canonicalOutput28675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28676 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 2, 3, -4]]⟩

def canonicalOutput28676 : ExponentCode := normalNode1940

theorem canonicalSound28676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28676.moment H = canonicalOutput28676.moment H :=
  canonical_of_padded canonicalInput28676 canonicalOutput28676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28677 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput28677 : ExponentCode := normalNode2628

theorem canonicalSound28677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28677.moment H = canonicalOutput28677.moment H :=
  canonical_of_padded canonicalInput28677 canonicalOutput28677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28678 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput28678 : ExponentCode := normalNode2727

theorem canonicalSound28678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28678.moment H = canonicalOutput28678.moment H :=
  canonical_of_padded canonicalInput28678 canonicalOutput28678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28679 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 2, 0, -1]]⟩

def canonicalOutput28679 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2997⟩

theorem canonicalSound28679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28679.moment H = canonicalOutput28679.moment H :=
  canonical_of_padded canonicalInput28679 canonicalOutput28679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28680 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput28680 : ExponentCode := normalNode9457

theorem canonicalSound28680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28680.moment H = canonicalOutput28680.moment H :=
  canonical_of_padded canonicalInput28680 canonicalOutput28680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28681 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-2, 2, 3, -3]]⟩

def canonicalOutput28681 : ExponentCode := normalNode4035

theorem canonicalSound28681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28681.moment H = canonicalOutput28681.moment H :=
  canonical_of_padded canonicalInput28681 canonicalOutput28681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28682 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, 0, 0, 0], ![-1, 2, -2, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput28682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2820⟩

theorem canonicalSound28682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28682.moment H = canonicalOutput28682.moment H :=
  canonical_of_padded canonicalInput28682 canonicalOutput28682 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28683 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, -1, 0, 0], ![-2, 3, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput28683 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3128⟩

theorem canonicalSound28683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28683.moment H = canonicalOutput28683.moment H :=
  canonical_of_padded canonicalInput28683 canonicalOutput28683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28684 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, -1, 0, 0], ![-1, -2, 3, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput28684 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3362⟩

theorem canonicalSound28684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28684.moment H = canonicalOutput28684.moment H :=
  canonical_of_padded canonicalInput28684 canonicalOutput28684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28685 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput28685 : ExponentCode := normalNode3282

theorem canonicalSound28685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28685.moment H = canonicalOutput28685.moment H :=
  canonical_of_padded canonicalInput28685 canonicalOutput28685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28686 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput28686 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3135⟩

theorem canonicalSound28686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28686.moment H = canonicalOutput28686.moment H :=
  canonical_of_padded canonicalInput28686 canonicalOutput28686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28687 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -3, 3, 0]]⟩

def canonicalOutput28687 : ExponentCode := normalNode3613

theorem canonicalSound28687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28687.moment H = canonicalOutput28687.moment H :=
  canonical_of_padded canonicalInput28687 canonicalOutput28687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28688 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -3, 3, 1], ![-1, 3, -1, -1]]⟩

def canonicalOutput28688 : ExponentCode := normalNode6095

theorem canonicalSound28688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28688.moment H = canonicalOutput28688.moment H :=
  canonical_of_padded canonicalInput28688 canonicalOutput28688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28689 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 2, -1, 0]]⟩

def canonicalOutput28689 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2996⟩

theorem canonicalSound28689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28689.moment H = canonicalOutput28689.moment H :=
  canonical_of_padded canonicalInput28689 canonicalOutput28689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28690 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![-1, -2, 4, -1]]⟩

def canonicalOutput28690 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2925⟩

theorem canonicalSound28690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28690.moment H = canonicalOutput28690.moment H :=
  canonical_of_padded canonicalInput28690 canonicalOutput28690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28691 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput28691 : ExponentCode := normalNode10519

theorem canonicalSound28691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28691.moment H = canonicalOutput28691.moment H :=
  canonical_of_padded canonicalInput28691 canonicalOutput28691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28692 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput28692 : ExponentCode := normalNode2651

theorem canonicalSound28692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28692.moment H = canonicalOutput28692.moment H :=
  canonical_of_padded canonicalInput28692 canonicalOutput28692 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28693 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput28693 : ExponentCode := normalNode3949

theorem canonicalSound28693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28693.moment H = canonicalOutput28693.moment H :=
  canonical_of_padded canonicalInput28693 canonicalOutput28693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput28694 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28694 : ExponentCode := normalNode2649

theorem canonicalSound28694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28694.moment H = canonicalOutput28694.moment H :=
  canonical_of_padded canonicalInput28694 canonicalOutput28694 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28695 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput28695 : ExponentCode := normalNode2408

theorem canonicalSound28695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28695.moment H = canonicalOutput28695.moment H :=
  canonical_of_padded canonicalInput28695 canonicalOutput28695 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28696 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput28696 : ExponentCode := normalNode10529

theorem canonicalSound28696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28696.moment H = canonicalOutput28696.moment H :=
  canonical_of_padded canonicalInput28696 canonicalOutput28696 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28697 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28697 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound28697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28697.moment H = canonicalOutput28697.moment H :=
  canonical_of_padded canonicalInput28697 canonicalOutput28697 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28698 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28698 : ExponentCode := normalNode2931

theorem canonicalSound28698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28698.moment H = canonicalOutput28698.moment H :=
  canonical_of_padded canonicalInput28698 canonicalOutput28698 (by decide) (by decide)
    ⟨false, true, canonicalPermutation346, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28699 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput28699 : ExponentCode := normalNode1802

theorem canonicalSound28699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28699.moment H = canonicalOutput28699.moment H :=
  canonical_of_padded canonicalInput28699 canonicalOutput28699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28700 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28700 : ExponentCode := normalNode2932

theorem canonicalSound28700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28700.moment H = canonicalOutput28700.moment H :=
  canonical_of_padded canonicalInput28700 canonicalOutput28700 (by decide) (by decide)
    ⟨false, true, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28701 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩

theorem canonicalSound28701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28701.moment H = canonicalOutput28701.moment H :=
  canonical_of_padded canonicalInput28701 canonicalOutput28701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28702 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput28702 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound28702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28702.moment H = canonicalOutput28702.moment H :=
  canonical_of_padded canonicalInput28702 canonicalOutput28702 (by decide) (by decide)
    ⟨false, false, canonicalPermutation113, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28703 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput28703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2222⟩

theorem canonicalSound28703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28703.moment H = canonicalOutput28703.moment H :=
  canonical_of_padded canonicalInput28703 canonicalOutput28703 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28704 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -3, 1, 0]]⟩

def canonicalOutput28704 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1630⟩

theorem canonicalSound28704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28704.moment H = canonicalOutput28704.moment H :=
  canonical_of_padded canonicalInput28704 canonicalOutput28704 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28705 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput28705 : ExponentCode := normalNode849

theorem canonicalSound28705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28705.moment H = canonicalOutput28705.moment H :=
  canonical_of_padded canonicalInput28705 canonicalOutput28705 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28706 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput28706 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1493⟩

theorem canonicalSound28706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28706.moment H = canonicalOutput28706.moment H :=
  canonical_of_padded canonicalInput28706 canonicalOutput28706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28707 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28707 : ExponentCode := normalNode2655

theorem canonicalSound28707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28707.moment H = canonicalOutput28707.moment H :=
  canonical_of_padded canonicalInput28707 canonicalOutput28707 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28708 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 0, 3], ![2, 1, 0, -3]]⟩

def canonicalOutput28708 : ExponentCode := normalNode1781

theorem canonicalSound28708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28708.moment H = canonicalOutput28708.moment H :=
  canonical_of_padded canonicalInput28708 canonicalOutput28708 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28709 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput28709 : ExponentCode := normalNode2485

theorem canonicalSound28709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28709.moment H = canonicalOutput28709.moment H :=
  canonical_of_padded canonicalInput28709 canonicalOutput28709 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28710 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput28710 : ExponentCode := normalNode2480

theorem canonicalSound28710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28710.moment H = canonicalOutput28710.moment H :=
  canonical_of_padded canonicalInput28710 canonicalOutput28710 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28711 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, -2, 2, 0], ![-2, 1, -1, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput28711 : ExponentCode := normalNode3471

theorem canonicalSound28711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28711.moment H = canonicalOutput28711.moment H :=
  canonical_of_padded canonicalInput28711 canonicalOutput28711 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28712 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput28712 : ExponentCode := normalNode874

theorem canonicalSound28712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28712.moment H = canonicalOutput28712.moment H :=
  canonical_of_padded canonicalInput28712 canonicalOutput28712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28713 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28713 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩

theorem canonicalSound28713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28713.moment H = canonicalOutput28713.moment H :=
  canonical_of_padded canonicalInput28713 canonicalOutput28713 (by decide) (by decide)
    ⟨false, true, canonicalPermutation328, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28714 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput28714 : ExponentCode := normalNode2687

theorem canonicalSound28714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28714.moment H = canonicalOutput28714.moment H :=
  canonical_of_padded canonicalInput28714 canonicalOutput28714 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28715 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28715 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound28715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28715.moment H = canonicalOutput28715.moment H :=
  canonical_of_padded canonicalInput28715 canonicalOutput28715 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28716 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28716 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩

theorem canonicalSound28716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28716.moment H = canonicalOutput28716.moment H :=
  canonical_of_padded canonicalInput28716 canonicalOutput28716 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28717 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1563⟩

theorem canonicalSound28717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28717.moment H = canonicalOutput28717.moment H :=
  canonical_of_padded canonicalInput28717 canonicalOutput28717 (by decide) (by decide)
    ⟨false, true, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28718 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput28718 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2228⟩

theorem canonicalSound28718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28718.moment H = canonicalOutput28718.moment H :=
  canonical_of_padded canonicalInput28718 canonicalOutput28718 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28719 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput28719 : ExponentCode := normalNode1980

theorem canonicalSound28719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28719.moment H = canonicalOutput28719.moment H :=
  canonical_of_padded canonicalInput28719 canonicalOutput28719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28720 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput28720 : ExponentCode := normalNode887

theorem canonicalSound28720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28720.moment H = canonicalOutput28720.moment H :=
  canonical_of_padded canonicalInput28720 canonicalOutput28720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28721 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28721 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound28721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28721.moment H = canonicalOutput28721.moment H :=
  canonical_of_padded canonicalInput28721 canonicalOutput28721 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28722 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![-2, 1, -1, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput28722 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2227⟩

theorem canonicalSound28722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28722.moment H = canonicalOutput28722.moment H :=
  canonical_of_padded canonicalInput28722 canonicalOutput28722 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28723 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput28723 : ExponentCode := normalNode8948

theorem canonicalSound28723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28723.moment H = canonicalOutput28723.moment H :=
  canonical_of_padded canonicalInput28723 canonicalOutput28723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation349, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28724 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput28724 : ExponentCode := normalNode9550

theorem canonicalSound28724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28724.moment H = canonicalOutput28724.moment H :=
  canonical_of_padded canonicalInput28724 canonicalOutput28724 (by decide) (by decide)
    ⟨false, true, canonicalPermutation222, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28725 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput28725 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound28725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28725.moment H = canonicalOutput28725.moment H :=
  canonical_of_padded canonicalInput28725 canonicalOutput28725 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28726 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -2, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28726 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2697⟩

theorem canonicalSound28726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28726.moment H = canonicalOutput28726.moment H :=
  canonical_of_padded canonicalInput28726 canonicalOutput28726 (by decide) (by decide)
    ⟨false, false, canonicalPermutation336, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28727 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput28727 : ExponentCode := normalNode2373

theorem canonicalSound28727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28727.moment H = canonicalOutput28727.moment H :=
  canonical_of_padded canonicalInput28727 canonicalOutput28727 (by decide) (by decide)
    ⟨false, true, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28728 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput28728 : ExponentCode := normalNode10532

theorem canonicalSound28728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28728.moment H = canonicalOutput28728.moment H :=
  canonical_of_padded canonicalInput28728 canonicalOutput28728 (by decide) (by decide)
    ⟨false, false, canonicalPermutation350, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28729 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput28729 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound28729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28729.moment H = canonicalOutput28729.moment H :=
  canonical_of_padded canonicalInput28729 canonicalOutput28729 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28730 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput28730 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound28730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28730.moment H = canonicalOutput28730.moment H :=
  canonical_of_padded canonicalInput28730 canonicalOutput28730 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28731 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, 1, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput28731 : ExponentCode := normalNode2413

theorem canonicalSound28731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28731.moment H = canonicalOutput28731.moment H :=
  canonical_of_padded canonicalInput28731 canonicalOutput28731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28732 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput28732 : ExponentCode := normalNode10526

theorem canonicalSound28732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28732.moment H = canonicalOutput28732.moment H :=
  canonical_of_padded canonicalInput28732 canonicalOutput28732 (by decide) (by decide)
    ⟨false, false, canonicalPermutation352, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28733 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput28733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound28733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28733.moment H = canonicalOutput28733.moment H :=
  canonical_of_padded canonicalInput28733 canonicalOutput28733 (by decide) (by decide)
    ⟨false, false, canonicalPermutation228, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28734 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28734 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound28734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28734.moment H = canonicalOutput28734.moment H :=
  canonical_of_padded canonicalInput28734 canonicalOutput28734 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28735 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput28735 : ExponentCode := normalNode8991

theorem canonicalSound28735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28735.moment H = canonicalOutput28735.moment H :=
  canonical_of_padded canonicalInput28735 canonicalOutput28735 (by decide) (by decide)
    ⟨false, true, canonicalPermutation326, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7680 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7680 : ExponentCode := normalNode9080

theorem canonicalSound7680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7680.moment H = canonicalOutput7680.moment H :=
  canonical_of_padded canonicalInput7680 canonicalOutput7680 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7681 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput7681 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound7681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7681.moment H = canonicalOutput7681.moment H :=
  canonical_of_padded canonicalInput7681 canonicalOutput7681 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7682 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2643⟩

theorem canonicalSound7682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7682.moment H = canonicalOutput7682.moment H :=
  canonical_of_padded canonicalInput7682 canonicalOutput7682 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7683 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7683 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound7683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7683.moment H = canonicalOutput7683.moment H :=
  canonical_of_padded canonicalInput7683 canonicalOutput7683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7684 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput7684 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound7684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7684.moment H = canonicalOutput7684.moment H :=
  canonical_of_padded canonicalInput7684 canonicalOutput7684 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput7685 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput7685 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound7685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7685.moment H = canonicalOutput7685.moment H :=
  canonical_of_padded canonicalInput7685 canonicalOutput7685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7686 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound7686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7686.moment H = canonicalOutput7686.moment H :=
  canonical_of_padded canonicalInput7686 canonicalOutput7686 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput7687 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7687 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound7687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7687.moment H = canonicalOutput7687.moment H :=
  canonical_of_padded canonicalInput7687 canonicalOutput7687 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput7688 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput7688 : ExponentCode := normalNode4064

theorem canonicalSound7688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7688.moment H = canonicalOutput7688.moment H :=
  canonical_of_padded canonicalInput7688 canonicalOutput7688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7689 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput7689 : ExponentCode := normalNode4065

theorem canonicalSound7689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7689.moment H = canonicalOutput7689.moment H :=
  canonical_of_padded canonicalInput7689 canonicalOutput7689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7690 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput7690 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound7690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7690.moment H = canonicalOutput7690.moment H :=
  canonical_of_padded canonicalInput7690 canonicalOutput7690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput7691 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput7691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2453⟩

theorem canonicalSound7691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7691.moment H = canonicalOutput7691.moment H :=
  canonical_of_padded canonicalInput7691 canonicalOutput7691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7692 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput7692 : ExponentCode := normalNode3596

theorem canonicalSound7692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7692.moment H = canonicalOutput7692.moment H :=
  canonical_of_padded canonicalInput7692 canonicalOutput7692 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7693 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput7693 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2001⟩

theorem canonicalSound7693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7693.moment H = canonicalOutput7693.moment H :=
  canonical_of_padded canonicalInput7693 canonicalOutput7693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7694 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput7694 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩

theorem canonicalSound7694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7694.moment H = canonicalOutput7694.moment H :=
  canonical_of_padded canonicalInput7694 canonicalOutput7694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7695 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput7695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1514⟩

theorem canonicalSound7695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7695.moment H = canonicalOutput7695.moment H :=
  canonical_of_padded canonicalInput7695 canonicalOutput7695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7696 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -3, 0, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput7696 : ExponentCode := normalNode4133

theorem canonicalSound7696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7696.moment H = canonicalOutput7696.moment H :=
  canonical_of_padded canonicalInput7696 canonicalOutput7696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7697 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7697 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2637⟩

theorem canonicalSound7697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7697.moment H = canonicalOutput7697.moment H :=
  canonical_of_padded canonicalInput7697 canonicalOutput7697 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7698 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput7698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2552⟩

theorem canonicalSound7698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7698.moment H = canonicalOutput7698.moment H :=
  canonical_of_padded canonicalInput7698 canonicalOutput7698 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7699 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7699 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2556⟩

theorem canonicalSound7699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7699.moment H = canonicalOutput7699.moment H :=
  canonical_of_padded canonicalInput7699 canonicalOutput7699 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7700 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7700 : ExponentCode := normalNode10914

theorem canonicalSound7700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7700.moment H = canonicalOutput7700.moment H :=
  canonical_of_padded canonicalInput7700 canonicalOutput7700 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7701 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7701 : ExponentCode := normalNode10917

theorem canonicalSound7701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7701.moment H = canonicalOutput7701.moment H :=
  canonical_of_padded canonicalInput7701 canonicalOutput7701 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7702 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput7702 : ExponentCode := normalNode9895

theorem canonicalSound7702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7702.moment H = canonicalOutput7702.moment H :=
  canonical_of_padded canonicalInput7702 canonicalOutput7702 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7703 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput7703 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound7703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7703.moment H = canonicalOutput7703.moment H :=
  canonical_of_padded canonicalInput7703 canonicalOutput7703 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7704 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7704 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound7704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7704.moment H = canonicalOutput7704.moment H :=
  canonical_of_padded canonicalInput7704 canonicalOutput7704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7705 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7705 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound7705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7705.moment H = canonicalOutput7705.moment H :=
  canonical_of_padded canonicalInput7705 canonicalOutput7705 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7706 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput7706 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound7706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7706.moment H = canonicalOutput7706.moment H :=
  canonical_of_padded canonicalInput7706 canonicalOutput7706 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7707 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7707 : ExponentCode := normalNode10716

theorem canonicalSound7707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7707.moment H = canonicalOutput7707.moment H :=
  canonical_of_padded canonicalInput7707 canonicalOutput7707 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7708 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput7708 : ExponentCode := normalNode4075

theorem canonicalSound7708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7708.moment H = canonicalOutput7708.moment H :=
  canonical_of_padded canonicalInput7708 canonicalOutput7708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7709 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput7709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound7709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7709.moment H = canonicalOutput7709.moment H :=
  canonical_of_padded canonicalInput7709 canonicalOutput7709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7710 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7710 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1758⟩

theorem canonicalSound7710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7710.moment H = canonicalOutput7710.moment H :=
  canonical_of_padded canonicalInput7710 canonicalOutput7710 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7711 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput7711 : ExponentCode := normalNode10569

theorem canonicalSound7711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7711.moment H = canonicalOutput7711.moment H :=
  canonical_of_padded canonicalInput7711 canonicalOutput7711 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7712 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound7712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7712.moment H = canonicalOutput7712.moment H :=
  canonical_of_padded canonicalInput7712 canonicalOutput7712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7713 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7713 : ExponentCode := normalNode2413

theorem canonicalSound7713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7713.moment H = canonicalOutput7713.moment H :=
  canonical_of_padded canonicalInput7713 canonicalOutput7713 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7714 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7714 : ExponentCode := normalNode9454

theorem canonicalSound7714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7714.moment H = canonicalOutput7714.moment H :=
  canonical_of_padded canonicalInput7714 canonicalOutput7714 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7715 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput7715 : ExponentCode := normalNode3819

theorem canonicalSound7715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7715.moment H = canonicalOutput7715.moment H :=
  canonical_of_padded canonicalInput7715 canonicalOutput7715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7716 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput7716 : ExponentCode := normalNode4076

theorem canonicalSound7716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7716.moment H = canonicalOutput7716.moment H :=
  canonical_of_padded canonicalInput7716 canonicalOutput7716 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7717 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound7717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7717.moment H = canonicalOutput7717.moment H :=
  canonical_of_padded canonicalInput7717 canonicalOutput7717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput7718 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput7718 : ExponentCode := normalNode10556

theorem canonicalSound7718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7718.moment H = canonicalOutput7718.moment H :=
  canonical_of_padded canonicalInput7718 canonicalOutput7718 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7719 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput7719 : ExponentCode := normalNode579

theorem canonicalSound7719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7719.moment H = canonicalOutput7719.moment H :=
  canonical_of_padded canonicalInput7719 canonicalOutput7719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7720 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7720 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound7720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7720.moment H = canonicalOutput7720.moment H :=
  canonical_of_padded canonicalInput7720 canonicalOutput7720 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7721 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7721 : ExponentCode := normalNode9447

theorem canonicalSound7721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7721.moment H = canonicalOutput7721.moment H :=
  canonical_of_padded canonicalInput7721 canonicalOutput7721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7722 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7722 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound7722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7722.moment H = canonicalOutput7722.moment H :=
  canonical_of_padded canonicalInput7722 canonicalOutput7722 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7723 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7723 : ExponentCode := normalNode8949

theorem canonicalSound7723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7723.moment H = canonicalOutput7723.moment H :=
  canonical_of_padded canonicalInput7723 canonicalOutput7723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7724 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput7724 : ExponentCode := normalNode10305

theorem canonicalSound7724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7724.moment H = canonicalOutput7724.moment H :=
  canonical_of_padded canonicalInput7724 canonicalOutput7724 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7725 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7725 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound7725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7725.moment H = canonicalOutput7725.moment H :=
  canonical_of_padded canonicalInput7725 canonicalOutput7725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7726 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7726 : ExponentCode := normalNode9938

theorem canonicalSound7726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7726.moment H = canonicalOutput7726.moment H :=
  canonical_of_padded canonicalInput7726 canonicalOutput7726 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7727 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput7727 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1322⟩

theorem canonicalSound7727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7727.moment H = canonicalOutput7727.moment H :=
  canonical_of_padded canonicalInput7727 canonicalOutput7727 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7728 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7728 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound7728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7728.moment H = canonicalOutput7728.moment H :=
  canonical_of_padded canonicalInput7728 canonicalOutput7728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7729 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7729 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound7729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7729.moment H = canonicalOutput7729.moment H :=
  canonical_of_padded canonicalInput7729 canonicalOutput7729 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7730 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7730 : ExponentCode := normalNode2371

theorem canonicalSound7730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7730.moment H = canonicalOutput7730.moment H :=
  canonical_of_padded canonicalInput7730 canonicalOutput7730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7731 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput7731 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound7731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7731.moment H = canonicalOutput7731.moment H :=
  canonical_of_padded canonicalInput7731 canonicalOutput7731 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7732 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7732 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound7732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7732.moment H = canonicalOutput7732.moment H :=
  canonical_of_padded canonicalInput7732 canonicalOutput7732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7733 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput7733 : ExponentCode := normalNode3991

theorem canonicalSound7733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7733.moment H = canonicalOutput7733.moment H :=
  canonical_of_padded canonicalInput7733 canonicalOutput7733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7734 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput7734 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound7734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7734.moment H = canonicalOutput7734.moment H :=
  canonical_of_padded canonicalInput7734 canonicalOutput7734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput7735 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput7735 : ExponentCode := normalNode3991

theorem canonicalSound7735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7735.moment H = canonicalOutput7735.moment H :=
  canonical_of_padded canonicalInput7735 canonicalOutput7735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7736 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput7736 : ExponentCode := normalNode4006

theorem canonicalSound7736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7736.moment H = canonicalOutput7736.moment H :=
  canonical_of_padded canonicalInput7736 canonicalOutput7736 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7737 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput7737 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound7737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7737.moment H = canonicalOutput7737.moment H :=
  canonical_of_padded canonicalInput7737 canonicalOutput7737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7738 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput7738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound7738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7738.moment H = canonicalOutput7738.moment H :=
  canonical_of_padded canonicalInput7738 canonicalOutput7738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7739 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![1, -3, 1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput7739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound7739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7739.moment H = canonicalOutput7739.moment H :=
  canonical_of_padded canonicalInput7739 canonicalOutput7739 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7740 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![1, -3, 2, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput7740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound7740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7740.moment H = canonicalOutput7740.moment H :=
  canonical_of_padded canonicalInput7740 canonicalOutput7740 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7741 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput7741 : ExponentCode := normalNode7456

theorem canonicalSound7741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7741.moment H = canonicalOutput7741.moment H :=
  canonical_of_padded canonicalInput7741 canonicalOutput7741 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7742 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩

theorem canonicalSound7742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7742.moment H = canonicalOutput7742.moment H :=
  canonical_of_padded canonicalInput7742 canonicalOutput7742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7743 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput7743 : ExponentCode := normalNode7467

theorem canonicalSound7743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7743.moment H = canonicalOutput7743.moment H :=
  canonical_of_padded canonicalInput7743 canonicalOutput7743 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

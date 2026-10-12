import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7744 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput7744 : ExponentCode := normalNode10521

theorem canonicalSound7744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7744.moment H = canonicalOutput7744.moment H :=
  canonical_of_padded canonicalInput7744 canonicalOutput7744 (by decide) (by decide)
    ⟨false, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7745 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7745 : ExponentCode := normalNode9062

theorem canonicalSound7745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7745.moment H = canonicalOutput7745.moment H :=
  canonical_of_padded canonicalInput7745 canonicalOutput7745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7746 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput7746 : ExponentCode := normalNode9553

theorem canonicalSound7746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7746.moment H = canonicalOutput7746.moment H :=
  canonical_of_padded canonicalInput7746 canonicalOutput7746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7747 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7747 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2635⟩

theorem canonicalSound7747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7747.moment H = canonicalOutput7747.moment H :=
  canonical_of_padded canonicalInput7747 canonicalOutput7747 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7748 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput7748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound7748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7748.moment H = canonicalOutput7748.moment H :=
  canonical_of_padded canonicalInput7748 canonicalOutput7748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7749 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound7749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7749.moment H = canonicalOutput7749.moment H :=
  canonical_of_padded canonicalInput7749 canonicalOutput7749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7750 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput7750 : ExponentCode := normalNode4074

theorem canonicalSound7750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7750.moment H = canonicalOutput7750.moment H :=
  canonical_of_padded canonicalInput7750 canonicalOutput7750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7751 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2556⟩

theorem canonicalSound7751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7751.moment H = canonicalOutput7751.moment H :=
  canonical_of_padded canonicalInput7751 canonicalOutput7751 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7752 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7752 : ExponentCode := normalNode10916

theorem canonicalSound7752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7752.moment H = canonicalOutput7752.moment H :=
  canonical_of_padded canonicalInput7752 canonicalOutput7752 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7753 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, 0, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput7753 : ExponentCode := normalNode10916

theorem canonicalSound7753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7753.moment H = canonicalOutput7753.moment H :=
  canonical_of_padded canonicalInput7753 canonicalOutput7753 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7754 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7754 : ExponentCode := normalNode10852

theorem canonicalSound7754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7754.moment H = canonicalOutput7754.moment H :=
  canonical_of_padded canonicalInput7754 canonicalOutput7754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7755 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput7755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7755.moment H = canonicalOutput7755.moment H :=
  canonical_of_padded canonicalInput7755 canonicalOutput7755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput7756 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput7756 : ExponentCode := normalNode10716

theorem canonicalSound7756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7756.moment H = canonicalOutput7756.moment H :=
  canonical_of_padded canonicalInput7756 canonicalOutput7756 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7757 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput7757 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩

theorem canonicalSound7757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7757.moment H = canonicalOutput7757.moment H :=
  canonical_of_padded canonicalInput7757 canonicalOutput7757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7758 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7758 : ExponentCode := normalNode3968

theorem canonicalSound7758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7758.moment H = canonicalOutput7758.moment H :=
  canonical_of_padded canonicalInput7758 canonicalOutput7758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7759 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7759 : ExponentCode := normalNode3780

theorem canonicalSound7759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7759.moment H = canonicalOutput7759.moment H :=
  canonical_of_padded canonicalInput7759 canonicalOutput7759 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7760 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2745⟩

theorem canonicalSound7760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7760.moment H = canonicalOutput7760.moment H :=
  canonical_of_padded canonicalInput7760 canonicalOutput7760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput7761 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput7761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7761.moment H = canonicalOutput7761.moment H :=
  canonical_of_padded canonicalInput7761 canonicalOutput7761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput7762 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput7762 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩

theorem canonicalSound7762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7762.moment H = canonicalOutput7762.moment H :=
  canonical_of_padded canonicalInput7762 canonicalOutput7762 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7763 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput7763 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1514⟩

theorem canonicalSound7763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7763.moment H = canonicalOutput7763.moment H :=
  canonical_of_padded canonicalInput7763 canonicalOutput7763 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7764 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput7764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound7764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7764.moment H = canonicalOutput7764.moment H :=
  canonical_of_padded canonicalInput7764 canonicalOutput7764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7765 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7765 : ExponentCode := normalNode10520

theorem canonicalSound7765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7765.moment H = canonicalOutput7765.moment H :=
  canonical_of_padded canonicalInput7765 canonicalOutput7765 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7766 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7766 : ExponentCode := normalNode10304

theorem canonicalSound7766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7766.moment H = canonicalOutput7766.moment H :=
  canonical_of_padded canonicalInput7766 canonicalOutput7766 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7767 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput7767 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1255⟩

theorem canonicalSound7767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7767.moment H = canonicalOutput7767.moment H :=
  canonical_of_padded canonicalInput7767 canonicalOutput7767 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7768 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -4, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput7768 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code736

theorem canonicalSound7768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7768.moment H = canonicalOutput7768.moment H :=
  canonical_of_padded canonicalInput7768 canonicalOutput7768 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7769 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7769 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound7769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7769.moment H = canonicalOutput7769.moment H :=
  canonical_of_padded canonicalInput7769 canonicalOutput7769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7770 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7770 : ExponentCode := normalNode3756

theorem canonicalSound7770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7770.moment H = canonicalOutput7770.moment H :=
  canonical_of_padded canonicalInput7770 canonicalOutput7770 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7771 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput7771 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node607⟩

theorem canonicalSound7771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7771.moment H = canonicalOutput7771.moment H :=
  canonical_of_padded canonicalInput7771 canonicalOutput7771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7772 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7772 : ExponentCode := normalNode3995

theorem canonicalSound7772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7772.moment H = canonicalOutput7772.moment H :=
  canonical_of_padded canonicalInput7772 canonicalOutput7772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7773 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput7773 : ExponentCode := normalNode3968

theorem canonicalSound7773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7773.moment H = canonicalOutput7773.moment H :=
  canonical_of_padded canonicalInput7773 canonicalOutput7773 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7774 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7774 : ExponentCode := normalNode3968

theorem canonicalSound7774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7774.moment H = canonicalOutput7774.moment H :=
  canonical_of_padded canonicalInput7774 canonicalOutput7774 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7775 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput7775 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound7775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7775.moment H = canonicalOutput7775.moment H :=
  canonical_of_padded canonicalInput7775 canonicalOutput7775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7776 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7776 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code894

theorem canonicalSound7776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7776.moment H = canonicalOutput7776.moment H :=
  canonical_of_padded canonicalInput7776 canonicalOutput7776 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7777 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput7777 : ExponentCode := normalNode2424

theorem canonicalSound7777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7777.moment H = canonicalOutput7777.moment H :=
  canonical_of_padded canonicalInput7777 canonicalOutput7777 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7778 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput7778 : ExponentCode := normalNode2424

theorem canonicalSound7778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7778.moment H = canonicalOutput7778.moment H :=
  canonical_of_padded canonicalInput7778 canonicalOutput7778 (by decide) (by decide)
    ⟨false, false, canonicalPermutation51, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7779 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput7779 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node412⟩

theorem canonicalSound7779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7779.moment H = canonicalOutput7779.moment H :=
  canonical_of_padded canonicalInput7779 canonicalOutput7779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7780 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -3, 1, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput7780 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code792

theorem canonicalSound7780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7780.moment H = canonicalOutput7780.moment H :=
  canonical_of_padded canonicalInput7780 canonicalOutput7780 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7781 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -2, -2, 3], ![1, 2, 0, -3]]⟩

def canonicalOutput7781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node406⟩

theorem canonicalSound7781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7781.moment H = canonicalOutput7781.moment H :=
  canonical_of_padded canonicalInput7781 canonicalOutput7781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7782 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput7782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound7782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7782.moment H = canonicalOutput7782.moment H :=
  canonical_of_padded canonicalInput7782 canonicalOutput7782 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7783 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput7783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound7783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7783.moment H = canonicalOutput7783.moment H :=
  canonical_of_padded canonicalInput7783 canonicalOutput7783 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7784 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -1, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput7784 : ExponentCode := normalNode7937

theorem canonicalSound7784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7784.moment H = canonicalOutput7784.moment H :=
  canonical_of_padded canonicalInput7784 canonicalOutput7784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7785 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound7785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7785.moment H = canonicalOutput7785.moment H :=
  canonical_of_padded canonicalInput7785 canonicalOutput7785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7786 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, -1, 2, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput7786 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node916⟩

theorem canonicalSound7786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7786.moment H = canonicalOutput7786.moment H :=
  canonical_of_padded canonicalInput7786 canonicalOutput7786 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7787 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 2, -2], ![1, 0, -3, 2], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput7787 : ExponentCode := normalNode10304

theorem canonicalSound7787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7787.moment H = canonicalOutput7787.moment H :=
  canonical_of_padded canonicalInput7787 canonicalOutput7787 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7788 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput7788 : ExponentCode := normalNode10670

theorem canonicalSound7788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7788.moment H = canonicalOutput7788.moment H :=
  canonical_of_padded canonicalInput7788 canonicalOutput7788 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7789 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7789 : ExponentCode := normalNode10919

theorem canonicalSound7789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7789.moment H = canonicalOutput7789.moment H :=
  canonical_of_padded canonicalInput7789 canonicalOutput7789 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7790 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, -3, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput7790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1321⟩

theorem canonicalSound7790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7790.moment H = canonicalOutput7790.moment H :=
  canonical_of_padded canonicalInput7790 canonicalOutput7790 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7791 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7791 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2722⟩

theorem canonicalSound7791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7791.moment H = canonicalOutput7791.moment H :=
  canonical_of_padded canonicalInput7791 canonicalOutput7791 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7792 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, -2, 1], ![2, -1, -1, 0]]⟩

def canonicalOutput7792 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound7792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7792.moment H = canonicalOutput7792.moment H :=
  canonical_of_padded canonicalInput7792 canonicalOutput7792 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7793 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, -1, -2, 1]]⟩

def canonicalOutput7793 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound7793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7793.moment H = canonicalOutput7793.moment H :=
  canonical_of_padded canonicalInput7793 canonicalOutput7793 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7794 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput7794 : ExponentCode := normalNode4104

theorem canonicalSound7794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7794.moment H = canonicalOutput7794.moment H :=
  canonical_of_padded canonicalInput7794 canonicalOutput7794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7795 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput7795 : ExponentCode := normalNode10681

theorem canonicalSound7795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7795.moment H = canonicalOutput7795.moment H :=
  canonical_of_padded canonicalInput7795 canonicalOutput7795 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7796 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 2, -3, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput7796 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node592⟩

theorem canonicalSound7796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7796.moment H = canonicalOutput7796.moment H :=
  canonical_of_padded canonicalInput7796 canonicalOutput7796 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7797 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 2, -2, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput7797 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code759

theorem canonicalSound7797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7797.moment H = canonicalOutput7797.moment H :=
  canonical_of_padded canonicalInput7797 canonicalOutput7797 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7798 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 2, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput7798 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code896

theorem canonicalSound7798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7798.moment H = canonicalOutput7798.moment H :=
  canonical_of_padded canonicalInput7798 canonicalOutput7798 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7799 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput7799 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code571

theorem canonicalSound7799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7799.moment H = canonicalOutput7799.moment H :=
  canonical_of_padded canonicalInput7799 canonicalOutput7799 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7800 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 2, -3, 0]]⟩

def canonicalOutput7800 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code467

theorem canonicalSound7800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7800.moment H = canonicalOutput7800.moment H :=
  canonical_of_padded canonicalInput7800 canonicalOutput7800 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7801 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, -1, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput7801 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1025⟩

theorem canonicalSound7801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7801.moment H = canonicalOutput7801.moment H :=
  canonical_of_padded canonicalInput7801 canonicalOutput7801 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7802 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput7802 : ExponentCode := normalNode9442

theorem canonicalSound7802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7802.moment H = canonicalOutput7802.moment H :=
  canonical_of_padded canonicalInput7802 canonicalOutput7802 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7803 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput7803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound7803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7803.moment H = canonicalOutput7803.moment H :=
  canonical_of_padded canonicalInput7803 canonicalOutput7803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7804 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput7804 : ExponentCode := normalNode7474

theorem canonicalSound7804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7804.moment H = canonicalOutput7804.moment H :=
  canonical_of_padded canonicalInput7804 canonicalOutput7804 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7805 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, 1, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound7805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7805.moment H = canonicalOutput7805.moment H :=
  canonical_of_padded canonicalInput7805 canonicalOutput7805 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7806 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput7806 : ExponentCode := normalNode9442

theorem canonicalSound7806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7806.moment H = canonicalOutput7806.moment H :=
  canonical_of_padded canonicalInput7806 canonicalOutput7806 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7807 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7807 : ExponentCode := normalNode7959

theorem canonicalSound7807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7807.moment H = canonicalOutput7807.moment H :=
  canonical_of_padded canonicalInput7807 canonicalOutput7807 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

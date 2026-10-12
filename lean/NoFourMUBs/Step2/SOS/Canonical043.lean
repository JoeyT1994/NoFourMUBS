import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2752 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 0, -1, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput2752 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node760⟩

theorem canonicalSound2752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2752.moment H = canonicalOutput2752.moment H :=
  canonical_of_padded canonicalInput2752 canonicalOutput2752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2753 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 0, 0, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput2753 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node146⟩

theorem canonicalSound2753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2753.moment H = canonicalOutput2753.moment H :=
  canonical_of_padded canonicalInput2753 canonicalOutput2753 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2754 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput2754 : ExponentCode := normalNode1368

theorem canonicalSound2754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2754.moment H = canonicalOutput2754.moment H :=
  canonical_of_padded canonicalInput2754 canonicalOutput2754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2755 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput2755 : ExponentCode := normalNode1369

theorem canonicalSound2755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2755.moment H = canonicalOutput2755.moment H :=
  canonical_of_padded canonicalInput2755 canonicalOutput2755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2756 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput2756 : ExponentCode := normalNode1370

theorem canonicalSound2756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2756.moment H = canonicalOutput2756.moment H :=
  canonical_of_padded canonicalInput2756 canonicalOutput2756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2757 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput2757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node765⟩

theorem canonicalSound2757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2757.moment H = canonicalOutput2757.moment H :=
  canonical_of_padded canonicalInput2757 canonicalOutput2757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2758 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput2758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node776⟩

theorem canonicalSound2758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2758.moment H = canonicalOutput2758.moment H :=
  canonical_of_padded canonicalInput2758 canonicalOutput2758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2759 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput2759 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1550⟩

theorem canonicalSound2759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2759.moment H = canonicalOutput2759.moment H :=
  canonical_of_padded canonicalInput2759 canonicalOutput2759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2760 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1562⟩

theorem canonicalSound2760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2760.moment H = canonicalOutput2760.moment H :=
  canonical_of_padded canonicalInput2760 canonicalOutput2760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2761 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2761 : ExponentCode := normalNode6501

theorem canonicalSound2761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2761.moment H = canonicalOutput2761.moment H :=
  canonical_of_padded canonicalInput2761 canonicalOutput2761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2762 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2762 : ExponentCode := normalNode6501

theorem canonicalSound2762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2762.moment H = canonicalOutput2762.moment H :=
  canonical_of_padded canonicalInput2762 canonicalOutput2762 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2763 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2763 : ExponentCode := normalNode6500

theorem canonicalSound2763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2763.moment H = canonicalOutput2763.moment H :=
  canonical_of_padded canonicalInput2763 canonicalOutput2763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2764 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput2764 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code560

theorem canonicalSound2764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2764.moment H = canonicalOutput2764.moment H :=
  canonical_of_padded canonicalInput2764 canonicalOutput2764 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2765 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput2765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node770⟩

theorem canonicalSound2765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2765.moment H = canonicalOutput2765.moment H :=
  canonical_of_padded canonicalInput2765 canonicalOutput2765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2766 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2766 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node769⟩

theorem canonicalSound2766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2766.moment H = canonicalOutput2766.moment H :=
  canonical_of_padded canonicalInput2766 canonicalOutput2766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2767 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, 2, -3, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput2767 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code310

theorem canonicalSound2767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2767.moment H = canonicalOutput2767.moment H :=
  canonical_of_padded canonicalInput2767 canonicalOutput2767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2768 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2768 : ExponentCode := normalNode6509

theorem canonicalSound2768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2768.moment H = canonicalOutput2768.moment H :=
  canonical_of_padded canonicalInput2768 canonicalOutput2768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2769 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput2769 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node783⟩

theorem canonicalSound2769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2769.moment H = canonicalOutput2769.moment H :=
  canonical_of_padded canonicalInput2769 canonicalOutput2769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2770 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2770 : ExponentCode := normalNode6507

theorem canonicalSound2770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2770.moment H = canonicalOutput2770.moment H :=
  canonical_of_padded canonicalInput2770 canonicalOutput2770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2771 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2771 : ExponentCode := normalNode6507

theorem canonicalSound2771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2771.moment H = canonicalOutput2771.moment H :=
  canonical_of_padded canonicalInput2771 canonicalOutput2771 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2772 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2772 : ExponentCode := normalNode6504

theorem canonicalSound2772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2772.moment H = canonicalOutput2772.moment H :=
  canonical_of_padded canonicalInput2772 canonicalOutput2772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2773 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2773 : ExponentCode := normalNode6506

theorem canonicalSound2773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2773.moment H = canonicalOutput2773.moment H :=
  canonical_of_padded canonicalInput2773 canonicalOutput2773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2774 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput2774 : ExponentCode := normalNode6504

theorem canonicalSound2774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2774.moment H = canonicalOutput2774.moment H :=
  canonical_of_padded canonicalInput2774 canonicalOutput2774 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2775 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput2775 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node781⟩

theorem canonicalSound2775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2775.moment H = canonicalOutput2775.moment H :=
  canonical_of_padded canonicalInput2775 canonicalOutput2775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2776 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput2776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩

theorem canonicalSound2776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2776.moment H = canonicalOutput2776.moment H :=
  canonical_of_padded canonicalInput2776 canonicalOutput2776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2777 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput2777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩

theorem canonicalSound2777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2777.moment H = canonicalOutput2777.moment H :=
  canonical_of_padded canonicalInput2777 canonicalOutput2777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2778 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput2778 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node780⟩

theorem canonicalSound2778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2778.moment H = canonicalOutput2778.moment H :=
  canonical_of_padded canonicalInput2778 canonicalOutput2778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2779 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2779 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node780⟩

theorem canonicalSound2779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2779.moment H = canonicalOutput2779.moment H :=
  canonical_of_padded canonicalInput2779 canonicalOutput2779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2780 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩

theorem canonicalSound2780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2780.moment H = canonicalOutput2780.moment H :=
  canonical_of_padded canonicalInput2780 canonicalOutput2780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2781 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 1, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput2781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩

theorem canonicalSound2781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2781.moment H = canonicalOutput2781.moment H :=
  canonical_of_padded canonicalInput2781 canonicalOutput2781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2782 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 2, -3, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput2782 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code315

theorem canonicalSound2782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2782.moment H = canonicalOutput2782.moment H :=
  canonical_of_padded canonicalInput2782 canonicalOutput2782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2783 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, 2, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput2783 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code314

theorem canonicalSound2783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2783.moment H = canonicalOutput2783.moment H :=
  canonical_of_padded canonicalInput2783 canonicalOutput2783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2784 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2784 : ExponentCode := normalNode6515

theorem canonicalSound2784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2784.moment H = canonicalOutput2784.moment H :=
  canonical_of_padded canonicalInput2784 canonicalOutput2784 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2785 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput2785 : ExponentCode := normalNode6517

theorem canonicalSound2785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2785.moment H = canonicalOutput2785.moment H :=
  canonical_of_padded canonicalInput2785 canonicalOutput2785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2786 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput2786 : ExponentCode := normalNode9119

theorem canonicalSound2786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2786.moment H = canonicalOutput2786.moment H :=
  canonical_of_padded canonicalInput2786 canonicalOutput2786 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2787 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput2787 : ExponentCode := normalNode6516

theorem canonicalSound2787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2787.moment H = canonicalOutput2787.moment H :=
  canonical_of_padded canonicalInput2787 canonicalOutput2787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2788 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 4, -4], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2788 : ExponentCode := normalNode6516

theorem canonicalSound2788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2788.moment H = canonicalOutput2788.moment H :=
  canonical_of_padded canonicalInput2788 canonicalOutput2788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2789 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput2789 : ExponentCode := normalNode9471

theorem canonicalSound2789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2789.moment H = canonicalOutput2789.moment H :=
  canonical_of_padded canonicalInput2789 canonicalOutput2789 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2790 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput2790 : ExponentCode := normalNode10886

theorem canonicalSound2790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2790.moment H = canonicalOutput2790.moment H :=
  canonical_of_padded canonicalInput2790 canonicalOutput2790 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2791 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput2791 : ExponentCode := normalNode6523

theorem canonicalSound2791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2791.moment H = canonicalOutput2791.moment H :=
  canonical_of_padded canonicalInput2791 canonicalOutput2791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2792 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput2792 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node788⟩

theorem canonicalSound2792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2792.moment H = canonicalOutput2792.moment H :=
  canonical_of_padded canonicalInput2792 canonicalOutput2792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2793 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput2793 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node788⟩

theorem canonicalSound2793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2793.moment H = canonicalOutput2793.moment H :=
  canonical_of_padded canonicalInput2793 canonicalOutput2793 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2794 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput2794 : ExponentCode := normalNode6523

theorem canonicalSound2794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2794.moment H = canonicalOutput2794.moment H :=
  canonical_of_padded canonicalInput2794 canonicalOutput2794 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2795 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, 1, 1, -3], ![1, -1, 2, -2]]⟩

def canonicalOutput2795 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code321

theorem canonicalSound2795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2795.moment H = canonicalOutput2795.moment H :=
  canonical_of_padded canonicalInput2795 canonicalOutput2795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2796 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![1, 1, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput2796 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code320

theorem canonicalSound2796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2796.moment H = canonicalOutput2796.moment H :=
  canonical_of_padded canonicalInput2796 canonicalOutput2796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2797 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩

theorem canonicalSound2797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2797.moment H = canonicalOutput2797.moment H :=
  canonical_of_padded canonicalInput2797 canonicalOutput2797 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2798 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput2798 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound2798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2798.moment H = canonicalOutput2798.moment H :=
  canonical_of_padded canonicalInput2798 canonicalOutput2798 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2799 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2799 : ExponentCode := normalNode6497

theorem canonicalSound2799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2799.moment H = canonicalOutput2799.moment H :=
  canonical_of_padded canonicalInput2799 canonicalOutput2799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2800 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2800 : ExponentCode := normalNode1398

theorem canonicalSound2800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2800.moment H = canonicalOutput2800.moment H :=
  canonical_of_padded canonicalInput2800 canonicalOutput2800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2801 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput2801 : ExponentCode := normalNode1433

theorem canonicalSound2801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2801.moment H = canonicalOutput2801.moment H :=
  canonical_of_padded canonicalInput2801 canonicalOutput2801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2802 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2802 : ExponentCode := normalNode1260

theorem canonicalSound2802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2802.moment H = canonicalOutput2802.moment H :=
  canonical_of_padded canonicalInput2802 canonicalOutput2802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2803 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput2803 : ExponentCode := normalNode1436

theorem canonicalSound2803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2803.moment H = canonicalOutput2803.moment H :=
  canonical_of_padded canonicalInput2803 canonicalOutput2803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2804 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2804 : ExponentCode := normalNode1278

theorem canonicalSound2804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2804.moment H = canonicalOutput2804.moment H :=
  canonical_of_padded canonicalInput2804 canonicalOutput2804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2805 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2805 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1560⟩

theorem canonicalSound2805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2805.moment H = canonicalOutput2805.moment H :=
  canonical_of_padded canonicalInput2805 canonicalOutput2805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2806 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2806 : ExponentCode := normalNode1279

theorem canonicalSound2806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2806.moment H = canonicalOutput2806.moment H :=
  canonical_of_padded canonicalInput2806 canonicalOutput2806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2807 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput2807 : ExponentCode := normalNode7985

theorem canonicalSound2807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2807.moment H = canonicalOutput2807.moment H :=
  canonical_of_padded canonicalInput2807 canonicalOutput2807 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2808 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2808 : ExponentCode := normalNode6950

theorem canonicalSound2808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2808.moment H = canonicalOutput2808.moment H :=
  canonical_of_padded canonicalInput2808 canonicalOutput2808 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2809 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput2809 : ExponentCode := normalNode7988

theorem canonicalSound2809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2809.moment H = canonicalOutput2809.moment H :=
  canonical_of_padded canonicalInput2809 canonicalOutput2809 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2810 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput2810 : ExponentCode := normalNode7922

theorem canonicalSound2810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2810.moment H = canonicalOutput2810.moment H :=
  canonical_of_padded canonicalInput2810 canonicalOutput2810 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2811 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput2811 : ExponentCode := normalNode6514

theorem canonicalSound2811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2811.moment H = canonicalOutput2811.moment H :=
  canonical_of_padded canonicalInput2811 canonicalOutput2811 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2812 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2812 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩

theorem canonicalSound2812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2812.moment H = canonicalOutput2812.moment H :=
  canonical_of_padded canonicalInput2812 canonicalOutput2812 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2813 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput2813 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound2813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2813.moment H = canonicalOutput2813.moment H :=
  canonical_of_padded canonicalInput2813 canonicalOutput2813 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2814 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2814 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1552⟩

theorem canonicalSound2814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2814.moment H = canonicalOutput2814.moment H :=
  canonical_of_padded canonicalInput2814 canonicalOutput2814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2815 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2815 : ExponentCode := normalNode1436

theorem canonicalSound2815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2815.moment H = canonicalOutput2815.moment H :=
  canonical_of_padded canonicalInput2815 canonicalOutput2815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

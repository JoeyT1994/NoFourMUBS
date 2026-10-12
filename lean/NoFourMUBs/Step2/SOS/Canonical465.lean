import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29760 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput29760 : ExponentCode := normalNode4820

theorem canonicalSound29760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29760.moment H = canonicalOutput29760.moment H :=
  canonical_of_padded canonicalInput29760 canonicalOutput29760 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29761 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -2, 0, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29761 : ExponentCode := normalNode5926

theorem canonicalSound29761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29761.moment H = canonicalOutput29761.moment H :=
  canonical_of_padded canonicalInput29761 canonicalOutput29761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation303, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29762 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput29762 : ExponentCode := normalNode3347

theorem canonicalSound29762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29762.moment H = canonicalOutput29762.moment H :=
  canonical_of_padded canonicalInput29762 canonicalOutput29762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29763 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29763 : ExponentCode := normalNode3578

theorem canonicalSound29763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29763.moment H = canonicalOutput29763.moment H :=
  canonical_of_padded canonicalInput29763 canonicalOutput29763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29764 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput29764 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3122⟩

theorem canonicalSound29764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29764.moment H = canonicalOutput29764.moment H :=
  canonical_of_padded canonicalInput29764 canonicalOutput29764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29765 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29765 : ExponentCode := normalNode1973

theorem canonicalSound29765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29765.moment H = canonicalOutput29765.moment H :=
  canonical_of_padded canonicalInput29765 canonicalOutput29765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29766 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29766 : ExponentCode := normalNode2685

theorem canonicalSound29766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29766.moment H = canonicalOutput29766.moment H :=
  canonical_of_padded canonicalInput29766 canonicalOutput29766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29767 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput29767 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3189⟩

theorem canonicalSound29767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29767.moment H = canonicalOutput29767.moment H :=
  canonical_of_padded canonicalInput29767 canonicalOutput29767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29768 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput29768 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3079⟩

theorem canonicalSound29768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29768.moment H = canonicalOutput29768.moment H :=
  canonical_of_padded canonicalInput29768 canonicalOutput29768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput29769 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29769 : ExponentCode := normalNode2473

theorem canonicalSound29769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29769.moment H = canonicalOutput29769.moment H :=
  canonical_of_padded canonicalInput29769 canonicalOutput29769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29770 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29770 : ExponentCode := normalNode617

theorem canonicalSound29770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29770.moment H = canonicalOutput29770.moment H :=
  canonical_of_padded canonicalInput29770 canonicalOutput29770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29771 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput29771 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3132⟩

theorem canonicalSound29771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29771.moment H = canonicalOutput29771.moment H :=
  canonical_of_padded canonicalInput29771 canonicalOutput29771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29772 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, -1, -2, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput29772 : ExponentCode := normalNode1381

theorem canonicalSound29772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29772.moment H = canonicalOutput29772.moment H :=
  canonical_of_padded canonicalInput29772 canonicalOutput29772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29773 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, 0, -2, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput29773 : ExponentCode := normalNode1871

theorem canonicalSound29773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29773.moment H = canonicalOutput29773.moment H :=
  canonical_of_padded canonicalInput29773 canonicalOutput29773 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29774 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput29774 : ExponentCode := normalNode1713

theorem canonicalSound29774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29774.moment H = canonicalOutput29774.moment H :=
  canonical_of_padded canonicalInput29774 canonicalOutput29774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29775 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![2, -1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput29775 : ExponentCode := normalNode3525

theorem canonicalSound29775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29775.moment H = canonicalOutput29775.moment H :=
  canonical_of_padded canonicalInput29775 canonicalOutput29775 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29776 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29776 : ExponentCode := normalNode3796

theorem canonicalSound29776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29776.moment H = canonicalOutput29776.moment H :=
  canonical_of_padded canonicalInput29776 canonicalOutput29776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29777 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput29777 : ExponentCode := normalNode10517

theorem canonicalSound29777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29777.moment H = canonicalOutput29777.moment H :=
  canonical_of_padded canonicalInput29777 canonicalOutput29777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29778 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput29778 : ExponentCode := normalNode3882

theorem canonicalSound29778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29778.moment H = canonicalOutput29778.moment H :=
  canonical_of_padded canonicalInput29778 canonicalOutput29778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29779 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, -2, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput29779 : ExponentCode := normalNode4002

theorem canonicalSound29779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29779.moment H = canonicalOutput29779.moment H :=
  canonical_of_padded canonicalInput29779 canonicalOutput29779 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29780 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, -1, 0], ![0, -1, 2, -1]]⟩

def canonicalOutput29780 : ExponentCode := normalNode3882

theorem canonicalSound29780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29780.moment H = canonicalOutput29780.moment H :=
  canonical_of_padded canonicalInput29780 canonicalOutput29780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29781 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -2, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput29781 : ExponentCode := normalNode3357

theorem canonicalSound29781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29781.moment H = canonicalOutput29781.moment H :=
  canonical_of_padded canonicalInput29781 canonicalOutput29781 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29782 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput29782 : ExponentCode := normalNode4200

theorem canonicalSound29782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29782.moment H = canonicalOutput29782.moment H :=
  canonical_of_padded canonicalInput29782 canonicalOutput29782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29783 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 2, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput29783 : ExponentCode := normalNode3755

theorem canonicalSound29783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29783.moment H = canonicalOutput29783.moment H :=
  canonical_of_padded canonicalInput29783 canonicalOutput29783 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29784 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput29784 : ExponentCode := normalNode2630

theorem canonicalSound29784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29784.moment H = canonicalOutput29784.moment H :=
  canonical_of_padded canonicalInput29784 canonicalOutput29784 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29785 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput29785 : ExponentCode := normalNode3802

theorem canonicalSound29785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29785.moment H = canonicalOutput29785.moment H :=
  canonical_of_padded canonicalInput29785 canonicalOutput29785 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29786 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput29786 : ExponentCode := normalNode3746

theorem canonicalSound29786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29786.moment H = canonicalOutput29786.moment H :=
  canonical_of_padded canonicalInput29786 canonicalOutput29786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29787 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -1, -2, 3], ![2, -1, 1, -2]]⟩

def canonicalOutput29787 : ExponentCode := normalNode4644

theorem canonicalSound29787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29787.moment H = canonicalOutput29787.moment H :=
  canonical_of_padded canonicalInput29787 canonicalOutput29787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29788 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput29788 : ExponentCode := normalNode4447

theorem canonicalSound29788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29788.moment H = canonicalOutput29788.moment H :=
  canonical_of_padded canonicalInput29788 canonicalOutput29788 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29789 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -2, 0, 3], ![2, 0, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29789 : ExponentCode := normalNode1873

theorem canonicalSound29789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29789.moment H = canonicalOutput29789.moment H :=
  canonical_of_padded canonicalInput29789 canonicalOutput29789 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29790 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29790 : ExponentCode := normalNode5628

theorem canonicalSound29790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29790.moment H = canonicalOutput29790.moment H :=
  canonical_of_padded canonicalInput29790 canonicalOutput29790 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29791 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, 0, -1, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29791 : ExponentCode := normalNode4316

theorem canonicalSound29791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29791.moment H = canonicalOutput29791.moment H :=
  canonical_of_padded canonicalInput29791 canonicalOutput29791 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29792 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29792 : ExponentCode := normalNode4317

theorem canonicalSound29792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29792.moment H = canonicalOutput29792.moment H :=
  canonical_of_padded canonicalInput29792 canonicalOutput29792 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29793 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, -1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput29793 : ExponentCode := normalNode585

theorem canonicalSound29793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29793.moment H = canonicalOutput29793.moment H :=
  canonical_of_padded canonicalInput29793 canonicalOutput29793 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29794 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, -2, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29794 : ExponentCode := normalNode5687

theorem canonicalSound29794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29794.moment H = canonicalOutput29794.moment H :=
  canonical_of_padded canonicalInput29794 canonicalOutput29794 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29795 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, -1, 0], ![-1, 0, 2, -1]]⟩

def canonicalOutput29795 : ExponentCode := normalNode4324

theorem canonicalSound29795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29795.moment H = canonicalOutput29795.moment H :=
  canonical_of_padded canonicalInput29795 canonicalOutput29795 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29796 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -2, 0], ![-1, -1, 3, -1]]⟩

def canonicalOutput29796 : ExponentCode := normalNode3904

theorem canonicalSound29796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29796.moment H = canonicalOutput29796.moment H :=
  canonical_of_padded canonicalInput29796 canonicalOutput29796 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29797 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput29797 : ExponentCode := normalNode4318

theorem canonicalSound29797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29797.moment H = canonicalOutput29797.moment H :=
  canonical_of_padded canonicalInput29797 canonicalOutput29797 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29798 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput29798 : ExponentCode := normalNode3894

theorem canonicalSound29798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29798.moment H = canonicalOutput29798.moment H :=
  canonical_of_padded canonicalInput29798 canonicalOutput29798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29799 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -2, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput29799 : ExponentCode := normalNode4812

theorem canonicalSound29799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29799.moment H = canonicalOutput29799.moment H :=
  canonical_of_padded canonicalInput29799 canonicalOutput29799 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29800 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput29800 : ExponentCode := normalNode2631

theorem canonicalSound29800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29800.moment H = canonicalOutput29800.moment H :=
  canonical_of_padded canonicalInput29800 canonicalOutput29800 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29801 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![2, -2, 0, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29801 : ExponentCode := normalNode5928

theorem canonicalSound29801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29801.moment H = canonicalOutput29801.moment H :=
  canonical_of_padded canonicalInput29801 canonicalOutput29801 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29802 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, -1, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29802 : ExponentCode := normalNode5843

theorem canonicalSound29802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29802.moment H = canonicalOutput29802.moment H :=
  canonical_of_padded canonicalInput29802 canonicalOutput29802 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29803 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 0, 0], ![-1, 0, 2, -1]]⟩

def canonicalOutput29803 : ExponentCode := normalNode4326

theorem canonicalSound29803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29803.moment H = canonicalOutput29803.moment H :=
  canonical_of_padded canonicalInput29803 canonicalOutput29803 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29804 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, -1, 0], ![-1, -1, 3, -1]]⟩

def canonicalOutput29804 : ExponentCode := normalNode5364

theorem canonicalSound29804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29804.moment H = canonicalOutput29804.moment H :=
  canonical_of_padded canonicalInput29804 canonicalOutput29804 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29805 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, -1, -1], ![-1, -2, 3, 0]]⟩

def canonicalOutput29805 : ExponentCode := normalNode1841

theorem canonicalSound29805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29805.moment H = canonicalOutput29805.moment H :=
  canonical_of_padded canonicalInput29805 canonicalOutput29805 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29806 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, -1, 3], ![2, 0, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput29806 : ExponentCode := normalNode3380

theorem canonicalSound29806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29806.moment H = canonicalOutput29806.moment H :=
  canonical_of_padded canonicalInput29806 canonicalOutput29806 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29807 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput29807 : ExponentCode := normalNode3346

theorem canonicalSound29807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29807.moment H = canonicalOutput29807.moment H :=
  canonical_of_padded canonicalInput29807 canonicalOutput29807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29808 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 0, 2, 0]]⟩

def canonicalOutput29808 : ExponentCode := normalNode3802

theorem canonicalSound29808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29808.moment H = canonicalOutput29808.moment H :=
  canonical_of_padded canonicalInput29808 canonicalOutput29808 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29809 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![-1, 0, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29809 : ExponentCode := normalNode9886

theorem canonicalSound29809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29809.moment H = canonicalOutput29809.moment H :=
  canonical_of_padded canonicalInput29809 canonicalOutput29809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29810 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput29810 : ExponentCode := normalNode7394

theorem canonicalSound29810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29810.moment H = canonicalOutput29810.moment H :=
  canonical_of_padded canonicalInput29810 canonicalOutput29810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29811 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29811 : ExponentCode := normalNode7942

theorem canonicalSound29811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29811.moment H = canonicalOutput29811.moment H :=
  canonical_of_padded canonicalInput29811 canonicalOutput29811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29812 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput29812 : ExponentCode := normalNode7459

theorem canonicalSound29812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29812.moment H = canonicalOutput29812.moment H :=
  canonical_of_padded canonicalInput29812 canonicalOutput29812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29813 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, 0, 3, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29813 : ExponentCode := normalNode10924

theorem canonicalSound29813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29813.moment H = canonicalOutput29813.moment H :=
  canonical_of_padded canonicalInput29813 canonicalOutput29813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29814 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput29814 : ExponentCode := normalNode6496

theorem canonicalSound29814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29814.moment H = canonicalOutput29814.moment H :=
  canonical_of_padded canonicalInput29814 canonicalOutput29814 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29815 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29815 : ExponentCode := normalNode3585

theorem canonicalSound29815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29815.moment H = canonicalOutput29815.moment H :=
  canonical_of_padded canonicalInput29815 canonicalOutput29815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29816 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, -2, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput29816 : ExponentCode := normalNode3287

theorem canonicalSound29816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29816.moment H = canonicalOutput29816.moment H :=
  canonical_of_padded canonicalInput29816 canonicalOutput29816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29817 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -2, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput29817 : ExponentCode := normalNode3276

theorem canonicalSound29817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29817.moment H = canonicalOutput29817.moment H :=
  canonical_of_padded canonicalInput29817 canonicalOutput29817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29818 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput29818 : ExponentCode := normalNode9936

theorem canonicalSound29818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29818.moment H = canonicalOutput29818.moment H :=
  canonical_of_padded canonicalInput29818 canonicalOutput29818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29819 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput29819 : ExponentCode := normalNode7461

theorem canonicalSound29819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29819.moment H = canonicalOutput29819.moment H :=
  canonical_of_padded canonicalInput29819 canonicalOutput29819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29820 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -3, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput29820 : ExponentCode := normalNode3286

theorem canonicalSound29820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29820.moment H = canonicalOutput29820.moment H :=
  canonical_of_padded canonicalInput29820 canonicalOutput29820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29821 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput29821 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3143⟩

theorem canonicalSound29821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29821.moment H = canonicalOutput29821.moment H :=
  canonical_of_padded canonicalInput29821 canonicalOutput29821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29822 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput29822 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2936⟩

theorem canonicalSound29822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29822.moment H = canonicalOutput29822.moment H :=
  canonical_of_padded canonicalInput29822 canonicalOutput29822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29823 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29823 : ExponentCode := normalNode1983

theorem canonicalSound29823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29823.moment H = canonicalOutput29823.moment H :=
  canonical_of_padded canonicalInput29823 canonicalOutput29823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

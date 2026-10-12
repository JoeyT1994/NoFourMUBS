import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21760 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -3, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput21760 : ExponentCode := normalNode6431

theorem canonicalSound21760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21760.moment H = canonicalOutput21760.moment H :=
  canonical_of_padded canonicalInput21760 canonicalOutput21760 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21761 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -3, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput21761 : ExponentCode := normalNode6437

theorem canonicalSound21761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21761.moment H = canonicalOutput21761.moment H :=
  canonical_of_padded canonicalInput21761 canonicalOutput21761 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21762 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 1, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput21762 : ExponentCode := normalNode7875

theorem canonicalSound21762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21762.moment H = canonicalOutput21762.moment H :=
  canonical_of_padded canonicalInput21762 canonicalOutput21762 (by decide) (by decide)
    ⟨false, true, canonicalPermutation93, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21763 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -3, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput21763 : ExponentCode := normalNode6409

theorem canonicalSound21763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21763.moment H = canonicalOutput21763.moment H :=
  canonical_of_padded canonicalInput21763 canonicalOutput21763 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21764 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![0, -3, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput21764 : ExponentCode := normalNode6437

theorem canonicalSound21764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21764.moment H = canonicalOutput21764.moment H :=
  canonical_of_padded canonicalInput21764 canonicalOutput21764 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21765 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -3, 0, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput21765 : ExponentCode := normalNode10858

theorem canonicalSound21765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21765.moment H = canonicalOutput21765.moment H :=
  canonical_of_padded canonicalInput21765 canonicalOutput21765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21766 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -3, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput21766 : ExponentCode := normalNode6505

theorem canonicalSound21766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21766.moment H = canonicalOutput21766.moment H :=
  canonical_of_padded canonicalInput21766 canonicalOutput21766 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21767 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 0, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput21767 : ExponentCode := normalNode6690

theorem canonicalSound21767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21767.moment H = canonicalOutput21767.moment H :=
  canonical_of_padded canonicalInput21767 canonicalOutput21767 (by decide) (by decide)
    ⟨false, true, canonicalPermutation93, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21768 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -3, 1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput21768 : ExponentCode := normalNode6016

theorem canonicalSound21768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21768.moment H = canonicalOutput21768.moment H :=
  canonical_of_padded canonicalInput21768 canonicalOutput21768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21769 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 0, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput21769 : ExponentCode := normalNode10813

theorem canonicalSound21769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21769.moment H = canonicalOutput21769.moment H :=
  canonical_of_padded canonicalInput21769 canonicalOutput21769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21770 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput21770 : ExponentCode := normalNode10501

theorem canonicalSound21770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21770.moment H = canonicalOutput21770.moment H :=
  canonical_of_padded canonicalInput21770 canonicalOutput21770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21771 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -3, 0, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput21771 : ExponentCode := normalNode6140

theorem canonicalSound21771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21771.moment H = canonicalOutput21771.moment H :=
  canonical_of_padded canonicalInput21771 canonicalOutput21771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21772 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput21772 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound21772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21772.moment H = canonicalOutput21772.moment H :=
  canonical_of_padded canonicalInput21772 canonicalOutput21772 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21773 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput21773 : ExponentCode := normalNode5862

theorem canonicalSound21773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21773.moment H = canonicalOutput21773.moment H :=
  canonical_of_padded canonicalInput21773 canonicalOutput21773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21774 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput21774 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound21774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21774.moment H = canonicalOutput21774.moment H :=
  canonical_of_padded canonicalInput21774 canonicalOutput21774 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21775 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput21775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound21775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21775.moment H = canonicalOutput21775.moment H :=
  canonical_of_padded canonicalInput21775 canonicalOutput21775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21776 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -4, 3], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput21776 : ExponentCode := normalNode10707

theorem canonicalSound21776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21776.moment H = canonicalOutput21776.moment H :=
  canonical_of_padded canonicalInput21776 canonicalOutput21776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21777 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput21777 : ExponentCode := normalNode10706

theorem canonicalSound21777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21777.moment H = canonicalOutput21777.moment H :=
  canonical_of_padded canonicalInput21777 canonicalOutput21777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21778 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput21778 : ExponentCode := normalNode10704

theorem canonicalSound21778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21778.moment H = canonicalOutput21778.moment H :=
  canonical_of_padded canonicalInput21778 canonicalOutput21778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21779 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 0, 0], ![-1, 1, 2, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput21779 : ExponentCode := normalNode5950

theorem canonicalSound21779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21779.moment H = canonicalOutput21779.moment H :=
  canonical_of_padded canonicalInput21779 canonicalOutput21779 (by decide) (by decide)
    ⟨false, true, canonicalPermutation213, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21780 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput21780 : ExponentCode := normalNode7936

theorem canonicalSound21780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21780.moment H = canonicalOutput21780.moment H :=
  canonical_of_padded canonicalInput21780 canonicalOutput21780 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21781 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput21781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound21781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21781.moment H = canonicalOutput21781.moment H :=
  canonical_of_padded canonicalInput21781 canonicalOutput21781 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21782 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput21782 : ExponentCode := normalNode10678

theorem canonicalSound21782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21782.moment H = canonicalOutput21782.moment H :=
  canonical_of_padded canonicalInput21782 canonicalOutput21782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21783 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -4, 3], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput21783 : ExponentCode := normalNode9712

theorem canonicalSound21783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21783.moment H = canonicalOutput21783.moment H :=
  canonical_of_padded canonicalInput21783 canonicalOutput21783 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21784 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -4, 3], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput21784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node897⟩

theorem canonicalSound21784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21784.moment H = canonicalOutput21784.moment H :=
  canonical_of_padded canonicalInput21784 canonicalOutput21784 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21785 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -4, 3], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput21785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node920⟩

theorem canonicalSound21785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21785.moment H = canonicalOutput21785.moment H :=
  canonical_of_padded canonicalInput21785 canonicalOutput21785 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21786 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![0, 1, -4, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput21786 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound21786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21786.moment H = canonicalOutput21786.moment H :=
  canonical_of_padded canonicalInput21786 canonicalOutput21786 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21787 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput21787 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩

theorem canonicalSound21787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21787.moment H = canonicalOutput21787.moment H :=
  canonical_of_padded canonicalInput21787 canonicalOutput21787 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21788 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput21788 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound21788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21788.moment H = canonicalOutput21788.moment H :=
  canonical_of_padded canonicalInput21788 canonicalOutput21788 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21789 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 2, 0, -2], ![1, -3, 2, 0]]⟩

def canonicalOutput21789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1193⟩

theorem canonicalSound21789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21789.moment H = canonicalOutput21789.moment H :=
  canonical_of_padded canonicalInput21789 canonicalOutput21789 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21790 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput21790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩

theorem canonicalSound21790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21790.moment H = canonicalOutput21790.moment H :=
  canonical_of_padded canonicalInput21790 canonicalOutput21790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21791 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput21791 : ExponentCode := normalNode10493

theorem canonicalSound21791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21791.moment H = canonicalOutput21791.moment H :=
  canonical_of_padded canonicalInput21791 canonicalOutput21791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21792 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput21792 : ExponentCode := normalNode2687

theorem canonicalSound21792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21792.moment H = canonicalOutput21792.moment H :=
  canonical_of_padded canonicalInput21792 canonicalOutput21792 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput21793 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![2, -2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput21793 : ExponentCode := normalNode5951

theorem canonicalSound21793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21793.moment H = canonicalOutput21793.moment H :=
  canonical_of_padded canonicalInput21793 canonicalOutput21793 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21794 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -3, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput21794 : ExponentCode := normalNode10668

theorem canonicalSound21794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21794.moment H = canonicalOutput21794.moment H :=
  canonical_of_padded canonicalInput21794 canonicalOutput21794 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21795 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput21795 : ExponentCode := normalNode10663

theorem canonicalSound21795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21795.moment H = canonicalOutput21795.moment H :=
  canonical_of_padded canonicalInput21795 canonicalOutput21795 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21796 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 0, 1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput21796 : ExponentCode := normalNode10672

theorem canonicalSound21796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21796.moment H = canonicalOutput21796.moment H :=
  canonical_of_padded canonicalInput21796 canonicalOutput21796 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21797 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -3, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput21797 : ExponentCode := normalNode10561

theorem canonicalSound21797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21797.moment H = canonicalOutput21797.moment H :=
  canonical_of_padded canonicalInput21797 canonicalOutput21797 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21798 : ExponentCode := ⟨5, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, -1, 2, -1]]⟩

def canonicalOutput21798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2443⟩

theorem canonicalSound21798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21798.moment H = canonicalOutput21798.moment H :=
  canonical_of_padded canonicalInput21798 canonicalOutput21798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21799 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, 0, 0], ![-1, 0, -3, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput21799 : ExponentCode := normalNode5915

theorem canonicalSound21799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21799.moment H = canonicalOutput21799.moment H :=
  canonical_of_padded canonicalInput21799 canonicalOutput21799 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21800 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, 0, 0], ![0, 0, -3, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput21800 : ExponentCode := normalNode5923

theorem canonicalSound21800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21800.moment H = canonicalOutput21800.moment H :=
  canonical_of_padded canonicalInput21800 canonicalOutput21800 (by decide) (by decide)
    ⟨false, false, canonicalPermutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21801 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput21801 : ExponentCode := normalNode10350

theorem canonicalSound21801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21801.moment H = canonicalOutput21801.moment H :=
  canonical_of_padded canonicalInput21801 canonicalOutput21801 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21802 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput21802 : ExponentCode := normalNode10479

theorem canonicalSound21802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21802.moment H = canonicalOutput21802.moment H :=
  canonical_of_padded canonicalInput21802 canonicalOutput21802 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21803 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput21803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound21803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21803.moment H = canonicalOutput21803.moment H :=
  canonical_of_padded canonicalInput21803 canonicalOutput21803 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21804 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput21804 : ExponentCode := normalNode7854

theorem canonicalSound21804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21804.moment H = canonicalOutput21804.moment H :=
  canonical_of_padded canonicalInput21804 canonicalOutput21804 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21805 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, 2, -3], ![0, 2, -3, 1], ![1, -3, 0, 2]]⟩

def canonicalOutput21805 : ExponentCode := normalNode6718

theorem canonicalSound21805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21805.moment H = canonicalOutput21805.moment H :=
  canonical_of_padded canonicalInput21805 canonicalOutput21805 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21806 : ExponentCode := ⟨4, 4, ![![-1, 0, 1, 0], ![0, 1, 2, -3], ![0, 2, -2, 0], ![1, -3, -1, 3]]⟩

def canonicalOutput21806 : ExponentCode := normalNode10682

theorem canonicalSound21806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21806.moment H = canonicalOutput21806.moment H :=
  canonical_of_padded canonicalInput21806 canonicalOutput21806 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21807 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![0, 5, -3, -2], ![1, -5, 2, 2]]⟩

def canonicalOutput21807 : ExponentCode := normalNode7141

theorem canonicalSound21807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21807.moment H = canonicalOutput21807.moment H :=
  canonical_of_padded canonicalInput21807 canonicalOutput21807 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21808 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![1, -4, 1, 2], ![0, 4, -2, -2]]⟩

def canonicalOutput21808 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound21808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21808.moment H = canonicalOutput21808.moment H :=
  canonical_of_padded canonicalInput21808 canonicalOutput21808 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21809 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![1, -2, -3, 4], ![0, 2, 2, -4]]⟩

def canonicalOutput21809 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node266⟩

theorem canonicalSound21809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21809.moment H = canonicalOutput21809.moment H :=
  canonical_of_padded canonicalInput21809 canonicalOutput21809 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21810 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![1, -1, 0, 0], ![0, -1, 0, 1], ![0, 2, -1, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput21810 : ExponentCode := normalNode10625

theorem canonicalSound21810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21810.moment H = canonicalOutput21810.moment H :=
  canonical_of_padded canonicalInput21810 canonicalOutput21810 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21811 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 2, -1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput21811 : ExponentCode := normalNode5451

theorem canonicalSound21811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21811.moment H = canonicalOutput21811.moment H :=
  canonical_of_padded canonicalInput21811 canonicalOutput21811 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21812 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -1, -1], ![-1, 0, -3, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput21812 : ExponentCode := normalNode4418

theorem canonicalSound21812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21812.moment H = canonicalOutput21812.moment H :=
  canonical_of_padded canonicalInput21812 canonicalOutput21812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21813 : ExponentCode := ⟨6, 4, ![![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -1, -1], ![0, 0, -3, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput21813 : ExponentCode := normalNode4421

theorem canonicalSound21813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21813.moment H = canonicalOutput21813.moment H :=
  canonical_of_padded canonicalInput21813 canonicalOutput21813 (by decide) (by decide)
    ⟨false, true, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21814 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 0, 0], ![0, -1, 1, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21814 : ExponentCode := normalNode8534

theorem canonicalSound21814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21814.moment H = canonicalOutput21814.moment H :=
  canonical_of_padded canonicalInput21814 canonicalOutput21814 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput21815 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 0, 0], ![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21815 : ExponentCode := normalNode8534

theorem canonicalSound21815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21815.moment H = canonicalOutput21815.moment H :=
  canonical_of_padded canonicalInput21815 canonicalOutput21815 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput21816 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 0, 0], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput21816 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound21816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21816.moment H = canonicalOutput21816.moment H :=
  canonical_of_padded canonicalInput21816 canonicalOutput21816 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput21817 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 0, 0], ![0, 0, -1, 2, -1], ![0, 0, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21817 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound21817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21817.moment H = canonicalOutput21817.moment H :=
  canonical_of_padded canonicalInput21817 canonicalOutput21817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput21818 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput21818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound21818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21818.moment H = canonicalOutput21818.moment H :=
  canonical_of_padded canonicalInput21818 canonicalOutput21818 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput21819 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput21819 : ExponentCode := normalNode11156

theorem canonicalSound21819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21819.moment H = canonicalOutput21819.moment H :=
  canonical_of_padded canonicalInput21819 canonicalOutput21819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21820 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21820 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound21820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21820.moment H = canonicalOutput21820.moment H :=
  canonical_of_padded canonicalInput21820 canonicalOutput21820 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput21821 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21821 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound21821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21821.moment H = canonicalOutput21821.moment H :=
  canonical_of_padded canonicalInput21821 canonicalOutput21821 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput21822 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21822 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound21822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21822.moment H = canonicalOutput21822.moment H :=
  canonical_of_padded canonicalInput21822 canonicalOutput21822 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput21823 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21823 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound21823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21823.moment H = canonicalOutput21823.moment H :=
  canonical_of_padded canonicalInput21823 canonicalOutput21823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

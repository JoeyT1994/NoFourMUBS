import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6784 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput6784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound6784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6784.moment H = canonicalOutput6784.moment H :=
  canonical_of_padded canonicalInput6784 canonicalOutput6784 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6785 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -1, -1], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput6785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound6785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6785.moment H = canonicalOutput6785.moment H :=
  canonical_of_padded canonicalInput6785 canonicalOutput6785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6786 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, 1, -3], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput6786 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound6786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6786.moment H = canonicalOutput6786.moment H :=
  canonical_of_padded canonicalInput6786 canonicalOutput6786 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6787 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, 3, -5], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput6787 : ExponentCode := normalNode8892

theorem canonicalSound6787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6787.moment H = canonicalOutput6787.moment H :=
  canonical_of_padded canonicalInput6787 canonicalOutput6787 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6788 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, 3, -5], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput6788 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code712

theorem canonicalSound6788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6788.moment H = canonicalOutput6788.moment H :=
  canonical_of_padded canonicalInput6788 canonicalOutput6788 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6789 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 0, 1], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound6789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6789.moment H = canonicalOutput6789.moment H :=
  canonical_of_padded canonicalInput6789 canonicalOutput6789 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6790 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 0, 1], ![0, 1, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput6790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node600⟩

theorem canonicalSound6790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6790.moment H = canonicalOutput6790.moment H :=
  canonical_of_padded canonicalInput6790 canonicalOutput6790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6791 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 1, 0], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6791 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩

theorem canonicalSound6791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6791.moment H = canonicalOutput6791.moment H :=
  canonical_of_padded canonicalInput6791 canonicalOutput6791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6792 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 1, 0], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6792 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound6792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6792.moment H = canonicalOutput6792.moment H :=
  canonical_of_padded canonicalInput6792 canonicalOutput6792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6793 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 1, 0], ![0, 2, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6793 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound6793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6793.moment H = canonicalOutput6793.moment H :=
  canonical_of_padded canonicalInput6793 canonicalOutput6793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6794 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 1, 0], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6794 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound6794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6794.moment H = canonicalOutput6794.moment H :=
  canonical_of_padded canonicalInput6794 canonicalOutput6794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6795 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound6795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6795.moment H = canonicalOutput6795.moment H :=
  canonical_of_padded canonicalInput6795 canonicalOutput6795 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6796 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 2, -1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6796 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound6796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6796.moment H = canonicalOutput6796.moment H :=
  canonical_of_padded canonicalInput6796 canonicalOutput6796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6797 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 2, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput6797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound6797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6797.moment H = canonicalOutput6797.moment H :=
  canonical_of_padded canonicalInput6797 canonicalOutput6797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6798 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 2, -1], ![0, 2, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput6798 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound6798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6798.moment H = canonicalOutput6798.moment H :=
  canonical_of_padded canonicalInput6798 canonicalOutput6798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6799 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 3, -2], ![0, 1, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput6799 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code802

theorem canonicalSound6799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6799.moment H = canonicalOutput6799.moment H :=
  canonical_of_padded canonicalInput6799 canonicalOutput6799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6800 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 3, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput6800 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code810

theorem canonicalSound6800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6800.moment H = canonicalOutput6800.moment H :=
  canonical_of_padded canonicalInput6800 canonicalOutput6800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6801 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 4, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput6801 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code322

theorem canonicalSound6801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6801.moment H = canonicalOutput6801.moment H :=
  canonical_of_padded canonicalInput6801 canonicalOutput6801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6802 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -2, 4, -3], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput6802 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code335

theorem canonicalSound6802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6802.moment H = canonicalOutput6802.moment H :=
  canonical_of_padded canonicalInput6802 canonicalOutput6802 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6803 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -1, -2, 2], ![0, 2, 0, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput6803 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code811

theorem canonicalSound6803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6803.moment H = canonicalOutput6803.moment H :=
  canonical_of_padded canonicalInput6803 canonicalOutput6803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6804 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![1, -1, -1, 1], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6804 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1950⟩

theorem canonicalSound6804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6804.moment H = canonicalOutput6804.moment H :=
  canonical_of_padded canonicalInput6804 canonicalOutput6804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6805 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -1, -1, 1], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput6805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound6805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6805.moment H = canonicalOutput6805.moment H :=
  canonical_of_padded canonicalInput6805 canonicalOutput6805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6806 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -1, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6806 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound6806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6806.moment H = canonicalOutput6806.moment H :=
  canonical_of_padded canonicalInput6806 canonicalOutput6806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6807 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -1, 2, -2], ![0, 2, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput6807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound6807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6807.moment H = canonicalOutput6807.moment H :=
  canonical_of_padded canonicalInput6807 canonicalOutput6807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6808 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, -1, 4, -4], ![0, 2, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6808 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code319

theorem canonicalSound6808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6808.moment H = canonicalOutput6808.moment H :=
  canonical_of_padded canonicalInput6808 canonicalOutput6808 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6809 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, 0, -2, 1], ![0, 2, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput6809 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code810

theorem canonicalSound6809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6809.moment H = canonicalOutput6809.moment H :=
  canonical_of_padded canonicalInput6809 canonicalOutput6809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6810 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, 0, 3, -4], ![0, 2, -2, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput6810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node595⟩

theorem canonicalSound6810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6810.moment H = canonicalOutput6810.moment H :=
  canonical_of_padded canonicalInput6810 canonicalOutput6810 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6811 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput6811 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code802

theorem canonicalSound6811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6811.moment H = canonicalOutput6811.moment H :=
  canonical_of_padded canonicalInput6811 canonicalOutput6811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6812 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, 1, -3, 1], ![0, 1, 3, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput6812 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code805

theorem canonicalSound6812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6812.moment H = canonicalOutput6812.moment H :=
  canonical_of_padded canonicalInput6812 canonicalOutput6812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6813 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![1, 1, -2, 0], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput6813 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound6813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6813.moment H = canonicalOutput6813.moment H :=
  canonical_of_padded canonicalInput6813 canonicalOutput6813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6814 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput6814 : ExponentCode := normalNode8308

theorem canonicalSound6814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6814.moment H = canonicalOutput6814.moment H :=
  canonical_of_padded canonicalInput6814 canonicalOutput6814 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6815 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput6815 : ExponentCode := normalNode8037

theorem canonicalSound6815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6815.moment H = canonicalOutput6815.moment H :=
  canonical_of_padded canonicalInput6815 canonicalOutput6815 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput6816 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6816 : ExponentCode := normalNode8004

theorem canonicalSound6816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6816.moment H = canonicalOutput6816.moment H :=
  canonical_of_padded canonicalInput6816 canonicalOutput6816 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6817 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6817 : ExponentCode := normalNode8004

theorem canonicalSound6817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6817.moment H = canonicalOutput6817.moment H :=
  canonical_of_padded canonicalInput6817 canonicalOutput6817 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6818 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6818 : ExponentCode := normalNode8011

theorem canonicalSound6818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6818.moment H = canonicalOutput6818.moment H :=
  canonical_of_padded canonicalInput6818 canonicalOutput6818 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6819 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6819 : ExponentCode := normalNode8011

theorem canonicalSound6819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6819.moment H = canonicalOutput6819.moment H :=
  canonical_of_padded canonicalInput6819 canonicalOutput6819 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6820 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6820 : ExponentCode := normalNode8013

theorem canonicalSound6820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6820.moment H = canonicalOutput6820.moment H :=
  canonical_of_padded canonicalInput6820 canonicalOutput6820 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput6821 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 0, 3, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput6821 : ExponentCode := normalNode8002

theorem canonicalSound6821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6821.moment H = canonicalOutput6821.moment H :=
  canonical_of_padded canonicalInput6821 canonicalOutput6821 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6822 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 1, 1, 0], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, -1, 2, -3]]⟩

def canonicalOutput6822 : ExponentCode := normalNode9191

theorem canonicalSound6822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6822.moment H = canonicalOutput6822.moment H :=
  canonical_of_padded canonicalInput6822 canonicalOutput6822 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6823 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 1, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput6823 : ExponentCode := normalNode9560

theorem canonicalSound6823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6823.moment H = canonicalOutput6823.moment H :=
  canonical_of_padded canonicalInput6823 canonicalOutput6823 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput6824 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -2, 1, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![2, 0, -1, 2, -3]]⟩

def canonicalOutput6824 : ExponentCode := normalNode9563

theorem canonicalSound6824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6824.moment H = canonicalOutput6824.moment H :=
  canonical_of_padded canonicalInput6824 canonicalOutput6824 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6825 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput6825 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code812

theorem canonicalSound6825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6825.moment H = canonicalOutput6825.moment H :=
  canonical_of_padded canonicalInput6825 canonicalOutput6825 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6826 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput6826 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code338

theorem canonicalSound6826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6826.moment H = canonicalOutput6826.moment H :=
  canonical_of_padded canonicalInput6826 canonicalOutput6826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6827 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 2, 0], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput6827 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code338

theorem canonicalSound6827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6827.moment H = canonicalOutput6827.moment H :=
  canonical_of_padded canonicalInput6827 canonicalOutput6827 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6828 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, -1, 2, -1, 0], ![1, 0, 0, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput6828 : ExponentCode := normalNode9985

theorem canonicalSound6828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6828.moment H = canonicalOutput6828.moment H :=
  canonical_of_padded canonicalInput6828 canonicalOutput6828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput6829 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, -1, 2, -1, 0], ![1, 1, 0, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6829 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code814

theorem canonicalSound6829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6829.moment H = canonicalOutput6829.moment H :=
  canonical_of_padded canonicalInput6829 canonicalOutput6829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6830 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput6830 : ExponentCode := normalNode8036

theorem canonicalSound6830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6830.moment H = canonicalOutput6830.moment H :=
  canonical_of_padded canonicalInput6830 canonicalOutput6830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput6831 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput6831 : ExponentCode := normalNode7521

theorem canonicalSound6831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6831.moment H = canonicalOutput6831.moment H :=
  canonical_of_padded canonicalInput6831 canonicalOutput6831 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput6832 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6832 : ExponentCode := normalNode8030

theorem canonicalSound6832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6832.moment H = canonicalOutput6832.moment H :=
  canonical_of_padded canonicalInput6832 canonicalOutput6832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput6833 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6833 : ExponentCode := normalNode8039

theorem canonicalSound6833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6833.moment H = canonicalOutput6833.moment H :=
  canonical_of_padded canonicalInput6833 canonicalOutput6833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput6834 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput6834 : ExponentCode := normalNode8001

theorem canonicalSound6834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6834.moment H = canonicalOutput6834.moment H :=
  canonical_of_padded canonicalInput6834 canonicalOutput6834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6835 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6835 : ExponentCode := normalNode8034

theorem canonicalSound6835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6835.moment H = canonicalOutput6835.moment H :=
  canonical_of_padded canonicalInput6835 canonicalOutput6835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput6836 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput6836 : ExponentCode := normalNode8000

theorem canonicalSound6836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6836.moment H = canonicalOutput6836.moment H :=
  canonical_of_padded canonicalInput6836 canonicalOutput6836 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6837 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6837 : ExponentCode := normalNode8017

theorem canonicalSound6837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6837.moment H = canonicalOutput6837.moment H :=
  canonical_of_padded canonicalInput6837 canonicalOutput6837 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6838 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 2, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6838 : ExponentCode := normalNode8023

theorem canonicalSound6838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6838.moment H = canonicalOutput6838.moment H :=
  canonical_of_padded canonicalInput6838 canonicalOutput6838 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput6839 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, -1, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6839 : ExponentCode := normalNode7503

theorem canonicalSound6839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6839.moment H = canonicalOutput6839.moment H :=
  canonical_of_padded canonicalInput6839 canonicalOutput6839 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation27⟩ (by decide +kernel) hH

def canonicalInput6840 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput6840 : ExponentCode := normalNode8030

theorem canonicalSound6840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6840.moment H = canonicalOutput6840.moment H :=
  canonical_of_padded canonicalInput6840 canonicalOutput6840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6841 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6841 : ExponentCode := normalNode8035

theorem canonicalSound6841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6841.moment H = canonicalOutput6841.moment H :=
  canonical_of_padded canonicalInput6841 canonicalOutput6841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6842 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6842 : ExponentCode := normalNode8000

theorem canonicalSound6842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6842.moment H = canonicalOutput6842.moment H :=
  canonical_of_padded canonicalInput6842 canonicalOutput6842 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6843 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6843 : ExponentCode := normalNode7490

theorem canonicalSound6843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6843.moment H = canonicalOutput6843.moment H :=
  canonical_of_padded canonicalInput6843 canonicalOutput6843 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput6844 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput6844 : ExponentCode := normalNode8011

theorem canonicalSound6844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6844.moment H = canonicalOutput6844.moment H :=
  canonical_of_padded canonicalInput6844 canonicalOutput6844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6845 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6845 : ExponentCode := normalNode8027

theorem canonicalSound6845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6845.moment H = canonicalOutput6845.moment H :=
  canonical_of_padded canonicalInput6845 canonicalOutput6845 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput6846 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6846 : ExponentCode := normalNode8012

theorem canonicalSound6846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6846.moment H = canonicalOutput6846.moment H :=
  canonical_of_padded canonicalInput6846 canonicalOutput6846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6847 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6847 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code817

theorem canonicalSound6847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6847.moment H = canonicalOutput6847.moment H :=
  canonical_of_padded canonicalInput6847 canonicalOutput6847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

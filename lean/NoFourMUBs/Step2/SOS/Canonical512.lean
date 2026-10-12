import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32768 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, -1, 2, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32768 : ExponentCode := normalNode4310

theorem canonicalSound32768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32768.moment H = canonicalOutput32768.moment H :=
  canonical_of_padded canonicalInput32768 canonicalOutput32768 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput32769 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32769 : ExponentCode := normalNode4310

theorem canonicalSound32769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32769.moment H = canonicalOutput32769.moment H :=
  canonical_of_padded canonicalInput32769 canonicalOutput32769 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput32770 : ExponentCode := ⟨6, 6, ![![0, 1, 1, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32770 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code831

theorem canonicalSound32770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32770.moment H = canonicalOutput32770.moment H :=
  canonical_of_padded canonicalInput32770 canonicalOutput32770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation347⟩ (by decide +kernel) hH

def canonicalInput32771 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-4, 1, -1, 4], ![4, -2, -1, -1]]⟩

def canonicalOutput32771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound32771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32771.moment H = canonicalOutput32771.moment H :=
  canonical_of_padded canonicalInput32771 canonicalOutput32771 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32772 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-3, 1, -1, 3], ![3, -2, -1, 0]]⟩

def canonicalOutput32772 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound32772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32772.moment H = canonicalOutput32772.moment H :=
  canonical_of_padded canonicalInput32772 canonicalOutput32772 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32773 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-3, 3, -2, 2], ![3, -4, 0, 1]]⟩

def canonicalOutput32773 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code83

theorem canonicalSound32773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32773.moment H = canonicalOutput32773.moment H :=
  canonical_of_padded canonicalInput32773 canonicalOutput32773 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32774 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-2, -3, 2, 3], ![2, 2, -4, 0]]⟩

def canonicalOutput32774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code57

theorem canonicalSound32774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32774.moment H = canonicalOutput32774.moment H :=
  canonical_of_padded canonicalInput32774 canonicalOutput32774 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32775 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-2, 3, -3, 2], ![2, -4, 1, 1]]⟩

def canonicalOutput32775 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code78

theorem canonicalSound32775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32775.moment H = canonicalOutput32775.moment H :=
  canonical_of_padded canonicalInput32775 canonicalOutput32775 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32776 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-2, 3, -2, 1], ![2, -4, 0, 2]]⟩

def canonicalOutput32776 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound32776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32776.moment H = canonicalOutput32776.moment H :=
  canonical_of_padded canonicalInput32776 canonicalOutput32776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32777 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-1, -3, 2, 2], ![1, 2, -4, 1]]⟩

def canonicalOutput32777 : ExponentCode := normalNode235

theorem canonicalSound32777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32777.moment H = canonicalOutput32777.moment H :=
  canonical_of_padded canonicalInput32777 canonicalOutput32777 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32778 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![-1, 3, -3, 1], ![1, -4, 1, 2]]⟩

def canonicalOutput32778 : ExponentCode := normalNode216

theorem canonicalSound32778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32778.moment H = canonicalOutput32778.moment H :=
  canonical_of_padded canonicalInput32778 canonicalOutput32778 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32779 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![1, -3, 1, 1], ![-1, 2, -3, 2]]⟩

def canonicalOutput32779 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound32779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32779.moment H = canonicalOutput32779.moment H :=
  canonical_of_padded canonicalInput32779 canonicalOutput32779 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32780 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![1, -2, 1, 0], ![-1, 1, -3, 3]]⟩

def canonicalOutput32780 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound32780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32780.moment H = canonicalOutput32780.moment H :=
  canonical_of_padded canonicalInput32780 canonicalOutput32780 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32781 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![1, 1, -1, -1], ![-1, -2, -1, 4]]⟩

def canonicalOutput32781 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound32781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32781.moment H = canonicalOutput32781.moment H :=
  canonical_of_padded canonicalInput32781 canonicalOutput32781 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32782 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![2, -3, 1, 0], ![-2, 2, -3, 3]]⟩

def canonicalOutput32782 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node96⟩

theorem canonicalSound32782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32782.moment H = canonicalOutput32782.moment H :=
  canonical_of_padded canonicalInput32782 canonicalOutput32782 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32783 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![2, -2, 0, 0], ![-2, 1, -2, 3]]⟩

def canonicalOutput32783 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound32783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32783.moment H = canonicalOutput32783.moment H :=
  canonical_of_padded canonicalInput32783 canonicalOutput32783 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32784 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![2, -2, 1, -1], ![-2, 1, -3, 4]]⟩

def canonicalOutput32784 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound32784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32784.moment H = canonicalOutput32784.moment H :=
  canonical_of_padded canonicalInput32784 canonicalOutput32784 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32785 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![2, 1, -1, -2], ![-2, -2, -1, 5]]⟩

def canonicalOutput32785 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound32785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32785.moment H = canonicalOutput32785.moment H :=
  canonical_of_padded canonicalInput32785 canonicalOutput32785 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32786 : ExponentCode := ⟨3, 4, ![![0, 1, 2, -3], ![3, -2, 0, -1], ![-3, 1, -2, 4]]⟩

def canonicalOutput32786 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound32786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32786.moment H = canonicalOutput32786.moment H :=
  canonical_of_padded canonicalInput32786 canonicalOutput32786 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32787 : ExponentCode := ⟨3, 6, ![![0, 1, 2, -2, -1, 0], ![-1, 1, -1, 0, 2, -1], ![1, -2, -1, 2, -1, 1]]⟩

def canonicalOutput32787 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2102⟩

theorem canonicalSound32787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32787.moment H = canonicalOutput32787.moment H :=
  canonical_of_padded canonicalInput32787 canonicalOutput32787 (by decide) (by decide)
    ⟨true, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32788 : ExponentCode := ⟨4, 6, ![![0, 1, 2, -2, -1, 0], ![0, 1, -1, 0, 1, -1], ![1, -1, 0, 1, -1, 0], ![-1, -1, -1, 1, 1, 1]]⟩

def canonicalOutput32788 : ExponentCode := normalNode10183

theorem canonicalSound32788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32788.moment H = canonicalOutput32788.moment H :=
  canonical_of_padded canonicalInput32788 canonicalOutput32788 (by decide) (by decide)
    ⟨true, false, canonicalPermutation263, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32789 : ExponentCode := ⟨4, 6, ![![0, 1, 2, -2, -1, 0], ![0, 1, -1, 0, 1, -1], ![1, 0, -1, 1, -1, 0], ![-1, -2, 0, 1, 1, 1]]⟩

def canonicalOutput32789 : ExponentCode := normalNode8821

theorem canonicalSound32789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32789.moment H = canonicalOutput32789.moment H :=
  canonical_of_padded canonicalInput32789 canonicalOutput32789 (by decide) (by decide)
    ⟨true, false, canonicalPermutation251, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32790 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32790 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32790.moment H = canonicalOutput32790.moment H :=
  canonical_of_padded canonicalInput32790 canonicalOutput32790 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32791 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32791 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32791.moment H = canonicalOutput32791.moment H :=
  canonical_of_padded canonicalInput32791 canonicalOutput32791 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32792 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32792 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32792.moment H = canonicalOutput32792.moment H :=
  canonical_of_padded canonicalInput32792 canonicalOutput32792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32793 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32793 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound32793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32793.moment H = canonicalOutput32793.moment H :=
  canonical_of_padded canonicalInput32793 canonicalOutput32793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32794 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32794 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32794.moment H = canonicalOutput32794.moment H :=
  canonical_of_padded canonicalInput32794 canonicalOutput32794 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32795 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32795 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32795.moment H = canonicalOutput32795.moment H :=
  canonical_of_padded canonicalInput32795 canonicalOutput32795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32796 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32796 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32796.moment H = canonicalOutput32796.moment H :=
  canonical_of_padded canonicalInput32796 canonicalOutput32796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32797 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32797 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32797.moment H = canonicalOutput32797.moment H :=
  canonical_of_padded canonicalInput32797 canonicalOutput32797 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32798 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32798 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32798.moment H = canonicalOutput32798.moment H :=
  canonical_of_padded canonicalInput32798 canonicalOutput32798 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32799 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32799 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32799.moment H = canonicalOutput32799.moment H :=
  canonical_of_padded canonicalInput32799 canonicalOutput32799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32800 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32800 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound32800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32800.moment H = canonicalOutput32800.moment H :=
  canonical_of_padded canonicalInput32800 canonicalOutput32800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32801 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32801 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32801.moment H = canonicalOutput32801.moment H :=
  canonical_of_padded canonicalInput32801 canonicalOutput32801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput32802 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32802 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound32802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32802.moment H = canonicalOutput32802.moment H :=
  canonical_of_padded canonicalInput32802 canonicalOutput32802 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32803 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32803 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32803.moment H = canonicalOutput32803.moment H :=
  canonical_of_padded canonicalInput32803 canonicalOutput32803 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32804 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32804 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32804.moment H = canonicalOutput32804.moment H :=
  canonical_of_padded canonicalInput32804 canonicalOutput32804 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32805 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32805 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32805.moment H = canonicalOutput32805.moment H :=
  canonical_of_padded canonicalInput32805 canonicalOutput32805 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32806 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32806 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32806.moment H = canonicalOutput32806.moment H :=
  canonical_of_padded canonicalInput32806 canonicalOutput32806 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32807 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32807 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32807.moment H = canonicalOutput32807.moment H :=
  canonical_of_padded canonicalInput32807 canonicalOutput32807 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32808 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32808 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32808.moment H = canonicalOutput32808.moment H :=
  canonical_of_padded canonicalInput32808 canonicalOutput32808 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32809 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32809 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound32809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32809.moment H = canonicalOutput32809.moment H :=
  canonical_of_padded canonicalInput32809 canonicalOutput32809 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32810 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32810 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32810.moment H = canonicalOutput32810.moment H :=
  canonical_of_padded canonicalInput32810 canonicalOutput32810 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32811 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32811 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32811.moment H = canonicalOutput32811.moment H :=
  canonical_of_padded canonicalInput32811 canonicalOutput32811 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32812 : ExponentCode := ⟨6, 6, ![![0, 2, -2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32812 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32812.moment H = canonicalOutput32812.moment H :=
  canonical_of_padded canonicalInput32812 canonicalOutput32812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32813 : ExponentCode := ⟨6, 6, ![![0, 2, -1, -2, 1, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32813 : ExponentCode := normalNode7087

theorem canonicalSound32813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32813.moment H = canonicalOutput32813.moment H :=
  canonical_of_padded canonicalInput32813 canonicalOutput32813 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput32814 : ExponentCode := ⟨6, 6, ![![0, 2, -1, -2, 1, 0], ![0, -1, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32814 : ExponentCode := normalNode8336

theorem canonicalSound32814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32814.moment H = canonicalOutput32814.moment H :=
  canonical_of_padded canonicalInput32814 canonicalOutput32814 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation362⟩ (by decide +kernel) hH

def canonicalInput32815 : ExponentCode := ⟨6, 6, ![![0, 2, -1, -2, 1, 0], ![1, -1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32815 : ExponentCode := normalNode8336

theorem canonicalSound32815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32815.moment H = canonicalOutput32815.moment H :=
  canonical_of_padded canonicalInput32815 canonicalOutput32815 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput32816 : ExponentCode := ⟨6, 6, ![![0, 2, -1, -2, 1, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32816 : ExponentCode := normalNode7087

theorem canonicalSound32816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32816.moment H = canonicalOutput32816.moment H :=
  canonical_of_padded canonicalInput32816 canonicalOutput32816 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput32817 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32817 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound32817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32817.moment H = canonicalOutput32817.moment H :=
  canonical_of_padded canonicalInput32817 canonicalOutput32817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32818 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32818 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32818.moment H = canonicalOutput32818.moment H :=
  canonical_of_padded canonicalInput32818 canonicalOutput32818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32819 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32819 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32819.moment H = canonicalOutput32819.moment H :=
  canonical_of_padded canonicalInput32819 canonicalOutput32819 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32820 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32820 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32820.moment H = canonicalOutput32820.moment H :=
  canonical_of_padded canonicalInput32820 canonicalOutput32820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32821 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32821 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32821.moment H = canonicalOutput32821.moment H :=
  canonical_of_padded canonicalInput32821 canonicalOutput32821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32822 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32822 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32822.moment H = canonicalOutput32822.moment H :=
  canonical_of_padded canonicalInput32822 canonicalOutput32822 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32823 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32823 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound32823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32823.moment H = canonicalOutput32823.moment H :=
  canonical_of_padded canonicalInput32823 canonicalOutput32823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32824 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32824 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32824.moment H = canonicalOutput32824.moment H :=
  canonical_of_padded canonicalInput32824 canonicalOutput32824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput32825 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32825 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32825.moment H = canonicalOutput32825.moment H :=
  canonical_of_padded canonicalInput32825 canonicalOutput32825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput32826 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32826 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound32826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32826.moment H = canonicalOutput32826.moment H :=
  canonical_of_padded canonicalInput32826 canonicalOutput32826 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32827 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32827 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32827.moment H = canonicalOutput32827.moment H :=
  canonical_of_padded canonicalInput32827 canonicalOutput32827 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32828 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32828 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32828.moment H = canonicalOutput32828.moment H :=
  canonical_of_padded canonicalInput32828 canonicalOutput32828 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32829 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32829 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32829.moment H = canonicalOutput32829.moment H :=
  canonical_of_padded canonicalInput32829 canonicalOutput32829 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32830 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32830 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32830.moment H = canonicalOutput32830.moment H :=
  canonical_of_padded canonicalInput32830 canonicalOutput32830 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32831 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32831 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32831.moment H = canonicalOutput32831.moment H :=
  canonical_of_padded canonicalInput32831 canonicalOutput32831 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13824 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, 1, -3], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13824 : ExponentCode := normalNode10485

theorem canonicalSound13824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13824.moment H = canonicalOutput13824.moment H :=
  canonical_of_padded canonicalInput13824 canonicalOutput13824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13825 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, 1, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput13825 : ExponentCode := normalNode9481

theorem canonicalSound13825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13825.moment H = canonicalOutput13825.moment H :=
  canonical_of_padded canonicalInput13825 canonicalOutput13825 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13826 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, 2, -4], ![0, -1, -1, 2], ![2, 0, -2, 0]]⟩

def canonicalOutput13826 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code538

theorem canonicalSound13826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13826.moment H = canonicalOutput13826.moment H :=
  canonical_of_padded canonicalInput13826 canonicalOutput13826 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13827 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, 2, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput13827 : ExponentCode := normalNode6929

theorem canonicalSound13827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13827.moment H = canonicalOutput13827.moment H :=
  canonical_of_padded canonicalInput13827 canonicalOutput13827 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13828 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, 2, -4], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput13828 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code539

theorem canonicalSound13828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13828.moment H = canonicalOutput13828.moment H :=
  canonical_of_padded canonicalInput13828 canonicalOutput13828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13829 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput13829 : ExponentCode := normalNode6804

theorem canonicalSound13829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13829.moment H = canonicalOutput13829.moment H :=
  canonical_of_padded canonicalInput13829 canonicalOutput13829 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13830 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput13830 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node728⟩

theorem canonicalSound13830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13830.moment H = canonicalOutput13830.moment H :=
  canonical_of_padded canonicalInput13830 canonicalOutput13830 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13831 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput13831 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound13831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13831.moment H = canonicalOutput13831.moment H :=
  canonical_of_padded canonicalInput13831 canonicalOutput13831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13832 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput13832 : ExponentCode := normalNode6524

theorem canonicalSound13832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13832.moment H = canonicalOutput13832.moment H :=
  canonical_of_padded canonicalInput13832 canonicalOutput13832 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13833 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput13833 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound13833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13833.moment H = canonicalOutput13833.moment H :=
  canonical_of_padded canonicalInput13833 canonicalOutput13833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13834 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput13834 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound13834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13834.moment H = canonicalOutput13834.moment H :=
  canonical_of_padded canonicalInput13834 canonicalOutput13834 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13835 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput13835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound13835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13835.moment H = canonicalOutput13835.moment H :=
  canonical_of_padded canonicalInput13835 canonicalOutput13835 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13836 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput13836 : ExponentCode := normalNode11029

theorem canonicalSound13836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13836.moment H = canonicalOutput13836.moment H :=
  canonical_of_padded canonicalInput13836 canonicalOutput13836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13837 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13837 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2558⟩

theorem canonicalSound13837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13837.moment H = canonicalOutput13837.moment H :=
  canonical_of_padded canonicalInput13837 canonicalOutput13837 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13838 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput13838 : ExponentCode := normalNode11037

theorem canonicalSound13838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13838.moment H = canonicalOutput13838.moment H :=
  canonical_of_padded canonicalInput13838 canonicalOutput13838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13839 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 0, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput13839 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node892⟩

theorem canonicalSound13839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13839.moment H = canonicalOutput13839.moment H :=
  canonical_of_padded canonicalInput13839 canonicalOutput13839 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13840 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput13840 : ExponentCode := normalNode6875

theorem canonicalSound13840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13840.moment H = canonicalOutput13840.moment H :=
  canonical_of_padded canonicalInput13840 canonicalOutput13840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13841 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13841 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound13841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13841.moment H = canonicalOutput13841.moment H :=
  canonical_of_padded canonicalInput13841 canonicalOutput13841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13842 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput13842 : ExponentCode := normalNode10285

theorem canonicalSound13842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13842.moment H = canonicalOutput13842.moment H :=
  canonical_of_padded canonicalInput13842 canonicalOutput13842 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13843 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, -3, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput13843 : ExponentCode := normalNode6939

theorem canonicalSound13843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13843.moment H = canonicalOutput13843.moment H :=
  canonical_of_padded canonicalInput13843 canonicalOutput13843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13844 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13844 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound13844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13844.moment H = canonicalOutput13844.moment H :=
  canonical_of_padded canonicalInput13844 canonicalOutput13844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13845 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput13845 : ExponentCode := normalNode6694

theorem canonicalSound13845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13845.moment H = canonicalOutput13845.moment H :=
  canonical_of_padded canonicalInput13845 canonicalOutput13845 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13846 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 1, 0], ![1, 1, -3, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput13846 : ExponentCode := normalNode6941

theorem canonicalSound13846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13846.moment H = canonicalOutput13846.moment H :=
  canonical_of_padded canonicalInput13846 canonicalOutput13846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13847 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13847 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1336⟩

theorem canonicalSound13847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13847.moment H = canonicalOutput13847.moment H :=
  canonical_of_padded canonicalInput13847 canonicalOutput13847 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13848 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound13848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13848.moment H = canonicalOutput13848.moment H :=
  canonical_of_padded canonicalInput13848 canonicalOutput13848 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13849 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13849 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound13849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13849.moment H = canonicalOutput13849.moment H :=
  canonical_of_padded canonicalInput13849 canonicalOutput13849 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13850 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound13850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13850.moment H = canonicalOutput13850.moment H :=
  canonical_of_padded canonicalInput13850 canonicalOutput13850 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13851 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13851 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound13851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13851.moment H = canonicalOutput13851.moment H :=
  canonical_of_padded canonicalInput13851 canonicalOutput13851 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13852 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13852 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩

theorem canonicalSound13852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13852.moment H = canonicalOutput13852.moment H :=
  canonical_of_padded canonicalInput13852 canonicalOutput13852 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13853 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, -1, 2, -1], ![1, 1, -3, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput13853 : ExponentCode := normalNode6951

theorem canonicalSound13853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13853.moment H = canonicalOutput13853.moment H :=
  canonical_of_padded canonicalInput13853 canonicalOutput13853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13854 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 0, -3, 3], ![1, 2, 2, -5]]⟩

def canonicalOutput13854 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound13854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13854.moment H = canonicalOutput13854.moment H :=
  canonical_of_padded canonicalInput13854 canonicalOutput13854 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13855 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, -2, 2], ![1, 0, 1, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput13855 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound13855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13855.moment H = canonicalOutput13855.moment H :=
  canonical_of_padded canonicalInput13855 canonicalOutput13855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13856 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, -2, 2], ![1, 0, 2, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput13856 : ExponentCode := normalNode6979

theorem canonicalSound13856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13856.moment H = canonicalOutput13856.moment H :=
  canonical_of_padded canonicalInput13856 canonicalOutput13856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13857 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13857 : ExponentCode := normalNode6880

theorem canonicalSound13857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13857.moment H = canonicalOutput13857.moment H :=
  canonical_of_padded canonicalInput13857 canonicalOutput13857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13858 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput13858 : ExponentCode := normalNode11029

theorem canonicalSound13858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13858.moment H = canonicalOutput13858.moment H :=
  canonical_of_padded canonicalInput13858 canonicalOutput13858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13859 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput13859 : ExponentCode := normalNode6963

theorem canonicalSound13859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13859.moment H = canonicalOutput13859.moment H :=
  canonical_of_padded canonicalInput13859 canonicalOutput13859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13860 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput13860 : ExponentCode := normalNode6964

theorem canonicalSound13860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13860.moment H = canonicalOutput13860.moment H :=
  canonical_of_padded canonicalInput13860 canonicalOutput13860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13861 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput13861 : ExponentCode := normalNode10825

theorem canonicalSound13861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13861.moment H = canonicalOutput13861.moment H :=
  canonical_of_padded canonicalInput13861 canonicalOutput13861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13862 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound13862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13862.moment H = canonicalOutput13862.moment H :=
  canonical_of_padded canonicalInput13862 canonicalOutput13862 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput13863 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput13863 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound13863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13863.moment H = canonicalOutput13863.moment H :=
  canonical_of_padded canonicalInput13863 canonicalOutput13863 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput13864 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13864 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound13864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13864.moment H = canonicalOutput13864.moment H :=
  canonical_of_padded canonicalInput13864 canonicalOutput13864 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput13865 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput13865 : ExponentCode := normalNode7002

theorem canonicalSound13865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13865.moment H = canonicalOutput13865.moment H :=
  canonical_of_padded canonicalInput13865 canonicalOutput13865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13866 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput13866 : ExponentCode := normalNode10663

theorem canonicalSound13866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13866.moment H = canonicalOutput13866.moment H :=
  canonical_of_padded canonicalInput13866 canonicalOutput13866 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13867 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, -1, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13867 : ExponentCode := normalNode11022

theorem canonicalSound13867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13867.moment H = canonicalOutput13867.moment H :=
  canonical_of_padded canonicalInput13867 canonicalOutput13867 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13868 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput13868 : ExponentCode := normalNode11032

theorem canonicalSound13868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13868.moment H = canonicalOutput13868.moment H :=
  canonical_of_padded canonicalInput13868 canonicalOutput13868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13869 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput13869 : ExponentCode := normalNode7408

theorem canonicalSound13869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13869.moment H = canonicalOutput13869.moment H :=
  canonical_of_padded canonicalInput13869 canonicalOutput13869 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13870 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13870 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound13870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13870.moment H = canonicalOutput13870.moment H :=
  canonical_of_padded canonicalInput13870 canonicalOutput13870 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput13871 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13871 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound13871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13871.moment H = canonicalOutput13871.moment H :=
  canonical_of_padded canonicalInput13871 canonicalOutput13871 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput13872 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13872 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound13872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13872.moment H = canonicalOutput13872.moment H :=
  canonical_of_padded canonicalInput13872 canonicalOutput13872 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13873 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13873 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound13873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13873.moment H = canonicalOutput13873.moment H :=
  canonical_of_padded canonicalInput13873 canonicalOutput13873 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13874 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13874 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound13874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13874.moment H = canonicalOutput13874.moment H :=
  canonical_of_padded canonicalInput13874 canonicalOutput13874 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13875 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 2, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput13875 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound13875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13875.moment H = canonicalOutput13875.moment H :=
  canonical_of_padded canonicalInput13875 canonicalOutput13875 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13876 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13876 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound13876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13876.moment H = canonicalOutput13876.moment H :=
  canonical_of_padded canonicalInput13876 canonicalOutput13876 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13877 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 0, 0], ![0, 2, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput13877 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound13877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13877.moment H = canonicalOutput13877.moment H :=
  canonical_of_padded canonicalInput13877 canonicalOutput13877 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13878 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13878 : ExponentCode := normalNode10497

theorem canonicalSound13878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13878.moment H = canonicalOutput13878.moment H :=
  canonical_of_padded canonicalInput13878 canonicalOutput13878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13879 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13879 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound13879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13879.moment H = canonicalOutput13879.moment H :=
  canonical_of_padded canonicalInput13879 canonicalOutput13879 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13880 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13880 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound13880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13880.moment H = canonicalOutput13880.moment H :=
  canonical_of_padded canonicalInput13880 canonicalOutput13880 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput13881 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13881 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound13881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13881.moment H = canonicalOutput13881.moment H :=
  canonical_of_padded canonicalInput13881 canonicalOutput13881 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput13882 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13882 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound13882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13882.moment H = canonicalOutput13882.moment H :=
  canonical_of_padded canonicalInput13882 canonicalOutput13882 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13883 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13883 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2454⟩

theorem canonicalSound13883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13883.moment H = canonicalOutput13883.moment H :=
  canonical_of_padded canonicalInput13883 canonicalOutput13883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13884 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13884 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2455⟩

theorem canonicalSound13884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13884.moment H = canonicalOutput13884.moment H :=
  canonical_of_padded canonicalInput13884 canonicalOutput13884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13885 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13885 : ExponentCode := normalNode10731

theorem canonicalSound13885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13885.moment H = canonicalOutput13885.moment H :=
  canonical_of_padded canonicalInput13885 canonicalOutput13885 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13886 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13886 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node967⟩

theorem canonicalSound13886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13886.moment H = canonicalOutput13886.moment H :=
  canonical_of_padded canonicalInput13886 canonicalOutput13886 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13887 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13887 : ExponentCode := normalNode11030

theorem canonicalSound13887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13887.moment H = canonicalOutput13887.moment H :=
  canonical_of_padded canonicalInput13887 canonicalOutput13887 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

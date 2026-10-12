import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28864 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput28864 : ExponentCode := normalNode4441

theorem canonicalSound28864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28864.moment H = canonicalOutput28864.moment H :=
  canonical_of_padded canonicalInput28864 canonicalOutput28864 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28865 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -3, 0, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput28865 : ExponentCode := normalNode4452

theorem canonicalSound28865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28865.moment H = canonicalOutput28865.moment H :=
  canonical_of_padded canonicalInput28865 canonicalOutput28865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28866 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28866 : ExponentCode := normalNode2622

theorem canonicalSound28866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28866.moment H = canonicalOutput28866.moment H :=
  canonical_of_padded canonicalInput28866 canonicalOutput28866 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28867 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput28867 : ExponentCode := normalNode2639

theorem canonicalSound28867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28867.moment H = canonicalOutput28867.moment H :=
  canonical_of_padded canonicalInput28867 canonicalOutput28867 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28868 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 2, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput28868 : ExponentCode := normalNode5182

theorem canonicalSound28868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28868.moment H = canonicalOutput28868.moment H :=
  canonical_of_padded canonicalInput28868 canonicalOutput28868 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28869 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 2, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput28869 : ExponentCode := normalNode4321

theorem canonicalSound28869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28869.moment H = canonicalOutput28869.moment H :=
  canonical_of_padded canonicalInput28869 canonicalOutput28869 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28870 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, -2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput28870 : ExponentCode := normalNode5183

theorem canonicalSound28870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28870.moment H = canonicalOutput28870.moment H :=
  canonical_of_padded canonicalInput28870 canonicalOutput28870 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28871 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput28871 : ExponentCode := normalNode4322

theorem canonicalSound28871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28871.moment H = canonicalOutput28871.moment H :=
  canonical_of_padded canonicalInput28871 canonicalOutput28871 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28872 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28872 : ExponentCode := normalNode4322

theorem canonicalSound28872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28872.moment H = canonicalOutput28872.moment H :=
  canonical_of_padded canonicalInput28872 canonicalOutput28872 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28873 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput28873 : ExponentCode := normalNode4393

theorem canonicalSound28873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28873.moment H = canonicalOutput28873.moment H :=
  canonical_of_padded canonicalInput28873 canonicalOutput28873 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28874 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput28874 : ExponentCode := normalNode5194

theorem canonicalSound28874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28874.moment H = canonicalOutput28874.moment H :=
  canonical_of_padded canonicalInput28874 canonicalOutput28874 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28875 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![-1, 1, -2, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput28875 : ExponentCode := normalNode5811

theorem canonicalSound28875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28875.moment H = canonicalOutput28875.moment H :=
  canonical_of_padded canonicalInput28875 canonicalOutput28875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28876 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![-1, 1, 2, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28876 : ExponentCode := normalNode5817

theorem canonicalSound28876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28876.moment H = canonicalOutput28876.moment H :=
  canonical_of_padded canonicalInput28876 canonicalOutput28876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28877 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput28877 : ExponentCode := normalNode11220

theorem canonicalSound28877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28877.moment H = canonicalOutput28877.moment H :=
  canonical_of_padded canonicalInput28877 canonicalOutput28877 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28878 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, -1, 3], ![2, 0, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28878 : ExponentCode := normalNode3566

theorem canonicalSound28878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28878.moment H = canonicalOutput28878.moment H :=
  canonical_of_padded canonicalInput28878 canonicalOutput28878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28879 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 0, 2], ![2, -1, 0, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput28879 : ExponentCode := normalNode1785

theorem canonicalSound28879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28879.moment H = canonicalOutput28879.moment H :=
  canonical_of_padded canonicalInput28879 canonicalOutput28879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28880 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 0, 2], ![2, 0, -2, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28880 : ExponentCode := normalNode4038

theorem canonicalSound28880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28880.moment H = canonicalOutput28880.moment H :=
  canonical_of_padded canonicalInput28880 canonicalOutput28880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28881 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 2, 0, 0]]⟩

def canonicalOutput28881 : ExponentCode := normalNode3869

theorem canonicalSound28881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28881.moment H = canonicalOutput28881.moment H :=
  canonical_of_padded canonicalInput28881 canonicalOutput28881 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28882 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 3, -1, 0]]⟩

def canonicalOutput28882 : ExponentCode := normalNode3441

theorem canonicalSound28882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28882.moment H = canonicalOutput28882.moment H :=
  canonical_of_padded canonicalInput28882 canonicalOutput28882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28883 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 3, -2, 1]]⟩

def canonicalOutput28883 : ExponentCode := normalNode513

theorem canonicalSound28883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28883.moment H = canonicalOutput28883.moment H :=
  canonical_of_padded canonicalInput28883 canonicalOutput28883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28884 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -1, -2, 3], ![2, -1, 0, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28884 : ExponentCode := normalNode5480

theorem canonicalSound28884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28884.moment H = canonicalOutput28884.moment H :=
  canonical_of_padded canonicalInput28884 canonicalOutput28884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28885 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -1, -1, 2], ![2, -1, -1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28885 : ExponentCode := normalNode5489

theorem canonicalSound28885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28885.moment H = canonicalOutput28885.moment H :=
  canonical_of_padded canonicalInput28885 canonicalOutput28885 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28886 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 2, 0, 0]]⟩

def canonicalOutput28886 : ExponentCode := normalNode4320

theorem canonicalSound28886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28886.moment H = canonicalOutput28886.moment H :=
  canonical_of_padded canonicalInput28886 canonicalOutput28886 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28887 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, 0, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28887 : ExponentCode := normalNode587

theorem canonicalSound28887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28887.moment H = canonicalOutput28887.moment H :=
  canonical_of_padded canonicalInput28887 canonicalOutput28887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28888 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, -2, 3], ![2, -2, 2, -2]]⟩

def canonicalOutput28888 : ExponentCode := normalNode4927

theorem canonicalSound28888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28888.moment H = canonicalOutput28888.moment H :=
  canonical_of_padded canonicalInput28888 canonicalOutput28888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28889 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, -1, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput28889 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3257⟩

theorem canonicalSound28889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28889.moment H = canonicalOutput28889.moment H :=
  canonical_of_padded canonicalInput28889 canonicalOutput28889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28890 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 2, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput28890 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3255⟩

theorem canonicalSound28890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28890.moment H = canonicalOutput28890.moment H :=
  canonical_of_padded canonicalInput28890 canonicalOutput28890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28891 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 2, -1, 1], ![2, -3, 1, 0]]⟩

def canonicalOutput28891 : ExponentCode := normalNode3467

theorem canonicalSound28891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28891.moment H = canonicalOutput28891.moment H :=
  canonical_of_padded canonicalInput28891 canonicalOutput28891 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28892 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput28892 : ExponentCode := normalNode11185

theorem canonicalSound28892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28892.moment H = canonicalOutput28892.moment H :=
  canonical_of_padded canonicalInput28892 canonicalOutput28892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28893 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput28893 : ExponentCode := normalNode11055

theorem canonicalSound28893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28893.moment H = canonicalOutput28893.moment H :=
  canonical_of_padded canonicalInput28893 canonicalOutput28893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28894 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput28894 : ExponentCode := normalNode827

theorem canonicalSound28894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28894.moment H = canonicalOutput28894.moment H :=
  canonical_of_padded canonicalInput28894 canonicalOutput28894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28895 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput28895 : ExponentCode := normalNode588

theorem canonicalSound28895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28895.moment H = canonicalOutput28895.moment H :=
  canonical_of_padded canonicalInput28895 canonicalOutput28895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28896 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput28896 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2869⟩

theorem canonicalSound28896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28896.moment H = canonicalOutput28896.moment H :=
  canonical_of_padded canonicalInput28896 canonicalOutput28896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28897 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -2, 3], ![2, -2, 1, -1]]⟩

def canonicalOutput28897 : ExponentCode := normalNode4928

theorem canonicalSound28897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28897.moment H = canonicalOutput28897.moment H :=
  canonical_of_padded canonicalInput28897 canonicalOutput28897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28898 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -2, -3, 3]]⟩

def canonicalOutput28898 : ExponentCode := normalNode5181

theorem canonicalSound28898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28898.moment H = canonicalOutput28898.moment H :=
  canonical_of_padded canonicalInput28898 canonicalOutput28898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28899 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -2, 2], ![2, -3, 1, 0]]⟩

def canonicalOutput28899 : ExponentCode := normalNode768

theorem canonicalSound28899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28899.moment H = canonicalOutput28899.moment H :=
  canonical_of_padded canonicalInput28899 canonicalOutput28899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28900 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -3, 0, 1]]⟩

def canonicalOutput28900 : ExponentCode := normalNode2437

theorem canonicalSound28900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28900.moment H = canonicalOutput28900.moment H :=
  canonical_of_padded canonicalInput28900 canonicalOutput28900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28901 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -3, 0], ![-2, -2, 2, 2]]⟩

def canonicalOutput28901 : ExponentCode := normalNode826

theorem canonicalSound28901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28901.moment H = canonicalOutput28901.moment H :=
  canonical_of_padded canonicalInput28901 canonicalOutput28901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28902 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput28902 : ExponentCode := normalNode589

theorem canonicalSound28902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28902.moment H = canonicalOutput28902.moment H :=
  canonical_of_padded canonicalInput28902 canonicalOutput28902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28903 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput28903 : ExponentCode := normalNode406

theorem canonicalSound28903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28903.moment H = canonicalOutput28903.moment H :=
  canonical_of_padded canonicalInput28903 canonicalOutput28903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28904 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -2, -2, 4]]⟩

def canonicalOutput28904 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node429⟩

theorem canonicalSound28904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28904.moment H = canonicalOutput28904.moment H :=
  canonical_of_padded canonicalInput28904 canonicalOutput28904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28905 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -3, 1, 1], ![1, 1, 0, -2], ![-2, 2, -2, 2]]⟩

def canonicalOutput28905 : ExponentCode := normalNode783

theorem canonicalSound28905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28905.moment H = canonicalOutput28905.moment H :=
  canonical_of_padded canonicalInput28905 canonicalOutput28905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28906 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, -1, 1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput28906 : ExponentCode := normalNode2640

theorem canonicalSound28906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28906.moment H = canonicalOutput28906.moment H :=
  canonical_of_padded canonicalInput28906 canonicalOutput28906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28907 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, -1, -2, 2], ![-2, 3, 1, -2]]⟩

def canonicalOutput28907 : ExponentCode := normalNode5739

theorem canonicalSound28907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28907.moment H = canonicalOutput28907.moment H :=
  canonical_of_padded canonicalInput28907 canonicalOutput28907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28908 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 0, 0, -1], ![-2, 2, -2, 2]]⟩

def canonicalOutput28908 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3288⟩

theorem canonicalSound28908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28908.moment H = canonicalOutput28908.moment H :=
  canonical_of_padded canonicalInput28908 canonicalOutput28908 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28909 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput28909 : ExponentCode := normalNode4929

theorem canonicalSound28909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28909.moment H = canonicalOutput28909.moment H :=
  canonical_of_padded canonicalInput28909 canonicalOutput28909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28910 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, -1, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28910 : ExponentCode := normalNode2625

theorem canonicalSound28910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28910.moment H = canonicalOutput28910.moment H :=
  canonical_of_padded canonicalInput28910 canonicalOutput28910 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28911 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -2, 1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput28911 : ExponentCode := normalNode591

theorem canonicalSound28911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28911.moment H = canonicalOutput28911.moment H :=
  canonical_of_padded canonicalInput28911 canonicalOutput28911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28912 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 2, -2, -1]]⟩

def canonicalOutput28912 : ExponentCode := normalNode2641

theorem canonicalSound28912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28912.moment H = canonicalOutput28912.moment H :=
  canonical_of_padded canonicalInput28912 canonicalOutput28912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28913 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -2, -2, 3], ![-2, 3, 1, -2]]⟩

def canonicalOutput28913 : ExponentCode := normalNode5738

theorem canonicalSound28913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28913.moment H = canonicalOutput28913.moment H :=
  canonical_of_padded canonicalInput28913 canonicalOutput28913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28914 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 2, 1, -1]]⟩

def canonicalOutput28914 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3319⟩

theorem canonicalSound28914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28914.moment H = canonicalOutput28914.moment H :=
  canonical_of_padded canonicalInput28914 canonicalOutput28914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28915 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput28915 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2854⟩

theorem canonicalSound28915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28915.moment H = canonicalOutput28915.moment H :=
  canonical_of_padded canonicalInput28915 canonicalOutput28915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28916 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput28916 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node559⟩

theorem canonicalSound28916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28916.moment H = canonicalOutput28916.moment H :=
  canonical_of_padded canonicalInput28916 canonicalOutput28916 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28917 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![-1, 0, 2, -1], ![-1, -2, 0, 3], ![2, 1, 0, -3]]⟩

def canonicalOutput28917 : ExponentCode := normalNode1820

theorem canonicalSound28917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28917.moment H = canonicalOutput28917.moment H :=
  canonical_of_padded canonicalInput28917 canonicalOutput28917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28918 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![-1, 0, 2, -1], ![-1, -2, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput28918 : ExponentCode := normalNode2530

theorem canonicalSound28918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28918.moment H = canonicalOutput28918.moment H :=
  canonical_of_padded canonicalInput28918 canonicalOutput28918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28919 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput28919 : ExponentCode := normalNode2529

theorem canonicalSound28919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28919.moment H = canonicalOutput28919.moment H :=
  canonical_of_padded canonicalInput28919 canonicalOutput28919 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28920 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, -2, 2, 0], ![-2, 1, -1, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput28920 : ExponentCode := normalNode3495

theorem canonicalSound28920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28920.moment H = canonicalOutput28920.moment H :=
  canonical_of_padded canonicalInput28920 canonicalOutput28920 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28921 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 0, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput28921 : ExponentCode := normalNode842

theorem canonicalSound28921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28921.moment H = canonicalOutput28921.moment H :=
  canonical_of_padded canonicalInput28921 canonicalOutput28921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28922 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28922 : ExponentCode := normalNode1946

theorem canonicalSound28922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28922.moment H = canonicalOutput28922.moment H :=
  canonical_of_padded canonicalInput28922 canonicalOutput28922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28923 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput28923 : ExponentCode := normalNode2642

theorem canonicalSound28923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28923.moment H = canonicalOutput28923.moment H :=
  canonical_of_padded canonicalInput28923 canonicalOutput28923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28924 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28924 : ExponentCode := normalNode843

theorem canonicalSound28924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28924.moment H = canonicalOutput28924.moment H :=
  canonical_of_padded canonicalInput28924 canonicalOutput28924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28925 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28925 : ExponentCode := normalNode593

theorem canonicalSound28925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28925.moment H = canonicalOutput28925.moment H :=
  canonical_of_padded canonicalInput28925 canonicalOutput28925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28926 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28926 : ExponentCode := normalNode1947

theorem canonicalSound28926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28926.moment H = canonicalOutput28926.moment H :=
  canonical_of_padded canonicalInput28926 canonicalOutput28926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28927 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput28927 : ExponentCode := normalNode5197

theorem canonicalSound28927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28927.moment H = canonicalOutput28927.moment H :=
  canonical_of_padded canonicalInput28927 canonicalOutput28927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

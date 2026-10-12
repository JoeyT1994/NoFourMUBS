import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33856 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-3, 3, 1, -1], ![2, -3, -2, 3]]⟩

def canonicalOutput33856 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound33856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33856.moment H = canonicalOutput33856.moment H :=
  canonical_of_padded canonicalInput33856 canonicalOutput33856 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33857 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-2, -3, 2, 3], ![1, 3, -3, -1]]⟩

def canonicalOutput33857 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound33857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33857.moment H = canonicalOutput33857.moment H :=
  canonical_of_padded canonicalInput33857 canonicalOutput33857 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33858 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-2, -3, 4, 1], ![1, 3, -5, 1]]⟩

def canonicalOutput33858 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound33858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33858.moment H = canonicalOutput33858.moment H :=
  canonical_of_padded canonicalInput33858 canonicalOutput33858 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33859 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-2, 2, 2, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput33859 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound33859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33859.moment H = canonicalOutput33859.moment H :=
  canonical_of_padded canonicalInput33859 canonicalOutput33859 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33860 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-1, -3, 2, 2], ![0, 3, -3, 0]]⟩

def canonicalOutput33860 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound33860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33860.moment H = canonicalOutput33860.moment H :=
  canonical_of_padded canonicalInput33860 canonicalOutput33860 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33861 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-1, -3, 4, 0], ![0, 3, -5, 2]]⟩

def canonicalOutput33861 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node194⟩

theorem canonicalSound33861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33861.moment H = canonicalOutput33861.moment H :=
  canonical_of_padded canonicalInput33861 canonicalOutput33861 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33862 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-1, 2, 2, -3], ![0, -2, -3, 5]]⟩

def canonicalOutput33862 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound33862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33862.moment H = canonicalOutput33862.moment H :=
  canonical_of_padded canonicalInput33862 canonicalOutput33862 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33863 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-1, 4, -2, -1], ![0, -4, 1, 3]]⟩

def canonicalOutput33863 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound33863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33863.moment H = canonicalOutput33863.moment H :=
  canonical_of_padded canonicalInput33863 canonicalOutput33863 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33864 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![0, -4, 3, 1], ![-1, 4, -4, 1]]⟩

def canonicalOutput33864 : ExponentCode := normalNode5583

theorem canonicalSound33864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33864.moment H = canonicalOutput33864.moment H :=
  canonical_of_padded canonicalInput33864 canonicalOutput33864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33865 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![0, -2, 3, -1], ![-1, 2, -4, 3]]⟩

def canonicalOutput33865 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩

theorem canonicalSound33865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33865.moment H = canonicalOutput33865.moment H :=
  canonical_of_padded canonicalInput33865 canonicalOutput33865 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33866 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![1, -4, 3, 0], ![-2, 4, -4, 2]]⟩

def canonicalOutput33866 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1042

theorem canonicalSound33866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33866.moment H = canonicalOutput33866.moment H :=
  canonical_of_padded canonicalInput33866 canonicalOutput33866 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33867 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![1, -2, 3, -2], ![-2, 2, -4, 4]]⟩

def canonicalOutput33867 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound33867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33867.moment H = canonicalOutput33867.moment H :=
  canonical_of_padded canonicalInput33867 canonicalOutput33867 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33868 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![2, -4, 1, 1], ![-3, 4, -2, 1]]⟩

def canonicalOutput33868 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩

theorem canonicalSound33868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33868.moment H = canonicalOutput33868.moment H :=
  canonical_of_padded canonicalInput33868 canonicalOutput33868 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33869 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![2, -2, 2, -2], ![-3, 2, -3, 4]]⟩

def canonicalOutput33869 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code237

theorem canonicalSound33869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33869.moment H = canonicalOutput33869.moment H :=
  canonical_of_padded canonicalInput33869 canonicalOutput33869 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33870 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![3, -4, 1, 0], ![-4, 4, -2, 2]]⟩

def canonicalOutput33870 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1042

theorem canonicalSound33870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33870.moment H = canonicalOutput33870.moment H :=
  canonical_of_padded canonicalInput33870 canonicalOutput33870 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33871 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![3, -2, 1, -2], ![-4, 2, -2, 4]]⟩

def canonicalOutput33871 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound33871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33871.moment H = canonicalOutput33871.moment H :=
  canonical_of_padded canonicalInput33871 canonicalOutput33871 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33872 : ExponentCode := ⟨3, 4, ![![1, 0, 2, -3], ![-4, 3, -1, 2], ![3, -3, -1, 1]]⟩

def canonicalOutput33872 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound33872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33872.moment H = canonicalOutput33872.moment H :=
  canonical_of_padded canonicalInput33872 canonicalOutput33872 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33873 : ExponentCode := ⟨3, 4, ![![1, 0, 2, -3], ![-3, -2, 2, 3], ![2, 2, -4, 0]]⟩

def canonicalOutput33873 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code57

theorem canonicalSound33873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33873.moment H = canonicalOutput33873.moment H :=
  canonical_of_padded canonicalInput33873 canonicalOutput33873 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33874 : ExponentCode := ⟨3, 4, ![![1, 0, 2, -3], ![-3, 3, -1, 1], ![2, -3, -1, 2]]⟩

def canonicalOutput33874 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound33874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33874.moment H = canonicalOutput33874.moment H :=
  canonical_of_padded canonicalInput33874 canonicalOutput33874 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33875 : ExponentCode := ⟨3, 4, ![![1, 0, 2, -3], ![-2, -2, 2, 2], ![1, 2, -4, 1]]⟩

def canonicalOutput33875 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound33875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33875.moment H = canonicalOutput33875.moment H :=
  canonical_of_padded canonicalInput33875 canonicalOutput33875 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33876 : ExponentCode := ⟨3, 4, ![![1, 0, 2, -3], ![2, -2, 0, 0], ![-3, 2, -2, 3]]⟩

def canonicalOutput33876 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound33876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33876.moment H = canonicalOutput33876.moment H :=
  canonical_of_padded canonicalInput33876 canonicalOutput33876 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33877 : ExponentCode := ⟨3, 4, ![![1, 0, 2, -3], ![3, -2, 0, -1], ![-4, 2, -2, 4]]⟩

def canonicalOutput33877 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code35

theorem canonicalSound33877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33877.moment H = canonicalOutput33877.moment H :=
  canonical_of_padded canonicalInput33877 canonicalOutput33877 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33878 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33878 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33878.moment H = canonicalOutput33878.moment H :=
  canonical_of_padded canonicalInput33878 canonicalOutput33878 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33879 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33879 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33879.moment H = canonicalOutput33879.moment H :=
  canonical_of_padded canonicalInput33879 canonicalOutput33879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33880 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33880 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33880.moment H = canonicalOutput33880.moment H :=
  canonical_of_padded canonicalInput33880 canonicalOutput33880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33881 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33881 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33881.moment H = canonicalOutput33881.moment H :=
  canonical_of_padded canonicalInput33881 canonicalOutput33881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33882 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33882 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33882.moment H = canonicalOutput33882.moment H :=
  canonical_of_padded canonicalInput33882 canonicalOutput33882 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33883 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33883 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound33883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33883.moment H = canonicalOutput33883.moment H :=
  canonical_of_padded canonicalInput33883 canonicalOutput33883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33884 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33884 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33884.moment H = canonicalOutput33884.moment H :=
  canonical_of_padded canonicalInput33884 canonicalOutput33884 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33885 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33885 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33885.moment H = canonicalOutput33885.moment H :=
  canonical_of_padded canonicalInput33885 canonicalOutput33885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33886 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33886 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33886.moment H = canonicalOutput33886.moment H :=
  canonical_of_padded canonicalInput33886 canonicalOutput33886 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33887 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33887 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33887.moment H = canonicalOutput33887.moment H :=
  canonical_of_padded canonicalInput33887 canonicalOutput33887 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33888 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33888 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33888.moment H = canonicalOutput33888.moment H :=
  canonical_of_padded canonicalInput33888 canonicalOutput33888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33889 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33889 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33889.moment H = canonicalOutput33889.moment H :=
  canonical_of_padded canonicalInput33889 canonicalOutput33889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33890 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33890 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33890.moment H = canonicalOutput33890.moment H :=
  canonical_of_padded canonicalInput33890 canonicalOutput33890 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33891 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33891 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33891.moment H = canonicalOutput33891.moment H :=
  canonical_of_padded canonicalInput33891 canonicalOutput33891 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33892 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33892 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33892.moment H = canonicalOutput33892.moment H :=
  canonical_of_padded canonicalInput33892 canonicalOutput33892 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33893 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33893 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33893.moment H = canonicalOutput33893.moment H :=
  canonical_of_padded canonicalInput33893 canonicalOutput33893 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33894 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33894 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33894.moment H = canonicalOutput33894.moment H :=
  canonical_of_padded canonicalInput33894 canonicalOutput33894 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33895 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33895 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33895.moment H = canonicalOutput33895.moment H :=
  canonical_of_padded canonicalInput33895 canonicalOutput33895 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33896 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33896 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound33896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33896.moment H = canonicalOutput33896.moment H :=
  canonical_of_padded canonicalInput33896 canonicalOutput33896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33897 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33897 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33897.moment H = canonicalOutput33897.moment H :=
  canonical_of_padded canonicalInput33897 canonicalOutput33897 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33898 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33898 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33898.moment H = canonicalOutput33898.moment H :=
  canonical_of_padded canonicalInput33898 canonicalOutput33898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33899 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33899 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33899.moment H = canonicalOutput33899.moment H :=
  canonical_of_padded canonicalInput33899 canonicalOutput33899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33900 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33900 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33900.moment H = canonicalOutput33900.moment H :=
  canonical_of_padded canonicalInput33900 canonicalOutput33900 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33901 : ExponentCode := ⟨6, 6, ![![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33901 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33901.moment H = canonicalOutput33901.moment H :=
  canonical_of_padded canonicalInput33901 canonicalOutput33901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33902 : ExponentCode := ⟨6, 6, ![![1, 1, -1, -2, 1, 0], ![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33902 : ExponentCode := normalNode9512

theorem canonicalSound33902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33902.moment H = canonicalOutput33902.moment H :=
  canonical_of_padded canonicalInput33902 canonicalOutput33902 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput33903 : ExponentCode := ⟨6, 6, ![![1, 1, -1, -2, 1, 0], ![-1, 0, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33903 : ExponentCode := normalNode9509

theorem canonicalSound33903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33903.moment H = canonicalOutput33903.moment H :=
  canonical_of_padded canonicalInput33903 canonicalOutput33903 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation352⟩ (by decide +kernel) hH

def canonicalInput33904 : ExponentCode := ⟨6, 6, ![![1, 1, -1, -2, 1, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33904 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33904.moment H = canonicalOutput33904.moment H :=
  canonical_of_padded canonicalInput33904 canonicalOutput33904 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput33905 : ExponentCode := ⟨6, 6, ![![1, 1, -1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33905 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33905.moment H = canonicalOutput33905.moment H :=
  canonical_of_padded canonicalInput33905 canonicalOutput33905 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput33906 : ExponentCode := ⟨6, 6, ![![1, 1, -1, -2, 1, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33906 : ExponentCode := normalNode9509

theorem canonicalSound33906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33906.moment H = canonicalOutput33906.moment H :=
  canonical_of_padded canonicalInput33906 canonicalOutput33906 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation352⟩ (by decide +kernel) hH

def canonicalInput33907 : ExponentCode := ⟨6, 6, ![![1, 1, -1, -2, 1, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33907 : ExponentCode := normalNode9512

theorem canonicalSound33907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33907.moment H = canonicalOutput33907.moment H :=
  canonical_of_padded canonicalInput33907 canonicalOutput33907 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput33908 : ExponentCode := ⟨3, 4, ![![1, 1, 1, -3], ![-5, 1, 1, 3], ![4, -2, -2, 0]]⟩

def canonicalOutput33908 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code63

theorem canonicalSound33908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33908.moment H = canonicalOutput33908.moment H :=
  canonical_of_padded canonicalInput33908 canonicalOutput33908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33909 : ExponentCode := ⟨3, 4, ![![1, 1, 1, -3], ![-4, 1, 1, 2], ![3, -2, -2, 1]]⟩

def canonicalOutput33909 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound33909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33909.moment H = canonicalOutput33909.moment H :=
  canonical_of_padded canonicalInput33909 canonicalOutput33909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33910 : ExponentCode := ⟨3, 4, ![![1, 1, 1, -3], ![-3, -2, 3, 2], ![2, 1, -4, 1]]⟩

def canonicalOutput33910 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound33910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33910.moment H = canonicalOutput33910.moment H :=
  canonical_of_padded canonicalInput33910 canonicalOutput33910 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33911 : ExponentCode := ⟨3, 4, ![![1, 1, 1, -3], ![-2, -2, 3, 1], ![1, 1, -4, 2]]⟩

def canonicalOutput33911 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound33911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33911.moment H = canonicalOutput33911.moment H :=
  canonical_of_padded canonicalInput33911 canonicalOutput33911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33912 : ExponentCode := ⟨3, 6, ![![1, 1, 2, -2, -2, 0], ![-2, 1, 0, 1, 1, -1], ![1, -2, -2, 1, 1, 1]]⟩

def canonicalOutput33912 : ExponentCode := normalNode5570

theorem canonicalSound33912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33912.moment H = canonicalOutput33912.moment H :=
  canonical_of_padded canonicalInput33912 canonicalOutput33912 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput33913 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33913 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33913.moment H = canonicalOutput33913.moment H :=
  canonical_of_padded canonicalInput33913 canonicalOutput33913 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33914 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33914 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound33914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33914.moment H = canonicalOutput33914.moment H :=
  canonical_of_padded canonicalInput33914 canonicalOutput33914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33915 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33915 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33915.moment H = canonicalOutput33915.moment H :=
  canonical_of_padded canonicalInput33915 canonicalOutput33915 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33916 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33916 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33916.moment H = canonicalOutput33916.moment H :=
  canonical_of_padded canonicalInput33916 canonicalOutput33916 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33917 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33917 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33917.moment H = canonicalOutput33917.moment H :=
  canonical_of_padded canonicalInput33917 canonicalOutput33917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33918 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33918 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33918.moment H = canonicalOutput33918.moment H :=
  canonical_of_padded canonicalInput33918 canonicalOutput33918 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33919 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33919 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33919.moment H = canonicalOutput33919.moment H :=
  canonical_of_padded canonicalInput33919 canonicalOutput33919 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

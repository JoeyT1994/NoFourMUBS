import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22848 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput22848 : ExponentCode := normalNode10493

theorem canonicalSound22848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22848.moment H = canonicalOutput22848.moment H :=
  canonical_of_padded canonicalInput22848 canonicalOutput22848 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22849 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput22849 : ExponentCode := normalNode2687

theorem canonicalSound22849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22849.moment H = canonicalOutput22849.moment H :=
  canonical_of_padded canonicalInput22849 canonicalOutput22849 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput22850 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput22850 : ExponentCode := normalNode9626

theorem canonicalSound22850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22850.moment H = canonicalOutput22850.moment H :=
  canonical_of_padded canonicalInput22850 canonicalOutput22850 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22851 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput22851 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound22851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22851.moment H = canonicalOutput22851.moment H :=
  canonical_of_padded canonicalInput22851 canonicalOutput22851 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22852 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![-1, 1, 0, 0], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput22852 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1101⟩

theorem canonicalSound22852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22852.moment H = canonicalOutput22852.moment H :=
  canonical_of_padded canonicalInput22852 canonicalOutput22852 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22853 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -3, 1, 2], ![0, 0, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput22853 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩

theorem canonicalSound22853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22853.moment H = canonicalOutput22853.moment H :=
  canonical_of_padded canonicalInput22853 canonicalOutput22853 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22854 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22854 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1181⟩

theorem canonicalSound22854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22854.moment H = canonicalOutput22854.moment H :=
  canonical_of_padded canonicalInput22854 canonicalOutput22854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22855 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -3, 4], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput22855 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩

theorem canonicalSound22855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22855.moment H = canonicalOutput22855.moment H :=
  canonical_of_padded canonicalInput22855 canonicalOutput22855 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22856 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput22856 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1124⟩

theorem canonicalSound22856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22856.moment H = canonicalOutput22856.moment H :=
  canonical_of_padded canonicalInput22856 canonicalOutput22856 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22857 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput22857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩

theorem canonicalSound22857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22857.moment H = canonicalOutput22857.moment H :=
  canonical_of_padded canonicalInput22857 canonicalOutput22857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22858 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput22858 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound22858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22858.moment H = canonicalOutput22858.moment H :=
  canonical_of_padded canonicalInput22858 canonicalOutput22858 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22859 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22859 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound22859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22859.moment H = canonicalOutput22859.moment H :=
  canonical_of_padded canonicalInput22859 canonicalOutput22859 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22860 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22860 : ExponentCode := normalNode10514

theorem canonicalSound22860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22860.moment H = canonicalOutput22860.moment H :=
  canonical_of_padded canonicalInput22860 canonicalOutput22860 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22861 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput22861 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2777⟩

theorem canonicalSound22861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22861.moment H = canonicalOutput22861.moment H :=
  canonical_of_padded canonicalInput22861 canonicalOutput22861 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22862 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput22862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound22862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22862.moment H = canonicalOutput22862.moment H :=
  canonical_of_padded canonicalInput22862 canonicalOutput22862 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22863 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22863 : ExponentCode := normalNode10315

theorem canonicalSound22863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22863.moment H = canonicalOutput22863.moment H :=
  canonical_of_padded canonicalInput22863 canonicalOutput22863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22864 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput22864 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1267⟩

theorem canonicalSound22864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22864.moment H = canonicalOutput22864.moment H :=
  canonical_of_padded canonicalInput22864 canonicalOutput22864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22865 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22865 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1094⟩

theorem canonicalSound22865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22865.moment H = canonicalOutput22865.moment H :=
  canonical_of_padded canonicalInput22865 canonicalOutput22865 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22866 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput22866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound22866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22866.moment H = canonicalOutput22866.moment H :=
  canonical_of_padded canonicalInput22866 canonicalOutput22866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22867 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput22867 : ExponentCode := normalNode7802

theorem canonicalSound22867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22867.moment H = canonicalOutput22867.moment H :=
  canonical_of_padded canonicalInput22867 canonicalOutput22867 (by decide) (by decide)
    ⟨false, true, canonicalPermutation267, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22868 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput22868 : ExponentCode := normalNode9813

theorem canonicalSound22868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22868.moment H = canonicalOutput22868.moment H :=
  canonical_of_padded canonicalInput22868 canonicalOutput22868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation88, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22869 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput22869 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩

theorem canonicalSound22869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22869.moment H = canonicalOutput22869.moment H :=
  canonical_of_padded canonicalInput22869 canonicalOutput22869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22870 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput22870 : ExponentCode := normalNode7928

theorem canonicalSound22870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22870.moment H = canonicalOutput22870.moment H :=
  canonical_of_padded canonicalInput22870 canonicalOutput22870 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22871 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput22871 : ExponentCode := normalNode7957

theorem canonicalSound22871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22871.moment H = canonicalOutput22871.moment H :=
  canonical_of_padded canonicalInput22871 canonicalOutput22871 (by decide) (by decide)
    ⟨false, true, canonicalPermutation190, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22872 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput22872 : ExponentCode := normalNode11132

theorem canonicalSound22872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22872.moment H = canonicalOutput22872.moment H :=
  canonical_of_padded canonicalInput22872 canonicalOutput22872 (by decide) (by decide)
    ⟨false, true, canonicalPermutation268, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22873 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput22873 : ExponentCode := normalNode7792

theorem canonicalSound22873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22873.moment H = canonicalOutput22873.moment H :=
  canonical_of_padded canonicalInput22873 canonicalOutput22873 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22874 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput22874 : ExponentCode := normalNode9904

theorem canonicalSound22874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22874.moment H = canonicalOutput22874.moment H :=
  canonical_of_padded canonicalInput22874 canonicalOutput22874 (by decide) (by decide)
    ⟨false, true, canonicalPermutation190, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22875 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput22875 : ExponentCode := normalNode11138

theorem canonicalSound22875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22875.moment H = canonicalOutput22875.moment H :=
  canonical_of_padded canonicalInput22875 canonicalOutput22875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22876 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput22876 : ExponentCode := normalNode9618

theorem canonicalSound22876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22876.moment H = canonicalOutput22876.moment H :=
  canonical_of_padded canonicalInput22876 canonicalOutput22876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22877 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput22877 : ExponentCode := normalNode9923

theorem canonicalSound22877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22877.moment H = canonicalOutput22877.moment H :=
  canonical_of_padded canonicalInput22877 canonicalOutput22877 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22878 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 0, -3, 3]]⟩

def canonicalOutput22878 : ExponentCode := normalNode10969

theorem canonicalSound22878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22878.moment H = canonicalOutput22878.moment H :=
  canonical_of_padded canonicalInput22878 canonicalOutput22878 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22879 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput22879 : ExponentCode := normalNode7801

theorem canonicalSound22879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22879.moment H = canonicalOutput22879.moment H :=
  canonical_of_padded canonicalInput22879 canonicalOutput22879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22880 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![-1, 0, -3, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput22880 : ExponentCode := normalNode7787

theorem canonicalSound22880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22880.moment H = canonicalOutput22880.moment H :=
  canonical_of_padded canonicalInput22880 canonicalOutput22880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22881 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![0, 0, -3, 3], ![0, 1, 1, -2]]⟩

def canonicalOutput22881 : ExponentCode := normalNode11137

theorem canonicalSound22881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22881.moment H = canonicalOutput22881.moment H :=
  canonical_of_padded canonicalInput22881 canonicalOutput22881 (by decide) (by decide)
    ⟨false, true, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22882 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 1, 0], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput22882 : ExponentCode := normalNode9620

theorem canonicalSound22882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22882.moment H = canonicalOutput22882.moment H :=
  canonical_of_padded canonicalInput22882 canonicalOutput22882 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22883 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput22883 : ExponentCode := normalNode9714

theorem canonicalSound22883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22883.moment H = canonicalOutput22883.moment H :=
  canonical_of_padded canonicalInput22883 canonicalOutput22883 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22884 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -3, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput22884 : ExponentCode := normalNode9623

theorem canonicalSound22884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22884.moment H = canonicalOutput22884.moment H :=
  canonical_of_padded canonicalInput22884 canonicalOutput22884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22885 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput22885 : ExponentCode := normalNode11131

theorem canonicalSound22885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22885.moment H = canonicalOutput22885.moment H :=
  canonical_of_padded canonicalInput22885 canonicalOutput22885 (by decide) (by decide)
    ⟨false, true, canonicalPermutation268, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22886 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput22886 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound22886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22886.moment H = canonicalOutput22886.moment H :=
  canonical_of_padded canonicalInput22886 canonicalOutput22886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22887 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput22887 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1094⟩

theorem canonicalSound22887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22887.moment H = canonicalOutput22887.moment H :=
  canonical_of_padded canonicalInput22887 canonicalOutput22887 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22888 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput22888 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound22888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22888.moment H = canonicalOutput22888.moment H :=
  canonical_of_padded canonicalInput22888 canonicalOutput22888 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22889 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, -3, 3], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput22889 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound22889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22889.moment H = canonicalOutput22889.moment H :=
  canonical_of_padded canonicalInput22889 canonicalOutput22889 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22890 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput22890 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound22890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22890.moment H = canonicalOutput22890.moment H :=
  canonical_of_padded canonicalInput22890 canonicalOutput22890 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22891 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput22891 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound22891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22891.moment H = canonicalOutput22891.moment H :=
  canonical_of_padded canonicalInput22891 canonicalOutput22891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22892 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput22892 : ExponentCode := normalNode5291

theorem canonicalSound22892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22892.moment H = canonicalOutput22892.moment H :=
  canonical_of_padded canonicalInput22892 canonicalOutput22892 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22893 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput22893 : ExponentCode := normalNode5847

theorem canonicalSound22893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22893.moment H = canonicalOutput22893.moment H :=
  canonical_of_padded canonicalInput22893 canonicalOutput22893 (by decide) (by decide)
    ⟨false, false, canonicalPermutation270, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22894 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound22894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22894.moment H = canonicalOutput22894.moment H :=
  canonical_of_padded canonicalInput22894 canonicalOutput22894 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22895 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput22895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2835⟩

theorem canonicalSound22895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22895.moment H = canonicalOutput22895.moment H :=
  canonical_of_padded canonicalInput22895 canonicalOutput22895 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22896 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput22896 : ExponentCode := normalNode10541

theorem canonicalSound22896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22896.moment H = canonicalOutput22896.moment H :=
  canonical_of_padded canonicalInput22896 canonicalOutput22896 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation256, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22897 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput22897 : ExponentCode := normalNode5291

theorem canonicalSound22897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22897.moment H = canonicalOutput22897.moment H :=
  canonical_of_padded canonicalInput22897 canonicalOutput22897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22898 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput22898 : ExponentCode := normalNode5899

theorem canonicalSound22898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22898.moment H = canonicalOutput22898.moment H :=
  canonical_of_padded canonicalInput22898 canonicalOutput22898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation271, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22899 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput22899 : ExponentCode := normalNode7200

theorem canonicalSound22899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22899.moment H = canonicalOutput22899.moment H :=
  canonical_of_padded canonicalInput22899 canonicalOutput22899 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22900 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput22900 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3468⟩

theorem canonicalSound22900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22900.moment H = canonicalOutput22900.moment H :=
  canonical_of_padded canonicalInput22900 canonicalOutput22900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22901 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, -1, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput22901 : ExponentCode := normalNode11143

theorem canonicalSound22901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22901.moment H = canonicalOutput22901.moment H :=
  canonical_of_padded canonicalInput22901 canonicalOutput22901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22902 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput22902 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3314⟩

theorem canonicalSound22902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22902.moment H = canonicalOutput22902.moment H :=
  canonical_of_padded canonicalInput22902 canonicalOutput22902 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22903 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput22903 : ExponentCode := normalNode10977

theorem canonicalSound22903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22903.moment H = canonicalOutput22903.moment H :=
  canonical_of_padded canonicalInput22903 canonicalOutput22903 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22904 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput22904 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound22904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22904.moment H = canonicalOutput22904.moment H :=
  canonical_of_padded canonicalInput22904 canonicalOutput22904 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22905 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput22905 : ExponentCode := normalNode10966

theorem canonicalSound22905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22905.moment H = canonicalOutput22905.moment H :=
  canonical_of_padded canonicalInput22905 canonicalOutput22905 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22906 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput22906 : ExponentCode := normalNode11037

theorem canonicalSound22906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22906.moment H = canonicalOutput22906.moment H :=
  canonical_of_padded canonicalInput22906 canonicalOutput22906 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22907 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput22907 : ExponentCode := normalNode11130

theorem canonicalSound22907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22907.moment H = canonicalOutput22907.moment H :=
  canonical_of_padded canonicalInput22907 canonicalOutput22907 (by decide) (by decide)
    ⟨false, true, canonicalPermutation213, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22908 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput22908 : ExponentCode := normalNode7349

theorem canonicalSound22908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22908.moment H = canonicalOutput22908.moment H :=
  canonical_of_padded canonicalInput22908 canonicalOutput22908 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22909 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput22909 : ExponentCode := normalNode9811

theorem canonicalSound22909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22909.moment H = canonicalOutput22909.moment H :=
  canonical_of_padded canonicalInput22909 canonicalOutput22909 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22910 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![2, -2, 1, -1], ![0, 1, -4, 3]]⟩

def canonicalOutput22910 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3314⟩

theorem canonicalSound22910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22910.moment H = canonicalOutput22910.moment H :=
  canonical_of_padded canonicalInput22910 canonicalOutput22910 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22911 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput22911 : ExponentCode := normalNode10954

theorem canonicalSound22911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22911.moment H = canonicalOutput22911.moment H :=
  canonical_of_padded canonicalInput22911 canonicalOutput22911 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

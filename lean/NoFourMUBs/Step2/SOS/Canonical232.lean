import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14848 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, -1, 2], ![0, 1, 2, -1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14848 : ExponentCode := normalNode5801

theorem canonicalSound14848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14848.moment H = canonicalOutput14848.moment H :=
  canonical_of_padded canonicalInput14848 canonicalOutput14848 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14849 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14849 : ExponentCode := normalNode9232

theorem canonicalSound14849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14849.moment H = canonicalOutput14849.moment H :=
  canonical_of_padded canonicalInput14849 canonicalOutput14849 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput14850 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput14850 : ExponentCode := normalNode10457

theorem canonicalSound14850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14850.moment H = canonicalOutput14850.moment H :=
  canonical_of_padded canonicalInput14850 canonicalOutput14850 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput14851 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14851 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound14851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14851.moment H = canonicalOutput14851.moment H :=
  canonical_of_padded canonicalInput14851 canonicalOutput14851 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14852 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14852 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2856⟩

theorem canonicalSound14852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14852.moment H = canonicalOutput14852.moment H :=
  canonical_of_padded canonicalInput14852 canonicalOutput14852 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14853 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14853 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound14853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14853.moment H = canonicalOutput14853.moment H :=
  canonical_of_padded canonicalInput14853 canonicalOutput14853 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14854 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, -3, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14854 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound14854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14854.moment H = canonicalOutput14854.moment H :=
  canonical_of_padded canonicalInput14854 canonicalOutput14854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14855 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 0, -1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput14855 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound14855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14855.moment H = canonicalOutput14855.moment H :=
  canonical_of_padded canonicalInput14855 canonicalOutput14855 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14856 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14856 : ExponentCode := normalNode7604

theorem canonicalSound14856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14856.moment H = canonicalOutput14856.moment H :=
  canonical_of_padded canonicalInput14856 canonicalOutput14856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput14857 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14857 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound14857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14857.moment H = canonicalOutput14857.moment H :=
  canonical_of_padded canonicalInput14857 canonicalOutput14857 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14858 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, -1, -1], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput14858 : ExponentCode := normalNode2634

theorem canonicalSound14858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14858.moment H = canonicalOutput14858.moment H :=
  canonical_of_padded canonicalInput14858 canonicalOutput14858 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14859 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput14859 : ExponentCode := normalNode4450

theorem canonicalSound14859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14859.moment H = canonicalOutput14859.moment H :=
  canonical_of_padded canonicalInput14859 canonicalOutput14859 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14860 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, 1, -3], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14860 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2061⟩

theorem canonicalSound14860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14860.moment H = canonicalOutput14860.moment H :=
  canonical_of_padded canonicalInput14860 canonicalOutput14860 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14861 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput14861 : ExponentCode := normalNode4887

theorem canonicalSound14861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14861.moment H = canonicalOutput14861.moment H :=
  canonical_of_padded canonicalInput14861 canonicalOutput14861 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14862 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput14862 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound14862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14862.moment H = canonicalOutput14862.moment H :=
  canonical_of_padded canonicalInput14862 canonicalOutput14862 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14863 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14863 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound14863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14863.moment H = canonicalOutput14863.moment H :=
  canonical_of_padded canonicalInput14863 canonicalOutput14863 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14864 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14864 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound14864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14864.moment H = canonicalOutput14864.moment H :=
  canonical_of_padded canonicalInput14864 canonicalOutput14864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14865 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14865 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2781⟩

theorem canonicalSound14865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14865.moment H = canonicalOutput14865.moment H :=
  canonical_of_padded canonicalInput14865 canonicalOutput14865 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14866 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -1, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14866 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2647⟩

theorem canonicalSound14866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14866.moment H = canonicalOutput14866.moment H :=
  canonical_of_padded canonicalInput14866 canonicalOutput14866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14867 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -1, 1], ![0, 0, 2, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14867 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2778⟩

theorem canonicalSound14867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14867.moment H = canonicalOutput14867.moment H :=
  canonical_of_padded canonicalInput14867 canonicalOutput14867 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14868 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14868 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2647⟩

theorem canonicalSound14868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14868.moment H = canonicalOutput14868.moment H :=
  canonical_of_padded canonicalInput14868 canonicalOutput14868 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14869 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14869 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2647⟩

theorem canonicalSound14869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14869.moment H = canonicalOutput14869.moment H :=
  canonical_of_padded canonicalInput14869 canonicalOutput14869 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14870 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 0, 0], ![0, 0, 2, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14870 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node709⟩

theorem canonicalSound14870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14870.moment H = canonicalOutput14870.moment H :=
  canonical_of_padded canonicalInput14870 canonicalOutput14870 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14871 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 0, 0], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14871 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node655⟩

theorem canonicalSound14871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14871.moment H = canonicalOutput14871.moment H :=
  canonical_of_padded canonicalInput14871 canonicalOutput14871 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14872 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14872 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node667⟩

theorem canonicalSound14872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14872.moment H = canonicalOutput14872.moment H :=
  canonical_of_padded canonicalInput14872 canonicalOutput14872 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14873 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14873 : ExponentCode := normalNode8391

theorem canonicalSound14873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14873.moment H = canonicalOutput14873.moment H :=
  canonical_of_padded canonicalInput14873 canonicalOutput14873 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput14874 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14874 : ExponentCode := normalNode10120

theorem canonicalSound14874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14874.moment H = canonicalOutput14874.moment H :=
  canonical_of_padded canonicalInput14874 canonicalOutput14874 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput14875 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14875 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2450⟩

theorem canonicalSound14875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14875.moment H = canonicalOutput14875.moment H :=
  canonical_of_padded canonicalInput14875 canonicalOutput14875 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14876 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14876 : ExponentCode := normalNode8421

theorem canonicalSound14876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14876.moment H = canonicalOutput14876.moment H :=
  canonical_of_padded canonicalInput14876 canonicalOutput14876 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput14877 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14877 : ExponentCode := normalNode8421

theorem canonicalSound14877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14877.moment H = canonicalOutput14877.moment H :=
  canonical_of_padded canonicalInput14877 canonicalOutput14877 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput14878 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput14878 : ExponentCode := normalNode10118

theorem canonicalSound14878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14878.moment H = canonicalOutput14878.moment H :=
  canonical_of_padded canonicalInput14878 canonicalOutput14878 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput14879 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput14879 : ExponentCode := normalNode10130

theorem canonicalSound14879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14879.moment H = canonicalOutput14879.moment H :=
  canonical_of_padded canonicalInput14879 canonicalOutput14879 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14880 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14880 : ExponentCode := normalNode10335

theorem canonicalSound14880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14880.moment H = canonicalOutput14880.moment H :=
  canonical_of_padded canonicalInput14880 canonicalOutput14880 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14881 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14881 : ExponentCode := normalNode9005

theorem canonicalSound14881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14881.moment H = canonicalOutput14881.moment H :=
  canonical_of_padded canonicalInput14881 canonicalOutput14881 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14882 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput14882 : ExponentCode := normalNode10081

theorem canonicalSound14882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14882.moment H = canonicalOutput14882.moment H :=
  canonical_of_padded canonicalInput14882 canonicalOutput14882 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput14883 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14883 : ExponentCode := normalNode9088

theorem canonicalSound14883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14883.moment H = canonicalOutput14883.moment H :=
  canonical_of_padded canonicalInput14883 canonicalOutput14883 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14884 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14884 : ExponentCode := normalNode7622

theorem canonicalSound14884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14884.moment H = canonicalOutput14884.moment H :=
  canonical_of_padded canonicalInput14884 canonicalOutput14884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput14885 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput14885 : ExponentCode := normalNode7024

theorem canonicalSound14885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14885.moment H = canonicalOutput14885.moment H :=
  canonical_of_padded canonicalInput14885 canonicalOutput14885 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14886 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14886 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2450⟩

theorem canonicalSound14886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14886.moment H = canonicalOutput14886.moment H :=
  canonical_of_padded canonicalInput14886 canonicalOutput14886 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14887 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14887 : ExponentCode := normalNode10335

theorem canonicalSound14887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14887.moment H = canonicalOutput14887.moment H :=
  canonical_of_padded canonicalInput14887 canonicalOutput14887 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14888 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput14888 : ExponentCode := normalNode9187

theorem canonicalSound14888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14888.moment H = canonicalOutput14888.moment H :=
  canonical_of_padded canonicalInput14888 canonicalOutput14888 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput14889 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14889 : ExponentCode := normalNode9086

theorem canonicalSound14889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14889.moment H = canonicalOutput14889.moment H :=
  canonical_of_padded canonicalInput14889 canonicalOutput14889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14890 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14890 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound14890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14890.moment H = canonicalOutput14890.moment H :=
  canonical_of_padded canonicalInput14890 canonicalOutput14890 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14891 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -3, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14891 : ExponentCode := normalNode2561

theorem canonicalSound14891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14891.moment H = canonicalOutput14891.moment H :=
  canonical_of_padded canonicalInput14891 canonicalOutput14891 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14892 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14892 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩

theorem canonicalSound14892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14892.moment H = canonicalOutput14892.moment H :=
  canonical_of_padded canonicalInput14892 canonicalOutput14892 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14893 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput14893 : ExponentCode := normalNode2737

theorem canonicalSound14893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14893.moment H = canonicalOutput14893.moment H :=
  canonical_of_padded canonicalInput14893 canonicalOutput14893 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14894 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound14894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14894.moment H = canonicalOutput14894.moment H :=
  canonical_of_padded canonicalInput14894 canonicalOutput14894 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14895 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -3, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2446⟩

theorem canonicalSound14895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14895.moment H = canonicalOutput14895.moment H :=
  canonical_of_padded canonicalInput14895 canonicalOutput14895 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14896 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14896 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound14896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14896.moment H = canonicalOutput14896.moment H :=
  canonical_of_padded canonicalInput14896 canonicalOutput14896 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14897 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 0, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14897 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2450⟩

theorem canonicalSound14897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14897.moment H = canonicalOutput14897.moment H :=
  canonical_of_padded canonicalInput14897 canonicalOutput14897 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14898 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 0, 2, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14898 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound14898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14898.moment H = canonicalOutput14898.moment H :=
  canonical_of_padded canonicalInput14898 canonicalOutput14898 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14899 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput14899 : ExponentCode := normalNode9458

theorem canonicalSound14899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14899.moment H = canonicalOutput14899.moment H :=
  canonical_of_padded canonicalInput14899 canonicalOutput14899 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14900 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14900 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound14900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14900.moment H = canonicalOutput14900.moment H :=
  canonical_of_padded canonicalInput14900 canonicalOutput14900 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14901 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 2, -3], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14901 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1822⟩

theorem canonicalSound14901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14901.moment H = canonicalOutput14901.moment H :=
  canonical_of_padded canonicalInput14901 canonicalOutput14901 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14902 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, -1, 1], ![1, 0, 1, 2, -4]]⟩

def canonicalOutput14902 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1767⟩

theorem canonicalSound14902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14902.moment H = canonicalOutput14902.moment H :=
  canonical_of_padded canonicalInput14902 canonicalOutput14902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14903 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput14903 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2779⟩

theorem canonicalSound14903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14903.moment H = canonicalOutput14903.moment H :=
  canonical_of_padded canonicalInput14903 canonicalOutput14903 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14904 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14904 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound14904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14904.moment H = canonicalOutput14904.moment H :=
  canonical_of_padded canonicalInput14904 canonicalOutput14904 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14905 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14905 : ExponentCode := normalNode2700

theorem canonicalSound14905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14905.moment H = canonicalOutput14905.moment H :=
  canonical_of_padded canonicalInput14905 canonicalOutput14905 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14906 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, -1, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput14906 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2444⟩

theorem canonicalSound14906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14906.moment H = canonicalOutput14906.moment H :=
  canonical_of_padded canonicalInput14906 canonicalOutput14906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14907 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14907 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14907.moment H = canonicalOutput14907.moment H :=
  canonical_of_padded canonicalInput14907 canonicalOutput14907 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14908 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14908 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14908.moment H = canonicalOutput14908.moment H :=
  canonical_of_padded canonicalInput14908 canonicalOutput14908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14909 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14909 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound14909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14909.moment H = canonicalOutput14909.moment H :=
  canonical_of_padded canonicalInput14909 canonicalOutput14909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14910 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 2, -1, 0, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput14910 : ExponentCode := normalNode4490

theorem canonicalSound14910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14910.moment H = canonicalOutput14910.moment H :=
  canonical_of_padded canonicalInput14910 canonicalOutput14910 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14911 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 2, 0, 0, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput14911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound14911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14911.moment H = canonicalOutput14911.moment H :=
  canonical_of_padded canonicalInput14911 canonicalOutput14911 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

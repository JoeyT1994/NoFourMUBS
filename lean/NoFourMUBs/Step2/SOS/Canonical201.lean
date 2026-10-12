import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12864 : ExponentCode := ⟨4, 5, ![![-1, -2, -2, 2, 3], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12864 : ExponentCode := normalNode580

theorem canonicalSound12864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12864.moment H = canonicalOutput12864.moment H :=
  canonical_of_padded canonicalInput12864 canonicalOutput12864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12865 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput12865 : ExponentCode := normalNode9594

theorem canonicalSound12865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12865.moment H = canonicalOutput12865.moment H :=
  canonical_of_padded canonicalInput12865 canonicalOutput12865 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12866 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12866 : ExponentCode := normalNode9595

theorem canonicalSound12866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12866.moment H = canonicalOutput12866.moment H :=
  canonical_of_padded canonicalInput12866 canonicalOutput12866 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12867 : ExponentCode := ⟨5, 4, ![![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12867 : ExponentCode := normalNode6308

theorem canonicalSound12867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12867.moment H = canonicalOutput12867.moment H :=
  canonical_of_padded canonicalInput12867 canonicalOutput12867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12868 : ExponentCode := ⟨5, 4, ![![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12868 : ExponentCode := normalNode6309

theorem canonicalSound12868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12868.moment H = canonicalOutput12868.moment H :=
  canonical_of_padded canonicalInput12868 canonicalOutput12868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12869 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput12869 : ExponentCode := normalNode6311

theorem canonicalSound12869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12869.moment H = canonicalOutput12869.moment H :=
  canonical_of_padded canonicalInput12869 canonicalOutput12869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12870 : ExponentCode := ⟨3, 4, ![![-1, -2, -2, 5], ![0, 0, 3, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput12870 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound12870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12870.moment H = canonicalOutput12870.moment H :=
  canonical_of_padded canonicalInput12870 canonicalOutput12870 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12871 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput12871 : ExponentCode := normalNode9083

theorem canonicalSound12871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12871.moment H = canonicalOutput12871.moment H :=
  canonical_of_padded canonicalInput12871 canonicalOutput12871 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12872 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput12872 : ExponentCode := normalNode9592

theorem canonicalSound12872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12872.moment H = canonicalOutput12872.moment H :=
  canonical_of_padded canonicalInput12872 canonicalOutput12872 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12873 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput12873 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node888⟩

theorem canonicalSound12873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12873.moment H = canonicalOutput12873.moment H :=
  canonical_of_padded canonicalInput12873 canonicalOutput12873 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12874 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12874 : ExponentCode := normalNode9591

theorem canonicalSound12874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12874.moment H = canonicalOutput12874.moment H :=
  canonical_of_padded canonicalInput12874 canonicalOutput12874 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12875 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12875 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node750⟩

theorem canonicalSound12875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12875.moment H = canonicalOutput12875.moment H :=
  canonical_of_padded canonicalInput12875 canonicalOutput12875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12876 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12876 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound12876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12876.moment H = canonicalOutput12876.moment H :=
  canonical_of_padded canonicalInput12876 canonicalOutput12876 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12877 : ExponentCode := ⟨4, 4, ![![-1, -2, -2, 5], ![0, 1, 2, -3], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12877 : ExponentCode := normalNode6335

theorem canonicalSound12877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12877.moment H = canonicalOutput12877.moment H :=
  canonical_of_padded canonicalInput12877 canonicalOutput12877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12878 : ExponentCode := ⟨3, 4, ![![-1, -2, -2, 5], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput12878 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound12878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12878.moment H = canonicalOutput12878.moment H :=
  canonical_of_padded canonicalInput12878 canonicalOutput12878 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12879 : ExponentCode := ⟨3, 4, ![![-1, -2, -2, 5], ![0, 2, -1, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput12879 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound12879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12879.moment H = canonicalOutput12879.moment H :=
  canonical_of_padded canonicalInput12879 canonicalOutput12879 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12880 : ExponentCode := ⟨3, 4, ![![-1, -2, -2, 5], ![1, 0, 1, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput12880 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound12880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12880.moment H = canonicalOutput12880.moment H :=
  canonical_of_padded canonicalInput12880 canonicalOutput12880 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12881 : ExponentCode := ⟨3, 4, ![![-1, -2, -2, 5], ![1, 0, 3, -4], ![0, 2, -1, -1]]⟩

def canonicalOutput12881 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound12881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12881.moment H = canonicalOutput12881.moment H :=
  canonical_of_padded canonicalInput12881 canonicalOutput12881 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12882 : ExponentCode := ⟨3, 4, ![![-1, -2, -2, 5], ![1, 1, 0, -2], ![0, 1, 2, -3]]⟩

def canonicalOutput12882 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound12882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12882.moment H = canonicalOutput12882.moment H :=
  canonical_of_padded canonicalInput12882 canonicalOutput12882 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12883 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 0, 4], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12883 : ExponentCode := normalNode1279

theorem canonicalSound12883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12883.moment H = canonicalOutput12883.moment H :=
  canonical_of_padded canonicalInput12883 canonicalOutput12883 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12884 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 0, 4], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput12884 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1559⟩

theorem canonicalSound12884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12884.moment H = canonicalOutput12884.moment H :=
  canonical_of_padded canonicalInput12884 canonicalOutput12884 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12885 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12885 : ExponentCode := normalNode7234

theorem canonicalSound12885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12885.moment H = canonicalOutput12885.moment H :=
  canonical_of_padded canonicalInput12885 canonicalOutput12885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput12886 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput12886 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩

theorem canonicalSound12886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12886.moment H = canonicalOutput12886.moment H :=
  canonical_of_padded canonicalInput12886 canonicalOutput12886 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12887 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput12887 : ExponentCode := normalNode5534

theorem canonicalSound12887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12887.moment H = canonicalOutput12887.moment H :=
  canonical_of_padded canonicalInput12887 canonicalOutput12887 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12888 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput12888 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound12888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12888.moment H = canonicalOutput12888.moment H :=
  canonical_of_padded canonicalInput12888 canonicalOutput12888 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12889 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput12889 : ExponentCode := normalNode4504

theorem canonicalSound12889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12889.moment H = canonicalOutput12889.moment H :=
  canonical_of_padded canonicalInput12889 canonicalOutput12889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12890 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12890 : ExponentCode := normalNode4559

theorem canonicalSound12890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12890.moment H = canonicalOutput12890.moment H :=
  canonical_of_padded canonicalInput12890 canonicalOutput12890 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12891 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 2, -1, 0, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput12891 : ExponentCode := normalNode4062

theorem canonicalSound12891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12891.moment H = canonicalOutput12891.moment H :=
  canonical_of_padded canonicalInput12891 canonicalOutput12891 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12892 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 2, -1, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12892 : ExponentCode := normalNode4509

theorem canonicalSound12892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12892.moment H = canonicalOutput12892.moment H :=
  canonical_of_padded canonicalInput12892 canonicalOutput12892 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12893 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 2, 0, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput12893 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩

theorem canonicalSound12893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12893.moment H = canonicalOutput12893.moment H :=
  canonical_of_padded canonicalInput12893 canonicalOutput12893 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12894 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![1, 1, -1, 1, -2], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput12894 : ExponentCode := normalNode4504

theorem canonicalSound12894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12894.moment H = canonicalOutput12894.moment H :=
  canonical_of_padded canonicalInput12894 canonicalOutput12894 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12895 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2621⟩

theorem canonicalSound12895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12895.moment H = canonicalOutput12895.moment H :=
  canonical_of_padded canonicalInput12895 canonicalOutput12895 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12896 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12896 : ExponentCode := normalNode8686

theorem canonicalSound12896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12896.moment H = canonicalOutput12896.moment H :=
  canonical_of_padded canonicalInput12896 canonicalOutput12896 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput12897 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12897 : ExponentCode := normalNode6343

theorem canonicalSound12897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12897.moment H = canonicalOutput12897.moment H :=
  canonical_of_padded canonicalInput12897 canonicalOutput12897 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput12898 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12898 : ExponentCode := normalNode7233

theorem canonicalSound12898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12898.moment H = canonicalOutput12898.moment H :=
  canonical_of_padded canonicalInput12898 canonicalOutput12898 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput12899 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput12899 : ExponentCode := normalNode7231

theorem canonicalSound12899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12899.moment H = canonicalOutput12899.moment H :=
  canonical_of_padded canonicalInput12899 canonicalOutput12899 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput12900 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput12900 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound12900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12900.moment H = canonicalOutput12900.moment H :=
  canonical_of_padded canonicalInput12900 canonicalOutput12900 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12901 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12901 : ExponentCode := normalNode2130

theorem canonicalSound12901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12901.moment H = canonicalOutput12901.moment H :=
  canonical_of_padded canonicalInput12901 canonicalOutput12901 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12902 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput12902 : ExponentCode := normalNode657

theorem canonicalSound12902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12902.moment H = canonicalOutput12902.moment H :=
  canonical_of_padded canonicalInput12902 canonicalOutput12902 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12903 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12903 : ExponentCode := normalNode676

theorem canonicalSound12903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12903.moment H = canonicalOutput12903.moment H :=
  canonical_of_padded canonicalInput12903 canonicalOutput12903 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12904 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput12904 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1700⟩

theorem canonicalSound12904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12904.moment H = canonicalOutput12904.moment H :=
  canonical_of_padded canonicalInput12904 canonicalOutput12904 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12905 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, 0, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12905 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩

theorem canonicalSound12905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12905.moment H = canonicalOutput12905.moment H :=
  canonical_of_padded canonicalInput12905 canonicalOutput12905 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12906 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput12906 : ExponentCode := normalNode657

theorem canonicalSound12906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12906.moment H = canonicalOutput12906.moment H :=
  canonical_of_padded canonicalInput12906 canonicalOutput12906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12907 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput12907 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1645⟩

theorem canonicalSound12907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12907.moment H = canonicalOutput12907.moment H :=
  canonical_of_padded canonicalInput12907 canonicalOutput12907 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12908 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12908 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound12908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12908.moment H = canonicalOutput12908.moment H :=
  canonical_of_padded canonicalInput12908 canonicalOutput12908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12909 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput12909 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1656⟩

theorem canonicalSound12909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12909.moment H = canonicalOutput12909.moment H :=
  canonical_of_padded canonicalInput12909 canonicalOutput12909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12910 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput12910 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1689⟩

theorem canonicalSound12910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12910.moment H = canonicalOutput12910.moment H :=
  canonical_of_padded canonicalInput12910 canonicalOutput12910 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12911 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput12911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1990⟩

theorem canonicalSound12911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12911.moment H = canonicalOutput12911.moment H :=
  canonical_of_padded canonicalInput12911 canonicalOutput12911 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12912 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput12912 : ExponentCode := normalNode4260

theorem canonicalSound12912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12912.moment H = canonicalOutput12912.moment H :=
  canonical_of_padded canonicalInput12912 canonicalOutput12912 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12913 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, 0, -2], ![0, 2, -1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput12913 : ExponentCode := normalNode674

theorem canonicalSound12913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12913.moment H = canonicalOutput12913.moment H :=
  canonical_of_padded canonicalInput12913 canonicalOutput12913 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12914 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput12914 : ExponentCode := normalNode655

theorem canonicalSound12914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12914.moment H = canonicalOutput12914.moment H :=
  canonical_of_padded canonicalInput12914 canonicalOutput12914 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12915 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12915 : ExponentCode := normalNode4415

theorem canonicalSound12915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12915.moment H = canonicalOutput12915.moment H :=
  canonical_of_padded canonicalInput12915 canonicalOutput12915 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12916 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 0, 2, 1, -3], ![0, 2, 0, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput12916 : ExponentCode := normalNode3892

theorem canonicalSound12916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12916.moment H = canonicalOutput12916.moment H :=
  canonical_of_padded canonicalInput12916 canonicalOutput12916 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12917 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12917 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1500⟩

theorem canonicalSound12917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12917.moment H = canonicalOutput12917.moment H :=
  canonical_of_padded canonicalInput12917 canonicalOutput12917 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12918 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12918 : ExponentCode := normalNode9085

theorem canonicalSound12918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12918.moment H = canonicalOutput12918.moment H :=
  canonical_of_padded canonicalInput12918 canonicalOutput12918 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12919 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput12919 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2597⟩

theorem canonicalSound12919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12919.moment H = canonicalOutput12919.moment H :=
  canonical_of_padded canonicalInput12919 canonicalOutput12919 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12920 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12920 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1711⟩

theorem canonicalSound12920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12920.moment H = canonicalOutput12920.moment H :=
  canonical_of_padded canonicalInput12920 canonicalOutput12920 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12921 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput12921 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2509⟩

theorem canonicalSound12921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12921.moment H = canonicalOutput12921.moment H :=
  canonical_of_padded canonicalInput12921 canonicalOutput12921 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12922 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput12922 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1679⟩

theorem canonicalSound12922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12922.moment H = canonicalOutput12922.moment H :=
  canonical_of_padded canonicalInput12922 canonicalOutput12922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12923 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12923 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound12923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12923.moment H = canonicalOutput12923.moment H :=
  canonical_of_padded canonicalInput12923 canonicalOutput12923 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12924 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput12924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound12924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12924.moment H = canonicalOutput12924.moment H :=
  canonical_of_padded canonicalInput12924 canonicalOutput12924 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12925 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 0, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12925 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound12925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12925.moment H = canonicalOutput12925.moment H :=
  canonical_of_padded canonicalInput12925 canonicalOutput12925 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12926 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 0, 1, -2], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12926 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound12926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12926.moment H = canonicalOutput12926.moment H :=
  canonical_of_padded canonicalInput12926 canonicalOutput12926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12927 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12927 : ExponentCode := normalNode2130

theorem canonicalSound12927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12927.moment H = canonicalOutput12927.moment H :=
  canonical_of_padded canonicalInput12927 canonicalOutput12927 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

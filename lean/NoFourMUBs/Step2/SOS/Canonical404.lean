import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25856 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput25856 : ExponentCode := normalNode1771

theorem canonicalSound25856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25856.moment H = canonicalOutput25856.moment H :=
  canonical_of_padded canonicalInput25856 canonicalOutput25856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25857 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput25857 : ExponentCode := normalNode3206

theorem canonicalSound25857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25857.moment H = canonicalOutput25857.moment H :=
  canonical_of_padded canonicalInput25857 canonicalOutput25857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25858 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, -1, 1, -2], ![-2, 2, 2, -2]]⟩

def canonicalOutput25858 : ExponentCode := normalNode2748

theorem canonicalSound25858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25858.moment H = canonicalOutput25858.moment H :=
  canonical_of_padded canonicalInput25858 canonicalOutput25858 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25859 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput25859 : ExponentCode := normalNode1775

theorem canonicalSound25859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25859.moment H = canonicalOutput25859.moment H :=
  canonical_of_padded canonicalInput25859 canonicalOutput25859 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation381, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25860 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25860 : ExponentCode := normalNode4696

theorem canonicalSound25860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25860.moment H = canonicalOutput25860.moment H :=
  canonical_of_padded canonicalInput25860 canonicalOutput25860 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25861 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput25861 : ExponentCode := normalNode5720

theorem canonicalSound25861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25861.moment H = canonicalOutput25861.moment H :=
  canonical_of_padded canonicalInput25861 canonicalOutput25861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25862 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput25862 : ExponentCode := normalNode10260

theorem canonicalSound25862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25862.moment H = canonicalOutput25862.moment H :=
  canonical_of_padded canonicalInput25862 canonicalOutput25862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25863 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput25863 : ExponentCode := normalNode10702

theorem canonicalSound25863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25863.moment H = canonicalOutput25863.moment H :=
  canonical_of_padded canonicalInput25863 canonicalOutput25863 (by decide) (by decide)
    ⟨false, true, canonicalPermutation243, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25864 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25864 : ExponentCode := normalNode10540

theorem canonicalSound25864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25864.moment H = canonicalOutput25864.moment H :=
  canonical_of_padded canonicalInput25864 canonicalOutput25864 (by decide) (by decide)
    ⟨false, true, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25865 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25865 : ExponentCode := normalNode9679

theorem canonicalSound25865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25865.moment H = canonicalOutput25865.moment H :=
  canonical_of_padded canonicalInput25865 canonicalOutput25865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25866 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput25866 : ExponentCode := normalNode629

theorem canonicalSound25866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25866.moment H = canonicalOutput25866.moment H :=
  canonical_of_padded canonicalInput25866 canonicalOutput25866 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation341, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25867 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, -1, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput25867 : ExponentCode := normalNode354

theorem canonicalSound25867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25867.moment H = canonicalOutput25867.moment H :=
  canonical_of_padded canonicalInput25867 canonicalOutput25867 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25868 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, -1, 3, -1], ![2, 2, 0, -4]]⟩

def canonicalOutput25868 : ExponentCode := normalNode435

theorem canonicalSound25868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25868.moment H = canonicalOutput25868.moment H :=
  canonical_of_padded canonicalInput25868 canonicalOutput25868 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25869 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput25869 : ExponentCode := normalNode4765

theorem canonicalSound25869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25869.moment H = canonicalOutput25869.moment H :=
  canonical_of_padded canonicalInput25869 canonicalOutput25869 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25870 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, 2, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput25870 : ExponentCode := normalNode4969

theorem canonicalSound25870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25870.moment H = canonicalOutput25870.moment H :=
  canonical_of_padded canonicalInput25870 canonicalOutput25870 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25871 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, -1, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput25871 : ExponentCode := normalNode1072

theorem canonicalSound25871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25871.moment H = canonicalOutput25871.moment H :=
  canonical_of_padded canonicalInput25871 canonicalOutput25871 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25872 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, -1, 0, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput25872 : ExponentCode := normalNode5518

theorem canonicalSound25872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25872.moment H = canonicalOutput25872.moment H :=
  canonical_of_padded canonicalInput25872 canonicalOutput25872 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25873 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput25873 : ExponentCode := normalNode11177

theorem canonicalSound25873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25873.moment H = canonicalOutput25873.moment H :=
  canonical_of_padded canonicalInput25873 canonicalOutput25873 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25874 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![-1, -1, 3, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput25874 : ExponentCode := normalNode6104

theorem canonicalSound25874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25874.moment H = canonicalOutput25874.moment H :=
  canonical_of_padded canonicalInput25874 canonicalOutput25874 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25875 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput25875 : ExponentCode := normalNode7202

theorem canonicalSound25875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25875.moment H = canonicalOutput25875.moment H :=
  canonical_of_padded canonicalInput25875 canonicalOutput25875 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25876 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, -1, 2, 1], ![2, 2, 1, -5]]⟩

def canonicalOutput25876 : ExponentCode := normalNode349

theorem canonicalSound25876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25876.moment H = canonicalOutput25876.moment H :=
  canonical_of_padded canonicalInput25876 canonicalOutput25876 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25877 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, -1, 3, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput25877 : ExponentCode := normalNode428

theorem canonicalSound25877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25877.moment H = canonicalOutput25877.moment H :=
  canonical_of_padded canonicalInput25877 canonicalOutput25877 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25878 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 3, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput25878 : ExponentCode := normalNode6760

theorem canonicalSound25878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25878.moment H = canonicalOutput25878.moment H :=
  canonical_of_padded canonicalInput25878 canonicalOutput25878 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25879 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput25879 : ExponentCode := normalNode10693

theorem canonicalSound25879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25879.moment H = canonicalOutput25879.moment H :=
  canonical_of_padded canonicalInput25879 canonicalOutput25879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25880 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 2, 0, 0], ![2, -1, 3, -4]]⟩

def canonicalOutput25880 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3223⟩

theorem canonicalSound25880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25880.moment H = canonicalOutput25880.moment H :=
  canonical_of_padded canonicalInput25880 canonicalOutput25880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25881 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 2, 1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput25881 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3241⟩

theorem canonicalSound25881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25881.moment H = canonicalOutput25881.moment H :=
  canonical_of_padded canonicalInput25881 canonicalOutput25881 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25882 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput25882 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3331⟩

theorem canonicalSound25882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25882.moment H = canonicalOutput25882.moment H :=
  canonical_of_padded canonicalInput25882 canonicalOutput25882 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25883 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput25883 : ExponentCode := normalNode6759

theorem canonicalSound25883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25883.moment H = canonicalOutput25883.moment H :=
  canonical_of_padded canonicalInput25883 canonicalOutput25883 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25884 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25884 : ExponentCode := normalNode10999

theorem canonicalSound25884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25884.moment H = canonicalOutput25884.moment H :=
  canonical_of_padded canonicalInput25884 canonicalOutput25884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25885 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput25885 : ExponentCode := normalNode11066

theorem canonicalSound25885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25885.moment H = canonicalOutput25885.moment H :=
  canonical_of_padded canonicalInput25885 canonicalOutput25885 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25886 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 3, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput25886 : ExponentCode := normalNode6238

theorem canonicalSound25886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25886.moment H = canonicalOutput25886.moment H :=
  canonical_of_padded canonicalInput25886 canonicalOutput25886 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25887 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![2, -1, 1, -2], ![-2, 2, 2, -2]]⟩

def canonicalOutput25887 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3265⟩

theorem canonicalSound25887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25887.moment H = canonicalOutput25887.moment H :=
  canonical_of_padded canonicalInput25887 canonicalOutput25887 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25888 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput25888 : ExponentCode := normalNode1012

theorem canonicalSound25888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25888.moment H = canonicalOutput25888.moment H :=
  canonical_of_padded canonicalInput25888 canonicalOutput25888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25889 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, -1, 3, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput25889 : ExponentCode := normalNode1760

theorem canonicalSound25889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25889.moment H = canonicalOutput25889.moment H :=
  canonical_of_padded canonicalInput25889 canonicalOutput25889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25890 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput25890 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3435⟩

theorem canonicalSound25890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25890.moment H = canonicalOutput25890.moment H :=
  canonical_of_padded canonicalInput25890 canonicalOutput25890 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation256, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25891 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput25891 : ExponentCode := normalNode4881

theorem canonicalSound25891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25891.moment H = canonicalOutput25891.moment H :=
  canonical_of_padded canonicalInput25891 canonicalOutput25891 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25892 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25892 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3347⟩

theorem canonicalSound25892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25892.moment H = canonicalOutput25892.moment H :=
  canonical_of_padded canonicalInput25892 canonicalOutput25892 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25893 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25893 : ExponentCode := normalNode870

theorem canonicalSound25893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25893.moment H = canonicalOutput25893.moment H :=
  canonical_of_padded canonicalInput25893 canonicalOutput25893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25894 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -1, 1, -2], ![-2, 1, 2, -1]]⟩

def canonicalOutput25894 : ExponentCode := normalNode5096

theorem canonicalSound25894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25894.moment H = canonicalOutput25894.moment H :=
  canonical_of_padded canonicalInput25894 canonicalOutput25894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25895 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -1, -1, 2]]⟩

def canonicalOutput25895 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node387⟩

theorem canonicalSound25895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25895.moment H = canonicalOutput25895.moment H :=
  canonical_of_padded canonicalInput25895 canonicalOutput25895 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25896 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput25896 : ExponentCode := normalNode2000

theorem canonicalSound25896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25896.moment H = canonicalOutput25896.moment H :=
  canonical_of_padded canonicalInput25896 canonicalOutput25896 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation342, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25897 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25897 : ExponentCode := normalNode4705

theorem canonicalSound25897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25897.moment H = canonicalOutput25897.moment H :=
  canonical_of_padded canonicalInput25897 canonicalOutput25897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25898 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput25898 : ExponentCode := normalNode5729

theorem canonicalSound25898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25898.moment H = canonicalOutput25898.moment H :=
  canonical_of_padded canonicalInput25898 canonicalOutput25898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25899 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, -1, 3, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput25899 : ExponentCode := normalNode1764

theorem canonicalSound25899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25899.moment H = canonicalOutput25899.moment H :=
  canonical_of_padded canonicalInput25899 canonicalOutput25899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25900 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25900 : ExponentCode := normalNode5054

theorem canonicalSound25900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25900.moment H = canonicalOutput25900.moment H :=
  canonical_of_padded canonicalInput25900 canonicalOutput25900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25901 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput25901 : ExponentCode := normalNode7831

theorem canonicalSound25901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25901.moment H = canonicalOutput25901.moment H :=
  canonical_of_padded canonicalInput25901 canonicalOutput25901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25902 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput25902 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3464⟩

theorem canonicalSound25902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25902.moment H = canonicalOutput25902.moment H :=
  canonical_of_padded canonicalInput25902 canonicalOutput25902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25903 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput25903 : ExponentCode := normalNode1766

theorem canonicalSound25903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25903.moment H = canonicalOutput25903.moment H :=
  canonical_of_padded canonicalInput25903 canonicalOutput25903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25904 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput25904 : ExponentCode := normalNode8967

theorem canonicalSound25904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25904.moment H = canonicalOutput25904.moment H :=
  canonical_of_padded canonicalInput25904 canonicalOutput25904 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25905 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput25905 : ExponentCode := normalNode2105

theorem canonicalSound25905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25905.moment H = canonicalOutput25905.moment H :=
  canonical_of_padded canonicalInput25905 canonicalOutput25905 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25906 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput25906 : ExponentCode := normalNode7112

theorem canonicalSound25906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25906.moment H = canonicalOutput25906.moment H :=
  canonical_of_padded canonicalInput25906 canonicalOutput25906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25907 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 3, 0, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput25907 : ExponentCode := normalNode6707

theorem canonicalSound25907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25907.moment H = canonicalOutput25907.moment H :=
  canonical_of_padded canonicalInput25907 canonicalOutput25907 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25908 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -2, 2, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput25908 : ExponentCode := normalNode707

theorem canonicalSound25908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25908.moment H = canonicalOutput25908.moment H :=
  canonical_of_padded canonicalInput25908 canonicalOutput25908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25909 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 2, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput25909 : ExponentCode := normalNode5880

theorem canonicalSound25909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25909.moment H = canonicalOutput25909.moment H :=
  canonical_of_padded canonicalInput25909 canonicalOutput25909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25910 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput25910 : ExponentCode := normalNode10816

theorem canonicalSound25910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25910.moment H = canonicalOutput25910.moment H :=
  canonical_of_padded canonicalInput25910 canonicalOutput25910 (by decide) (by decide)
    ⟨false, false, canonicalPermutation196, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25911 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput25911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2580⟩

theorem canonicalSound25911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25911.moment H = canonicalOutput25911.moment H :=
  canonical_of_padded canonicalInput25911 canonicalOutput25911 (by decide) (by decide)
    ⟨false, true, canonicalPermutation317, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25912 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-2, -1, 2, 1], ![-1, 3, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput25912 : ExponentCode := normalNode182

theorem canonicalSound25912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25912.moment H = canonicalOutput25912.moment H :=
  canonical_of_padded canonicalInput25912 canonicalOutput25912 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25913 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, -1, 2, 0], ![-2, 3, -1, 0], ![3, -1, -1, -1]]⟩

def canonicalOutput25913 : ExponentCode := normalNode7717

theorem canonicalSound25913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25913.moment H = canonicalOutput25913.moment H :=
  canonical_of_padded canonicalInput25913 canonicalOutput25913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25914 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, -1, 2, 0], ![-1, 3, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput25914 : ExponentCode := normalNode4338

theorem canonicalSound25914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25914.moment H = canonicalOutput25914.moment H :=
  canonical_of_padded canonicalInput25914 canonicalOutput25914 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25915 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput25915 : ExponentCode := normalNode11187

theorem canonicalSound25915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25915.moment H = canonicalOutput25915.moment H :=
  canonical_of_padded canonicalInput25915 canonicalOutput25915 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25916 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![-3, 3, -1, 1], ![3, -1, -1, -1]]⟩

def canonicalOutput25916 : ExponentCode := normalNode76

theorem canonicalSound25916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25916.moment H = canonicalOutput25916.moment H :=
  canonical_of_padded canonicalInput25916 canonicalOutput25916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25917 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![-2, 3, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput25917 : ExponentCode := normalNode3448

theorem canonicalSound25917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25917.moment H = canonicalOutput25917.moment H :=
  canonical_of_padded canonicalInput25917 canonicalOutput25917 (by decide) (by decide)
    ⟨false, false, canonicalPermutation170, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25918 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -1, -1, 2]]⟩

def canonicalOutput25918 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node560⟩

theorem canonicalSound25918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25918.moment H = canonicalOutput25918.moment H :=
  canonical_of_padded canonicalInput25918 canonicalOutput25918 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25919 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, -1, -2, 3]]⟩

def canonicalOutput25919 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node432⟩

theorem canonicalSound25919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25919.moment H = canonicalOutput25919.moment H :=
  canonical_of_padded canonicalInput25919 canonicalOutput25919 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

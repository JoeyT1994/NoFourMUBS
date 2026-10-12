import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19840 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19840 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound19840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19840.moment H = canonicalOutput19840.moment H :=
  canonical_of_padded canonicalInput19840 canonicalOutput19840 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput19841 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![1, 0, 0, 2, -3], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput19841 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound19841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19841.moment H = canonicalOutput19841.moment H :=
  canonical_of_padded canonicalInput19841 canonicalOutput19841 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19842 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, -1, 2, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput19842 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound19842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19842.moment H = canonicalOutput19842.moment H :=
  canonical_of_padded canonicalInput19842 canonicalOutput19842 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19843 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput19843 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound19843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19843.moment H = canonicalOutput19843.moment H :=
  canonical_of_padded canonicalInput19843 canonicalOutput19843 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19844 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19844 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19844.moment H = canonicalOutput19844.moment H :=
  canonical_of_padded canonicalInput19844 canonicalOutput19844 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19845 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19845 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound19845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19845.moment H = canonicalOutput19845.moment H :=
  canonical_of_padded canonicalInput19845 canonicalOutput19845 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19846 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19846 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound19846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19846.moment H = canonicalOutput19846.moment H :=
  canonical_of_padded canonicalInput19846 canonicalOutput19846 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19847 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19847 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound19847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19847.moment H = canonicalOutput19847.moment H :=
  canonical_of_padded canonicalInput19847 canonicalOutput19847 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19848 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19848 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound19848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19848.moment H = canonicalOutput19848.moment H :=
  canonical_of_padded canonicalInput19848 canonicalOutput19848 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19849 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, 0, 1, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput19849 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19849.moment H = canonicalOutput19849.moment H :=
  canonical_of_padded canonicalInput19849 canonicalOutput19849 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19850 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 0, 0, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput19850 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1519⟩

theorem canonicalSound19850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19850.moment H = canonicalOutput19850.moment H :=
  canonical_of_padded canonicalInput19850 canonicalOutput19850 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19851 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19851 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2339⟩

theorem canonicalSound19851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19851.moment H = canonicalOutput19851.moment H :=
  canonical_of_padded canonicalInput19851 canonicalOutput19851 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19852 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19852 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound19852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19852.moment H = canonicalOutput19852.moment H :=
  canonical_of_padded canonicalInput19852 canonicalOutput19852 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19853 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19853 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1741⟩

theorem canonicalSound19853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19853.moment H = canonicalOutput19853.moment H :=
  canonical_of_padded canonicalInput19853 canonicalOutput19853 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19854 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19854 : ExponentCode := normalNode10274

theorem canonicalSound19854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19854.moment H = canonicalOutput19854.moment H :=
  canonical_of_padded canonicalInput19854 canonicalOutput19854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19855 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput19855 : ExponentCode := normalNode5779

theorem canonicalSound19855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19855.moment H = canonicalOutput19855.moment H :=
  canonical_of_padded canonicalInput19855 canonicalOutput19855 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19856 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, 2, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19856 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2589⟩

theorem canonicalSound19856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19856.moment H = canonicalOutput19856.moment H :=
  canonical_of_padded canonicalInput19856 canonicalOutput19856 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput19857 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput19857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound19857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19857.moment H = canonicalOutput19857.moment H :=
  canonical_of_padded canonicalInput19857 canonicalOutput19857 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19858 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, -1, 2], ![0, 1, 2, -1, -2], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput19858 : ExponentCode := normalNode893

theorem canonicalSound19858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19858.moment H = canonicalOutput19858.moment H :=
  canonical_of_padded canonicalInput19858 canonicalOutput19858 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19859 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19859 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound19859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19859.moment H = canonicalOutput19859.moment H :=
  canonical_of_padded canonicalInput19859 canonicalOutput19859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19860 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19860 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound19860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19860.moment H = canonicalOutput19860.moment H :=
  canonical_of_padded canonicalInput19860 canonicalOutput19860 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19861 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19861 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound19861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19861.moment H = canonicalOutput19861.moment H :=
  canonical_of_padded canonicalInput19861 canonicalOutput19861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19862 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound19862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19862.moment H = canonicalOutput19862.moment H :=
  canonical_of_padded canonicalInput19862 canonicalOutput19862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19863 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19863 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩

theorem canonicalSound19863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19863.moment H = canonicalOutput19863.moment H :=
  canonical_of_padded canonicalInput19863 canonicalOutput19863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19864 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19864 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound19864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19864.moment H = canonicalOutput19864.moment H :=
  canonical_of_padded canonicalInput19864 canonicalOutput19864 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19865 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19865 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound19865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19865.moment H = canonicalOutput19865.moment H :=
  canonical_of_padded canonicalInput19865 canonicalOutput19865 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19866 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19866 : ExponentCode := normalNode8392

theorem canonicalSound19866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19866.moment H = canonicalOutput19866.moment H :=
  canonical_of_padded canonicalInput19866 canonicalOutput19866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput19867 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19867 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound19867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19867.moment H = canonicalOutput19867.moment H :=
  canonical_of_padded canonicalInput19867 canonicalOutput19867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19868 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19868 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound19868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19868.moment H = canonicalOutput19868.moment H :=
  canonical_of_padded canonicalInput19868 canonicalOutput19868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19869 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, 0, -1], ![0, 0, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19869 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound19869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19869.moment H = canonicalOutput19869.moment H :=
  canonical_of_padded canonicalInput19869 canonicalOutput19869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19870 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19870 : ExponentCode := normalNode10073

theorem canonicalSound19870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19870.moment H = canonicalOutput19870.moment H :=
  canonical_of_padded canonicalInput19870 canonicalOutput19870 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput19871 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19871 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound19871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19871.moment H = canonicalOutput19871.moment H :=
  canonical_of_padded canonicalInput19871 canonicalOutput19871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19872 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19872 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound19872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19872.moment H = canonicalOutput19872.moment H :=
  canonical_of_padded canonicalInput19872 canonicalOutput19872 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19873 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19873 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound19873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19873.moment H = canonicalOutput19873.moment H :=
  canonical_of_padded canonicalInput19873 canonicalOutput19873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19874 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19874 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound19874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19874.moment H = canonicalOutput19874.moment H :=
  canonical_of_padded canonicalInput19874 canonicalOutput19874 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19875 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19875 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound19875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19875.moment H = canonicalOutput19875.moment H :=
  canonical_of_padded canonicalInput19875 canonicalOutput19875 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19876 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput19876 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound19876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19876.moment H = canonicalOutput19876.moment H :=
  canonical_of_padded canonicalInput19876 canonicalOutput19876 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19877 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -2, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19877 : ExponentCode := normalNode10569

theorem canonicalSound19877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19877.moment H = canonicalOutput19877.moment H :=
  canonical_of_padded canonicalInput19877 canonicalOutput19877 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19878 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19878 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound19878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19878.moment H = canonicalOutput19878.moment H :=
  canonical_of_padded canonicalInput19878 canonicalOutput19878 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19879 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, -1, -1], ![1, 0, -1, 3, -3]]⟩

def canonicalOutput19879 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound19879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19879.moment H = canonicalOutput19879.moment H :=
  canonical_of_padded canonicalInput19879 canonicalOutput19879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19880 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19880 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound19880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19880.moment H = canonicalOutput19880.moment H :=
  canonical_of_padded canonicalInput19880 canonicalOutput19880 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19881 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 1, -1], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19881 : ExponentCode := normalNode10110

theorem canonicalSound19881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19881.moment H = canonicalOutput19881.moment H :=
  canonical_of_padded canonicalInput19881 canonicalOutput19881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19882 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![0, 0, 0, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19882 : ExponentCode := normalNode10274

theorem canonicalSound19882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19882.moment H = canonicalOutput19882.moment H :=
  canonical_of_padded canonicalInput19882 canonicalOutput19882 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19883 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19883 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound19883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19883.moment H = canonicalOutput19883.moment H :=
  canonical_of_padded canonicalInput19883 canonicalOutput19883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19884 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 0, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19884 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1027⟩

theorem canonicalSound19884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19884.moment H = canonicalOutput19884.moment H :=
  canonical_of_padded canonicalInput19884 canonicalOutput19884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19885 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19885 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound19885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19885.moment H = canonicalOutput19885.moment H :=
  canonical_of_padded canonicalInput19885 canonicalOutput19885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19886 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19886 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound19886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19886.moment H = canonicalOutput19886.moment H :=
  canonical_of_padded canonicalInput19886 canonicalOutput19886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19887 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19887 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound19887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19887.moment H = canonicalOutput19887.moment H :=
  canonical_of_padded canonicalInput19887 canonicalOutput19887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19888 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput19888 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound19888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19888.moment H = canonicalOutput19888.moment H :=
  canonical_of_padded canonicalInput19888 canonicalOutput19888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19889 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -2, 2], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput19889 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2035⟩

theorem canonicalSound19889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19889.moment H = canonicalOutput19889.moment H :=
  canonical_of_padded canonicalInput19889 canonicalOutput19889 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19890 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput19890 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound19890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19890.moment H = canonicalOutput19890.moment H :=
  canonical_of_padded canonicalInput19890 canonicalOutput19890 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19891 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19891 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1749⟩

theorem canonicalSound19891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19891.moment H = canonicalOutput19891.moment H :=
  canonical_of_padded canonicalInput19891 canonicalOutput19891 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19892 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19892 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound19892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19892.moment H = canonicalOutput19892.moment H :=
  canonical_of_padded canonicalInput19892 canonicalOutput19892 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19893 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19893 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2745⟩

theorem canonicalSound19893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19893.moment H = canonicalOutput19893.moment H :=
  canonical_of_padded canonicalInput19893 canonicalOutput19893 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19894 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound19894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19894.moment H = canonicalOutput19894.moment H :=
  canonical_of_padded canonicalInput19894 canonicalOutput19894 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19895 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput19895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound19895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19895.moment H = canonicalOutput19895.moment H :=
  canonical_of_padded canonicalInput19895 canonicalOutput19895 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19896 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput19896 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound19896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19896.moment H = canonicalOutput19896.moment H :=
  canonical_of_padded canonicalInput19896 canonicalOutput19896 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19897 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 2, -1, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput19897 : ExponentCode := normalNode4459

theorem canonicalSound19897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19897.moment H = canonicalOutput19897.moment H :=
  canonical_of_padded canonicalInput19897 canonicalOutput19897 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19898 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -2, 1], ![0, 0, -1, 2, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound19898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19898.moment H = canonicalOutput19898.moment H :=
  canonical_of_padded canonicalInput19898 canonicalOutput19898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19899 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound19899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19899.moment H = canonicalOutput19899.moment H :=
  canonical_of_padded canonicalInput19899 canonicalOutput19899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19900 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput19900 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound19900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19900.moment H = canonicalOutput19900.moment H :=
  canonical_of_padded canonicalInput19900 canonicalOutput19900 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19901 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19901 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound19901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19901.moment H = canonicalOutput19901.moment H :=
  canonical_of_padded canonicalInput19901 canonicalOutput19901 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19902 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19902 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound19902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19902.moment H = canonicalOutput19902.moment H :=
  canonical_of_padded canonicalInput19902 canonicalOutput19902 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19903 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19903 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound19903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19903.moment H = canonicalOutput19903.moment H :=
  canonical_of_padded canonicalInput19903 canonicalOutput19903 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

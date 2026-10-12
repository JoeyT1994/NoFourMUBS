import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29824 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29824 : ExponentCode := normalNode2701

theorem canonicalSound29824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29824.moment H = canonicalOutput29824.moment H :=
  canonical_of_padded canonicalInput29824 canonicalOutput29824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29825 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 0, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput29825 : ExponentCode := normalNode4056

theorem canonicalSound29825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29825.moment H = canonicalOutput29825.moment H :=
  canonical_of_padded canonicalInput29825 canonicalOutput29825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29826 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput29826 : ExponentCode := normalNode4480

theorem canonicalSound29826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29826.moment H = canonicalOutput29826.moment H :=
  canonical_of_padded canonicalInput29826 canonicalOutput29826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29827 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29827 : ExponentCode := normalNode2418

theorem canonicalSound29827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29827.moment H = canonicalOutput29827.moment H :=
  canonical_of_padded canonicalInput29827 canonicalOutput29827 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29828 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29828 : ExponentCode := normalNode609

theorem canonicalSound29828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29828.moment H = canonicalOutput29828.moment H :=
  canonical_of_padded canonicalInput29828 canonicalOutput29828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29829 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput29829 : ExponentCode := normalNode1352

theorem canonicalSound29829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29829.moment H = canonicalOutput29829.moment H :=
  canonical_of_padded canonicalInput29829 canonicalOutput29829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29830 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput29830 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3078⟩

theorem canonicalSound29830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29830.moment H = canonicalOutput29830.moment H :=
  canonical_of_padded canonicalInput29830 canonicalOutput29830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29831 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput29831 : ExponentCode := normalNode3584

theorem canonicalSound29831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29831.moment H = canonicalOutput29831.moment H :=
  canonical_of_padded canonicalInput29831 canonicalOutput29831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29832 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput29832 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3099⟩

theorem canonicalSound29832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29832.moment H = canonicalOutput29832.moment H :=
  canonical_of_padded canonicalInput29832 canonicalOutput29832 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation342, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29833 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput29833 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3217⟩

theorem canonicalSound29833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29833.moment H = canonicalOutput29833.moment H :=
  canonical_of_padded canonicalInput29833 canonicalOutput29833 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput29834 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29834 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3197⟩

theorem canonicalSound29834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29834.moment H = canonicalOutput29834.moment H :=
  canonical_of_padded canonicalInput29834 canonicalOutput29834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29835 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput29835 : ExponentCode := normalNode5875

theorem canonicalSound29835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29835.moment H = canonicalOutput29835.moment H :=
  canonical_of_padded canonicalInput29835 canonicalOutput29835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29836 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput29836 : ExponentCode := normalNode7908

theorem canonicalSound29836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29836.moment H = canonicalOutput29836.moment H :=
  canonical_of_padded canonicalInput29836 canonicalOutput29836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29837 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 3, -2], ![0, -2, -1, 3]]⟩

def canonicalOutput29837 : ExponentCode := normalNode10837

theorem canonicalSound29837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29837.moment H = canonicalOutput29837.moment H :=
  canonical_of_padded canonicalInput29837 canonicalOutput29837 (by decide) (by decide)
    ⟨false, true, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29838 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput29838 : ExponentCode := normalNode7422

theorem canonicalSound29838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29838.moment H = canonicalOutput29838.moment H :=
  canonical_of_padded canonicalInput29838 canonicalOutput29838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29839 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, -2, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput29839 : ExponentCode := normalNode1378

theorem canonicalSound29839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29839.moment H = canonicalOutput29839.moment H :=
  canonical_of_padded canonicalInput29839 canonicalOutput29839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29840 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput29840 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2886⟩

theorem canonicalSound29840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29840.moment H = canonicalOutput29840.moment H :=
  canonical_of_padded canonicalInput29840 canonicalOutput29840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29841 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput29841 : ExponentCode := normalNode421

theorem canonicalSound29841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29841.moment H = canonicalOutput29841.moment H :=
  canonical_of_padded canonicalInput29841 canonicalOutput29841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29842 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, -2, 4], ![1, -2, 3, -2]]⟩

def canonicalOutput29842 : ExponentCode := normalNode3275

theorem canonicalSound29842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29842.moment H = canonicalOutput29842.moment H :=
  canonical_of_padded canonicalInput29842 canonicalOutput29842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29843 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput29843 : ExponentCode := normalNode1714

theorem canonicalSound29843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29843.moment H = canonicalOutput29843.moment H :=
  canonical_of_padded canonicalInput29843 canonicalOutput29843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29844 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput29844 : ExponentCode := normalNode10585

theorem canonicalSound29844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29844.moment H = canonicalOutput29844.moment H :=
  canonical_of_padded canonicalInput29844 canonicalOutput29844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29845 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, -2, 4, -1]]⟩

def canonicalOutput29845 : ExponentCode := normalNode6492

theorem canonicalSound29845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29845.moment H = canonicalOutput29845.moment H :=
  canonical_of_padded canonicalInput29845 canonicalOutput29845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29846 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, -3, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput29846 : ExponentCode := normalNode1379

theorem canonicalSound29846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29846.moment H = canonicalOutput29846.moment H :=
  canonical_of_padded canonicalInput29846 canonicalOutput29846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29847 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, -2, 2], ![-2, -1, 3, 0]]⟩

def canonicalOutput29847 : ExponentCode := normalNode2024

theorem canonicalSound29847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29847.moment H = canonicalOutput29847.moment H :=
  canonical_of_padded canonicalInput29847 canonicalOutput29847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29848 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, -2, 4, 0]]⟩

def canonicalOutput29848 : ExponentCode := normalNode449

theorem canonicalSound29848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29848.moment H = canonicalOutput29848.moment H :=
  canonical_of_padded canonicalInput29848 canonicalOutput29848 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29849 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput29849 : ExponentCode := normalNode3380

theorem canonicalSound29849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29849.moment H = canonicalOutput29849.moment H :=
  canonical_of_padded canonicalInput29849 canonicalOutput29849 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29850 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, 0, 3, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput29850 : ExponentCode := normalNode1309

theorem canonicalSound29850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29850.moment H = canonicalOutput29850.moment H :=
  canonical_of_padded canonicalInput29850 canonicalOutput29850 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29851 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -2, -1, 3]]⟩

def canonicalOutput29851 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node174⟩

theorem canonicalSound29851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29851.moment H = canonicalOutput29851.moment H :=
  canonical_of_padded canonicalInput29851 canonicalOutput29851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29852 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput29852 : ExponentCode := normalNode5212

theorem canonicalSound29852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29852.moment H = canonicalOutput29852.moment H :=
  canonical_of_padded canonicalInput29852 canonicalOutput29852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29853 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput29853 : ExponentCode := normalNode7704

theorem canonicalSound29853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29853.moment H = canonicalOutput29853.moment H :=
  canonical_of_padded canonicalInput29853 canonicalOutput29853 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29854 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 0, 2, -1], ![-1, 1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29854 : ExponentCode := normalNode10199

theorem canonicalSound29854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29854.moment H = canonicalOutput29854.moment H :=
  canonical_of_padded canonicalInput29854 canonicalOutput29854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29855 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 1, 1, -1], ![-1, -1, -1, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput29855 : ExponentCode := normalNode7777

theorem canonicalSound29855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29855.moment H = canonicalOutput29855.moment H :=
  canonical_of_padded canonicalInput29855 canonicalOutput29855 (by decide) (by decide)
    ⟨false, false, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29856 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29856 : ExponentCode := normalNode3586

theorem canonicalSound29856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29856.moment H = canonicalOutput29856.moment H :=
  canonical_of_padded canonicalInput29856 canonicalOutput29856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29857 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29857 : ExponentCode := normalNode1984

theorem canonicalSound29857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29857.moment H = canonicalOutput29857.moment H :=
  canonical_of_padded canonicalInput29857 canonicalOutput29857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29858 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29858 : ExponentCode := normalNode2703

theorem canonicalSound29858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29858.moment H = canonicalOutput29858.moment H :=
  canonical_of_padded canonicalInput29858 canonicalOutput29858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29859 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput29859 : ExponentCode := normalNode5148

theorem canonicalSound29859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29859.moment H = canonicalOutput29859.moment H :=
  canonical_of_padded canonicalInput29859 canonicalOutput29859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29860 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29860 : ExponentCode := normalNode6885

theorem canonicalSound29860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29860.moment H = canonicalOutput29860.moment H :=
  canonical_of_padded canonicalInput29860 canonicalOutput29860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29861 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29861 : ExponentCode := normalNode9303

theorem canonicalSound29861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29861.moment H = canonicalOutput29861.moment H :=
  canonical_of_padded canonicalInput29861 canonicalOutput29861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29862 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput29862 : ExponentCode := normalNode5142

theorem canonicalSound29862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29862.moment H = canonicalOutput29862.moment H :=
  canonical_of_padded canonicalInput29862 canonicalOutput29862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29863 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput29863 : ExponentCode := normalNode2456

theorem canonicalSound29863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29863.moment H = canonicalOutput29863.moment H :=
  canonical_of_padded canonicalInput29863 canonicalOutput29863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29864 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29864 : ExponentCode := normalNode7776

theorem canonicalSound29864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29864.moment H = canonicalOutput29864.moment H :=
  canonical_of_padded canonicalInput29864 canonicalOutput29864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29865 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29865 : ExponentCode := normalNode8810

theorem canonicalSound29865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29865.moment H = canonicalOutput29865.moment H :=
  canonical_of_padded canonicalInput29865 canonicalOutput29865 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29866 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 1, 0], ![-1, -1, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput29866 : ExponentCode := normalNode7701

theorem canonicalSound29866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29866.moment H = canonicalOutput29866.moment H :=
  canonical_of_padded canonicalInput29866 canonicalOutput29866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29867 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 1, 0], ![-1, 1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29867 : ExponentCode := normalNode10496

theorem canonicalSound29867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29867.moment H = canonicalOutput29867.moment H :=
  canonical_of_padded canonicalInput29867 canonicalOutput29867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29868 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, -1, -2, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput29868 : ExponentCode := normalNode7312

theorem canonicalSound29868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29868.moment H = canonicalOutput29868.moment H :=
  canonical_of_padded canonicalInput29868 canonicalOutput29868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29869 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, -1, -1, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput29869 : ExponentCode := normalNode4238

theorem canonicalSound29869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29869.moment H = canonicalOutput29869.moment H :=
  canonical_of_padded canonicalInput29869 canonicalOutput29869 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation255, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29870 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -3, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput29870 : ExponentCode := normalNode10208

theorem canonicalSound29870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29870.moment H = canonicalOutput29870.moment H :=
  canonical_of_padded canonicalInput29870 canonicalOutput29870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29871 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput29871 : ExponentCode := normalNode10200

theorem canonicalSound29871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29871.moment H = canonicalOutput29871.moment H :=
  canonical_of_padded canonicalInput29871 canonicalOutput29871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29872 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 0, 0], ![-1, -1, -1, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput29872 : ExponentCode := normalNode1753

theorem canonicalSound29872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29872.moment H = canonicalOutput29872.moment H :=
  canonical_of_padded canonicalInput29872 canonicalOutput29872 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29873 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![-1, -1, -2, 4], ![1, 0, 2, -3]]⟩

def canonicalOutput29873 : ExponentCode := normalNode7352

theorem canonicalSound29873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29873.moment H = canonicalOutput29873.moment H :=
  canonical_of_padded canonicalInput29873 canonicalOutput29873 (by decide) (by decide)
    ⟨false, false, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29874 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![-1, -1, -1, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput29874 : ExponentCode := normalNode7702

theorem canonicalSound29874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29874.moment H = canonicalOutput29874.moment H :=
  canonical_of_padded canonicalInput29874 canonicalOutput29874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29875 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29875 : ExponentCode := normalNode9887

theorem canonicalSound29875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29875.moment H = canonicalOutput29875.moment H :=
  canonical_of_padded canonicalInput29875 canonicalOutput29875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29876 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29876 : ExponentCode := normalNode7943

theorem canonicalSound29876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29876.moment H = canonicalOutput29876.moment H :=
  canonical_of_padded canonicalInput29876 canonicalOutput29876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29877 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29877 : ExponentCode := normalNode11140

theorem canonicalSound29877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29877.moment H = canonicalOutput29877.moment H :=
  canonical_of_padded canonicalInput29877 canonicalOutput29877 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29878 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, 1, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput29878 : ExponentCode := normalNode7466

theorem canonicalSound29878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29878.moment H = canonicalOutput29878.moment H :=
  canonical_of_padded canonicalInput29878 canonicalOutput29878 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29879 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 0, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29879 : ExponentCode := normalNode3586

theorem canonicalSound29879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29879.moment H = canonicalOutput29879.moment H :=
  canonical_of_padded canonicalInput29879 canonicalOutput29879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29880 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput29880 : ExponentCode := normalNode3278

theorem canonicalSound29880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29880.moment H = canonicalOutput29880.moment H :=
  canonical_of_padded canonicalInput29880 canonicalOutput29880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29881 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29881 : ExponentCode := normalNode9833

theorem canonicalSound29881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29881.moment H = canonicalOutput29881.moment H :=
  canonical_of_padded canonicalInput29881 canonicalOutput29881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29882 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29882 : ExponentCode := normalNode1985

theorem canonicalSound29882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29882.moment H = canonicalOutput29882.moment H :=
  canonical_of_padded canonicalInput29882 canonicalOutput29882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29883 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29883 : ExponentCode := normalNode2704

theorem canonicalSound29883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29883.moment H = canonicalOutput29883.moment H :=
  canonical_of_padded canonicalInput29883 canonicalOutput29883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29884 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 1, -1, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput29884 : ExponentCode := normalNode5149

theorem canonicalSound29884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29884.moment H = canonicalOutput29884.moment H :=
  canonical_of_padded canonicalInput29884 canonicalOutput29884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29885 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29885 : ExponentCode := normalNode6886

theorem canonicalSound29885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29885.moment H = canonicalOutput29885.moment H :=
  canonical_of_padded canonicalInput29885 canonicalOutput29885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29886 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, 1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29886 : ExponentCode := normalNode9302

theorem canonicalSound29886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29886.moment H = canonicalOutput29886.moment H :=
  canonical_of_padded canonicalInput29886 canonicalOutput29886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29887 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput29887 : ExponentCode := normalNode1353

theorem canonicalSound29887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29887.moment H = canonicalOutput29887.moment H :=
  canonical_of_padded canonicalInput29887 canonicalOutput29887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

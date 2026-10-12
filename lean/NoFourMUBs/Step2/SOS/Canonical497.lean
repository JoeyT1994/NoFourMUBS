import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31808 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31808 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩

theorem canonicalSound31808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31808.moment H = canonicalOutput31808.moment H :=
  canonical_of_padded canonicalInput31808 canonicalOutput31808 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput31809 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput31809 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound31809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31809.moment H = canonicalOutput31809.moment H :=
  canonical_of_padded canonicalInput31809 canonicalOutput31809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31810 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound31810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31810.moment H = canonicalOutput31810.moment H :=
  canonical_of_padded canonicalInput31810 canonicalOutput31810 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31811 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput31811 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node145⟩

theorem canonicalSound31811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31811.moment H = canonicalOutput31811.moment H :=
  canonical_of_padded canonicalInput31811 canonicalOutput31811 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31812 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![0, 2, 1, -3], ![0, -2, -3, 5]]⟩

def canonicalOutput31812 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node27⟩

theorem canonicalSound31812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31812.moment H = canonicalOutput31812.moment H :=
  canonical_of_padded canonicalInput31812 canonicalOutput31812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31813 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![1, -4, 2, 1], ![-1, 4, -4, 1]]⟩

def canonicalOutput31813 : ExponentCode := normalNode1002

theorem canonicalSound31813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31813.moment H = canonicalOutput31813.moment H :=
  canonical_of_padded canonicalInput31813 canonicalOutput31813 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31814 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![1, -2, 2, -1], ![-1, 2, -4, 3]]⟩

def canonicalOutput31814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound31814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31814.moment H = canonicalOutput31814.moment H :=
  canonical_of_padded canonicalInput31814 canonicalOutput31814 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31815 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![2, -4, 2, 0], ![-2, 4, -4, 2]]⟩

def canonicalOutput31815 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code235

theorem canonicalSound31815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31815.moment H = canonicalOutput31815.moment H :=
  canonical_of_padded canonicalInput31815 canonicalOutput31815 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31816 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![2, -2, 2, -2], ![-2, 2, -4, 4]]⟩

def canonicalOutput31816 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code233

theorem canonicalSound31816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31816.moment H = canonicalOutput31816.moment H :=
  canonical_of_padded canonicalInput31816 canonicalOutput31816 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31817 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![4, -2, 0, -2], ![-4, 2, -2, 4]]⟩

def canonicalOutput31817 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code235

theorem canonicalSound31817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31817.moment H = canonicalOutput31817.moment H :=
  canonical_of_padded canonicalInput31817 canonicalOutput31817 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31818 : ExponentCode := ⟨4, 4, ![![0, 0, 3, -3], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound31818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31818.moment H = canonicalOutput31818.moment H :=
  canonical_of_padded canonicalInput31818 canonicalOutput31818 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput31819 : ExponentCode := ⟨4, 4, ![![0, 0, 3, -3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound31819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31819.moment H = canonicalOutput31819.moment H :=
  canonical_of_padded canonicalInput31819 canonicalOutput31819 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31820 : ExponentCode := ⟨3, 4, ![![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31820 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound31820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31820.moment H = canonicalOutput31820.moment H :=
  canonical_of_padded canonicalInput31820 canonicalOutput31820 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31821 : ExponentCode := ⟨4, 4, ![![0, 0, 3, -3], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput31821 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound31821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31821.moment H = canonicalOutput31821.moment H :=
  canonical_of_padded canonicalInput31821 canonicalOutput31821 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput31822 : ExponentCode := ⟨4, 4, ![![0, 0, 3, -3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput31822 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound31822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31822.moment H = canonicalOutput31822.moment H :=
  canonical_of_padded canonicalInput31822 canonicalOutput31822 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31823 : ExponentCode := ⟨4, 4, ![![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, -1, 3]]⟩

def canonicalOutput31823 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound31823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31823.moment H = canonicalOutput31823.moment H :=
  canonical_of_padded canonicalInput31823 canonicalOutput31823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31824 : ExponentCode := ⟨4, 4, ![![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput31824 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound31824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31824.moment H = canonicalOutput31824.moment H :=
  canonical_of_padded canonicalInput31824 canonicalOutput31824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31825 : ExponentCode := ⟨3, 4, ![![0, 0, 3, -3], ![0, 2, 0, -2], ![0, -2, -3, 5]]⟩

def canonicalOutput31825 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node28⟩

theorem canonicalSound31825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31825.moment H = canonicalOutput31825.moment H :=
  canonical_of_padded canonicalInput31825 canonicalOutput31825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31826 : ExponentCode := ⟨3, 4, ![![0, 0, 3, -3], ![1, -2, 1, 0], ![-1, 2, -4, 3]]⟩

def canonicalOutput31826 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound31826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31826.moment H = canonicalOutput31826.moment H :=
  canonical_of_padded canonicalInput31826 canonicalOutput31826 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31827 : ExponentCode := ⟨3, 4, ![![0, 0, 3, -3], ![2, -2, 1, -1], ![-2, 2, -4, 4]]⟩

def canonicalOutput31827 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code32

theorem canonicalSound31827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31827.moment H = canonicalOutput31827.moment H :=
  canonical_of_padded canonicalInput31827 canonicalOutput31827 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31828 : ExponentCode := ⟨4, 4, ![![0, 0, 4, -4], ![-1, 1, -2, 2], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31828 : ExponentCode := normalNode11073

theorem canonicalSound31828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31828.moment H = canonicalOutput31828.moment H :=
  canonical_of_padded canonicalInput31828 canonicalOutput31828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31829 : ExponentCode := ⟨4, 4, ![![0, 0, 4, -4], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput31829 : ExponentCode := normalNode7409

theorem canonicalSound31829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31829.moment H = canonicalOutput31829.moment H :=
  canonical_of_padded canonicalInput31829 canonicalOutput31829 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput31830 : ExponentCode := ⟨3, 4, ![![0, 0, 4, -4], ![-1, 2, -3, 2], ![1, -2, -1, 2]]⟩

def canonicalOutput31830 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound31830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31830.moment H = canonicalOutput31830.moment H :=
  canonical_of_padded canonicalInput31830 canonicalOutput31830 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31831 : ExponentCode := ⟨4, 4, ![![0, 0, 4, -4], ![0, 1, -2, 1], ![-1, 1, -1, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput31831 : ExponentCode := normalNode11129

theorem canonicalSound31831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31831.moment H = canonicalOutput31831.moment H :=
  canonical_of_padded canonicalInput31831 canonicalOutput31831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31832 : ExponentCode := ⟨4, 4, ![![0, 0, 4, -4], ![0, 1, -2, 1], ![0, 1, -1, 0], ![0, -2, -1, 3]]⟩

def canonicalOutput31832 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound31832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31832.moment H = canonicalOutput31832.moment H :=
  canonical_of_padded canonicalInput31832 canonicalOutput31832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31833 : ExponentCode := ⟨4, 4, ![![0, 0, 4, -4], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -2, -2, 3]]⟩

def canonicalOutput31833 : ExponentCode := normalNode7409

theorem canonicalSound31833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31833.moment H = canonicalOutput31833.moment H :=
  canonical_of_padded canonicalInput31833 canonicalOutput31833 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput31834 : ExponentCode := ⟨4, 4, ![![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, -2, 4]]⟩

def canonicalOutput31834 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSound31834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31834.moment H = canonicalOutput31834.moment H :=
  canonical_of_padded canonicalInput31834 canonicalOutput31834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31835 : ExponentCode := ⟨3, 4, ![![0, 0, 4, -4], ![0, 2, -3, 1], ![0, -2, -1, 3]]⟩

def canonicalOutput31835 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node38⟩

theorem canonicalSound31835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31835.moment H = canonicalOutput31835.moment H :=
  canonical_of_padded canonicalInput31835 canonicalOutput31835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31836 : ExponentCode := ⟨3, 4, ![![0, 1, -4, 3], ![-1, 1, 1, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput31836 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound31836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31836.moment H = canonicalOutput31836.moment H :=
  canonical_of_padded canonicalInput31836 canonicalOutput31836 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31837 : ExponentCode := ⟨3, 4, ![![0, 1, -4, 3], ![-1, 1, 2, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput31837 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound31837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31837.moment H = canonicalOutput31837.moment H :=
  canonical_of_padded canonicalInput31837 canonicalOutput31837 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31838 : ExponentCode := ⟨3, 4, ![![0, 1, -4, 3], ![0, 1, 1, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput31838 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound31838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31838.moment H = canonicalOutput31838.moment H :=
  canonical_of_padded canonicalInput31838 canonicalOutput31838 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31839 : ExponentCode := ⟨3, 4, ![![0, 1, -4, 3], ![0, 1, 2, -3], ![0, -2, 2, 0]]⟩

def canonicalOutput31839 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound31839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31839.moment H = canonicalOutput31839.moment H :=
  canonical_of_padded canonicalInput31839 canonicalOutput31839 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31840 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput31840 : ExponentCode := normalNode3740

theorem canonicalSound31840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31840.moment H = canonicalOutput31840.moment H :=
  canonical_of_padded canonicalInput31840 canonicalOutput31840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31841 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput31841 : ExponentCode := normalNode2074

theorem canonicalSound31841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31841.moment H = canonicalOutput31841.moment H :=
  canonical_of_padded canonicalInput31841 canonicalOutput31841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31842 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31842 : ExponentCode := normalNode2057

theorem canonicalSound31842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31842.moment H = canonicalOutput31842.moment H :=
  canonical_of_padded canonicalInput31842 canonicalOutput31842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31843 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31843 : ExponentCode := normalNode3545

theorem canonicalSound31843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31843.moment H = canonicalOutput31843.moment H :=
  canonical_of_padded canonicalInput31843 canonicalOutput31843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31844 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31844 : ExponentCode := normalNode7760

theorem canonicalSound31844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31844.moment H = canonicalOutput31844.moment H :=
  canonical_of_padded canonicalInput31844 canonicalOutput31844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31845 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 3, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31845 : ExponentCode := normalNode1733

theorem canonicalSound31845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31845.moment H = canonicalOutput31845.moment H :=
  canonical_of_padded canonicalInput31845 canonicalOutput31845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31846 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31846 : ExponentCode := normalNode2107

theorem canonicalSound31846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31846.moment H = canonicalOutput31846.moment H :=
  canonical_of_padded canonicalInput31846 canonicalOutput31846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31847 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31847 : ExponentCode := normalNode4275

theorem canonicalSound31847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31847.moment H = canonicalOutput31847.moment H :=
  canonical_of_padded canonicalInput31847 canonicalOutput31847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31848 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31848 : ExponentCode := normalNode9270

theorem canonicalSound31848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31848.moment H = canonicalOutput31848.moment H :=
  canonical_of_padded canonicalInput31848 canonicalOutput31848 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31849 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31849 : ExponentCode := normalNode3612

theorem canonicalSound31849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31849.moment H = canonicalOutput31849.moment H :=
  canonical_of_padded canonicalInput31849 canonicalOutput31849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31850 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31850 : ExponentCode := normalNode9611

theorem canonicalSound31850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31850.moment H = canonicalOutput31850.moment H :=
  canonical_of_padded canonicalInput31850 canonicalOutput31850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31851 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31851 : ExponentCode := normalNode2058

theorem canonicalSound31851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31851.moment H = canonicalOutput31851.moment H :=
  canonical_of_padded canonicalInput31851 canonicalOutput31851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31852 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31852 : ExponentCode := normalNode3546

theorem canonicalSound31852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31852.moment H = canonicalOutput31852.moment H :=
  canonical_of_padded canonicalInput31852 canonicalOutput31852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31853 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31853 : ExponentCode := normalNode7761

theorem canonicalSound31853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31853.moment H = canonicalOutput31853.moment H :=
  canonical_of_padded canonicalInput31853 canonicalOutput31853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31854 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput31854 : ExponentCode := normalNode7326

theorem canonicalSound31854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31854.moment H = canonicalOutput31854.moment H :=
  canonical_of_padded canonicalInput31854 canonicalOutput31854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31855 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput31855 : ExponentCode := normalNode3255

theorem canonicalSound31855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31855.moment H = canonicalOutput31855.moment H :=
  canonical_of_padded canonicalInput31855 canonicalOutput31855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31856 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31856 : ExponentCode := normalNode1402

theorem canonicalSound31856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31856.moment H = canonicalOutput31856.moment H :=
  canonical_of_padded canonicalInput31856 canonicalOutput31856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31857 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31857 : ExponentCode := normalNode3774

theorem canonicalSound31857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31857.moment H = canonicalOutput31857.moment H :=
  canonical_of_padded canonicalInput31857 canonicalOutput31857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31858 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput31858 : ExponentCode := normalNode4276

theorem canonicalSound31858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31858.moment H = canonicalOutput31858.moment H :=
  canonical_of_padded canonicalInput31858 canonicalOutput31858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31859 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput31859 : ExponentCode := normalNode4202

theorem canonicalSound31859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31859.moment H = canonicalOutput31859.moment H :=
  canonical_of_padded canonicalInput31859 canonicalOutput31859 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31860 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput31860 : ExponentCode := normalNode8781

theorem canonicalSound31860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31860.moment H = canonicalOutput31860.moment H :=
  canonical_of_padded canonicalInput31860 canonicalOutput31860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31861 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31861 : ExponentCode := normalNode7753

theorem canonicalSound31861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31861.moment H = canonicalOutput31861.moment H :=
  canonical_of_padded canonicalInput31861 canonicalOutput31861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31862 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31862 : ExponentCode := normalNode1906

theorem canonicalSound31862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31862.moment H = canonicalOutput31862.moment H :=
  canonical_of_padded canonicalInput31862 canonicalOutput31862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31863 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31863 : ExponentCode := normalNode1909

theorem canonicalSound31863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31863.moment H = canonicalOutput31863.moment H :=
  canonical_of_padded canonicalInput31863 canonicalOutput31863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31864 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31864 : ExponentCode := normalNode1884

theorem canonicalSound31864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31864.moment H = canonicalOutput31864.moment H :=
  canonical_of_padded canonicalInput31864 canonicalOutput31864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31865 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput31865 : ExponentCode := normalNode7270

theorem canonicalSound31865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31865.moment H = canonicalOutput31865.moment H :=
  canonical_of_padded canonicalInput31865 canonicalOutput31865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation409, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31866 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput31866 : ExponentCode := normalNode7664

theorem canonicalSound31866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31866.moment H = canonicalOutput31866.moment H :=
  canonical_of_padded canonicalInput31866 canonicalOutput31866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation409, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31867 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput31867 : ExponentCode := normalNode3366

theorem canonicalSound31867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31867.moment H = canonicalOutput31867.moment H :=
  canonical_of_padded canonicalInput31867 canonicalOutput31867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31868 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31868 : ExponentCode := normalNode460

theorem canonicalSound31868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31868.moment H = canonicalOutput31868.moment H :=
  canonical_of_padded canonicalInput31868 canonicalOutput31868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31869 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31869 : ExponentCode := normalNode4248

theorem canonicalSound31869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31869.moment H = canonicalOutput31869.moment H :=
  canonical_of_padded canonicalInput31869 canonicalOutput31869 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31870 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput31870 : ExponentCode := normalNode4278

theorem canonicalSound31870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31870.moment H = canonicalOutput31870.moment H :=
  canonical_of_padded canonicalInput31870 canonicalOutput31870 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31871 : ExponentCode := ⟨6, 4, ![![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput31871 : ExponentCode := normalNode5299

theorem canonicalSound31871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31871.moment H = canonicalOutput31871.moment H :=
  canonical_of_padded canonicalInput31871 canonicalOutput31871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

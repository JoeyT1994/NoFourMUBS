import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20032 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20032 : ExponentCode := normalNode9465

theorem canonicalSound20032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20032.moment H = canonicalOutput20032.moment H :=
  canonical_of_padded canonicalInput20032 canonicalOutput20032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20033 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20033 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound20033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20033.moment H = canonicalOutput20033.moment H :=
  canonical_of_padded canonicalInput20033 canonicalOutput20033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20034 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20034 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20034.moment H = canonicalOutput20034.moment H :=
  canonical_of_padded canonicalInput20034 canonicalOutput20034 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20035 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20035 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound20035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20035.moment H = canonicalOutput20035.moment H :=
  canonical_of_padded canonicalInput20035 canonicalOutput20035 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20036 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound20036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20036.moment H = canonicalOutput20036.moment H :=
  canonical_of_padded canonicalInput20036 canonicalOutput20036 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20037 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20037 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1349⟩

theorem canonicalSound20037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20037.moment H = canonicalOutput20037.moment H :=
  canonical_of_padded canonicalInput20037 canonicalOutput20037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput20038 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20038 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1114⟩

theorem canonicalSound20038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20038.moment H = canonicalOutput20038.moment H :=
  canonical_of_padded canonicalInput20038 canonicalOutput20038 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20039 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20039 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound20039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20039.moment H = canonicalOutput20039.moment H :=
  canonical_of_padded canonicalInput20039 canonicalOutput20039 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20040 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput20040 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound20040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20040.moment H = canonicalOutput20040.moment H :=
  canonical_of_padded canonicalInput20040 canonicalOutput20040 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput20041 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, -1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20041 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound20041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20041.moment H = canonicalOutput20041.moment H :=
  canonical_of_padded canonicalInput20041 canonicalOutput20041 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20042 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 0, -1, -1, 2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20042 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound20042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20042.moment H = canonicalOutput20042.moment H :=
  canonical_of_padded canonicalInput20042 canonicalOutput20042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20043 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 0, 1, -1, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20043 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound20043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20043.moment H = canonicalOutput20043.moment H :=
  canonical_of_padded canonicalInput20043 canonicalOutput20043 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput20044 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -2, 2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20044 : ExponentCode := normalNode2402

theorem canonicalSound20044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20044.moment H = canonicalOutput20044.moment H :=
  canonical_of_padded canonicalInput20044 canonicalOutput20044 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20045 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20045 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20045.moment H = canonicalOutput20045.moment H :=
  canonical_of_padded canonicalInput20045 canonicalOutput20045 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20046 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20046 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound20046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20046.moment H = canonicalOutput20046.moment H :=
  canonical_of_padded canonicalInput20046 canonicalOutput20046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20047 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20047 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound20047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20047.moment H = canonicalOutput20047.moment H :=
  canonical_of_padded canonicalInput20047 canonicalOutput20047 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20048 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput20048 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound20048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20048.moment H = canonicalOutput20048.moment H :=
  canonical_of_padded canonicalInput20048 canonicalOutput20048 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20049 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, -1, -1], ![0, 0, -1, 2, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput20049 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound20049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20049.moment H = canonicalOutput20049.moment H :=
  canonical_of_padded canonicalInput20049 canonicalOutput20049 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput20050 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20050 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20050.moment H = canonicalOutput20050.moment H :=
  canonical_of_padded canonicalInput20050 canonicalOutput20050 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput20051 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput20051 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2291⟩

theorem canonicalSound20051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20051.moment H = canonicalOutput20051.moment H :=
  canonical_of_padded canonicalInput20051 canonicalOutput20051 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20052 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 0, -1, -2, 3], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20052 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound20052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20052.moment H = canonicalOutput20052.moment H :=
  canonical_of_padded canonicalInput20052 canonicalOutput20052 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20053 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 0, -1, 1, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput20053 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound20053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20053.moment H = canonicalOutput20053.moment H :=
  canonical_of_padded canonicalInput20053 canonicalOutput20053 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20054 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -3, 3], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput20054 : ExponentCode := normalNode4877

theorem canonicalSound20054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20054.moment H = canonicalOutput20054.moment H :=
  canonical_of_padded canonicalInput20054 canonicalOutput20054 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20055 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20055 : ExponentCode := normalNode10525

theorem canonicalSound20055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20055.moment H = canonicalOutput20055.moment H :=
  canonical_of_padded canonicalInput20055 canonicalOutput20055 (by decide) (by decide)
    ⟨true, false, canonicalPermutation24, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20056 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20056 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound20056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20056.moment H = canonicalOutput20056.moment H :=
  canonical_of_padded canonicalInput20056 canonicalOutput20056 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20057 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput20057 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1769⟩

theorem canonicalSound20057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20057.moment H = canonicalOutput20057.moment H :=
  canonical_of_padded canonicalInput20057 canonicalOutput20057 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20058 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput20058 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound20058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20058.moment H = canonicalOutput20058.moment H :=
  canonical_of_padded canonicalInput20058 canonicalOutput20058 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20059 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20059 : ExponentCode := normalNode10525

theorem canonicalSound20059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20059.moment H = canonicalOutput20059.moment H :=
  canonical_of_padded canonicalInput20059 canonicalOutput20059 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput20060 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 1, -3], ![0, 1, -1, -1, 1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20060 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound20060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20060.moment H = canonicalOutput20060.moment H :=
  canonical_of_padded canonicalInput20060 canonicalOutput20060 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20061 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20061 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound20061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20061.moment H = canonicalOutput20061.moment H :=
  canonical_of_padded canonicalInput20061 canonicalOutput20061 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20062 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, -1, -2, 2], ![0, 0, 1, 1, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20062 : ExponentCode := normalNode2402

theorem canonicalSound20062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20062.moment H = canonicalOutput20062.moment H :=
  canonical_of_padded canonicalInput20062 canonicalOutput20062 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20063 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, -1, -2, 2], ![0, 0, 2, -1, -1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput20063 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2291⟩

theorem canonicalSound20063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20063.moment H = canonicalOutput20063.moment H :=
  canonical_of_padded canonicalInput20063 canonicalOutput20063 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20064 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, -1, -1, 1], ![0, 0, 1, 1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20064 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20064.moment H = canonicalOutput20064.moment H :=
  canonical_of_padded canonicalInput20064 canonicalOutput20064 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20065 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, -1, -1, 1], ![0, 0, 2, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20065 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20065.moment H = canonicalOutput20065.moment H :=
  canonical_of_padded canonicalInput20065 canonicalOutput20065 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput20066 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, 0, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput20066 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound20066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20066.moment H = canonicalOutput20066.moment H :=
  canonical_of_padded canonicalInput20066 canonicalOutput20066 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput20067 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, 0, -2, 1], ![0, 0, 2, 0, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput20067 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound20067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20067.moment H = canonicalOutput20067.moment H :=
  canonical_of_padded canonicalInput20067 canonicalOutput20067 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20068 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput20068 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound20068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20068.moment H = canonicalOutput20068.moment H :=
  canonical_of_padded canonicalInput20068 canonicalOutput20068 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20069 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput20069 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2577⟩

theorem canonicalSound20069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20069.moment H = canonicalOutput20069.moment H :=
  canonical_of_padded canonicalInput20069 canonicalOutput20069 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20070 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, -1, 0, 2], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput20070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node996⟩

theorem canonicalSound20070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20070.moment H = canonicalOutput20070.moment H :=
  canonical_of_padded canonicalInput20070 canonicalOutput20070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20071 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput20071 : ExponentCode := normalNode9398

theorem canonicalSound20071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20071.moment H = canonicalOutput20071.moment H :=
  canonical_of_padded canonicalInput20071 canonicalOutput20071 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20072 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20072 : ExponentCode := normalNode9396

theorem canonicalSound20072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20072.moment H = canonicalOutput20072.moment H :=
  canonical_of_padded canonicalInput20072 canonicalOutput20072 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20073 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20073 : ExponentCode := normalNode9397

theorem canonicalSound20073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20073.moment H = canonicalOutput20073.moment H :=
  canonical_of_padded canonicalInput20073 canonicalOutput20073 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20074 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput20074 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound20074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20074.moment H = canonicalOutput20074.moment H :=
  canonical_of_padded canonicalInput20074 canonicalOutput20074 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20075 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput20075 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound20075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20075.moment H = canonicalOutput20075.moment H :=
  canonical_of_padded canonicalInput20075 canonicalOutput20075 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20076 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput20076 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound20076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20076.moment H = canonicalOutput20076.moment H :=
  canonical_of_padded canonicalInput20076 canonicalOutput20076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20077 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput20077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2540⟩

theorem canonicalSound20077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20077.moment H = canonicalOutput20077.moment H :=
  canonical_of_padded canonicalInput20077 canonicalOutput20077 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20078 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput20078 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound20078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20078.moment H = canonicalOutput20078.moment H :=
  canonical_of_padded canonicalInput20078 canonicalOutput20078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20079 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20079 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound20079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20079.moment H = canonicalOutput20079.moment H :=
  canonical_of_padded canonicalInput20079 canonicalOutput20079 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20080 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput20080 : ExponentCode := normalNode10546

theorem canonicalSound20080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20080.moment H = canonicalOutput20080.moment H :=
  canonical_of_padded canonicalInput20080 canonicalOutput20080 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20081 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput20081 : ExponentCode := normalNode10623

theorem canonicalSound20081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20081.moment H = canonicalOutput20081.moment H :=
  canonical_of_padded canonicalInput20081 canonicalOutput20081 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20082 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput20082 : ExponentCode := normalNode9427

theorem canonicalSound20082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20082.moment H = canonicalOutput20082.moment H :=
  canonical_of_padded canonicalInput20082 canonicalOutput20082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20083 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput20083 : ExponentCode := normalNode10848

theorem canonicalSound20083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20083.moment H = canonicalOutput20083.moment H :=
  canonical_of_padded canonicalInput20083 canonicalOutput20083 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20084 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput20084 : ExponentCode := normalNode10545

theorem canonicalSound20084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20084.moment H = canonicalOutput20084.moment H :=
  canonical_of_padded canonicalInput20084 canonicalOutput20084 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20085 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20085 : ExponentCode := normalNode10514

theorem canonicalSound20085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20085.moment H = canonicalOutput20085.moment H :=
  canonical_of_padded canonicalInput20085 canonicalOutput20085 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20086 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput20086 : ExponentCode := normalNode10648

theorem canonicalSound20086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20086.moment H = canonicalOutput20086.moment H :=
  canonical_of_padded canonicalInput20086 canonicalOutput20086 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20087 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20087 : ExponentCode := normalNode10648

theorem canonicalSound20087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20087.moment H = canonicalOutput20087.moment H :=
  canonical_of_padded canonicalInput20087 canonicalOutput20087 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20088 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20088 : ExponentCode := normalNode4570

theorem canonicalSound20088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20088.moment H = canonicalOutput20088.moment H :=
  canonical_of_padded canonicalInput20088 canonicalOutput20088 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20089 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput20089 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code917

theorem canonicalSound20089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20089.moment H = canonicalOutput20089.moment H :=
  canonical_of_padded canonicalInput20089 canonicalOutput20089 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20090 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 0, -1, 2], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput20090 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1129⟩

theorem canonicalSound20090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20090.moment H = canonicalOutput20090.moment H :=
  canonical_of_padded canonicalInput20090 canonicalOutput20090 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20091 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, 3, -2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput20091 : ExponentCode := normalNode10280

theorem canonicalSound20091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20091.moment H = canonicalOutput20091.moment H :=
  canonical_of_padded canonicalInput20091 canonicalOutput20091 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20092 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20092 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2774⟩

theorem canonicalSound20092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20092.moment H = canonicalOutput20092.moment H :=
  canonical_of_padded canonicalInput20092 canonicalOutput20092 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20093 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2742⟩

theorem canonicalSound20093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20093.moment H = canonicalOutput20093.moment H :=
  canonical_of_padded canonicalInput20093 canonicalOutput20093 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20094 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput20094 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2772⟩

theorem canonicalSound20094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20094.moment H = canonicalOutput20094.moment H :=
  canonical_of_padded canonicalInput20094 canonicalOutput20094 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20095 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput20095 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2777⟩

theorem canonicalSound20095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20095.moment H = canonicalOutput20095.moment H :=
  canonical_of_padded canonicalInput20095 canonicalOutput20095 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

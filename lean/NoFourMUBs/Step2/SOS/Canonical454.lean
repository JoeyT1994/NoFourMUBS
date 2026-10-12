import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29056 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput29056 : ExponentCode := normalNode2369

theorem canonicalSound29056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29056.moment H = canonicalOutput29056.moment H :=
  canonical_of_padded canonicalInput29056 canonicalOutput29056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29057 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![1, 1, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput29057 : ExponentCode := normalNode2368

theorem canonicalSound29057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29057.moment H = canonicalOutput29057.moment H :=
  canonical_of_padded canonicalInput29057 canonicalOutput29057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29058 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 0, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput29058 : ExponentCode := normalNode10516

theorem canonicalSound29058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29058.moment H = canonicalOutput29058.moment H :=
  canonical_of_padded canonicalInput29058 canonicalOutput29058 (by decide) (by decide)
    ⟨false, true, canonicalPermutation223, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29059 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput29059 : ExponentCode := normalNode4349

theorem canonicalSound29059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29059.moment H = canonicalOutput29059.moment H :=
  canonical_of_padded canonicalInput29059 canonicalOutput29059 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29060 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -2, 2, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput29060 : ExponentCode := normalNode3885

theorem canonicalSound29060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29060.moment H = canonicalOutput29060.moment H :=
  canonical_of_padded canonicalInput29060 canonicalOutput29060 (by decide) (by decide)
    ⟨false, true, canonicalPermutation97, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29061 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput29061 : ExponentCode := normalNode4368

theorem canonicalSound29061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29061.moment H = canonicalOutput29061.moment H :=
  canonical_of_padded canonicalInput29061 canonicalOutput29061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation244, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29062 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput29062 : ExponentCode := normalNode5085

theorem canonicalSound29062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29062.moment H = canonicalOutput29062.moment H :=
  canonical_of_padded canonicalInput29062 canonicalOutput29062 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29063 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput29063 : ExponentCode := normalNode2403

theorem canonicalSound29063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29063.moment H = canonicalOutput29063.moment H :=
  canonical_of_padded canonicalInput29063 canonicalOutput29063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29064 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput29064 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3432⟩

theorem canonicalSound29064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29064.moment H = canonicalOutput29064.moment H :=
  canonical_of_padded canonicalInput29064 canonicalOutput29064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29065 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, 0, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput29065 : ExponentCode := normalNode2403

theorem canonicalSound29065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29065.moment H = canonicalOutput29065.moment H :=
  canonical_of_padded canonicalInput29065 canonicalOutput29065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29066 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, 1, -2, 0], ![1, -3, 2, 0]]⟩

def canonicalOutput29066 : ExponentCode := normalNode5318

theorem canonicalSound29066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29066.moment H = canonicalOutput29066.moment H :=
  canonical_of_padded canonicalInput29066 canonicalOutput29066 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29067 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29067 : ExponentCode := normalNode4370

theorem canonicalSound29067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29067.moment H = canonicalOutput29067.moment H :=
  canonical_of_padded canonicalInput29067 canonicalOutput29067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29068 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, -1, 3], ![2, 0, 0, -2]]⟩

def canonicalOutput29068 : ExponentCode := normalNode1719

theorem canonicalSound29068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29068.moment H = canonicalOutput29068.moment H :=
  canonical_of_padded canonicalInput29068 canonicalOutput29068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29069 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput29069 : ExponentCode := normalNode3871

theorem canonicalSound29069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29069.moment H = canonicalOutput29069.moment H :=
  canonical_of_padded canonicalInput29069 canonicalOutput29069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29070 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput29070 : ExponentCode := normalNode3867

theorem canonicalSound29070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29070.moment H = canonicalOutput29070.moment H :=
  canonical_of_padded canonicalInput29070 canonicalOutput29070 (by decide) (by decide)
    ⟨false, true, canonicalPermutation97, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29071 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 0, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput29071 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3032⟩

theorem canonicalSound29071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29071.moment H = canonicalOutput29071.moment H :=
  canonical_of_padded canonicalInput29071 canonicalOutput29071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29072 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 0, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29072 : ExponentCode := normalNode4938

theorem canonicalSound29072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29072.moment H = canonicalOutput29072.moment H :=
  canonical_of_padded canonicalInput29072 canonicalOutput29072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29073 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 1, -2, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29073 : ExponentCode := normalNode4338

theorem canonicalSound29073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29073.moment H = canonicalOutput29073.moment H :=
  canonical_of_padded canonicalInput29073 canonicalOutput29073 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29074 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput29074 : ExponentCode := normalNode5386

theorem canonicalSound29074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29074.moment H = canonicalOutput29074.moment H :=
  canonical_of_padded canonicalInput29074 canonicalOutput29074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29075 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29075 : ExponentCode := normalNode2441

theorem canonicalSound29075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29075.moment H = canonicalOutput29075.moment H :=
  canonical_of_padded canonicalInput29075 canonicalOutput29075 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29076 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 0, 0], ![2, 0, -2, 0], ![0, -3, 2, 1]]⟩

def canonicalOutput29076 : ExponentCode := normalNode3859

theorem canonicalSound29076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29076.moment H = canonicalOutput29076.moment H :=
  canonical_of_padded canonicalInput29076 canonicalOutput29076 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29077 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 0, 0], ![2, 0, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput29077 : ExponentCode := normalNode3920

theorem canonicalSound29077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29077.moment H = canonicalOutput29077.moment H :=
  canonical_of_padded canonicalInput29077 canonicalOutput29077 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29078 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 1, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput29078 : ExponentCode := normalNode1705

theorem canonicalSound29078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29078.moment H = canonicalOutput29078.moment H :=
  canonical_of_padded canonicalInput29078 canonicalOutput29078 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29079 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, 1, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput29079 : ExponentCode := normalNode4357

theorem canonicalSound29079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29079.moment H = canonicalOutput29079.moment H :=
  canonical_of_padded canonicalInput29079 canonicalOutput29079 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29080 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 0, 2], ![2, 1, 0, -3]]⟩

def canonicalOutput29080 : ExponentCode := normalNode10505

theorem canonicalSound29080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29080.moment H = canonicalOutput29080.moment H :=
  canonical_of_padded canonicalInput29080 canonicalOutput29080 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29081 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput29081 : ExponentCode := normalNode2356

theorem canonicalSound29081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29081.moment H = canonicalOutput29081.moment H :=
  canonical_of_padded canonicalInput29081 canonicalOutput29081 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29082 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 1, 0, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput29082 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3429⟩

theorem canonicalSound29082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29082.moment H = canonicalOutput29082.moment H :=
  canonical_of_padded canonicalInput29082 canonicalOutput29082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation223, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29083 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput29083 : ExponentCode := normalNode5637

theorem canonicalSound29083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29083.moment H = canonicalOutput29083.moment H :=
  canonical_of_padded canonicalInput29083 canonicalOutput29083 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29084 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput29084 : ExponentCode := normalNode2466

theorem canonicalSound29084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29084.moment H = canonicalOutput29084.moment H :=
  canonical_of_padded canonicalInput29084 canonicalOutput29084 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29085 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, 0, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput29085 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3209⟩

theorem canonicalSound29085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29085.moment H = canonicalOutput29085.moment H :=
  canonical_of_padded canonicalInput29085 canonicalOutput29085 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29086 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput29086 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3247⟩

theorem canonicalSound29086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29086.moment H = canonicalOutput29086.moment H :=
  canonical_of_padded canonicalInput29086 canonicalOutput29086 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29087 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 2, -2, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput29087 : ExponentCode := normalNode2465

theorem canonicalSound29087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29087.moment H = canonicalOutput29087.moment H :=
  canonical_of_padded canonicalInput29087 canonicalOutput29087 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29088 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput29088 : ExponentCode := normalNode3927

theorem canonicalSound29088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29088.moment H = canonicalOutput29088.moment H :=
  canonical_of_padded canonicalInput29088 canonicalOutput29088 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29089 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput29089 : ExponentCode := normalNode5099

theorem canonicalSound29089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29089.moment H = canonicalOutput29089.moment H :=
  canonical_of_padded canonicalInput29089 canonicalOutput29089 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29090 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 2, 0], ![-1, 2, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput29090 : ExponentCode := normalNode2499

theorem canonicalSound29090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29090.moment H = canonicalOutput29090.moment H :=
  canonical_of_padded canonicalInput29090 canonicalOutput29090 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29091 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput29091 : ExponentCode := normalNode778

theorem canonicalSound29091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29091.moment H = canonicalOutput29091.moment H :=
  canonical_of_padded canonicalInput29091 canonicalOutput29091 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29092 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, 1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput29092 : ExponentCode := normalNode5863

theorem canonicalSound29092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29092.moment H = canonicalOutput29092.moment H :=
  canonical_of_padded canonicalInput29092 canonicalOutput29092 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29093 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 0, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput29093 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3093⟩

theorem canonicalSound29093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29093.moment H = canonicalOutput29093.moment H :=
  canonical_of_padded canonicalInput29093 canonicalOutput29093 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29094 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput29094 : ExponentCode := normalNode4646

theorem canonicalSound29094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29094.moment H = canonicalOutput29094.moment H :=
  canonical_of_padded canonicalInput29094 canonicalOutput29094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29095 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, 1, 0], ![-1, 2, -1, 0], ![2, -3, 0, 1]]⟩

def canonicalOutput29095 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2972⟩

theorem canonicalSound29095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29095.moment H = canonicalOutput29095.moment H :=
  canonical_of_padded canonicalInput29095 canonicalOutput29095 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29096 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -2, 1], ![2, -3, 0, 1]]⟩

def canonicalOutput29096 : ExponentCode := normalNode1801

theorem canonicalSound29096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29096.moment H = canonicalOutput29096.moment H :=
  canonical_of_padded canonicalInput29096 canonicalOutput29096 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29097 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![2, -3, -1, 2]]⟩

def canonicalOutput29097 : ExponentCode := normalNode514

theorem canonicalSound29097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29097.moment H = canonicalOutput29097.moment H :=
  canonical_of_padded canonicalInput29097 canonicalOutput29097 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29098 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![-1, -1, 3, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput29098 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3226⟩

theorem canonicalSound29098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29098.moment H = canonicalOutput29098.moment H :=
  canonical_of_padded canonicalInput29098 canonicalOutput29098 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29099 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![2, 0, -1, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput29099 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3067⟩

theorem canonicalSound29099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29099.moment H = canonicalOutput29099.moment H :=
  canonical_of_padded canonicalInput29099 canonicalOutput29099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29100 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![2, 0, -2, 0], ![-1, -2, 1, 2]]⟩

def canonicalOutput29100 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3066⟩

theorem canonicalSound29100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29100.moment H = canonicalOutput29100.moment H :=
  canonical_of_padded canonicalInput29100 canonicalOutput29100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29101 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![2, 0, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput29101 : ExponentCode := normalNode1956

theorem canonicalSound29101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29101.moment H = canonicalOutput29101.moment H :=
  canonical_of_padded canonicalInput29101 canonicalOutput29101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29102 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29102 : ExponentCode := normalNode11187

theorem canonicalSound29102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29102.moment H = canonicalOutput29102.moment H :=
  canonical_of_padded canonicalInput29102 canonicalOutput29102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29103 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, -2, 1], ![2, -1, 0, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput29103 : ExponentCode := normalNode4356

theorem canonicalSound29103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29103.moment H = canonicalOutput29103.moment H :=
  canonical_of_padded canonicalInput29103 canonicalOutput29103 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29104 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, -1, 0], ![2, -1, -1, 0], ![-1, -2, 2, 1]]⟩

def canonicalOutput29104 : ExponentCode := normalNode4388

theorem canonicalSound29104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29104.moment H = canonicalOutput29104.moment H :=
  canonical_of_padded canonicalInput29104 canonicalOutput29104 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29105 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, -1, 0], ![2, -1, 0, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput29105 : ExponentCode := normalNode4359

theorem canonicalSound29105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29105.moment H = canonicalOutput29105.moment H :=
  canonical_of_padded canonicalInput29105 canonicalOutput29105 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29106 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![2, -1, -2, 1], ![-1, -2, 2, 1]]⟩

def canonicalOutput29106 : ExponentCode := normalNode2396

theorem canonicalSound29106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29106.moment H = canonicalOutput29106.moment H :=
  canonical_of_padded canonicalInput29106 canonicalOutput29106 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29107 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![2, -1, -1, 0], ![-1, -2, 1, 2]]⟩

def canonicalOutput29107 : ExponentCode := normalNode5392

theorem canonicalSound29107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29107.moment H = canonicalOutput29107.moment H :=
  canonical_of_padded canonicalInput29107 canonicalOutput29107 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29108 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, -1, 3], ![2, 0, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29108 : ExponentCode := normalNode3570

theorem canonicalSound29108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29108.moment H = canonicalOutput29108.moment H :=
  canonical_of_padded canonicalInput29108 canonicalOutput29108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29109 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, -1, -1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput29109 : ExponentCode := normalNode5086

theorem canonicalSound29109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29109.moment H = canonicalOutput29109.moment H :=
  canonical_of_padded canonicalInput29109 canonicalOutput29109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29110 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -2, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput29110 : ExponentCode := normalNode3919

theorem canonicalSound29110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29110.moment H = canonicalOutput29110.moment H :=
  canonical_of_padded canonicalInput29110 canonicalOutput29110 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29111 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 1, 1, 0]]⟩

def canonicalOutput29111 : ExponentCode := normalNode3871

theorem canonicalSound29111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29111.moment H = canonicalOutput29111.moment H :=
  canonical_of_padded canonicalInput29111 canonicalOutput29111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29112 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, -2, 1], ![-2, 2, 1, -1]]⟩

def canonicalOutput29112 : ExponentCode := normalNode2334

theorem canonicalSound29112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29112.moment H = canonicalOutput29112.moment H :=
  canonical_of_padded canonicalInput29112 canonicalOutput29112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29113 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 2, 0, 0]]⟩

def canonicalOutput29113 : ExponentCode := normalNode3858

theorem canonicalSound29113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29113.moment H = canonicalOutput29113.moment H :=
  canonical_of_padded canonicalInput29113 canonicalOutput29113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29114 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29114 : ExponentCode := normalNode5334

theorem canonicalSound29114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29114.moment H = canonicalOutput29114.moment H :=
  canonical_of_padded canonicalInput29114 canonicalOutput29114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29115 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -1, -1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput29115 : ExponentCode := normalNode5121

theorem canonicalSound29115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29115.moment H = canonicalOutput29115.moment H :=
  canonical_of_padded canonicalInput29115 canonicalOutput29115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29116 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 1, 1, 0]]⟩

def canonicalOutput29116 : ExponentCode := normalNode4355

theorem canonicalSound29116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29116.moment H = canonicalOutput29116.moment H :=
  canonical_of_padded canonicalInput29116 canonicalOutput29116 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29117 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 1, 0], ![2, -2, 0, 0], ![-2, 2, -1, 1]]⟩

def canonicalOutput29117 : ExponentCode := normalNode2438

theorem canonicalSound29117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29117.moment H = canonicalOutput29117.moment H :=
  canonical_of_padded canonicalInput29117 canonicalOutput29117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29118 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -2, -1, 1], ![-2, 2, -1, 1]]⟩

def canonicalOutput29118 : ExponentCode := normalNode2440

theorem canonicalSound29118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29118.moment H = canonicalOutput29118.moment H :=
  canonical_of_padded canonicalInput29118 canonicalOutput29118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29119 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -2, 0, 0], ![-2, 2, -2, 2]]⟩

def canonicalOutput29119 : ExponentCode := normalNode769

theorem canonicalSound29119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29119.moment H = canonicalOutput29119.moment H :=
  canonical_of_padded canonicalInput29119 canonicalOutput29119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

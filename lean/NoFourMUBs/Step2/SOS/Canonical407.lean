import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26048 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput26048 : ExponentCode := normalNode2370

theorem canonicalSound26048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26048.moment H = canonicalOutput26048.moment H :=
  canonical_of_padded canonicalInput26048 canonicalOutput26048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26049 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, 2, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput26049 : ExponentCode := normalNode2376

theorem canonicalSound26049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26049.moment H = canonicalOutput26049.moment H :=
  canonical_of_padded canonicalInput26049 canonicalOutput26049 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26050 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26050 : ExponentCode := normalNode4366

theorem canonicalSound26050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26050.moment H = canonicalOutput26050.moment H :=
  canonical_of_padded canonicalInput26050 canonicalOutput26050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26051 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput26051 : ExponentCode := normalNode4371

theorem canonicalSound26051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26051.moment H = canonicalOutput26051.moment H :=
  canonical_of_padded canonicalInput26051 canonicalOutput26051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26052 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput26052 : ExponentCode := normalNode3528

theorem canonicalSound26052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26052.moment H = canonicalOutput26052.moment H :=
  canonical_of_padded canonicalInput26052 canonicalOutput26052 (by decide) (by decide)
    ⟨false, true, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26053 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput26053 : ExponentCode := normalNode5632

theorem canonicalSound26053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26053.moment H = canonicalOutput26053.moment H :=
  canonical_of_padded canonicalInput26053 canonicalOutput26053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26054 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput26054 : ExponentCode := normalNode5388

theorem canonicalSound26054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26054.moment H = canonicalOutput26054.moment H :=
  canonical_of_padded canonicalInput26054 canonicalOutput26054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26055 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26055 : ExponentCode := normalNode6149

theorem canonicalSound26055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26055.moment H = canonicalOutput26055.moment H :=
  canonical_of_padded canonicalInput26055 canonicalOutput26055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26056 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput26056 : ExponentCode := normalNode9411

theorem canonicalSound26056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26056.moment H = canonicalOutput26056.moment H :=
  canonical_of_padded canonicalInput26056 canonicalOutput26056 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26057 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26057 : ExponentCode := normalNode6182

theorem canonicalSound26057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26057.moment H = canonicalOutput26057.moment H :=
  canonical_of_padded canonicalInput26057 canonicalOutput26057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26058 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput26058 : ExponentCode := normalNode4886

theorem canonicalSound26058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26058.moment H = canonicalOutput26058.moment H :=
  canonical_of_padded canonicalInput26058 canonicalOutput26058 (by decide) (by decide)
    ⟨false, true, canonicalPermutation149, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26059 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26059 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3386⟩

theorem canonicalSound26059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26059.moment H = canonicalOutput26059.moment H :=
  canonical_of_padded canonicalInput26059 canonicalOutput26059 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26060 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput26060 : ExponentCode := normalNode9885

theorem canonicalSound26060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26060.moment H = canonicalOutput26060.moment H :=
  canonical_of_padded canonicalInput26060 canonicalOutput26060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26061 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput26061 : ExponentCode := normalNode10972

theorem canonicalSound26061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26061.moment H = canonicalOutput26061.moment H :=
  canonical_of_padded canonicalInput26061 canonicalOutput26061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26062 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput26062 : ExponentCode := normalNode9914

theorem canonicalSound26062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26062.moment H = canonicalOutput26062.moment H :=
  canonical_of_padded canonicalInput26062 canonicalOutput26062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26063 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput26063 : ExponentCode := normalNode11162

theorem canonicalSound26063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26063.moment H = canonicalOutput26063.moment H :=
  canonical_of_padded canonicalInput26063 canonicalOutput26063 (by decide) (by decide)
    ⟨false, true, canonicalPermutation305, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26064 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, 1, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput26064 : ExponentCode := normalNode10966

theorem canonicalSound26064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26064.moment H = canonicalOutput26064.moment H :=
  canonical_of_padded canonicalInput26064 canonicalOutput26064 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26065 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, 2, 2, -4]]⟩

def canonicalOutput26065 : ExponentCode := normalNode3173

theorem canonicalSound26065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26065.moment H = canonicalOutput26065.moment H :=
  canonical_of_padded canonicalInput26065 canonicalOutput26065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26066 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput26066 : ExponentCode := normalNode4876

theorem canonicalSound26066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26066.moment H = canonicalOutput26066.moment H :=
  canonical_of_padded canonicalInput26066 canonicalOutput26066 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26067 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput26067 : ExponentCode := normalNode10489

theorem canonicalSound26067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26067.moment H = canonicalOutput26067.moment H :=
  canonical_of_padded canonicalInput26067 canonicalOutput26067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26068 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput26068 : ExponentCode := normalNode4876

theorem canonicalSound26068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26068.moment H = canonicalOutput26068.moment H :=
  canonical_of_padded canonicalInput26068 canonicalOutput26068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26069 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, 2, -4, 2]]⟩

def canonicalOutput26069 : ExponentCode := normalNode3208

theorem canonicalSound26069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26069.moment H = canonicalOutput26069.moment H :=
  canonical_of_padded canonicalInput26069 canonicalOutput26069 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26070 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -3, 4], ![-1, 2, 2, -3]]⟩

def canonicalOutput26070 : ExponentCode := normalNode4839

theorem canonicalSound26070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26070.moment H = canonicalOutput26070.moment H :=
  canonical_of_padded canonicalInput26070 canonicalOutput26070 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26071 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput26071 : ExponentCode := normalNode4737

theorem canonicalSound26071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26071.moment H = canonicalOutput26071.moment H :=
  canonical_of_padded canonicalInput26071 canonicalOutput26071 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26072 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26072 : ExponentCode := normalNode10488

theorem canonicalSound26072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26072.moment H = canonicalOutput26072.moment H :=
  canonical_of_padded canonicalInput26072 canonicalOutput26072 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26073 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, 2, 2, -2]]⟩

def canonicalOutput26073 : ExponentCode := normalNode5781

theorem canonicalSound26073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26073.moment H = canonicalOutput26073.moment H :=
  canonical_of_padded canonicalInput26073 canonicalOutput26073 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26074 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, 1, -3, 4]]⟩

def canonicalOutput26074 : ExponentCode := normalNode4726

theorem canonicalSound26074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26074.moment H = canonicalOutput26074.moment H :=
  canonical_of_padded canonicalInput26074 canonicalOutput26074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26075 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 2, -2], ![-1, 2, -4, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput26075 : ExponentCode := normalNode10344

theorem canonicalSound26075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26075.moment H = canonicalOutput26075.moment H :=
  canonical_of_padded canonicalInput26075 canonicalOutput26075 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26076 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput26076 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound26076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26076.moment H = canonicalOutput26076.moment H :=
  canonical_of_padded canonicalInput26076 canonicalOutput26076 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26077 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 2, -4, 2], ![0, -1, 2, -1]]⟩

def canonicalOutput26077 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound26077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26077.moment H = canonicalOutput26077.moment H :=
  canonical_of_padded canonicalInput26077 canonicalOutput26077 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26078 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 2, 1, -3], ![0, -1, -3, 4]]⟩

def canonicalOutput26078 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩

theorem canonicalSound26078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26078.moment H = canonicalOutput26078.moment H :=
  canonical_of_padded canonicalInput26078 canonicalOutput26078 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26079 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![-1, 1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput26079 : ExponentCode := normalNode10680

theorem canonicalSound26079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26079.moment H = canonicalOutput26079.moment H :=
  canonical_of_padded canonicalInput26079 canonicalOutput26079 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26080 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput26080 : ExponentCode := normalNode11094

theorem canonicalSound26080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26080.moment H = canonicalOutput26080.moment H :=
  canonical_of_padded canonicalInput26080 canonicalOutput26080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26081 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput26081 : ExponentCode := normalNode11142

theorem canonicalSound26081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26081.moment H = canonicalOutput26081.moment H :=
  canonical_of_padded canonicalInput26081 canonicalOutput26081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26082 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![-1, 2, -4, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput26082 : ExponentCode := normalNode9133

theorem canonicalSound26082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26082.moment H = canonicalOutput26082.moment H :=
  canonical_of_padded canonicalInput26082 canonicalOutput26082 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26083 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput26083 : ExponentCode := normalNode11191

theorem canonicalSound26083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26083.moment H = canonicalOutput26083.moment H :=
  canonical_of_padded canonicalInput26083 canonicalOutput26083 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26084 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![0, 0, 0, 0]]⟩

def canonicalOutput26084 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound26084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26084.moment H = canonicalOutput26084.moment H :=
  canonical_of_padded canonicalInput26084 canonicalOutput26084 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26085 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput26085 : ExponentCode := normalNode11033

theorem canonicalSound26085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26085.moment H = canonicalOutput26085.moment H :=
  canonical_of_padded canonicalInput26085 canonicalOutput26085 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26086 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput26086 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node864⟩

theorem canonicalSound26086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26086.moment H = canonicalOutput26086.moment H :=
  canonical_of_padded canonicalInput26086 canonicalOutput26086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26087 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput26087 : ExponentCode := normalNode11142

theorem canonicalSound26087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26087.moment H = canonicalOutput26087.moment H :=
  canonical_of_padded canonicalInput26087 canonicalOutput26087 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26088 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 0, -3, 3]]⟩

def canonicalOutput26088 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound26088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26088.moment H = canonicalOutput26088.moment H :=
  canonical_of_padded canonicalInput26088 canonicalOutput26088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26089 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput26089 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node734⟩

theorem canonicalSound26089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26089.moment H = canonicalOutput26089.moment H :=
  canonical_of_padded canonicalInput26089 canonicalOutput26089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26090 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 2, -4, 2], ![0, -1, 1, 0]]⟩

def canonicalOutput26090 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound26090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26090.moment H = canonicalOutput26090.moment H :=
  canonical_of_padded canonicalInput26090 canonicalOutput26090 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26091 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![-1, 1, -3, 3], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput26091 : ExponentCode := normalNode10970

theorem canonicalSound26091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26091.moment H = canonicalOutput26091.moment H :=
  canonical_of_padded canonicalInput26091 canonicalOutput26091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26092 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput26092 : ExponentCode := normalNode11036

theorem canonicalSound26092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26092.moment H = canonicalOutput26092.moment H :=
  canonical_of_padded canonicalInput26092 canonicalOutput26092 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26093 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![-1, 2, -4, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput26093 : ExponentCode := normalNode9113

theorem canonicalSound26093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26093.moment H = canonicalOutput26093.moment H :=
  canonical_of_padded canonicalInput26093 canonicalOutput26093 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26094 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![-1, 2, -3, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput26094 : ExponentCode := normalNode7409

theorem canonicalSound26094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26094.moment H = canonicalOutput26094.moment H :=
  canonical_of_padded canonicalInput26094 canonicalOutput26094 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26095 : ExponentCode := ⟨3, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 1, -4, 3]]⟩

def canonicalOutput26095 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound26095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26095.moment H = canonicalOutput26095.moment H :=
  canonical_of_padded canonicalInput26095 canonicalOutput26095 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26096 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 1, -3, 2], ![-1, 1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput26096 : ExponentCode := normalNode11095

theorem canonicalSound26096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26096.moment H = canonicalOutput26096.moment H :=
  canonical_of_padded canonicalInput26096 canonicalOutput26096 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26097 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 1, -3, 2], ![0, 1, -1, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput26097 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node865⟩

theorem canonicalSound26097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26097.moment H = canonicalOutput26097.moment H :=
  canonical_of_padded canonicalInput26097 canonicalOutput26097 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26098 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -1, -2, 2]]⟩

def canonicalOutput26098 : ExponentCode := normalNode11036

theorem canonicalSound26098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26098.moment H = canonicalOutput26098.moment H :=
  canonical_of_padded canonicalInput26098 canonicalOutput26098 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26099 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, -2, 3]]⟩

def canonicalOutput26099 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node865⟩

theorem canonicalSound26099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26099.moment H = canonicalOutput26099.moment H :=
  canonical_of_padded canonicalInput26099 canonicalOutput26099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26100 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 2, -4, 2], ![0, -1, 0, 1]]⟩

def canonicalOutput26100 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSound26100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26100.moment H = canonicalOutput26100.moment H :=
  canonical_of_padded canonicalInput26100 canonicalOutput26100 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26101 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 2, -3, 1], ![0, -1, -1, 2]]⟩

def canonicalOutput26101 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound26101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26101.moment H = canonicalOutput26101.moment H :=
  canonical_of_padded canonicalInput26101 canonicalOutput26101 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26102 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput26102 : ExponentCode := normalNode9973

theorem canonicalSound26102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26102.moment H = canonicalOutput26102.moment H :=
  canonical_of_padded canonicalInput26102 canonicalOutput26102 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26103 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput26103 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node259⟩

theorem canonicalSound26103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26103.moment H = canonicalOutput26103.moment H :=
  canonical_of_padded canonicalInput26103 canonicalOutput26103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26104 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, -2, 1], ![-1, 1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput26104 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound26104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26104.moment H = canonicalOutput26104.moment H :=
  canonical_of_padded canonicalInput26104 canonicalOutput26104 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26105 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput26105 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound26105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26105.moment H = canonicalOutput26105.moment H :=
  canonical_of_padded canonicalInput26105 canonicalOutput26105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26106 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput26106 : ExponentCode := normalNode9428

theorem canonicalSound26106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26106.moment H = canonicalOutput26106.moment H :=
  canonical_of_padded canonicalInput26106 canonicalOutput26106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26107 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput26107 : ExponentCode := normalNode8806

theorem canonicalSound26107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26107.moment H = canonicalOutput26107.moment H :=
  canonical_of_padded canonicalInput26107 canonicalOutput26107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26108 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput26108 : ExponentCode := normalNode9618

theorem canonicalSound26108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26108.moment H = canonicalOutput26108.moment H :=
  canonical_of_padded canonicalInput26108 canonicalOutput26108 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26109 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput26109 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound26109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26109.moment H = canonicalOutput26109.moment H :=
  canonical_of_padded canonicalInput26109 canonicalOutput26109 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26110 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput26110 : ExponentCode := normalNode6934

theorem canonicalSound26110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26110.moment H = canonicalOutput26110.moment H :=
  canonical_of_padded canonicalInput26110 canonicalOutput26110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26111 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput26111 : ExponentCode := normalNode10614

theorem canonicalSound26111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26111.moment H = canonicalOutput26111.moment H :=
  canonical_of_padded canonicalInput26111 canonicalOutput26111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation243, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

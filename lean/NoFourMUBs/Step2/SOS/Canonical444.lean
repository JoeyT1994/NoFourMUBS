import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28416 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -2, 2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput28416 : ExponentCode := normalNode833

theorem canonicalSound28416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28416.moment H = canonicalOutput28416.moment H :=
  canonical_of_padded canonicalInput28416 canonicalOutput28416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28417 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput28417 : ExponentCode := normalNode7015

theorem canonicalSound28417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28417.moment H = canonicalOutput28417.moment H :=
  canonical_of_padded canonicalInput28417 canonicalOutput28417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28418 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28418 : ExponentCode := normalNode4968

theorem canonicalSound28418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28418.moment H = canonicalOutput28418.moment H :=
  canonical_of_padded canonicalInput28418 canonicalOutput28418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28419 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28419 : ExponentCode := normalNode2680

theorem canonicalSound28419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28419.moment H = canonicalOutput28419.moment H :=
  canonical_of_padded canonicalInput28419 canonicalOutput28419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28420 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28420 : ExponentCode := normalNode634

theorem canonicalSound28420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28420.moment H = canonicalOutput28420.moment H :=
  canonical_of_padded canonicalInput28420 canonicalOutput28420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28421 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput28421 : ExponentCode := normalNode10524

theorem canonicalSound28421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28421.moment H = canonicalOutput28421.moment H :=
  canonical_of_padded canonicalInput28421 canonicalOutput28421 (by decide) (by decide)
    ⟨false, true, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28422 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput28422 : ExponentCode := normalNode5485

theorem canonicalSound28422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28422.moment H = canonicalOutput28422.moment H :=
  canonical_of_padded canonicalInput28422 canonicalOutput28422 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28423 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput28423 : ExponentCode := normalNode9015

theorem canonicalSound28423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28423.moment H = canonicalOutput28423.moment H :=
  canonical_of_padded canonicalInput28423 canonicalOutput28423 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28424 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28424 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3224⟩

theorem canonicalSound28424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28424.moment H = canonicalOutput28424.moment H :=
  canonical_of_padded canonicalInput28424 canonicalOutput28424 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28425 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28425 : ExponentCode := normalNode5787

theorem canonicalSound28425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28425.moment H = canonicalOutput28425.moment H :=
  canonical_of_padded canonicalInput28425 canonicalOutput28425 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28426 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput28426 : ExponentCode := normalNode10712

theorem canonicalSound28426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28426.moment H = canonicalOutput28426.moment H :=
  canonical_of_padded canonicalInput28426 canonicalOutput28426 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation224, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28427 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput28427 : ExponentCode := normalNode2959

theorem canonicalSound28427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28427.moment H = canonicalOutput28427.moment H :=
  canonical_of_padded canonicalInput28427 canonicalOutput28427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28428 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![-1, 0, -1, 2], ![2, -2, 3, -3]]⟩

def canonicalOutput28428 : ExponentCode := normalNode5748

theorem canonicalSound28428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28428.moment H = canonicalOutput28428.moment H :=
  canonical_of_padded canonicalInput28428 canonicalOutput28428 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28429 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![2, -1, -2, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput28429 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3245⟩

theorem canonicalSound28429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28429.moment H = canonicalOutput28429.moment H :=
  canonical_of_padded canonicalInput28429 canonicalOutput28429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28430 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput28430 : ExponentCode := normalNode11196

theorem canonicalSound28430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28430.moment H = canonicalOutput28430.moment H :=
  canonical_of_padded canonicalInput28430 canonicalOutput28430 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28431 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, -2, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput28431 : ExponentCode := normalNode6982

theorem canonicalSound28431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28431.moment H = canonicalOutput28431.moment H :=
  canonical_of_padded canonicalInput28431 canonicalOutput28431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28432 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -2, -1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28432 : ExponentCode := normalNode11196

theorem canonicalSound28432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28432.moment H = canonicalOutput28432.moment H :=
  canonical_of_padded canonicalInput28432 canonicalOutput28432 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28433 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, 0, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28433 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩

theorem canonicalSound28433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28433.moment H = canonicalOutput28433.moment H :=
  canonical_of_padded canonicalInput28433 canonicalOutput28433 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28434 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput28434 : ExponentCode := normalNode2628

theorem canonicalSound28434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28434.moment H = canonicalOutput28434.moment H :=
  canonical_of_padded canonicalInput28434 canonicalOutput28434 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28435 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, -1, 2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput28435 : ExponentCode := normalNode2727

theorem canonicalSound28435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28435.moment H = canonicalOutput28435.moment H :=
  canonical_of_padded canonicalInput28435 canonicalOutput28435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28436 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28436 : ExponentCode := normalNode4442

theorem canonicalSound28436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28436.moment H = canonicalOutput28436.moment H :=
  canonical_of_padded canonicalInput28436 canonicalOutput28436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28437 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28437 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3098⟩

theorem canonicalSound28437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28437.moment H = canonicalOutput28437.moment H :=
  canonical_of_padded canonicalInput28437 canonicalOutput28437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28438 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 1, 2, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28438 : ExponentCode := normalNode2467

theorem canonicalSound28438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28438.moment H = canonicalOutput28438.moment H :=
  canonical_of_padded canonicalInput28438 canonicalOutput28438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28439 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput28439 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3118⟩

theorem canonicalSound28439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28439.moment H = canonicalOutput28439.moment H :=
  canonical_of_padded canonicalInput28439 canonicalOutput28439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28440 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 0, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28440 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2997⟩

theorem canonicalSound28440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28440.moment H = canonicalOutput28440.moment H :=
  canonical_of_padded canonicalInput28440 canonicalOutput28440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28441 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28441 : ExponentCode := normalNode632

theorem canonicalSound28441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28441.moment H = canonicalOutput28441.moment H :=
  canonical_of_padded canonicalInput28441 canonicalOutput28441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28442 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28442 : ExponentCode := normalNode584

theorem canonicalSound28442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28442.moment H = canonicalOutput28442.moment H :=
  canonical_of_padded canonicalInput28442 canonicalOutput28442 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28443 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput28443 : ExponentCode := normalNode2629

theorem canonicalSound28443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28443.moment H = canonicalOutput28443.moment H :=
  canonical_of_padded canonicalInput28443 canonicalOutput28443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28444 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput28444 : ExponentCode := normalNode2954

theorem canonicalSound28444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28444.moment H = canonicalOutput28444.moment H :=
  canonical_of_padded canonicalInput28444 canonicalOutput28444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28445 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![2, -2, 3, -3]]⟩

def canonicalOutput28445 : ExponentCode := normalNode3565

theorem canonicalSound28445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28445.moment H = canonicalOutput28445.moment H :=
  canonical_of_padded canonicalInput28445 canonicalOutput28445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28446 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput28446 : ExponentCode := normalNode836

theorem canonicalSound28446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28446.moment H = canonicalOutput28446.moment H :=
  canonical_of_padded canonicalInput28446 canonicalOutput28446 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28447 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput28447 : ExponentCode := normalNode2954

theorem canonicalSound28447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28447.moment H = canonicalOutput28447.moment H :=
  canonical_of_padded canonicalInput28447 canonicalOutput28447 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28448 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput28448 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3168⟩

theorem canonicalSound28448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28448.moment H = canonicalOutput28448.moment H :=
  canonical_of_padded canonicalInput28448 canonicalOutput28448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28449 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![2, -3, 1, 0]]⟩

def canonicalOutput28449 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2996⟩

theorem canonicalSound28449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28449.moment H = canonicalOutput28449.moment H :=
  canonical_of_padded canonicalInput28449 canonicalOutput28449 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28450 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -3, 0, 1]]⟩

def canonicalOutput28450 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3135⟩

theorem canonicalSound28450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28450.moment H = canonicalOutput28450.moment H :=
  canonical_of_padded canonicalInput28450 canonicalOutput28450 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28451 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28451 : ExponentCode := normalNode10319

theorem canonicalSound28451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28451.moment H = canonicalOutput28451.moment H :=
  canonical_of_padded canonicalInput28451 canonicalOutput28451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28452 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput28452 : ExponentCode := normalNode7459

theorem canonicalSound28452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28452.moment H = canonicalOutput28452.moment H :=
  canonical_of_padded canonicalInput28452 canonicalOutput28452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28453 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -2, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput28453 : ExponentCode := normalNode3282

theorem canonicalSound28453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28453.moment H = canonicalOutput28453.moment H :=
  canonical_of_padded canonicalInput28453 canonicalOutput28453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28454 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-2, -1, 4, -1]]⟩

def canonicalOutput28454 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2925⟩

theorem canonicalSound28454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28454.moment H = canonicalOutput28454.moment H :=
  canonical_of_padded canonicalInput28454 canonicalOutput28454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28455 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -1, 0], ![-2, -1, 3, 0]]⟩

def canonicalOutput28455 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2996⟩

theorem canonicalSound28455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28455.moment H = canonicalOutput28455.moment H :=
  canonical_of_padded canonicalInput28455 canonicalOutput28455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28456 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput28456 : ExponentCode := normalNode2954

theorem canonicalSound28456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28456.moment H = canonicalOutput28456.moment H :=
  canonical_of_padded canonicalInput28456 canonicalOutput28456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28457 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -2, 3, 1]]⟩

def canonicalOutput28457 : ExponentCode := normalNode631

theorem canonicalSound28457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28457.moment H = canonicalOutput28457.moment H :=
  canonical_of_padded canonicalInput28457 canonicalOutput28457 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28458 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28458 : ExponentCode := normalNode836

theorem canonicalSound28458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28458.moment H = canonicalOutput28458.moment H :=
  canonical_of_padded canonicalInput28458 canonicalOutput28458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28459 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -2, 0, 2]]⟩

def canonicalOutput28459 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node562⟩

theorem canonicalSound28459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28459.moment H = canonicalOutput28459.moment H :=
  canonical_of_padded canonicalInput28459 canonicalOutput28459 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28460 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput28460 : ExponentCode := normalNode2955

theorem canonicalSound28460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28460.moment H = canonicalOutput28460.moment H :=
  canonical_of_padded canonicalInput28460 canonicalOutput28460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28461 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput28461 : ExponentCode := normalNode5485

theorem canonicalSound28461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28461.moment H = canonicalOutput28461.moment H :=
  canonical_of_padded canonicalInput28461 canonicalOutput28461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28462 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 0, -2], ![-2, -1, 3, 0]]⟩

def canonicalOutput28462 : ExponentCode := normalNode1998

theorem canonicalSound28462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28462.moment H = canonicalOutput28462.moment H :=
  canonical_of_padded canonicalInput28462 canonicalOutput28462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28463 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput28463 : ExponentCode := normalNode5188

theorem canonicalSound28463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28463.moment H = canonicalOutput28463.moment H :=
  canonical_of_padded canonicalInput28463 canonicalOutput28463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28464 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28464 : ExponentCode := normalNode2417

theorem canonicalSound28464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28464.moment H = canonicalOutput28464.moment H :=
  canonical_of_padded canonicalInput28464 canonicalOutput28464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28465 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28465 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2999⟩

theorem canonicalSound28465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28465.moment H = canonicalOutput28465.moment H :=
  canonical_of_padded canonicalInput28465 canonicalOutput28465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28466 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28466 : ExponentCode := normalNode2956

theorem canonicalSound28466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28466.moment H = canonicalOutput28466.moment H :=
  canonical_of_padded canonicalInput28466 canonicalOutput28466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28467 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -2, 1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28467 : ExponentCode := normalNode583

theorem canonicalSound28467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28467.moment H = canonicalOutput28467.moment H :=
  canonical_of_padded canonicalInput28467 canonicalOutput28467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28468 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -2, 2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput28468 : ExponentCode := normalNode834

theorem canonicalSound28468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28468.moment H = canonicalOutput28468.moment H :=
  canonical_of_padded canonicalInput28468 canonicalOutput28468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28469 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput28469 : ExponentCode := normalNode7016

theorem canonicalSound28469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28469.moment H = canonicalOutput28469.moment H :=
  canonical_of_padded canonicalInput28469 canonicalOutput28469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28470 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput28470 : ExponentCode := normalNode10635

theorem canonicalSound28470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28470.moment H = canonicalOutput28470.moment H :=
  canonical_of_padded canonicalInput28470 canonicalOutput28470 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28471 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28471 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3243⟩

theorem canonicalSound28471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28471.moment H = canonicalOutput28471.moment H :=
  canonical_of_padded canonicalInput28471 canonicalOutput28471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28472 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28472 : ExponentCode := normalNode2394

theorem canonicalSound28472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28472.moment H = canonicalOutput28472.moment H :=
  canonical_of_padded canonicalInput28472 canonicalOutput28472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28473 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput28473 : ExponentCode := normalNode6987

theorem canonicalSound28473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28473.moment H = canonicalOutput28473.moment H :=
  canonical_of_padded canonicalInput28473 canonicalOutput28473 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28474 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28474 : ExponentCode := normalNode634

theorem canonicalSound28474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28474.moment H = canonicalOutput28474.moment H :=
  canonical_of_padded canonicalInput28474 canonicalOutput28474 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28475 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28475 : ExponentCode := normalNode5187

theorem canonicalSound28475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28475.moment H = canonicalOutput28475.moment H :=
  canonical_of_padded canonicalInput28475 canonicalOutput28475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28476 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -3, 3, -1]]⟩

def canonicalOutput28476 : ExponentCode := normalNode2416

theorem canonicalSound28476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28476.moment H = canonicalOutput28476.moment H :=
  canonical_of_padded canonicalInput28476 canonicalOutput28476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28477 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, -3, 2, 0]]⟩

def canonicalOutput28477 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2970⟩

theorem canonicalSound28477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28477.moment H = canonicalOutput28477.moment H :=
  canonical_of_padded canonicalInput28477 canonicalOutput28477 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28478 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28478 : ExponentCode := normalNode5074

theorem canonicalSound28478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28478.moment H = canonicalOutput28478.moment H :=
  canonical_of_padded canonicalInput28478 canonicalOutput28478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28479 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput28479 : ExponentCode := normalNode10600

theorem canonicalSound28479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28479.moment H = canonicalOutput28479.moment H :=
  canonical_of_padded canonicalInput28479 canonicalOutput28479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

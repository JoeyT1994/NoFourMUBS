import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21440 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 0, -1, -1, 1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21440 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound21440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21440.moment H = canonicalOutput21440.moment H :=
  canonical_of_padded canonicalInput21440 canonicalOutput21440 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21441 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 0, 0, -2, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput21441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1998⟩

theorem canonicalSound21441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21441.moment H = canonicalOutput21441.moment H :=
  canonical_of_padded canonicalInput21441 canonicalOutput21441 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21442 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 1, -2, 1, -1], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput21442 : ExponentCode := normalNode3376

theorem canonicalSound21442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21442.moment H = canonicalOutput21442.moment H :=
  canonical_of_padded canonicalInput21442 canonicalOutput21442 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21443 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 1, -1, 0, -1], ![0, 1, -1, -2, 2]]⟩

def canonicalOutput21443 : ExponentCode := normalNode3790

theorem canonicalSound21443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21443.moment H = canonicalOutput21443.moment H :=
  canonical_of_padded canonicalInput21443 canonicalOutput21443 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21444 : ExponentCode := ⟨3, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput21444 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node641⟩

theorem canonicalSound21444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21444.moment H = canonicalOutput21444.moment H :=
  canonical_of_padded canonicalInput21444 canonicalOutput21444 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21445 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![2, -1, 0, -1, 0], ![-1, 3, -2, -1, 1]]⟩

def canonicalOutput21445 : ExponentCode := normalNode1827

theorem canonicalSound21445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21445.moment H = canonicalOutput21445.moment H :=
  canonical_of_padded canonicalInput21445 canonicalOutput21445 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21446 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![3, -1, 0, -1, -1], ![-2, 3, -2, -1, 2]]⟩

def canonicalOutput21446 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code769

theorem canonicalSound21446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21446.moment H = canonicalOutput21446.moment H :=
  canonical_of_padded canonicalInput21446 canonicalOutput21446 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21447 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, -1, 3], ![0, -1, 2, -1, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21447 : ExponentCode := normalNode4518

theorem canonicalSound21447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21447.moment H = canonicalOutput21447.moment H :=
  canonical_of_padded canonicalInput21447 canonicalOutput21447 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21448 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, -1, 3], ![1, -1, 2, -1, -1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput21448 : ExponentCode := normalNode4211

theorem canonicalSound21448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21448.moment H = canonicalOutput21448.moment H :=
  canonical_of_padded canonicalInput21448 canonicalOutput21448 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21449 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 0, 2], ![0, 2, 1, -1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21449 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound21449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21449.moment H = canonicalOutput21449.moment H :=
  canonical_of_padded canonicalInput21449 canonicalOutput21449 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput21450 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 0, 2], ![0, 2, 2, -2, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput21450 : ExponentCode := normalNode2426

theorem canonicalSound21450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21450.moment H = canonicalOutput21450.moment H :=
  canonical_of_padded canonicalInput21450 canonicalOutput21450 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput21451 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![-1, -1, 2, -1, 1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput21451 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code600

theorem canonicalSound21451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21451.moment H = canonicalOutput21451.moment H :=
  canonical_of_padded canonicalInput21451 canonicalOutput21451 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21452 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![0, -1, 2, -2, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21452 : ExponentCode := normalNode2809

theorem canonicalSound21452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21452.moment H = canonicalOutput21452.moment H :=
  canonical_of_padded canonicalInput21452 canonicalOutput21452 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21453 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21453 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound21453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21453.moment H = canonicalOutput21453.moment H :=
  canonical_of_padded canonicalInput21453 canonicalOutput21453 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21454 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![0, -1, 2, 0, -1], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput21454 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1711⟩

theorem canonicalSound21454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21454.moment H = canonicalOutput21454.moment H :=
  canonical_of_padded canonicalInput21454 canonicalOutput21454 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21455 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![1, -1, 2, -2, 0], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21455 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound21455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21455.moment H = canonicalOutput21455.moment H :=
  canonical_of_padded canonicalInput21455 canonicalOutput21455 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21456 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![1, -1, 2, 0, -2], ![0, 2, -1, -3, 2]]⟩

def canonicalOutput21456 : ExponentCode := normalNode2097

theorem canonicalSound21456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21456.moment H = canonicalOutput21456.moment H :=
  canonical_of_padded canonicalInput21456 canonicalOutput21456 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21457 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 2, 0], ![-1, -1, 2, -2, 2], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput21457 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound21457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21457.moment H = canonicalOutput21457.moment H :=
  canonical_of_padded canonicalInput21457 canonicalOutput21457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21458 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 2, 0], ![0, -1, 2, -2, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21458 : ExponentCode := normalNode932

theorem canonicalSound21458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21458.moment H = canonicalOutput21458.moment H :=
  canonical_of_padded canonicalInput21458 canonicalOutput21458 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21459 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput21459 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound21459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21459.moment H = canonicalOutput21459.moment H :=
  canonical_of_padded canonicalInput21459 canonicalOutput21459 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21460 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, -1, 2, 0], ![1, -1, 2, -1, -1], ![0, 2, -1, -3, 2]]⟩

def canonicalOutput21460 : ExponentCode := normalNode700

theorem canonicalSound21460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21460.moment H = canonicalOutput21460.moment H :=
  canonical_of_padded canonicalInput21460 canonicalOutput21460 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21461 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 0, -1, 2], ![0, 2, 1, -1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput21461 : ExponentCode := normalNode2507

theorem canonicalSound21461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21461.moment H = canonicalOutput21461.moment H :=
  canonical_of_padded canonicalInput21461 canonicalOutput21461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput21462 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 0, -1, 2], ![0, 3, -2, 0, -1], ![1, -2, 2, -1, 0]]⟩

def canonicalOutput21462 : ExponentCode := normalNode5474

theorem canonicalSound21462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21462.moment H = canonicalOutput21462.moment H :=
  canonical_of_padded canonicalInput21462 canonicalOutput21462 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21463 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![-2, 3, -2, 0, 1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput21463 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1170

theorem canonicalSound21463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21463.moment H = canonicalOutput21463.moment H :=
  canonical_of_padded canonicalInput21463 canonicalOutput21463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21464 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![-1, 2, -2, -1, 2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput21464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1164

theorem canonicalSound21464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21464.moment H = canonicalOutput21464.moment H :=
  canonical_of_padded canonicalInput21464 canonicalOutput21464 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21465 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![-1, 3, -2, 0, 0], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput21465 : ExponentCode := normalNode5430

theorem canonicalSound21465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21465.moment H = canonicalOutput21465.moment H :=
  canonical_of_padded canonicalInput21465 canonicalOutput21465 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21466 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![0, -1, 1, 0, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21466 : ExponentCode := normalNode8968

theorem canonicalSound21466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21466.moment H = canonicalOutput21466.moment H :=
  canonical_of_padded canonicalInput21466 canonicalOutput21466 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput21467 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput21467 : ExponentCode := normalNode7548

theorem canonicalSound21467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21467.moment H = canonicalOutput21467.moment H :=
  canonical_of_padded canonicalInput21467 canonicalOutput21467 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput21468 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![0, 2, -2, -1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21468 : ExponentCode := normalNode4307

theorem canonicalSound21468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21468.moment H = canonicalOutput21468.moment H :=
  canonical_of_padded canonicalInput21468 canonicalOutput21468 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21469 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![0, 3, -2, 0, -1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput21469 : ExponentCode := normalNode5431

theorem canonicalSound21469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21469.moment H = canonicalOutput21469.moment H :=
  canonical_of_padded canonicalInput21469 canonicalOutput21469 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21470 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![1, -1, 1, 0, -1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput21470 : ExponentCode := normalNode4307

theorem canonicalSound21470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21470.moment H = canonicalOutput21470.moment H :=
  canonical_of_padded canonicalInput21470 canonicalOutput21470 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21471 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![-1, 2, -1, 0, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput21471 : ExponentCode := normalNode4212

theorem canonicalSound21471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21471.moment H = canonicalOutput21471.moment H :=
  canonical_of_padded canonicalInput21471 canonicalOutput21471 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21472 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![-1, 2, 0, -1, 0], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput21472 : ExponentCode := normalNode4090

theorem canonicalSound21472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21472.moment H = canonicalOutput21472.moment H :=
  canonical_of_padded canonicalInput21472 canonicalOutput21472 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21473 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![0, -1, -1, -1, 3], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21473 : ExponentCode := normalNode4518

theorem canonicalSound21473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21473.moment H = canonicalOutput21473.moment H :=
  canonical_of_padded canonicalInput21473 canonicalOutput21473 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21474 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![0, -1, -1, 0, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21474 : ExponentCode := normalNode4498

theorem canonicalSound21474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21474.moment H = canonicalOutput21474.moment H :=
  canonical_of_padded canonicalInput21474 canonicalOutput21474 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput21475 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput21475 : ExponentCode := normalNode4212

theorem canonicalSound21475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21475.moment H = canonicalOutput21475.moment H :=
  canonical_of_padded canonicalInput21475 canonicalOutput21475 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21476 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput21476 : ExponentCode := normalNode4090

theorem canonicalSound21476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21476.moment H = canonicalOutput21476.moment H :=
  canonical_of_padded canonicalInput21476 canonicalOutput21476 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21477 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![1, -1, -1, -1, 2], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput21477 : ExponentCode := normalNode4212

theorem canonicalSound21477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21477.moment H = canonicalOutput21477.moment H :=
  canonical_of_padded canonicalInput21477 canonicalOutput21477 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21478 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, -1, 0], ![1, -1, -1, 0, 1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21478 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound21478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21478.moment H = canonicalOutput21478.moment H :=
  canonical_of_padded canonicalInput21478 canonicalOutput21478 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21479 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![-1, -1, -1, -1, 4], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput21479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound21479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21479.moment H = canonicalOutput21479.moment H :=
  canonical_of_padded canonicalInput21479 canonicalOutput21479 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21480 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![-1, 2, -1, 0, 0], ![2, -1, -1, -2, 2]]⟩

def canonicalOutput21480 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code850

theorem canonicalSound21480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21480.moment H = canonicalOutput21480.moment H :=
  canonical_of_padded canonicalInput21480 canonicalOutput21480 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21481 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, -1, -2, 1, 2], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput21481 : ExponentCode := normalNode3374

theorem canonicalSound21481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21481.moment H = canonicalOutput21481.moment H :=
  canonical_of_padded canonicalInput21481 canonicalOutput21481 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21482 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, -1, -1, -1, 3], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21482 : ExponentCode := normalNode4211

theorem canonicalSound21482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21482.moment H = canonicalOutput21482.moment H :=
  canonical_of_padded canonicalInput21482 canonicalOutput21482 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21483 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, -1, -1, 0, 2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21483 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound21483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21483.moment H = canonicalOutput21483.moment H :=
  canonical_of_padded canonicalInput21483 canonicalOutput21483 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21484 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, -1, 0, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21484 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound21484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21484.moment H = canonicalOutput21484.moment H :=
  canonical_of_padded canonicalInput21484 canonicalOutput21484 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21485 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput21485 : ExponentCode := normalNode4212

theorem canonicalSound21485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21485.moment H = canonicalOutput21485.moment H :=
  canonical_of_padded canonicalInput21485 canonicalOutput21485 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21486 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput21486 : ExponentCode := normalNode3768

theorem canonicalSound21486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21486.moment H = canonicalOutput21486.moment H :=
  canonical_of_padded canonicalInput21486 canonicalOutput21486 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21487 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![1, -1, -2, 1, 1], ![0, 2, 0, -3, 1]]⟩

def canonicalOutput21487 : ExponentCode := normalNode3373

theorem canonicalSound21487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21487.moment H = canonicalOutput21487.moment H :=
  canonical_of_padded canonicalInput21487 canonicalOutput21487 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21488 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![1, -1, -1, -1, 2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21488 : ExponentCode := normalNode4212

theorem canonicalSound21488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21488.moment H = canonicalOutput21488.moment H :=
  canonical_of_padded canonicalInput21488 canonicalOutput21488 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21489 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![1, -1, -1, 0, 1], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput21489 : ExponentCode := normalNode3784

theorem canonicalSound21489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21489.moment H = canonicalOutput21489.moment H :=
  canonical_of_padded canonicalInput21489 canonicalOutput21489 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21490 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![1, -1, 0, -1, 1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput21490 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound21490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21490.moment H = canonicalOutput21490.moment H :=
  canonical_of_padded canonicalInput21490 canonicalOutput21490 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21491 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput21491 : ExponentCode := normalNode2371

theorem canonicalSound21491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21491.moment H = canonicalOutput21491.moment H :=
  canonical_of_padded canonicalInput21491 canonicalOutput21491 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21492 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21492 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound21492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21492.moment H = canonicalOutput21492.moment H :=
  canonical_of_padded canonicalInput21492 canonicalOutput21492 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput21493 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, -1, 0, 1], ![0, -1, 1, -1, 1], ![0, 2, 1, -1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput21493 : ExponentCode := normalNode7552

theorem canonicalSound21493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21493.moment H = canonicalOutput21493.moment H :=
  canonical_of_padded canonicalInput21493 canonicalOutput21493 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput21494 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput21494 : ExponentCode := normalNode10127

theorem canonicalSound21494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21494.moment H = canonicalOutput21494.moment H :=
  canonical_of_padded canonicalInput21494 canonicalOutput21494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21495 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 1, -1, -2], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput21495 : ExponentCode := normalNode10784

theorem canonicalSound21495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21495.moment H = canonicalOutput21495.moment H :=
  canonical_of_padded canonicalInput21495 canonicalOutput21495 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput21496 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, -1, 0, 1], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21496 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound21496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21496.moment H = canonicalOutput21496.moment H :=
  canonical_of_padded canonicalInput21496 canonicalOutput21496 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21497 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -2, 2], ![-1, -2, 3, 0, 0], ![2, 2, -3, 0, -1]]⟩

def canonicalOutput21497 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1178

theorem canonicalSound21497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21497.moment H = canonicalOutput21497.moment H :=
  canonical_of_padded canonicalInput21497 canonicalOutput21497 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21498 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -2, 2], ![0, -2, 2, 1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21498 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2273⟩

theorem canonicalSound21498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21498.moment H = canonicalOutput21498.moment H :=
  canonical_of_padded canonicalInput21498 canonicalOutput21498 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21499 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -2, 2], ![0, -2, 3, 0, -1], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput21499 : ExponentCode := normalNode5471

theorem canonicalSound21499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21499.moment H = canonicalOutput21499.moment H :=
  canonical_of_padded canonicalInput21499 canonicalOutput21499 (by decide) (by decide)
    ⟨true, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21500 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput21500 : ExponentCode := normalNode2375

theorem canonicalSound21500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21500.moment H = canonicalOutput21500.moment H :=
  canonical_of_padded canonicalInput21500 canonicalOutput21500 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21501 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21501 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound21501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21501.moment H = canonicalOutput21501.moment H :=
  canonical_of_padded canonicalInput21501 canonicalOutput21501 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput21502 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -1, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput21502 : ExponentCode := normalNode10767

theorem canonicalSound21502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21502.moment H = canonicalOutput21502.moment H :=
  canonical_of_padded canonicalInput21502 canonicalOutput21502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21503 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 2, -1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput21503 : ExponentCode := normalNode9186

theorem canonicalSound21503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21503.moment H = canonicalOutput21503.moment H :=
  canonical_of_padded canonicalInput21503 canonicalOutput21503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

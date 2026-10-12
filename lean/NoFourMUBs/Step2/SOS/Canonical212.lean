import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13568 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![-2, 3, -2, 1, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput13568 : ExponentCode := normalNode3008

theorem canonicalSound13568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13568.moment H = canonicalOutput13568.moment H :=
  canonical_of_padded canonicalInput13568 canonicalOutput13568 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13569 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![-1, 0, -1, 3, -1], ![0, 1, 1, -3, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput13569 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code31

theorem canonicalSound13569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13569.moment H = canonicalOutput13569.moment H :=
  canonical_of_padded canonicalInput13569 canonicalOutput13569 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13570 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![-1, 1, -2, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput13570 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound13570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13570.moment H = canonicalOutput13570.moment H :=
  canonical_of_padded canonicalInput13570 canonicalOutput13570 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13571 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![-1, 1, -2, 2, 0], ![2, 1, 1, -3, -1]]⟩

def canonicalOutput13571 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound13571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13571.moment H = canonicalOutput13571.moment H :=
  canonical_of_padded canonicalInput13571 canonicalOutput13571 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13572 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![-1, 1, 1, 1, -2], ![0, 1, -3, 1, 1], ![2, 0, 1, -3, 0]]⟩

def canonicalOutput13572 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code64

theorem canonicalSound13572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13572.moment H = canonicalOutput13572.moment H :=
  canonical_of_padded canonicalInput13572 canonicalOutput13572 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13573 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![-1, 1, 1, 1, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput13573 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound13573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13573.moment H = canonicalOutput13573.moment H :=
  canonical_of_padded canonicalInput13573 canonicalOutput13573 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13574 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![-1, 2, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput13574 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound13574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13574.moment H = canonicalOutput13574.moment H :=
  canonical_of_padded canonicalInput13574 canonicalOutput13574 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13575 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![-1, 3, -2, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput13575 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound13575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13575.moment H = canonicalOutput13575.moment H :=
  canonical_of_padded canonicalInput13575 canonicalOutput13575 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13576 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, -1, 1, 1, -1], ![2, 0, -1, 0, -1], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput13576 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code974

theorem canonicalSound13576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13576.moment H = canonicalOutput13576.moment H :=
  canonical_of_padded canonicalInput13576 canonicalOutput13576 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13577 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13577 : ExponentCode := normalNode8623

theorem canonicalSound13577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13577.moment H = canonicalOutput13577.moment H :=
  canonical_of_padded canonicalInput13577 canonicalOutput13577 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput13578 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13578 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound13578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13578.moment H = canonicalOutput13578.moment H :=
  canonical_of_padded canonicalInput13578 canonicalOutput13578 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13579 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13579 : ExponentCode := normalNode2932

theorem canonicalSound13579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13579.moment H = canonicalOutput13579.moment H :=
  canonical_of_padded canonicalInput13579 canonicalOutput13579 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13580 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13580 : ExponentCode := normalNode10068

theorem canonicalSound13580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13580.moment H = canonicalOutput13580.moment H :=
  canonical_of_padded canonicalInput13580 canonicalOutput13580 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput13581 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput13581 : ExponentCode := normalNode4466

theorem canonicalSound13581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13581.moment H = canonicalOutput13581.moment H :=
  canonical_of_padded canonicalInput13581 canonicalOutput13581 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13582 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13582 : ExponentCode := normalNode8322

theorem canonicalSound13582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13582.moment H = canonicalOutput13582.moment H :=
  canonical_of_padded canonicalInput13582 canonicalOutput13582 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13583 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13583 : ExponentCode := normalNode10042

theorem canonicalSound13583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13583.moment H = canonicalOutput13583.moment H :=
  canonical_of_padded canonicalInput13583 canonicalOutput13583 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput13584 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13584 : ExponentCode := normalNode8319

theorem canonicalSound13584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13584.moment H = canonicalOutput13584.moment H :=
  canonical_of_padded canonicalInput13584 canonicalOutput13584 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13585 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13585 : ExponentCode := normalNode10042

theorem canonicalSound13585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13585.moment H = canonicalOutput13585.moment H :=
  canonical_of_padded canonicalInput13585 canonicalOutput13585 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput13586 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13586 : ExponentCode := normalNode8615

theorem canonicalSound13586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13586.moment H = canonicalOutput13586.moment H :=
  canonical_of_padded canonicalInput13586 canonicalOutput13586 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput13587 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput13587 : ExponentCode := normalNode4212

theorem canonicalSound13587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13587.moment H = canonicalOutput13587.moment H :=
  canonical_of_padded canonicalInput13587 canonicalOutput13587 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13588 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13588 : ExponentCode := normalNode10042

theorem canonicalSound13588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13588.moment H = canonicalOutput13588.moment H :=
  canonical_of_padded canonicalInput13588 canonicalOutput13588 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput13589 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13589 : ExponentCode := normalNode4560

theorem canonicalSound13589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13589.moment H = canonicalOutput13589.moment H :=
  canonical_of_padded canonicalInput13589 canonicalOutput13589 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13590 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput13590 : ExponentCode := normalNode4212

theorem canonicalSound13590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13590.moment H = canonicalOutput13590.moment H :=
  canonical_of_padded canonicalInput13590 canonicalOutput13590 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13591 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 0, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13591 : ExponentCode := normalNode3873

theorem canonicalSound13591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13591.moment H = canonicalOutput13591.moment H :=
  canonical_of_padded canonicalInput13591 canonicalOutput13591 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13592 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -2, 1, 1], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13592 : ExponentCode := normalNode4212

theorem canonicalSound13592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13592.moment H = canonicalOutput13592.moment H :=
  canonical_of_padded canonicalInput13592 canonicalOutput13592 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13593 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput13593 : ExponentCode := normalNode1296

theorem canonicalSound13593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13593.moment H = canonicalOutput13593.moment H :=
  canonical_of_padded canonicalInput13593 canonicalOutput13593 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13594 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13594 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound13594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13594.moment H = canonicalOutput13594.moment H :=
  canonical_of_padded canonicalInput13594 canonicalOutput13594 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13595 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound13595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13595.moment H = canonicalOutput13595.moment H :=
  canonical_of_padded canonicalInput13595 canonicalOutput13595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13596 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, -1, 2], ![1, 1, -1, -1, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput13596 : ExponentCode := normalNode3457

theorem canonicalSound13596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13596.moment H = canonicalOutput13596.moment H :=
  canonical_of_padded canonicalInput13596 canonicalOutput13596 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13597 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13597 : ExponentCode := normalNode10173

theorem canonicalSound13597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13597.moment H = canonicalOutput13597.moment H :=
  canonical_of_padded canonicalInput13597 canonicalOutput13597 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput13598 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13598 : ExponentCode := normalNode9994

theorem canonicalSound13598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13598.moment H = canonicalOutput13598.moment H :=
  canonical_of_padded canonicalInput13598 canonicalOutput13598 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput13599 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13599 : ExponentCode := normalNode8619

theorem canonicalSound13599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13599.moment H = canonicalOutput13599.moment H :=
  canonical_of_padded canonicalInput13599 canonicalOutput13599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput13600 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13600 : ExponentCode := normalNode8328

theorem canonicalSound13600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13600.moment H = canonicalOutput13600.moment H :=
  canonical_of_padded canonicalInput13600 canonicalOutput13600 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput13601 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13601 : ExponentCode := normalNode8697

theorem canonicalSound13601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13601.moment H = canonicalOutput13601.moment H :=
  canonical_of_padded canonicalInput13601 canonicalOutput13601 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput13602 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput13602 : ExponentCode := normalNode9997

theorem canonicalSound13602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13602.moment H = canonicalOutput13602.moment H :=
  canonical_of_padded canonicalInput13602 canonicalOutput13602 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput13603 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13603 : ExponentCode := normalNode8325

theorem canonicalSound13603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13603.moment H = canonicalOutput13603.moment H :=
  canonical_of_padded canonicalInput13603 canonicalOutput13603 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13604 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13604 : ExponentCode := normalNode10419

theorem canonicalSound13604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13604.moment H = canonicalOutput13604.moment H :=
  canonical_of_padded canonicalInput13604 canonicalOutput13604 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput13605 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13605 : ExponentCode := normalNode9257

theorem canonicalSound13605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13605.moment H = canonicalOutput13605.moment H :=
  canonical_of_padded canonicalInput13605 canonicalOutput13605 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput13606 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput13606 : ExponentCode := normalNode10418

theorem canonicalSound13606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13606.moment H = canonicalOutput13606.moment H :=
  canonical_of_padded canonicalInput13606 canonicalOutput13606 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput13607 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13607 : ExponentCode := normalNode10177

theorem canonicalSound13607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13607.moment H = canonicalOutput13607.moment H :=
  canonical_of_padded canonicalInput13607 canonicalOutput13607 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput13608 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput13608 : ExponentCode := normalNode10178

theorem canonicalSound13608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13608.moment H = canonicalOutput13608.moment H :=
  canonical_of_padded canonicalInput13608 canonicalOutput13608 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput13609 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13609 : ExponentCode := normalNode8614

theorem canonicalSound13609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13609.moment H = canonicalOutput13609.moment H :=
  canonical_of_padded canonicalInput13609 canonicalOutput13609 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput13610 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13610 : ExponentCode := normalNode10177

theorem canonicalSound13610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13610.moment H = canonicalOutput13610.moment H :=
  canonical_of_padded canonicalInput13610 canonicalOutput13610 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput13611 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13611 : ExponentCode := normalNode4212

theorem canonicalSound13611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13611.moment H = canonicalOutput13611.moment H :=
  canonical_of_padded canonicalInput13611 canonicalOutput13611 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13612 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, -2, 1], ![0, 2, -2, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13612 : ExponentCode := normalNode3873

theorem canonicalSound13612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13612.moment H = canonicalOutput13612.moment H :=
  canonical_of_padded canonicalInput13612 canonicalOutput13612 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13613 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13613 : ExponentCode := normalNode7632

theorem canonicalSound13613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13613.moment H = canonicalOutput13613.moment H :=
  canonical_of_padded canonicalInput13613 canonicalOutput13613 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput13614 : ExponentCode := ⟨5, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13614 : ExponentCode := normalNode7617

theorem canonicalSound13614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13614.moment H = canonicalOutput13614.moment H :=
  canonical_of_padded canonicalInput13614 canonicalOutput13614 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput13615 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 1, -2], ![-1, 3, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput13615 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code982

theorem canonicalSound13615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13615.moment H = canonicalOutput13615.moment H :=
  canonical_of_padded canonicalInput13615 canonicalOutput13615 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13616 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -2, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13616 : ExponentCode := normalNode2803

theorem canonicalSound13616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13616.moment H = canonicalOutput13616.moment H :=
  canonical_of_padded canonicalInput13616 canonicalOutput13616 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13617 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13617 : ExponentCode := normalNode4212

theorem canonicalSound13617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13617.moment H = canonicalOutput13617.moment H :=
  canonical_of_padded canonicalInput13617 canonicalOutput13617 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13618 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13618 : ExponentCode := normalNode2716

theorem canonicalSound13618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13618.moment H = canonicalOutput13618.moment H :=
  canonical_of_padded canonicalInput13618 canonicalOutput13618 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13619 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 0, 1, 1, -2], ![2, 0, -1, -1, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput13619 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code988

theorem canonicalSound13619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13619.moment H = canonicalOutput13619.moment H :=
  canonical_of_padded canonicalInput13619 canonicalOutput13619 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13620 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, -1, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13620 : ExponentCode := normalNode2826

theorem canonicalSound13620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13620.moment H = canonicalOutput13620.moment H :=
  canonical_of_padded canonicalInput13620 canonicalOutput13620 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13621 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput13621 : ExponentCode := normalNode4205

theorem canonicalSound13621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13621.moment H = canonicalOutput13621.moment H :=
  canonical_of_padded canonicalInput13621 canonicalOutput13621 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13622 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13622 : ExponentCode := normalNode8991

theorem canonicalSound13622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13622.moment H = canonicalOutput13622.moment H :=
  canonical_of_padded canonicalInput13622 canonicalOutput13622 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13623 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13623 : ExponentCode := normalNode4498

theorem canonicalSound13623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13623.moment H = canonicalOutput13623.moment H :=
  canonical_of_padded canonicalInput13623 canonicalOutput13623 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13624 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13624 : ExponentCode := normalNode4498

theorem canonicalSound13624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13624.moment H = canonicalOutput13624.moment H :=
  canonical_of_padded canonicalInput13624 canonicalOutput13624 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13625 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13625 : ExponentCode := normalNode10529

theorem canonicalSound13625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13625.moment H = canonicalOutput13625.moment H :=
  canonical_of_padded canonicalInput13625 canonicalOutput13625 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13626 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13626 : ExponentCode := normalNode4211

theorem canonicalSound13626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13626.moment H = canonicalOutput13626.moment H :=
  canonical_of_padded canonicalInput13626 canonicalOutput13626 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13627 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13627 : ExponentCode := normalNode4498

theorem canonicalSound13627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13627.moment H = canonicalOutput13627.moment H :=
  canonical_of_padded canonicalInput13627 canonicalOutput13627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13628 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13628 : ExponentCode := normalNode4498

theorem canonicalSound13628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13628.moment H = canonicalOutput13628.moment H :=
  canonical_of_padded canonicalInput13628 canonicalOutput13628 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13629 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput13629 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node710⟩

theorem canonicalSound13629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13629.moment H = canonicalOutput13629.moment H :=
  canonical_of_padded canonicalInput13629 canonicalOutput13629 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13630 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![2, 0, 0, 0, -2], ![-1, 1, 1, -2, 1]]⟩

def canonicalOutput13630 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound13630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13630.moment H = canonicalOutput13630.moment H :=
  canonical_of_padded canonicalInput13630 canonicalOutput13630 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13631 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![2, 0, 0, 1, -3], ![-1, 1, 1, -3, 2]]⟩

def canonicalOutput13631 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code929

theorem canonicalSound13631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13631.moment H = canonicalOutput13631.moment H :=
  canonical_of_padded canonicalInput13631 canonicalOutput13631 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

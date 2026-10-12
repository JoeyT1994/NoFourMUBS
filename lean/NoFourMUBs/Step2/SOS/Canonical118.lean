import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7552 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput7552 : ExponentCode := normalNode4010

theorem canonicalSound7552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7552.moment H = canonicalOutput7552.moment H :=
  canonical_of_padded canonicalInput7552 canonicalOutput7552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7553 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput7553 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound7553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7553.moment H = canonicalOutput7553.moment H :=
  canonical_of_padded canonicalInput7553 canonicalOutput7553 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7554 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7554 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1638⟩

theorem canonicalSound7554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7554.moment H = canonicalOutput7554.moment H :=
  canonical_of_padded canonicalInput7554 canonicalOutput7554 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7555 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7555 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2421⟩

theorem canonicalSound7555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7555.moment H = canonicalOutput7555.moment H :=
  canonical_of_padded canonicalInput7555 canonicalOutput7555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7556 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, -2, 1]]⟩

def canonicalOutput7556 : ExponentCode := normalNode4013

theorem canonicalSound7556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7556.moment H = canonicalOutput7556.moment H :=
  canonical_of_padded canonicalInput7556 canonicalOutput7556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7557 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7557 : ExponentCode := normalNode9856

theorem canonicalSound7557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7557.moment H = canonicalOutput7557.moment H :=
  canonical_of_padded canonicalInput7557 canonicalOutput7557 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7558 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput7558 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound7558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7558.moment H = canonicalOutput7558.moment H :=
  canonical_of_padded canonicalInput7558 canonicalOutput7558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7559 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 1, 1, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput7559 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩

theorem canonicalSound7559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7559.moment H = canonicalOutput7559.moment H :=
  canonical_of_padded canonicalInput7559 canonicalOutput7559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7560 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7560 : ExponentCode := normalNode3490

theorem canonicalSound7560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7560.moment H = canonicalOutput7560.moment H :=
  canonical_of_padded canonicalInput7560 canonicalOutput7560 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7561 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput7561 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound7561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7561.moment H = canonicalOutput7561.moment H :=
  canonical_of_padded canonicalInput7561 canonicalOutput7561 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7562 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7562 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1633⟩

theorem canonicalSound7562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7562.moment H = canonicalOutput7562.moment H :=
  canonical_of_padded canonicalInput7562 canonicalOutput7562 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7563 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput7563 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound7563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7563.moment H = canonicalOutput7563.moment H :=
  canonical_of_padded canonicalInput7563 canonicalOutput7563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput7564 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7564 : ExponentCode := normalNode4019

theorem canonicalSound7564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7564.moment H = canonicalOutput7564.moment H :=
  canonical_of_padded canonicalInput7564 canonicalOutput7564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7565 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, -2, -1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput7565 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code209

theorem canonicalSound7565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7565.moment H = canonicalOutput7565.moment H :=
  canonical_of_padded canonicalInput7565 canonicalOutput7565 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7566 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, -2, 0, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput7566 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code671

theorem canonicalSound7566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7566.moment H = canonicalOutput7566.moment H :=
  canonical_of_padded canonicalInput7566 canonicalOutput7566 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7567 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput7567 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound7567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7567.moment H = canonicalOutput7567.moment H :=
  canonical_of_padded canonicalInput7567 canonicalOutput7567 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput7568 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput7568 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound7568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7568.moment H = canonicalOutput7568.moment H :=
  canonical_of_padded canonicalInput7568 canonicalOutput7568 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7569 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7569 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound7569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7569.moment H = canonicalOutput7569.moment H :=
  canonical_of_padded canonicalInput7569 canonicalOutput7569 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7570 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7570 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound7570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7570.moment H = canonicalOutput7570.moment H :=
  canonical_of_padded canonicalInput7570 canonicalOutput7570 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7571 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7571 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound7571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7571.moment H = canonicalOutput7571.moment H :=
  canonical_of_padded canonicalInput7571 canonicalOutput7571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7572 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput7572 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node938⟩

theorem canonicalSound7572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7572.moment H = canonicalOutput7572.moment H :=
  canonical_of_padded canonicalInput7572 canonicalOutput7572 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7573 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput7573 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node895⟩

theorem canonicalSound7573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7573.moment H = canonicalOutput7573.moment H :=
  canonical_of_padded canonicalInput7573 canonicalOutput7573 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7574 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 1, -4, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput7574 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node895⟩

theorem canonicalSound7574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7574.moment H = canonicalOutput7574.moment H :=
  canonical_of_padded canonicalInput7574 canonicalOutput7574 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7575 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7575 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound7575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7575.moment H = canonicalOutput7575.moment H :=
  canonical_of_padded canonicalInput7575 canonicalOutput7575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7576 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 1, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7576 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound7576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7576.moment H = canonicalOutput7576.moment H :=
  canonical_of_padded canonicalInput7576 canonicalOutput7576 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7577 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput7577 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound7577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7577.moment H = canonicalOutput7577.moment H :=
  canonical_of_padded canonicalInput7577 canonicalOutput7577 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7578 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, 2, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput7578 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound7578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7578.moment H = canonicalOutput7578.moment H :=
  canonical_of_padded canonicalInput7578 canonicalOutput7578 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput7579 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7579 : ExponentCode := normalNode9648

theorem canonicalSound7579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7579.moment H = canonicalOutput7579.moment H :=
  canonical_of_padded canonicalInput7579 canonicalOutput7579 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7580 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput7580 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1164⟩

theorem canonicalSound7580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7580.moment H = canonicalOutput7580.moment H :=
  canonical_of_padded canonicalInput7580 canonicalOutput7580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7581 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, -2, 1]]⟩

def canonicalOutput7581 : ExponentCode := normalNode4641

theorem canonicalSound7581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7581.moment H = canonicalOutput7581.moment H :=
  canonical_of_padded canonicalInput7581 canonicalOutput7581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7582 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7582 : ExponentCode := normalNode4642

theorem canonicalSound7582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7582.moment H = canonicalOutput7582.moment H :=
  canonical_of_padded canonicalInput7582 canonicalOutput7582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7583 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput7583 : ExponentCode := normalNode9649

theorem canonicalSound7583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7583.moment H = canonicalOutput7583.moment H :=
  canonical_of_padded canonicalInput7583 canonicalOutput7583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7584 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![0, 2, -2, 0], ![2, -1, -2, 1]]⟩

def canonicalOutput7584 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node577⟩

theorem canonicalSound7584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7584.moment H = canonicalOutput7584.moment H :=
  canonical_of_padded canonicalInput7584 canonicalOutput7584 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7585 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput7585 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩

theorem canonicalSound7585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7585.moment H = canonicalOutput7585.moment H :=
  canonical_of_padded canonicalInput7585 canonicalOutput7585 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7586 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7586 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node935⟩

theorem canonicalSound7586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7586.moment H = canonicalOutput7586.moment H :=
  canonical_of_padded canonicalInput7586 canonicalOutput7586 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7587 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput7587 : ExponentCode := normalNode7930

theorem canonicalSound7587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7587.moment H = canonicalOutput7587.moment H :=
  canonical_of_padded canonicalInput7587 canonicalOutput7587 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7588 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7588 : ExponentCode := normalNode9047

theorem canonicalSound7588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7588.moment H = canonicalOutput7588.moment H :=
  canonical_of_padded canonicalInput7588 canonicalOutput7588 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7589 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput7589 : ExponentCode := normalNode10733

theorem canonicalSound7589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7589.moment H = canonicalOutput7589.moment H :=
  canonical_of_padded canonicalInput7589 canonicalOutput7589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7590 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -3, 3], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7590 : ExponentCode := normalNode9669

theorem canonicalSound7590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7590.moment H = canonicalOutput7590.moment H :=
  canonical_of_padded canonicalInput7590 canonicalOutput7590 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7591 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput7591 : ExponentCode := normalNode7225

theorem canonicalSound7591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7591.moment H = canonicalOutput7591.moment H :=
  canonical_of_padded canonicalInput7591 canonicalOutput7591 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7592 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -3, 3], ![1, -1, 1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput7592 : ExponentCode := normalNode7475

theorem canonicalSound7592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7592.moment H = canonicalOutput7592.moment H :=
  canonical_of_padded canonicalInput7592 canonicalOutput7592 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7593 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7593 : ExponentCode := normalNode10528

theorem canonicalSound7593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7593.moment H = canonicalOutput7593.moment H :=
  canonical_of_padded canonicalInput7593 canonicalOutput7593 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7594 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput7594 : ExponentCode := normalNode2928

theorem canonicalSound7594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7594.moment H = canonicalOutput7594.moment H :=
  canonical_of_padded canonicalInput7594 canonicalOutput7594 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7595 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, -1, 3, -4]]⟩

def canonicalOutput7595 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩

theorem canonicalSound7595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7595.moment H = canonicalOutput7595.moment H :=
  canonical_of_padded canonicalInput7595 canonicalOutput7595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7596 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7596 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1832⟩

theorem canonicalSound7596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7596.moment H = canonicalOutput7596.moment H :=
  canonical_of_padded canonicalInput7596 canonicalOutput7596 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7597 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7597 : ExponentCode := normalNode10510

theorem canonicalSound7597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7597.moment H = canonicalOutput7597.moment H :=
  canonical_of_padded canonicalInput7597 canonicalOutput7597 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7598 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput7598 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2771⟩

theorem canonicalSound7598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7598.moment H = canonicalOutput7598.moment H :=
  canonical_of_padded canonicalInput7598 canonicalOutput7598 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7599 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7599 : ExponentCode := normalNode8930

theorem canonicalSound7599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7599.moment H = canonicalOutput7599.moment H :=
  canonical_of_padded canonicalInput7599 canonicalOutput7599 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7600 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput7600 : ExponentCode := normalNode10289

theorem canonicalSound7600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7600.moment H = canonicalOutput7600.moment H :=
  canonical_of_padded canonicalInput7600 canonicalOutput7600 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7601 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput7601 : ExponentCode := normalNode10289

theorem canonicalSound7601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7601.moment H = canonicalOutput7601.moment H :=
  canonical_of_padded canonicalInput7601 canonicalOutput7601 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7602 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7602 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2413⟩

theorem canonicalSound7602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7602.moment H = canonicalOutput7602.moment H :=
  canonical_of_padded canonicalInput7602 canonicalOutput7602 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7603 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7603 : ExponentCode := normalNode2928

theorem canonicalSound7603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7603.moment H = canonicalOutput7603.moment H :=
  canonical_of_padded canonicalInput7603 canonicalOutput7603 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7604 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput7604 : ExponentCode := normalNode3941

theorem canonicalSound7604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7604.moment H = canonicalOutput7604.moment H :=
  canonical_of_padded canonicalInput7604 canonicalOutput7604 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7605 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput7605 : ExponentCode := normalNode2424

theorem canonicalSound7605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7605.moment H = canonicalOutput7605.moment H :=
  canonical_of_padded canonicalInput7605 canonicalOutput7605 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7606 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput7606 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node391⟩

theorem canonicalSound7606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7606.moment H = canonicalOutput7606.moment H :=
  canonical_of_padded canonicalInput7606 canonicalOutput7606 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7607 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![1, -2, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput7607 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node482⟩

theorem canonicalSound7607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7607.moment H = canonicalOutput7607.moment H :=
  canonical_of_padded canonicalInput7607 canonicalOutput7607 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7608 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7608 : ExponentCode := normalNode7220

theorem canonicalSound7608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7608.moment H = canonicalOutput7608.moment H :=
  canonical_of_padded canonicalInput7608 canonicalOutput7608 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7609 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -2, 2], ![1, 1, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput7609 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩

theorem canonicalSound7609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7609.moment H = canonicalOutput7609.moment H :=
  canonical_of_padded canonicalInput7609 canonicalOutput7609 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7610 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput7610 : ExponentCode := normalNode3974

theorem canonicalSound7610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7610.moment H = canonicalOutput7610.moment H :=
  canonical_of_padded canonicalInput7610 canonicalOutput7610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7611 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7611 : ExponentCode := normalNode9414

theorem canonicalSound7611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7611.moment H = canonicalOutput7611.moment H :=
  canonical_of_padded canonicalInput7611 canonicalOutput7611 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7612 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput7612 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2697⟩

theorem canonicalSound7612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7612.moment H = canonicalOutput7612.moment H :=
  canonical_of_padded canonicalInput7612 canonicalOutput7612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7613 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput7613 : ExponentCode := normalNode350

theorem canonicalSound7613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7613.moment H = canonicalOutput7613.moment H :=
  canonical_of_padded canonicalInput7613 canonicalOutput7613 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7614 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput7614 : ExponentCode := normalNode1066

theorem canonicalSound7614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7614.moment H = canonicalOutput7614.moment H :=
  canonical_of_padded canonicalInput7614 canonicalOutput7614 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7615 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput7615 : ExponentCode := normalNode1357

theorem canonicalSound7615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7615.moment H = canonicalOutput7615.moment H :=
  canonical_of_padded canonicalInput7615 canonicalOutput7615 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

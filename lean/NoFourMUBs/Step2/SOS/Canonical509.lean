import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32576 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -3, 4], ![-1, 0, 3, -2]]⟩

def canonicalOutput32576 : ExponentCode := normalNode9612

theorem canonicalSound32576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32576.moment H = canonicalOutput32576.moment H :=
  canonical_of_padded canonicalInput32576 canonicalOutput32576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32577 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 2, -1]]⟩

def canonicalOutput32577 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2996⟩

theorem canonicalSound32577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32577.moment H = canonicalOutput32577.moment H :=
  canonical_of_padded canonicalInput32577 canonicalOutput32577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32578 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -4, 4], ![-2, 0, 4, -2]]⟩

def canonicalOutput32578 : ExponentCode := normalNode3312

theorem canonicalSound32578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32578.moment H = canonicalOutput32578.moment H :=
  canonical_of_padded canonicalInput32578 canonicalOutput32578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32579 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 0, 3, -1]]⟩

def canonicalOutput32579 : ExponentCode := normalNode3613

theorem canonicalSound32579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32579.moment H = canonicalOutput32579.moment H :=
  canonical_of_padded canonicalInput32579 canonicalOutput32579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32580 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32580 : ExponentCode := normalNode3538

theorem canonicalSound32580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32580.moment H = canonicalOutput32580.moment H :=
  canonical_of_padded canonicalInput32580 canonicalOutput32580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32581 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32581 : ExponentCode := normalNode7757

theorem canonicalSound32581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32581.moment H = canonicalOutput32581.moment H :=
  canonical_of_padded canonicalInput32581 canonicalOutput32581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32582 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32582 : ExponentCode := normalNode7323

theorem canonicalSound32582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32582.moment H = canonicalOutput32582.moment H :=
  canonical_of_padded canonicalInput32582 canonicalOutput32582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32583 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32583 : ExponentCode := normalNode3250

theorem canonicalSound32583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32583.moment H = canonicalOutput32583.moment H :=
  canonical_of_padded canonicalInput32583 canonicalOutput32583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32584 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput32584 : ExponentCode := normalNode1411

theorem canonicalSound32584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32584.moment H = canonicalOutput32584.moment H :=
  canonical_of_padded canonicalInput32584 canonicalOutput32584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32585 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2]]⟩

def canonicalOutput32585 : ExponentCode := normalNode3259

theorem canonicalSound32585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32585.moment H = canonicalOutput32585.moment H :=
  canonical_of_padded canonicalInput32585 canonicalOutput32585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32586 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1]]⟩

def canonicalOutput32586 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3004⟩

theorem canonicalSound32586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32586.moment H = canonicalOutput32586.moment H :=
  canonical_of_padded canonicalInput32586 canonicalOutput32586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32587 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2]]⟩

def canonicalOutput32587 : ExponentCode := normalNode7330

theorem canonicalSound32587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32587.moment H = canonicalOutput32587.moment H :=
  canonical_of_padded canonicalInput32587 canonicalOutput32587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32588 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1]]⟩

def canonicalOutput32588 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3197⟩

theorem canonicalSound32588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32588.moment H = canonicalOutput32588.moment H :=
  canonical_of_padded canonicalInput32588 canonicalOutput32588 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32589 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -3, 4], ![-1, -1, 4, -2]]⟩

def canonicalOutput32589 : ExponentCode := normalNode7334

theorem canonicalSound32589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32589.moment H = canonicalOutput32589.moment H :=
  canonical_of_padded canonicalInput32589 canonicalOutput32589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32590 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, 3, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput32590 : ExponentCode := normalNode7330

theorem canonicalSound32590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32590.moment H = canonicalOutput32590.moment H :=
  canonical_of_padded canonicalInput32590 canonicalOutput32590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32591 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -3, 4], ![-2, 0, 4, -2]]⟩

def canonicalOutput32591 : ExponentCode := normalNode3269

theorem canonicalSound32591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32591.moment H = canonicalOutput32591.moment H :=
  canonical_of_padded canonicalInput32591 canonicalOutput32591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32592 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, 0, -2, 4]]⟩

def canonicalOutput32592 : ExponentCode := normalNode3259

theorem canonicalSound32592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32592.moment H = canonicalOutput32592.moment H :=
  canonical_of_padded canonicalInput32592 canonicalOutput32592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32593 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 0, -3, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32593 : ExponentCode := normalNode1404

theorem canonicalSound32593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32593.moment H = canonicalOutput32593.moment H :=
  canonical_of_padded canonicalInput32593 canonicalOutput32593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32594 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 0, 2, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput32594 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2935⟩

theorem canonicalSound32594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32594.moment H = canonicalOutput32594.moment H :=
  canonical_of_padded canonicalInput32594 canonicalOutput32594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32595 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 0, 3, -3], ![-2, -1, -2, 5]]⟩

def canonicalOutput32595 : ExponentCode := normalNode1113

theorem canonicalSound32595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32595.moment H = canonicalOutput32595.moment H :=
  canonical_of_padded canonicalInput32595 canonicalOutput32595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32596 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 2, -1], ![-1, -1, -2, 4]]⟩

def canonicalOutput32596 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2911⟩

theorem canonicalSound32596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32596.moment H = canonicalOutput32596.moment H :=
  canonical_of_padded canonicalInput32596 canonicalOutput32596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32597 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -1, -3, 5]]⟩

def canonicalOutput32597 : ExponentCode := normalNode7163

theorem canonicalSound32597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32597.moment H = canonicalOutput32597.moment H :=
  canonical_of_padded canonicalInput32597 canonicalOutput32597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32598 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput32598 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2873⟩

theorem canonicalSound32598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32598.moment H = canonicalOutput32598.moment H :=
  canonical_of_padded canonicalInput32598 canonicalOutput32598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32599 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, 0, -3, 5]]⟩

def canonicalOutput32599 : ExponentCode := normalNode3077

theorem canonicalSound32599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32599.moment H = canonicalOutput32599.moment H :=
  canonical_of_padded canonicalInput32599 canonicalOutput32599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32600 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -4, 4], ![-2, -1, 4, -1]]⟩

def canonicalOutput32600 : ExponentCode := normalNode1420

theorem canonicalSound32600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32600.moment H = canonicalOutput32600.moment H :=
  canonical_of_padded canonicalInput32600 canonicalOutput32600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32601 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -1, 3, 0]]⟩

def canonicalOutput32601 : ExponentCode := normalNode2061

theorem canonicalSound32601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32601.moment H = canonicalOutput32601.moment H :=
  canonical_of_padded canonicalInput32601 canonicalOutput32601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32602 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32602 : ExponentCode := normalNode4296

theorem canonicalSound32602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32602.moment H = canonicalOutput32602.moment H :=
  canonical_of_padded canonicalInput32602 canonicalOutput32602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32603 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32603 : ExponentCode := normalNode9279

theorem canonicalSound32603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32603.moment H = canonicalOutput32603.moment H :=
  canonical_of_padded canonicalInput32603 canonicalOutput32603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32604 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, 0, -1, 2], ![1, -2, 0, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput32604 : ExponentCode := normalNode5285

theorem canonicalSound32604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32604.moment H = canonicalOutput32604.moment H :=
  canonical_of_padded canonicalInput32604 canonicalOutput32604 (by decide) (by decide)
    ⟨false, false, canonicalPermutation186, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32605 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32605 : ExponentCode := normalNode1891

theorem canonicalSound32605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32605.moment H = canonicalOutput32605.moment H :=
  canonical_of_padded canonicalInput32605 canonicalOutput32605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32606 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 4, -2]]⟩

def canonicalOutput32606 : ExponentCode := normalNode3147

theorem canonicalSound32606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32606.moment H = canonicalOutput32606.moment H :=
  canonical_of_padded canonicalInput32606 canonicalOutput32606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32607 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput32607 : ExponentCode := normalNode3370

theorem canonicalSound32607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32607.moment H = canonicalOutput32607.moment H :=
  canonical_of_padded canonicalInput32607 canonicalOutput32607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32608 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32608 : ExponentCode := normalNode2419

theorem canonicalSound32608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32608.moment H = canonicalOutput32608.moment H :=
  canonical_of_padded canonicalInput32608 canonicalOutput32608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32609 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32609 : ExponentCode := normalNode1876

theorem canonicalSound32609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32609.moment H = canonicalOutput32609.moment H :=
  canonical_of_padded canonicalInput32609 canonicalOutput32609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32610 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32610 : ExponentCode := normalNode7269

theorem canonicalSound32610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32610.moment H = canonicalOutput32610.moment H :=
  canonical_of_padded canonicalInput32610 canonicalOutput32610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32611 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput32611 : ExponentCode := normalNode7663

theorem canonicalSound32611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32611.moment H = canonicalOutput32611.moment H :=
  canonical_of_padded canonicalInput32611 canonicalOutput32611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32612 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput32612 : ExponentCode := normalNode2553

theorem canonicalSound32612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32612.moment H = canonicalOutput32612.moment H :=
  canonical_of_padded canonicalInput32612 canonicalOutput32612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32613 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![0, -2, -1, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32613 : ExponentCode := normalNode3139

theorem canonicalSound32613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32613.moment H = canonicalOutput32613.moment H :=
  canonical_of_padded canonicalInput32613 canonicalOutput32613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32614 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput32614 : ExponentCode := normalNode3363

theorem canonicalSound32614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32614.moment H = canonicalOutput32614.moment H :=
  canonical_of_padded canonicalInput32614 canonicalOutput32614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32615 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput32615 : ExponentCode := normalNode3393

theorem canonicalSound32615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32615.moment H = canonicalOutput32615.moment H :=
  canonical_of_padded canonicalInput32615 canonicalOutput32615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32616 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput32616 : ExponentCode := normalNode3385

theorem canonicalSound32616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32616.moment H = canonicalOutput32616.moment H :=
  canonical_of_padded canonicalInput32616 canonicalOutput32616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32617 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput32617 : ExponentCode := normalNode7675

theorem canonicalSound32617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32617.moment H = canonicalOutput32617.moment H :=
  canonical_of_padded canonicalInput32617 canonicalOutput32617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32618 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -2, 4, -1]]⟩

def canonicalOutput32618 : ExponentCode := normalNode1317

theorem canonicalSound32618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32618.moment H = canonicalOutput32618.moment H :=
  canonical_of_padded canonicalInput32618 canonicalOutput32618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32619 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 3, 0]]⟩

def canonicalOutput32619 : ExponentCode := normalNode1856

theorem canonicalSound32619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32619.moment H = canonicalOutput32619.moment H :=
  canonical_of_padded canonicalInput32619 canonicalOutput32619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32620 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput32620 : ExponentCode := normalNode1310

theorem canonicalSound32620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32620.moment H = canonicalOutput32620.moment H :=
  canonical_of_padded canonicalInput32620 canonicalOutput32620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32621 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32621 : ExponentCode := normalNode1312

theorem canonicalSound32621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32621.moment H = canonicalOutput32621.moment H :=
  canonical_of_padded canonicalInput32621 canonicalOutput32621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32622 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-2, -1, 3, 0]]⟩

def canonicalOutput32622 : ExponentCode := normalNode1855

theorem canonicalSound32622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32622.moment H = canonicalOutput32622.moment H :=
  canonical_of_padded canonicalInput32622 canonicalOutput32622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32623 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput32623 : ExponentCode := normalNode1321

theorem canonicalSound32623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32623.moment H = canonicalOutput32623.moment H :=
  canonical_of_padded canonicalInput32623 canonicalOutput32623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32624 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32624 : ExponentCode := normalNode2635

theorem canonicalSound32624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32624.moment H = canonicalOutput32624.moment H :=
  canonical_of_padded canonicalInput32624 canonicalOutput32624 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32625 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput32625 : ExponentCode := normalNode4230

theorem canonicalSound32625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32625.moment H = canonicalOutput32625.moment H :=
  canonical_of_padded canonicalInput32625 canonicalOutput32625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32626 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput32626 : ExponentCode := normalNode4295

theorem canonicalSound32626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32626.moment H = canonicalOutput32626.moment H :=
  canonical_of_padded canonicalInput32626 canonicalOutput32626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32627 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32627 : ExponentCode := normalNode2632

theorem canonicalSound32627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32627.moment H = canonicalOutput32627.moment H :=
  canonical_of_padded canonicalInput32627 canonicalOutput32627 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32628 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput32628 : ExponentCode := normalNode9266

theorem canonicalSound32628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32628.moment H = canonicalOutput32628.moment H :=
  canonical_of_padded canonicalInput32628 canonicalOutput32628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32629 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput32629 : ExponentCode := normalNode8859

theorem canonicalSound32629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32629.moment H = canonicalOutput32629.moment H :=
  canonical_of_padded canonicalInput32629 canonicalOutput32629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32630 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, -2, 0, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput32630 : ExponentCode := normalNode5264

theorem canonicalSound32630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32630.moment H = canonicalOutput32630.moment H :=
  canonical_of_padded canonicalInput32630 canonicalOutput32630 (by decide) (by decide)
    ⟨false, false, canonicalPermutation186, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32631 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, -2, -1, 2], ![-1, 0, 3, -2]]⟩

def canonicalOutput32631 : ExponentCode := normalNode5011

theorem canonicalSound32631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32631.moment H = canonicalOutput32631.moment H :=
  canonical_of_padded canonicalInput32631 canonicalOutput32631 (by decide) (by decide)
    ⟨false, false, canonicalPermutation186, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32632 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, -2, 0, 1], ![-1, 0, 2, -1]]⟩

def canonicalOutput32632 : ExponentCode := normalNode4250

theorem canonicalSound32632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32632.moment H = canonicalOutput32632.moment H :=
  canonical_of_padded canonicalInput32632 canonicalOutput32632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32633 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32633 : ExponentCode := normalNode1891

theorem canonicalSound32633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32633.moment H = canonicalOutput32633.moment H :=
  canonical_of_padded canonicalInput32633 canonicalOutput32633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32634 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, 0, -1, 3], ![0, -2, 4, -2]]⟩

def canonicalOutput32634 : ExponentCode := normalNode3147

theorem canonicalSound32634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32634.moment H = canonicalOutput32634.moment H :=
  canonical_of_padded canonicalInput32634 canonicalOutput32634 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32635 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, 0, 0, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput32635 : ExponentCode := normalNode3370

theorem canonicalSound32635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32635.moment H = canonicalOutput32635.moment H :=
  canonical_of_padded canonicalInput32635 canonicalOutput32635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32636 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-2, 1, 2, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32636 : ExponentCode := normalNode2419

theorem canonicalSound32636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32636.moment H = canonicalOutput32636.moment H :=
  canonical_of_padded canonicalInput32636 canonicalOutput32636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32637 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32637 : ExponentCode := normalNode1876

theorem canonicalSound32637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32637.moment H = canonicalOutput32637.moment H :=
  canonical_of_padded canonicalInput32637 canonicalOutput32637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation307, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32638 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32638 : ExponentCode := normalNode7269

theorem canonicalSound32638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32638.moment H = canonicalOutput32638.moment H :=
  canonical_of_padded canonicalInput32638 canonicalOutput32638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32639 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput32639 : ExponentCode := normalNode7663

theorem canonicalSound32639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32639.moment H = canonicalOutput32639.moment H :=
  canonical_of_padded canonicalInput32639 canonicalOutput32639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

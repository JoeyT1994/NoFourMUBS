import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31552 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 1, -1]]⟩

def canonicalOutput31552 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3012⟩

theorem canonicalSound31552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31552.moment H = canonicalOutput31552.moment H :=
  canonical_of_padded canonicalInput31552 canonicalOutput31552 (by decide) (by decide)
    ⟨false, false, canonicalPermutation93, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31553 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31553 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3418⟩

theorem canonicalSound31553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31553.moment H = canonicalOutput31553.moment H :=
  canonical_of_padded canonicalInput31553 canonicalOutput31553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31554 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 3, -2], ![-1, 1, -4, 4]]⟩

def canonicalOutput31554 : ExponentCode := normalNode9837

theorem canonicalSound31554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31554.moment H = canonicalOutput31554.moment H :=
  canonical_of_padded canonicalInput31554 canonicalOutput31554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31555 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 2, -2], ![-1, 0, -3, 4]]⟩

def canonicalOutput31555 : ExponentCode := normalNode9634

theorem canonicalSound31555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31555.moment H = canonicalOutput31555.moment H :=
  canonical_of_padded canonicalInput31555 canonicalOutput31555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31556 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -4, 4], ![-2, 1, 3, -2]]⟩

def canonicalOutput31556 : ExponentCode := normalNode4949

theorem canonicalSound31556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31556.moment H = canonicalOutput31556.moment H :=
  canonical_of_padded canonicalInput31556 canonicalOutput31556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31557 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 1, 2, -1]]⟩

def canonicalOutput31557 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3263⟩

theorem canonicalSound31557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31557.moment H = canonicalOutput31557.moment H :=
  canonical_of_padded canonicalInput31557 canonicalOutput31557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31558 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, -1, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31558 : ExponentCode := normalNode7797

theorem canonicalSound31558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31558.moment H = canonicalOutput31558.moment H :=
  canonical_of_padded canonicalInput31558 canonicalOutput31558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31559 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![0, -1, -2, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput31559 : ExponentCode := normalNode4909

theorem canonicalSound31559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31559.moment H = canonicalOutput31559.moment H :=
  canonical_of_padded canonicalInput31559 canonicalOutput31559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31560 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![0, -1, 3, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput31560 : ExponentCode := normalNode4913

theorem canonicalSound31560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31560.moment H = canonicalOutput31560.moment H :=
  canonical_of_padded canonicalInput31560 canonicalOutput31560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31561 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31561 : ExponentCode := normalNode1387

theorem canonicalSound31561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31561.moment H = canonicalOutput31561.moment H :=
  canonical_of_padded canonicalInput31561 canonicalOutput31561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31562 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31562 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3251⟩

theorem canonicalSound31562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31562.moment H = canonicalOutput31562.moment H :=
  canonical_of_padded canonicalInput31562 canonicalOutput31562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31563 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, -2, 1]]⟩

def canonicalOutput31563 : ExponentCode := normalNode10476

theorem canonicalSound31563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31563.moment H = canonicalOutput31563.moment H :=
  canonical_of_padded canonicalInput31563 canonicalOutput31563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31564 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -2, 4], ![-1, 1, 2, -2]]⟩

def canonicalOutput31564 : ExponentCode := normalNode7356

theorem canonicalSound31564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31564.moment H = canonicalOutput31564.moment H :=
  canonical_of_padded canonicalInput31564 canonicalOutput31564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31565 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 1, 1, -1]]⟩

def canonicalOutput31565 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3354⟩

theorem canonicalSound31565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31565.moment H = canonicalOutput31565.moment H :=
  canonical_of_padded canonicalInput31565 canonicalOutput31565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput31566 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31566 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3367⟩

theorem canonicalSound31566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31566.moment H = canonicalOutput31566.moment H :=
  canonical_of_padded canonicalInput31566 canonicalOutput31566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31567 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, 2, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput31567 : ExponentCode := normalNode7356

theorem canonicalSound31567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31567.moment H = canonicalOutput31567.moment H :=
  canonical_of_padded canonicalInput31567 canonicalOutput31567 (by decide) (by decide)
    ⟨false, false, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31568 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -3, 4], ![-2, 1, 3, -2]]⟩

def canonicalOutput31568 : ExponentCode := normalNode4920

theorem canonicalSound31568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31568.moment H = canonicalOutput31568.moment H :=
  canonical_of_padded canonicalInput31568 canonicalOutput31568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31569 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 1, 2, -1]]⟩

def canonicalOutput31569 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3251⟩

theorem canonicalSound31569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31569.moment H = canonicalOutput31569.moment H :=
  canonical_of_padded canonicalInput31569 canonicalOutput31569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31570 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, 1, -3, 4]]⟩

def canonicalOutput31570 : ExponentCode := normalNode4755

theorem canonicalSound31570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31570.moment H = canonicalOutput31570.moment H :=
  canonical_of_padded canonicalInput31570 canonicalOutput31570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31571 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput31571 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2938⟩

theorem canonicalSound31571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31571.moment H = canonicalOutput31571.moment H :=
  canonical_of_padded canonicalInput31571 canonicalOutput31571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31572 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -1, -2, 5]]⟩

def canonicalOutput31572 : ExponentCode := normalNode1091

theorem canonicalSound31572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31572.moment H = canonicalOutput31572.moment H :=
  canonical_of_padded canonicalInput31572 canonicalOutput31572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31573 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -2, 3]]⟩

def canonicalOutput31573 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2968⟩

theorem canonicalSound31573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31573.moment H = canonicalOutput31573.moment H :=
  canonical_of_padded canonicalInput31573 canonicalOutput31573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31574 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput31574 : ExponentCode := normalNode5662

theorem canonicalSound31574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31574.moment H = canonicalOutput31574.moment H :=
  canonical_of_padded canonicalInput31574 canonicalOutput31574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31575 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 2, -2, 1]]⟩

def canonicalOutput31575 : ExponentCode := normalNode2685

theorem canonicalSound31575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31575.moment H = canonicalOutput31575.moment H :=
  canonical_of_padded canonicalInput31575 canonicalOutput31575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation346, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31576 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, -3, 2]]⟩

def canonicalOutput31576 : ExponentCode := normalNode6177

theorem canonicalSound31576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31576.moment H = canonicalOutput31576.moment H :=
  canonical_of_padded canonicalInput31576 canonicalOutput31576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31577 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 1, -3, 3]]⟩

def canonicalOutput31577 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3385⟩

theorem canonicalSound31577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31577.moment H = canonicalOutput31577.moment H :=
  canonical_of_padded canonicalInput31577 canonicalOutput31577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31578 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 1, -4, 4]]⟩

def canonicalOutput31578 : ExponentCode := normalNode7793

theorem canonicalSound31578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31578.moment H = canonicalOutput31578.moment H :=
  canonical_of_padded canonicalInput31578 canonicalOutput31578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31579 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -1, -3, 5]]⟩

def canonicalOutput31579 : ExponentCode := normalNode7167

theorem canonicalSound31579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31579.moment H = canonicalOutput31579.moment H :=
  canonical_of_padded canonicalInput31579 canonicalOutput31579 (by decide) (by decide)
    ⟨false, false, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31580 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput31580 : ExponentCode := normalNode3532

theorem canonicalSound31580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31580.moment H = canonicalOutput31580.moment H :=
  canonical_of_padded canonicalInput31580 canonicalOutput31580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31581 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31581 : ExponentCode := normalNode7723

theorem canonicalSound31581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31581.moment H = canonicalOutput31581.moment H :=
  canonical_of_padded canonicalInput31581 canonicalOutput31581 (by decide) (by decide)
    ⟨false, true, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31582 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2]]⟩

def canonicalOutput31582 : ExponentCode := normalNode3249

theorem canonicalSound31582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31582.moment H = canonicalOutput31582.moment H :=
  canonical_of_padded canonicalInput31582 canonicalOutput31582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31583 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1]]⟩

def canonicalOutput31583 : ExponentCode := normalNode3506

theorem canonicalSound31583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31583.moment H = canonicalOutput31583.moment H :=
  canonical_of_padded canonicalInput31583 canonicalOutput31583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31584 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, 3, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31584 : ExponentCode := normalNode3523

theorem canonicalSound31584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31584.moment H = canonicalOutput31584.moment H :=
  canonical_of_padded canonicalInput31584 canonicalOutput31584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31585 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2]]⟩

def canonicalOutput31585 : ExponentCode := normalNode7322

theorem canonicalSound31585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31585.moment H = canonicalOutput31585.moment H :=
  canonical_of_padded canonicalInput31585 canonicalOutput31585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31586 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1]]⟩

def canonicalOutput31586 : ExponentCode := normalNode7741

theorem canonicalSound31586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31586.moment H = canonicalOutput31586.moment H :=
  canonical_of_padded canonicalInput31586 canonicalOutput31586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31587 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31587 : ExponentCode := normalNode7749

theorem canonicalSound31587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31587.moment H = canonicalOutput31587.moment H :=
  canonical_of_padded canonicalInput31587 canonicalOutput31587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31588 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, 0, 2, 0], ![0, -1, -2, 3]]⟩

def canonicalOutput31588 : ExponentCode := normalNode4001

theorem canonicalSound31588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31588.moment H = canonicalOutput31588.moment H :=
  canonical_of_padded canonicalInput31588 canonicalOutput31588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31589 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, 0, 3, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput31589 : ExponentCode := normalNode3544

theorem canonicalSound31589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31589.moment H = canonicalOutput31589.moment H :=
  canonical_of_padded canonicalInput31589 canonicalOutput31589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31590 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-1, -1, 2, 0], ![-1, 0, -2, 3]]⟩

def canonicalOutput31590 : ExponentCode := normalNode8831

theorem canonicalSound31590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31590.moment H = canonicalOutput31590.moment H :=
  canonical_of_padded canonicalInput31590 canonicalOutput31590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31591 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-1, -1, 3, -1], ![-1, 0, -3, 4]]⟩

def canonicalOutput31591 : ExponentCode := normalNode7759

theorem canonicalSound31591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31591.moment H = canonicalOutput31591.moment H :=
  canonical_of_padded canonicalInput31591 canonicalOutput31591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31592 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput31592 : ExponentCode := normalNode3800

theorem canonicalSound31592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31592.moment H = canonicalOutput31592.moment H :=
  canonical_of_padded canonicalInput31592 canonicalOutput31592 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31593 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput31593 : ExponentCode := normalNode4199

theorem canonicalSound31593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31593.moment H = canonicalOutput31593.moment H :=
  canonical_of_padded canonicalInput31593 canonicalOutput31593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31594 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput31594 : ExponentCode := normalNode4476

theorem canonicalSound31594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31594.moment H = canonicalOutput31594.moment H :=
  canonical_of_padded canonicalInput31594 canonicalOutput31594 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31595 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput31595 : ExponentCode := normalNode3795

theorem canonicalSound31595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31595.moment H = canonicalOutput31595.moment H :=
  canonical_of_padded canonicalInput31595 canonicalOutput31595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31596 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput31596 : ExponentCode := normalNode4297

theorem canonicalSound31596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31596.moment H = canonicalOutput31596.moment H :=
  canonical_of_padded canonicalInput31596 canonicalOutput31596 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput31597 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput31597 : ExponentCode := normalNode8790

theorem canonicalSound31597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31597.moment H = canonicalOutput31597.moment H :=
  canonical_of_padded canonicalInput31597 canonicalOutput31597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31598 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![-1, -1, -1, 3]]⟩

def canonicalOutput31598 : ExponentCode := normalNode7654

theorem canonicalSound31598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31598.moment H = canonicalOutput31598.moment H :=
  canonical_of_padded canonicalInput31598 canonicalOutput31598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31599 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, 0, -1, 2], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput31599 : ExponentCode := normalNode2909

theorem canonicalSound31599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31599.moment H = canonicalOutput31599.moment H :=
  canonical_of_padded canonicalInput31599 canonicalOutput31599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31600 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput31600 : ExponentCode := normalNode6641

theorem canonicalSound31600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31600.moment H = canonicalOutput31600.moment H :=
  canonical_of_padded canonicalInput31600 canonicalOutput31600 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31601 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput31601 : ExponentCode := normalNode1830

theorem canonicalSound31601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31601.moment H = canonicalOutput31601.moment H :=
  canonical_of_padded canonicalInput31601 canonicalOutput31601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31602 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31602 : ExponentCode := normalNode7810

theorem canonicalSound31602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31602.moment H = canonicalOutput31602.moment H :=
  canonical_of_padded canonicalInput31602 canonicalOutput31602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31603 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput31603 : ExponentCode := normalNode4496

theorem canonicalSound31603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31603.moment H = canonicalOutput31603.moment H :=
  canonical_of_padded canonicalInput31603 canonicalOutput31603 (by decide) (by decide)
    ⟨false, false, canonicalPermutation282, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31604 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput31604 : ExponentCode := normalNode2340

theorem canonicalSound31604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31604.moment H = canonicalOutput31604.moment H :=
  canonical_of_padded canonicalInput31604 canonicalOutput31604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31605 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![0, -1, 2, -1], ![1, -2, 0, 1], ![-2, 2, -1, 1]]⟩

def canonicalOutput31605 : ExponentCode := normalNode2696

theorem canonicalSound31605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31605.moment H = canonicalOutput31605.moment H :=
  canonical_of_padded canonicalInput31605 canonicalOutput31605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31606 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput31606 : ExponentCode := normalNode1835

theorem canonicalSound31606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31606.moment H = canonicalOutput31606.moment H :=
  canonical_of_padded canonicalInput31606 canonicalOutput31606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31607 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput31607 : ExponentCode := normalNode2752

theorem canonicalSound31607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31607.moment H = canonicalOutput31607.moment H :=
  canonical_of_padded canonicalInput31607 canonicalOutput31607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31608 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31608 : ExponentCode := normalNode2020

theorem canonicalSound31608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31608.moment H = canonicalOutput31608.moment H :=
  canonical_of_padded canonicalInput31608 canonicalOutput31608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31609 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput31609 : ExponentCode := normalNode3600

theorem canonicalSound31609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31609.moment H = canonicalOutput31609.moment H :=
  canonical_of_padded canonicalInput31609 canonicalOutput31609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31610 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput31610 : ExponentCode := normalNode1372

theorem canonicalSound31610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31610.moment H = canonicalOutput31610.moment H :=
  canonical_of_padded canonicalInput31610 canonicalOutput31610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31611 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput31611 : ExponentCode := normalNode3580

theorem canonicalSound31611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31611.moment H = canonicalOutput31611.moment H :=
  canonical_of_padded canonicalInput31611 canonicalOutput31611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation273, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31612 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput31612 : ExponentCode := normalNode3351

theorem canonicalSound31612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31612.moment H = canonicalOutput31612.moment H :=
  canonical_of_padded canonicalInput31612 canonicalOutput31612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31613 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput31613 : ExponentCode := normalNode3749

theorem canonicalSound31613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31613.moment H = canonicalOutput31613.moment H :=
  canonical_of_padded canonicalInput31613 canonicalOutput31613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31614 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput31614 : ExponentCode := normalNode3797

theorem canonicalSound31614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31614.moment H = canonicalOutput31614.moment H :=
  canonical_of_padded canonicalInput31614 canonicalOutput31614 (by decide) (by decide)
    ⟨false, false, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31615 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput31615 : ExponentCode := normalNode3980

theorem canonicalSound31615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31615.moment H = canonicalOutput31615.moment H :=
  canonical_of_padded canonicalInput31615 canonicalOutput31615 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

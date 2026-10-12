import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24576 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24576 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound24576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24576.moment H = canonicalOutput24576.moment H :=
  canonical_of_padded canonicalInput24576 canonicalOutput24576 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24577 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput24577 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound24577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24577.moment H = canonicalOutput24577.moment H :=
  canonical_of_padded canonicalInput24577 canonicalOutput24577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24578 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24578 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩

theorem canonicalSound24578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24578.moment H = canonicalOutput24578.moment H :=
  canonical_of_padded canonicalInput24578 canonicalOutput24578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24579 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 0, 0], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput24579 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1354⟩

theorem canonicalSound24579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24579.moment H = canonicalOutput24579.moment H :=
  canonical_of_padded canonicalInput24579 canonicalOutput24579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24580 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput24580 : ExponentCode := normalNode10983

theorem canonicalSound24580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24580.moment H = canonicalOutput24580.moment H :=
  canonical_of_padded canonicalInput24580 canonicalOutput24580 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24581 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput24581 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1359⟩

theorem canonicalSound24581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24581.moment H = canonicalOutput24581.moment H :=
  canonical_of_padded canonicalInput24581 canonicalOutput24581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24582 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24582 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound24582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24582.moment H = canonicalOutput24582.moment H :=
  canonical_of_padded canonicalInput24582 canonicalOutput24582 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24583 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 3, -3], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput24583 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound24583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24583.moment H = canonicalOutput24583.moment H :=
  canonical_of_padded canonicalInput24583 canonicalOutput24583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24584 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24584 : ExponentCode := normalNode9973

theorem canonicalSound24584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24584.moment H = canonicalOutput24584.moment H :=
  canonical_of_padded canonicalInput24584 canonicalOutput24584 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput24585 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput24585 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound24585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24585.moment H = canonicalOutput24585.moment H :=
  canonical_of_padded canonicalInput24585 canonicalOutput24585 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24586 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 1, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput24586 : ExponentCode := normalNode10549

theorem canonicalSound24586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24586.moment H = canonicalOutput24586.moment H :=
  canonical_of_padded canonicalInput24586 canonicalOutput24586 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput24587 : ExponentCode := ⟨3, 4, ![![0, -1, -2, 3], ![-1, 2, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24587 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound24587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24587.moment H = canonicalOutput24587.moment H :=
  canonical_of_padded canonicalInput24587 canonicalOutput24587 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24588 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput24588 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound24588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24588.moment H = canonicalOutput24588.moment H :=
  canonical_of_padded canonicalInput24588 canonicalOutput24588 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24589 : ExponentCode := ⟨3, 4, ![![0, -1, -2, 3], ![0, -2, 3, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput24589 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound24589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24589.moment H = canonicalOutput24589.moment H :=
  canonical_of_padded canonicalInput24589 canonicalOutput24589 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24590 : ExponentCode := ⟨3, 4, ![![0, -1, -2, 3], ![0, -1, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput24590 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩

theorem canonicalSound24590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24590.moment H = canonicalOutput24590.moment H :=
  canonical_of_padded canonicalInput24590 canonicalOutput24590 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24591 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, -1, 0, 1], ![-1, 2, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput24591 : ExponentCode := normalNode9675

theorem canonicalSound24591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24591.moment H = canonicalOutput24591.moment H :=
  canonical_of_padded canonicalInput24591 canonicalOutput24591 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24592 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, -1, 0, 1], ![0, 2, 3, -5], ![0, 0, -1, 1]]⟩

def canonicalOutput24592 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound24592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24592.moment H = canonicalOutput24592.moment H :=
  canonical_of_padded canonicalInput24592 canonicalOutput24592 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24593 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput24593 : ExponentCode := normalNode10662

theorem canonicalSound24593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24593.moment H = canonicalOutput24593.moment H :=
  canonical_of_padded canonicalInput24593 canonicalOutput24593 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24594 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, -1, 1, 0], ![-1, 2, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput24594 : ExponentCode := normalNode10350

theorem canonicalSound24594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24594.moment H = canonicalOutput24594.moment H :=
  canonical_of_padded canonicalInput24594 canonicalOutput24594 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24595 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24595 : ExponentCode := normalNode10642

theorem canonicalSound24595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24595.moment H = canonicalOutput24595.moment H :=
  canonical_of_padded canonicalInput24595 canonicalOutput24595 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24596 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, 0, -1, 1]]⟩

def canonicalOutput24596 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node862⟩

theorem canonicalSound24596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24596.moment H = canonicalOutput24596.moment H :=
  canonical_of_padded canonicalInput24596 canonicalOutput24596 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24597 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, -1, 1, 0], ![0, 2, 2, -4], ![0, 0, -1, 1]]⟩

def canonicalOutput24597 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node149⟩

theorem canonicalSound24597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24597.moment H = canonicalOutput24597.moment H :=
  canonical_of_padded canonicalInput24597 canonicalOutput24597 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24598 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput24598 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩

theorem canonicalSound24598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24598.moment H = canonicalOutput24598.moment H :=
  canonical_of_padded canonicalInput24598 canonicalOutput24598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24599 : ExponentCode := ⟨3, 4, ![![0, -1, -2, 3], ![0, -1, 4, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput24599 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound24599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24599.moment H = canonicalOutput24599.moment H :=
  canonical_of_padded canonicalInput24599 canonicalOutput24599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24600 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24600 : ExponentCode := normalNode10966

theorem canonicalSound24600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24600.moment H = canonicalOutput24600.moment H :=
  canonical_of_padded canonicalInput24600 canonicalOutput24600 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24601 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24601 : ExponentCode := normalNode11031

theorem canonicalSound24601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24601.moment H = canonicalOutput24601.moment H :=
  canonical_of_padded canonicalInput24601 canonicalOutput24601 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24602 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24602 : ExponentCode := normalNode11133

theorem canonicalSound24602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24602.moment H = canonicalOutput24602.moment H :=
  canonical_of_padded canonicalInput24602 canonicalOutput24602 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24603 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24603 : ExponentCode := normalNode11140

theorem canonicalSound24603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24603.moment H = canonicalOutput24603.moment H :=
  canonical_of_padded canonicalInput24603 canonicalOutput24603 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24604 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 1, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24604 : ExponentCode := normalNode10936

theorem canonicalSound24604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24604.moment H = canonicalOutput24604.moment H :=
  canonical_of_padded canonicalInput24604 canonicalOutput24604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24605 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 2, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput24605 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound24605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24605.moment H = canonicalOutput24605.moment H :=
  canonical_of_padded canonicalInput24605 canonicalOutput24605 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24606 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24606 : ExponentCode := normalNode9674

theorem canonicalSound24606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24606.moment H = canonicalOutput24606.moment H :=
  canonical_of_padded canonicalInput24606 canonicalOutput24606 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24607 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24607 : ExponentCode := normalNode11153

theorem canonicalSound24607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24607.moment H = canonicalOutput24607.moment H :=
  canonical_of_padded canonicalInput24607 canonicalOutput24607 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24608 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput24608 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound24608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24608.moment H = canonicalOutput24608.moment H :=
  canonical_of_padded canonicalInput24608 canonicalOutput24608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24609 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![-1, 2, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24609 : ExponentCode := normalNode11146

theorem canonicalSound24609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24609.moment H = canonicalOutput24609.moment H :=
  canonical_of_padded canonicalInput24609 canonicalOutput24609 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24610 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput24610 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound24610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24610.moment H = canonicalOutput24610.moment H :=
  canonical_of_padded canonicalInput24610 canonicalOutput24610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24611 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24611 : ExponentCode := normalNode10966

theorem canonicalSound24611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24611.moment H = canonicalOutput24611.moment H :=
  canonical_of_padded canonicalInput24611 canonicalOutput24611 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24612 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24612 : ExponentCode := normalNode11031

theorem canonicalSound24612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24612.moment H = canonicalOutput24612.moment H :=
  canonical_of_padded canonicalInput24612 canonicalOutput24612 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24613 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24613 : ExponentCode := normalNode11140

theorem canonicalSound24613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24613.moment H = canonicalOutput24613.moment H :=
  canonical_of_padded canonicalInput24613 canonicalOutput24613 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24614 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput24614 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node876⟩

theorem canonicalSound24614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24614.moment H = canonicalOutput24614.moment H :=
  canonical_of_padded canonicalInput24614 canonicalOutput24614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24615 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput24615 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node862⟩

theorem canonicalSound24615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24615.moment H = canonicalOutput24615.moment H :=
  canonical_of_padded canonicalInput24615 canonicalOutput24615 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24616 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 2, 1, -3], ![0, -1, 2, -1]]⟩

def canonicalOutput24616 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound24616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24616.moment H = canonicalOutput24616.moment H :=
  canonical_of_padded canonicalInput24616 canonicalOutput24616 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24617 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 2, 2, -4], ![0, -1, 1, 0]]⟩

def canonicalOutput24617 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node149⟩

theorem canonicalSound24617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24617.moment H = canonicalOutput24617.moment H :=
  canonical_of_padded canonicalInput24617 canonicalOutput24617 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24618 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24618 : ExponentCode := normalNode10974

theorem canonicalSound24618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24618.moment H = canonicalOutput24618.moment H :=
  canonical_of_padded canonicalInput24618 canonicalOutput24618 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24619 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24619 : ExponentCode := normalNode11084

theorem canonicalSound24619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24619.moment H = canonicalOutput24619.moment H :=
  canonical_of_padded canonicalInput24619 canonicalOutput24619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24620 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![-1, 2, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput24620 : ExponentCode := normalNode10998

theorem canonicalSound24620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24620.moment H = canonicalOutput24620.moment H :=
  canonical_of_padded canonicalInput24620 canonicalOutput24620 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24621 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput24621 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound24621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24621.moment H = canonicalOutput24621.moment H :=
  canonical_of_padded canonicalInput24621 canonicalOutput24621 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24622 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput24622 : ExponentCode := normalNode10974

theorem canonicalSound24622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24622.moment H = canonicalOutput24622.moment H :=
  canonical_of_padded canonicalInput24622 canonicalOutput24622 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24623 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput24623 : ExponentCode := normalNode11043

theorem canonicalSound24623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24623.moment H = canonicalOutput24623.moment H :=
  canonical_of_padded canonicalInput24623 canonicalOutput24623 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24624 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput24624 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node876⟩

theorem canonicalSound24624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24624.moment H = canonicalOutput24624.moment H :=
  canonical_of_padded canonicalInput24624 canonicalOutput24624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24625 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput24625 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node862⟩

theorem canonicalSound24625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24625.moment H = canonicalOutput24625.moment H :=
  canonical_of_padded canonicalInput24625 canonicalOutput24625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24626 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, 0, -1, 1]]⟩

def canonicalOutput24626 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node267⟩

theorem canonicalSound24626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24626.moment H = canonicalOutput24626.moment H :=
  canonical_of_padded canonicalInput24626 canonicalOutput24626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24627 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput24627 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound24627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24627.moment H = canonicalOutput24627.moment H :=
  canonical_of_padded canonicalInput24627 canonicalOutput24627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24628 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, -1, -1, 2]]⟩

def canonicalOutput24628 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound24628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24628.moment H = canonicalOutput24628.moment H :=
  canonical_of_padded canonicalInput24628 canonicalOutput24628 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24629 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput24629 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound24629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24629.moment H = canonicalOutput24629.moment H :=
  canonical_of_padded canonicalInput24629 canonicalOutput24629 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24630 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 2, -2], ![-1, 2, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound24630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24630.moment H = canonicalOutput24630.moment H :=
  canonical_of_padded canonicalInput24630 canonicalOutput24630 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24631 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![0, 0, -1, 1]]⟩

def canonicalOutput24631 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound24631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24631.moment H = canonicalOutput24631.moment H :=
  canonical_of_padded canonicalInput24631 canonicalOutput24631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24632 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, -1, 1, 0]]⟩

def canonicalOutput24632 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound24632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24632.moment H = canonicalOutput24632.moment H :=
  canonical_of_padded canonicalInput24632 canonicalOutput24632 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24633 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 3, -3], ![-1, 2, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24633 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound24633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24633.moment H = canonicalOutput24633.moment H :=
  canonical_of_padded canonicalInput24633 canonicalOutput24633 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24634 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput24634 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound24634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24634.moment H = canonicalOutput24634.moment H :=
  canonical_of_padded canonicalInput24634 canonicalOutput24634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24635 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput24635 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound24635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24635.moment H = canonicalOutput24635.moment H :=
  canonical_of_padded canonicalInput24635 canonicalOutput24635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24636 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput24636 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound24636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24636.moment H = canonicalOutput24636.moment H :=
  canonical_of_padded canonicalInput24636 canonicalOutput24636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24637 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 3, -3], ![0, 2, -1, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput24637 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound24637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24637.moment H = canonicalOutput24637.moment H :=
  canonical_of_padded canonicalInput24637 canonicalOutput24637 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24638 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 4, -4], ![-1, 2, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput24638 : ExponentCode := normalNode11149

theorem canonicalSound24638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24638.moment H = canonicalOutput24638.moment H :=
  canonical_of_padded canonicalInput24638 canonicalOutput24638 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24639 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 0, 4, -4], ![0, 2, -2, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput24639 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound24639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24639.moment H = canonicalOutput24639.moment H :=
  canonical_of_padded canonicalInput24639 canonicalOutput24639 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

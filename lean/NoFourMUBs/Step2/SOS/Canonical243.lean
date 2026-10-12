import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15552 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15552 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound15552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15552.moment H = canonicalOutput15552.moment H :=
  canonical_of_padded canonicalInput15552 canonicalOutput15552 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15553 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15553 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound15553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15553.moment H = canonicalOutput15553.moment H :=
  canonical_of_padded canonicalInput15553 canonicalOutput15553 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15554 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15554 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound15554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15554.moment H = canonicalOutput15554.moment H :=
  canonical_of_padded canonicalInput15554 canonicalOutput15554 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15555 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15555 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩

theorem canonicalSound15555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15555.moment H = canonicalOutput15555.moment H :=
  canonical_of_padded canonicalInput15555 canonicalOutput15555 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15556 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15556 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2544⟩

theorem canonicalSound15556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15556.moment H = canonicalOutput15556.moment H :=
  canonical_of_padded canonicalInput15556 canonicalOutput15556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15557 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15557 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2699⟩

theorem canonicalSound15557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15557.moment H = canonicalOutput15557.moment H :=
  canonical_of_padded canonicalInput15557 canonicalOutput15557 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15558 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15558 : ExponentCode := normalNode3534

theorem canonicalSound15558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15558.moment H = canonicalOutput15558.moment H :=
  canonical_of_padded canonicalInput15558 canonicalOutput15558 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15559 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15559 : ExponentCode := normalNode5368

theorem canonicalSound15559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15559.moment H = canonicalOutput15559.moment H :=
  canonical_of_padded canonicalInput15559 canonicalOutput15559 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15560 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15560 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound15560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15560.moment H = canonicalOutput15560.moment H :=
  canonical_of_padded canonicalInput15560 canonicalOutput15560 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15561 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15561 : ExponentCode := normalNode8053

theorem canonicalSound15561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15561.moment H = canonicalOutput15561.moment H :=
  canonical_of_padded canonicalInput15561 canonicalOutput15561 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput15562 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15562 : ExponentCode := normalNode9225

theorem canonicalSound15562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15562.moment H = canonicalOutput15562.moment H :=
  canonical_of_padded canonicalInput15562 canonicalOutput15562 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15563 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15563 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2545⟩

theorem canonicalSound15563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15563.moment H = canonicalOutput15563.moment H :=
  canonical_of_padded canonicalInput15563 canonicalOutput15563 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15564 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15564 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2698⟩

theorem canonicalSound15564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15564.moment H = canonicalOutput15564.moment H :=
  canonical_of_padded canonicalInput15564 canonicalOutput15564 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15565 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15565 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2698⟩

theorem canonicalSound15565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15565.moment H = canonicalOutput15565.moment H :=
  canonical_of_padded canonicalInput15565 canonicalOutput15565 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15566 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15566 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2419⟩

theorem canonicalSound15566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15566.moment H = canonicalOutput15566.moment H :=
  canonical_of_padded canonicalInput15566 canonicalOutput15566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15567 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15567 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2531⟩

theorem canonicalSound15567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15567.moment H = canonicalOutput15567.moment H :=
  canonical_of_padded canonicalInput15567 canonicalOutput15567 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15568 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15568 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node969⟩

theorem canonicalSound15568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15568.moment H = canonicalOutput15568.moment H :=
  canonical_of_padded canonicalInput15568 canonicalOutput15568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15569 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15569 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node970⟩

theorem canonicalSound15569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15569.moment H = canonicalOutput15569.moment H :=
  canonical_of_padded canonicalInput15569 canonicalOutput15569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15570 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15570 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2819⟩

theorem canonicalSound15570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15570.moment H = canonicalOutput15570.moment H :=
  canonical_of_padded canonicalInput15570 canonicalOutput15570 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15571 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩

theorem canonicalSound15571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15571.moment H = canonicalOutput15571.moment H :=
  canonical_of_padded canonicalInput15571 canonicalOutput15571 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15572 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput15572 : ExponentCode := normalNode3596

theorem canonicalSound15572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15572.moment H = canonicalOutput15572.moment H :=
  canonical_of_padded canonicalInput15572 canonicalOutput15572 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15573 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15573 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2742⟩

theorem canonicalSound15573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15573.moment H = canonicalOutput15573.moment H :=
  canonical_of_padded canonicalInput15573 canonicalOutput15573 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15574 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15574 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1631⟩

theorem canonicalSound15574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15574.moment H = canonicalOutput15574.moment H :=
  canonical_of_padded canonicalInput15574 canonicalOutput15574 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15575 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15575 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node974⟩

theorem canonicalSound15575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15575.moment H = canonicalOutput15575.moment H :=
  canonical_of_padded canonicalInput15575 canonicalOutput15575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15576 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15576 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node974⟩

theorem canonicalSound15576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15576.moment H = canonicalOutput15576.moment H :=
  canonical_of_padded canonicalInput15576 canonicalOutput15576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput15577 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 3, -3], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15577 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1978⟩

theorem canonicalSound15577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15577.moment H = canonicalOutput15577.moment H :=
  canonical_of_padded canonicalInput15577 canonicalOutput15577 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15578 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 0, 3, -3], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15578 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩

theorem canonicalSound15578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15578.moment H = canonicalOutput15578.moment H :=
  canonical_of_padded canonicalInput15578 canonicalOutput15578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15579 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15579 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound15579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15579.moment H = canonicalOutput15579.moment H :=
  canonical_of_padded canonicalInput15579 canonicalOutput15579 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15580 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15580 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2708⟩

theorem canonicalSound15580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15580.moment H = canonicalOutput15580.moment H :=
  canonical_of_padded canonicalInput15580 canonicalOutput15580 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15581 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15581 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2551⟩

theorem canonicalSound15581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15581.moment H = canonicalOutput15581.moment H :=
  canonical_of_padded canonicalInput15581 canonicalOutput15581 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15582 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15582 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1506⟩

theorem canonicalSound15582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15582.moment H = canonicalOutput15582.moment H :=
  canonical_of_padded canonicalInput15582 canonicalOutput15582 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15583 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15583 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2704⟩

theorem canonicalSound15583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15583.moment H = canonicalOutput15583.moment H :=
  canonical_of_padded canonicalInput15583 canonicalOutput15583 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15584 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15584 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound15584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15584.moment H = canonicalOutput15584.moment H :=
  canonical_of_padded canonicalInput15584 canonicalOutput15584 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15585 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 1, 2, -3], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15585 : ExponentCode := normalNode10276

theorem canonicalSound15585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15585.moment H = canonicalOutput15585.moment H :=
  canonical_of_padded canonicalInput15585 canonicalOutput15585 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15586 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 2, -2, 0], ![0, 0, -2, 3, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15586 : ExponentCode := normalNode3388

theorem canonicalSound15586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15586.moment H = canonicalOutput15586.moment H :=
  canonical_of_padded canonicalInput15586 canonicalOutput15586 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15587 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 2, -2, 0], ![0, 1, -2, 2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15587 : ExponentCode := normalNode3608

theorem canonicalSound15587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15587.moment H = canonicalOutput15587.moment H :=
  canonical_of_padded canonicalInput15587 canonicalOutput15587 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15588 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput15588 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound15588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15588.moment H = canonicalOutput15588.moment H :=
  canonical_of_padded canonicalInput15588 canonicalOutput15588 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15589 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, 2, 0, -2], ![0, 0, -2, 3, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15589 : ExponentCode := normalNode3395

theorem canonicalSound15589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15589.moment H = canonicalOutput15589.moment H :=
  canonical_of_padded canonicalInput15589 canonicalOutput15589 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15590 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 1, -2, 1, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15590 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound15590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15590.moment H = canonicalOutput15590.moment H :=
  canonical_of_padded canonicalInput15590 canonicalOutput15590 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15591 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 1, -2, 2, -1], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15591 : ExponentCode := normalNode3608

theorem canonicalSound15591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15591.moment H = canonicalOutput15591.moment H :=
  canonical_of_padded canonicalInput15591 canonicalOutput15591 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15592 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 1, -2, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15592 : ExponentCode := normalNode3519

theorem canonicalSound15592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15592.moment H = canonicalOutput15592.moment H :=
  canonical_of_padded canonicalInput15592 canonicalOutput15592 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15593 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 1, -2, 3, -2], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15593 : ExponentCode := normalNode10819

theorem canonicalSound15593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15593.moment H = canonicalOutput15593.moment H :=
  canonical_of_padded canonicalInput15593 canonicalOutput15593 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15594 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 1, -2, 3, -2], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15594 : ExponentCode := normalNode3536

theorem canonicalSound15594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15594.moment H = canonicalOutput15594.moment H :=
  canonical_of_padded canonicalInput15594 canonicalOutput15594 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15595 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 1, -1, 3, -3], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2815⟩

theorem canonicalSound15595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15595.moment H = canonicalOutput15595.moment H :=
  canonical_of_padded canonicalInput15595 canonicalOutput15595 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15596 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![1, -1, -2, 3, -1], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput15596 : ExponentCode := normalNode3381

theorem canonicalSound15596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15596.moment H = canonicalOutput15596.moment H :=
  canonical_of_padded canonicalInput15596 canonicalOutput15596 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15597 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![1, -1, -2, 3, -1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput15597 : ExponentCode := normalNode3384

theorem canonicalSound15597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15597.moment H = canonicalOutput15597.moment H :=
  canonical_of_padded canonicalInput15597 canonicalOutput15597 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15598 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![1, 1, 0, 0, 0, -2]]⟩

def canonicalOutput15598 : ExponentCode := normalNode3665

theorem canonicalSound15598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15598.moment H = canonicalOutput15598.moment H :=
  canonical_of_padded canonicalInput15598 canonicalOutput15598 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput15599 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 1, 1, 1, -2, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15599 : ExponentCode := normalNode10745

theorem canonicalSound15599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15599.moment H = canonicalOutput15599.moment H :=
  canonical_of_padded canonicalInput15599 canonicalOutput15599 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput15600 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![1, -1, 1, 1, -2, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput15600 : ExponentCode := normalNode3677

theorem canonicalSound15600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15600.moment H = canonicalOutput15600.moment H :=
  canonical_of_padded canonicalInput15600 canonicalOutput15600 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation175⟩ (by decide +kernel) hH

def canonicalInput15601 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![0, 1, 1, -2, 1, -1], ![0, 0, 1, 1, -2, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15601 : ExponentCode := normalNode10745

theorem canonicalSound15601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15601.moment H = canonicalOutput15601.moment H :=
  canonical_of_padded canonicalInput15601 canonicalOutput15601 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation71⟩ (by decide +kernel) hH

def canonicalInput15602 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -2, 1, 1, 0], ![1, -1, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput15602 : ExponentCode := normalNode3677

theorem canonicalSound15602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15602.moment H = canonicalOutput15602.moment H :=
  canonical_of_padded canonicalInput15602 canonicalOutput15602 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation236, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput15603 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![1, 1, 0, 0, 0, -2]]⟩

def canonicalOutput15603 : ExponentCode := normalNode3665

theorem canonicalSound15603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15603.moment H = canonicalOutput15603.moment H :=
  canonical_of_padded canonicalInput15603 canonicalOutput15603 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15604 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 1, 2, -1, -1, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15604 : ExponentCode := normalNode10742

theorem canonicalSound15604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15604.moment H = canonicalOutput15604.moment H :=
  canonical_of_padded canonicalInput15604 canonicalOutput15604 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput15605 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![1, -1, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput15605 : ExponentCode := normalNode3672

theorem canonicalSound15605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15605.moment H = canonicalOutput15605.moment H :=
  canonical_of_padded canonicalInput15605 canonicalOutput15605 (by decide) (by decide)
    ⟨true, true, canonicalPermutation113, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput15606 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, 1, 0, -1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 1, -1, -1]]⟩

def canonicalOutput15606 : ExponentCode := normalNode10034

theorem canonicalSound15606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15606.moment H = canonicalOutput15606.moment H :=
  canonical_of_padded canonicalInput15606 canonicalOutput15606 (by decide) (by decide)
    ⟨true, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput15607 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, 1, 0, -1, 0], ![0, 1, 0, 1, -1, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15607 : ExponentCode := normalNode10034

theorem canonicalSound15607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15607.moment H = canonicalOutput15607.moment H :=
  canonical_of_padded canonicalInput15607 canonicalOutput15607 (by decide) (by decide)
    ⟨true, false, canonicalPermutation10, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput15608 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, 1, 1, -2, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15608 : ExponentCode := normalNode8282

theorem canonicalSound15608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15608.moment H = canonicalOutput15608.moment H :=
  canonical_of_padded canonicalInput15608 canonicalOutput15608 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput15609 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 1, -1, 2, -1, -1], ![0, 0, 2, -1, -1, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15609 : ExponentCode := normalNode10742

theorem canonicalSound15609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15609.moment H = canonicalOutput15609.moment H :=
  canonical_of_padded canonicalInput15609 canonicalOutput15609 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, canonicalPermutation71⟩ (by decide +kernel) hH

def canonicalInput15610 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![1, -1, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput15610 : ExponentCode := normalNode3672

theorem canonicalSound15610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15610.moment H = canonicalOutput15610.moment H :=
  canonical_of_padded canonicalInput15610 canonicalOutput15610 (by decide) (by decide)
    ⟨true, true, canonicalPermutation114, canonicalPermutation71⟩ (by decide +kernel) hH

def canonicalInput15611 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, 0, 1, 0], ![0, 0, 1, 0, -1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15611 : ExponentCode := normalNode8361

theorem canonicalSound15611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15611.moment H = canonicalOutput15611.moment H :=
  canonical_of_padded canonicalInput15611 canonicalOutput15611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation241⟩ (by decide +kernel) hH

def canonicalInput15612 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, 1, 0, 0], ![0, 0, 1, -1, 0, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15612 : ExponentCode := normalNode8361

theorem canonicalSound15612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15612.moment H = canonicalOutput15612.moment H :=
  canonical_of_padded canonicalInput15612 canonicalOutput15612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation258⟩ (by decide +kernel) hH

def canonicalInput15613 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, -1, 2, -1, 0], ![0, 0, 1, -2, 1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15613 : ExponentCode := normalNode8282

theorem canonicalSound15613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15613.moment H = canonicalOutput15613.moment H :=
  canonical_of_padded canonicalInput15613 canonicalOutput15613 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput15614 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15614 : ExponentCode := normalNode8361

theorem canonicalSound15614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15614.moment H = canonicalOutput15614.moment H :=
  canonical_of_padded canonicalInput15614 canonicalOutput15614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput15615 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, -1, 0, 0], ![0, 1, -1, 0, 1, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15615 : ExponentCode := normalNode10400

theorem canonicalSound15615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15615.moment H = canonicalOutput15615.moment H :=
  canonical_of_padded canonicalInput15615 canonicalOutput15615 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

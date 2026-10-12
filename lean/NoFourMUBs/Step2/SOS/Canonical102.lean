import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6528 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6528 : ExponentCode := normalNode9416

theorem canonicalSound6528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6528.moment H = canonicalOutput6528.moment H :=
  canonical_of_padded canonicalInput6528 canonicalOutput6528 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6529 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6529 : ExponentCode := normalNode8953

theorem canonicalSound6529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6529.moment H = canonicalOutput6529.moment H :=
  canonical_of_padded canonicalInput6529 canonicalOutput6529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6530 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6530 : ExponentCode := normalNode10817

theorem canonicalSound6530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6530.moment H = canonicalOutput6530.moment H :=
  canonical_of_padded canonicalInput6530 canonicalOutput6530 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6531 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound6531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6531.moment H = canonicalOutput6531.moment H :=
  canonical_of_padded canonicalInput6531 canonicalOutput6531 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput6532 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput6532 : ExponentCode := normalNode10527

theorem canonicalSound6532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6532.moment H = canonicalOutput6532.moment H :=
  canonical_of_padded canonicalInput6532 canonicalOutput6532 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6533 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6533 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1630⟩

theorem canonicalSound6533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6533.moment H = canonicalOutput6533.moment H :=
  canonical_of_padded canonicalInput6533 canonicalOutput6533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6534 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput6534 : ExponentCode := normalNode1802

theorem canonicalSound6534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6534.moment H = canonicalOutput6534.moment H :=
  canonical_of_padded canonicalInput6534 canonicalOutput6534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6535 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6535 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1637⟩

theorem canonicalSound6535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6535.moment H = canonicalOutput6535.moment H :=
  canonical_of_padded canonicalInput6535 canonicalOutput6535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6536 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6536 : ExponentCode := normalNode4713

theorem canonicalSound6536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6536.moment H = canonicalOutput6536.moment H :=
  canonical_of_padded canonicalInput6536 canonicalOutput6536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6537 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput6537 : ExponentCode := normalNode10536

theorem canonicalSound6537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6537.moment H = canonicalOutput6537.moment H :=
  canonical_of_padded canonicalInput6537 canonicalOutput6537 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6538 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6538 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2803⟩

theorem canonicalSound6538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6538.moment H = canonicalOutput6538.moment H :=
  canonical_of_padded canonicalInput6538 canonicalOutput6538 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6539 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput6539 : ExponentCode := normalNode10536

theorem canonicalSound6539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6539.moment H = canonicalOutput6539.moment H :=
  canonical_of_padded canonicalInput6539 canonicalOutput6539 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6540 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput6540 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound6540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6540.moment H = canonicalOutput6540.moment H :=
  canonical_of_padded canonicalInput6540 canonicalOutput6540 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6541 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6541 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2748⟩

theorem canonicalSound6541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6541.moment H = canonicalOutput6541.moment H :=
  canonical_of_padded canonicalInput6541 canonicalOutput6541 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6542 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6542 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2605⟩

theorem canonicalSound6542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6542.moment H = canonicalOutput6542.moment H :=
  canonical_of_padded canonicalInput6542 canonicalOutput6542 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6543 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6543 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2605⟩

theorem canonicalSound6543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6543.moment H = canonicalOutput6543.moment H :=
  canonical_of_padded canonicalInput6543 canonicalOutput6543 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6544 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput6544 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound6544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6544.moment H = canonicalOutput6544.moment H :=
  canonical_of_padded canonicalInput6544 canonicalOutput6544 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6545 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6545 : ExponentCode := normalNode9911

theorem canonicalSound6545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6545.moment H = canonicalOutput6545.moment H :=
  canonical_of_padded canonicalInput6545 canonicalOutput6545 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6546 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6546 : ExponentCode := normalNode9685

theorem canonicalSound6546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6546.moment H = canonicalOutput6546.moment H :=
  canonical_of_padded canonicalInput6546 canonicalOutput6546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6547 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6547 : ExponentCode := normalNode9685

theorem canonicalSound6547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6547.moment H = canonicalOutput6547.moment H :=
  canonical_of_padded canonicalInput6547 canonicalOutput6547 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6548 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput6548 : ExponentCode := normalNode3492

theorem canonicalSound6548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6548.moment H = canonicalOutput6548.moment H :=
  canonical_of_padded canonicalInput6548 canonicalOutput6548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6549 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6549 : ExponentCode := normalNode3491

theorem canonicalSound6549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6549.moment H = canonicalOutput6549.moment H :=
  canonical_of_padded canonicalInput6549 canonicalOutput6549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6550 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6550 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound6550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6550.moment H = canonicalOutput6550.moment H :=
  canonical_of_padded canonicalInput6550 canonicalOutput6550 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6551 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6551 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound6551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6551.moment H = canonicalOutput6551.moment H :=
  canonical_of_padded canonicalInput6551 canonicalOutput6551 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6552 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6552 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1720⟩

theorem canonicalSound6552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6552.moment H = canonicalOutput6552.moment H :=
  canonical_of_padded canonicalInput6552 canonicalOutput6552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6553 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6553 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1720⟩

theorem canonicalSound6553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6553.moment H = canonicalOutput6553.moment H :=
  canonical_of_padded canonicalInput6553 canonicalOutput6553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6554 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput6554 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node897⟩

theorem canonicalSound6554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6554.moment H = canonicalOutput6554.moment H :=
  canonical_of_padded canonicalInput6554 canonicalOutput6554 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6555 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6555 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound6555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6555.moment H = canonicalOutput6555.moment H :=
  canonical_of_padded canonicalInput6555 canonicalOutput6555 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6556 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6556 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound6556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6556.moment H = canonicalOutput6556.moment H :=
  canonical_of_padded canonicalInput6556 canonicalOutput6556 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6557 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6557 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound6557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6557.moment H = canonicalOutput6557.moment H :=
  canonical_of_padded canonicalInput6557 canonicalOutput6557 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6558 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 1, 0], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6558 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound6558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6558.moment H = canonicalOutput6558.moment H :=
  canonical_of_padded canonicalInput6558 canonicalOutput6558 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6559 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6559 : ExponentCode := normalNode3453

theorem canonicalSound6559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6559.moment H = canonicalOutput6559.moment H :=
  canonical_of_padded canonicalInput6559 canonicalOutput6559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6560 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, -1, 1, 0], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6560 : ExponentCode := normalNode3457

theorem canonicalSound6560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6560.moment H = canonicalOutput6560.moment H :=
  canonical_of_padded canonicalInput6560 canonicalOutput6560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6561 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6561 : ExponentCode := normalNode9384

theorem canonicalSound6561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6561.moment H = canonicalOutput6561.moment H :=
  canonical_of_padded canonicalInput6561 canonicalOutput6561 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6562 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput6562 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound6562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6562.moment H = canonicalOutput6562.moment H :=
  canonical_of_padded canonicalInput6562 canonicalOutput6562 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6563 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6563 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound6563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6563.moment H = canonicalOutput6563.moment H :=
  canonical_of_padded canonicalInput6563 canonicalOutput6563 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput6564 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6564 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound6564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6564.moment H = canonicalOutput6564.moment H :=
  canonical_of_padded canonicalInput6564 canonicalOutput6564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6565 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6565 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound6565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6565.moment H = canonicalOutput6565.moment H :=
  canonical_of_padded canonicalInput6565 canonicalOutput6565 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6566 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput6566 : ExponentCode := normalNode10236

theorem canonicalSound6566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6566.moment H = canonicalOutput6566.moment H :=
  canonical_of_padded canonicalInput6566 canonicalOutput6566 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6567 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput6567 : ExponentCode := normalNode8993

theorem canonicalSound6567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6567.moment H = canonicalOutput6567.moment H :=
  canonical_of_padded canonicalInput6567 canonicalOutput6567 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6568 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6568 : ExponentCode := normalNode9413

theorem canonicalSound6568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6568.moment H = canonicalOutput6568.moment H :=
  canonical_of_padded canonicalInput6568 canonicalOutput6568 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6569 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6569 : ExponentCode := normalNode8969

theorem canonicalSound6569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6569.moment H = canonicalOutput6569.moment H :=
  canonical_of_padded canonicalInput6569 canonicalOutput6569 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6570 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6570 : ExponentCode := normalNode9413

theorem canonicalSound6570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6570.moment H = canonicalOutput6570.moment H :=
  canonical_of_padded canonicalInput6570 canonicalOutput6570 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6571 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput6571 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1303⟩

theorem canonicalSound6571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6571.moment H = canonicalOutput6571.moment H :=
  canonical_of_padded canonicalInput6571 canonicalOutput6571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6572 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput6572 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound6572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6572.moment H = canonicalOutput6572.moment H :=
  canonical_of_padded canonicalInput6572 canonicalOutput6572 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6573 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput6573 : ExponentCode := normalNode10236

theorem canonicalSound6573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6573.moment H = canonicalOutput6573.moment H :=
  canonical_of_padded canonicalInput6573 canonicalOutput6573 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6574 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput6574 : ExponentCode := normalNode3513

theorem canonicalSound6574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6574.moment H = canonicalOutput6574.moment H :=
  canonical_of_padded canonicalInput6574 canonicalOutput6574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6575 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput6575 : ExponentCode := normalNode1778

theorem canonicalSound6575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6575.moment H = canonicalOutput6575.moment H :=
  canonical_of_padded canonicalInput6575 canonicalOutput6575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6576 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput6576 : ExponentCode := normalNode1778

theorem canonicalSound6576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6576.moment H = canonicalOutput6576.moment H :=
  canonical_of_padded canonicalInput6576 canonicalOutput6576 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6577 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput6577 : ExponentCode := normalNode2004

theorem canonicalSound6577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6577.moment H = canonicalOutput6577.moment H :=
  canonical_of_padded canonicalInput6577 canonicalOutput6577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6578 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput6578 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1689⟩

theorem canonicalSound6578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6578.moment H = canonicalOutput6578.moment H :=
  canonical_of_padded canonicalInput6578 canonicalOutput6578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6579 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6579 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound6579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6579.moment H = canonicalOutput6579.moment H :=
  canonical_of_padded canonicalInput6579 canonicalOutput6579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6580 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6580 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2750⟩

theorem canonicalSound6580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6580.moment H = canonicalOutput6580.moment H :=
  canonical_of_padded canonicalInput6580 canonicalOutput6580 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6581 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6581 : ExponentCode := normalNode10238

theorem canonicalSound6581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6581.moment H = canonicalOutput6581.moment H :=
  canonical_of_padded canonicalInput6581 canonicalOutput6581 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6582 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6582 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound6582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6582.moment H = canonicalOutput6582.moment H :=
  canonical_of_padded canonicalInput6582 canonicalOutput6582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6583 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6583 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound6583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6583.moment H = canonicalOutput6583.moment H :=
  canonical_of_padded canonicalInput6583 canonicalOutput6583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6584 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6584 : ExponentCode := normalNode3521

theorem canonicalSound6584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6584.moment H = canonicalOutput6584.moment H :=
  canonical_of_padded canonicalInput6584 canonicalOutput6584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6585 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput6585 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1703⟩

theorem canonicalSound6585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6585.moment H = canonicalOutput6585.moment H :=
  canonical_of_padded canonicalInput6585 canonicalOutput6585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6586 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6586 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1704⟩

theorem canonicalSound6586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6586.moment H = canonicalOutput6586.moment H :=
  canonical_of_padded canonicalInput6586 canonicalOutput6586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6587 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput6587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩

theorem canonicalSound6587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6587.moment H = canonicalOutput6587.moment H :=
  canonical_of_padded canonicalInput6587 canonicalOutput6587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6588 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6588 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound6588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6588.moment H = canonicalOutput6588.moment H :=
  canonical_of_padded canonicalInput6588 canonicalOutput6588 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6589 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput6589 : ExponentCode := normalNode7917

theorem canonicalSound6589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6589.moment H = canonicalOutput6589.moment H :=
  canonical_of_padded canonicalInput6589 canonicalOutput6589 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6590 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6590 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound6590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6590.moment H = canonicalOutput6590.moment H :=
  canonical_of_padded canonicalInput6590 canonicalOutput6590 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6591 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6591 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2145⟩

theorem canonicalSound6591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6591.moment H = canonicalOutput6591.moment H :=
  canonical_of_padded canonicalInput6591 canonicalOutput6591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

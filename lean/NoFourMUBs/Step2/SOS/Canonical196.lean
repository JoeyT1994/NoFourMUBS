import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12544 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12544 : ExponentCode := normalNode6129

theorem canonicalSound12544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12544.moment H = canonicalOutput12544.moment H :=
  canonical_of_padded canonicalInput12544 canonicalOutput12544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12545 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput12545 : ExponentCode := normalNode6129

theorem canonicalSound12545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12545.moment H = canonicalOutput12545.moment H :=
  canonical_of_padded canonicalInput12545 canonicalOutput12545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12546 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput12546 : ExponentCode := normalNode7118

theorem canonicalSound12546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12546.moment H = canonicalOutput12546.moment H :=
  canonical_of_padded canonicalInput12546 canonicalOutput12546 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12547 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput12547 : ExponentCode := normalNode6751

theorem canonicalSound12547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12547.moment H = canonicalOutput12547.moment H :=
  canonical_of_padded canonicalInput12547 canonicalOutput12547 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12548 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12548 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound12548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12548.moment H = canonicalOutput12548.moment H :=
  canonical_of_padded canonicalInput12548 canonicalOutput12548 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12549 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput12549 : ExponentCode := normalNode7075

theorem canonicalSound12549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12549.moment H = canonicalOutput12549.moment H :=
  canonical_of_padded canonicalInput12549 canonicalOutput12549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12550 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12550 : ExponentCode := normalNode6069

theorem canonicalSound12550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12550.moment H = canonicalOutput12550.moment H :=
  canonical_of_padded canonicalInput12550 canonicalOutput12550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12551 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, 0, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12551 : ExponentCode := normalNode10965

theorem canonicalSound12551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12551.moment H = canonicalOutput12551.moment H :=
  canonical_of_padded canonicalInput12551 canonicalOutput12551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12552 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![0, 1, 0, -1]]⟩

def canonicalOutput12552 : ExponentCode := normalNode11001

theorem canonicalSound12552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12552.moment H = canonicalOutput12552.moment H :=
  canonical_of_padded canonicalInput12552 canonicalOutput12552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12553 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12553 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound12553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12553.moment H = canonicalOutput12553.moment H :=
  canonical_of_padded canonicalInput12553 canonicalOutput12553 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12554 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput12554 : ExponentCode := normalNode6113

theorem canonicalSound12554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12554.moment H = canonicalOutput12554.moment H :=
  canonical_of_padded canonicalInput12554 canonicalOutput12554 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12555 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12555 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node799⟩

theorem canonicalSound12555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12555.moment H = canonicalOutput12555.moment H :=
  canonical_of_padded canonicalInput12555 canonicalOutput12555 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12556 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 1, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12556 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound12556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12556.moment H = canonicalOutput12556.moment H :=
  canonical_of_padded canonicalInput12556 canonicalOutput12556 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12557 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12557 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound12557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12557.moment H = canonicalOutput12557.moment H :=
  canonical_of_padded canonicalInput12557 canonicalOutput12557 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12558 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12558 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound12558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12558.moment H = canonicalOutput12558.moment H :=
  canonical_of_padded canonicalInput12558 canonicalOutput12558 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12559 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12559 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound12559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12559.moment H = canonicalOutput12559.moment H :=
  canonical_of_padded canonicalInput12559 canonicalOutput12559 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12560 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12560 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1094⟩

theorem canonicalSound12560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12560.moment H = canonicalOutput12560.moment H :=
  canonical_of_padded canonicalInput12560 canonicalOutput12560 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12561 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 1, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12561 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound12561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12561.moment H = canonicalOutput12561.moment H :=
  canonical_of_padded canonicalInput12561 canonicalOutput12561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12562 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 2, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12562 : ExponentCode := normalNode6125

theorem canonicalSound12562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12562.moment H = canonicalOutput12562.moment H :=
  canonical_of_padded canonicalInput12562 canonicalOutput12562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12563 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput12563 : ExponentCode := normalNode7118

theorem canonicalSound12563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12563.moment H = canonicalOutput12563.moment H :=
  canonical_of_padded canonicalInput12563 canonicalOutput12563 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12564 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput12564 : ExponentCode := normalNode6113

theorem canonicalSound12564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12564.moment H = canonicalOutput12564.moment H :=
  canonical_of_padded canonicalInput12564 canonicalOutput12564 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12565 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, 2, -3], ![1, 0, -1, 0], ![0, 2, -2, 0]]⟩

def canonicalOutput12565 : ExponentCode := normalNode7121

theorem canonicalSound12565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12565.moment H = canonicalOutput12565.moment H :=
  canonical_of_padded canonicalInput12565 canonicalOutput12565 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12566 : ExponentCode := ⟨3, 4, ![![-1, -3, 1, 3], ![0, 1, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput12566 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound12566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12566.moment H = canonicalOutput12566.moment H :=
  canonical_of_padded canonicalInput12566 canonicalOutput12566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12567 : ExponentCode := ⟨3, 4, ![![-1, -3, 1, 3], ![0, 2, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput12567 : ExponentCode := normalNode216

theorem canonicalSound12567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12567.moment H = canonicalOutput12567.moment H :=
  canonical_of_padded canonicalInput12567 canonicalOutput12567 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12568 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput12568 : ExponentCode := normalNode6751

theorem canonicalSound12568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12568.moment H = canonicalOutput12568.moment H :=
  canonical_of_padded canonicalInput12568 canonicalOutput12568 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12569 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, -2, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12569 : ExponentCode := normalNode7121

theorem canonicalSound12569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12569.moment H = canonicalOutput12569.moment H :=
  canonical_of_padded canonicalInput12569 canonicalOutput12569 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12570 : ExponentCode := ⟨3, 4, ![![-1, -3, 1, 3], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12570 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node170⟩

theorem canonicalSound12570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12570.moment H = canonicalOutput12570.moment H :=
  canonical_of_padded canonicalInput12570 canonicalOutput12570 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12571 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, -1, -1], ![0, 0, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12571 : ExponentCode := normalNode6121

theorem canonicalSound12571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12571.moment H = canonicalOutput12571.moment H :=
  canonical_of_padded canonicalInput12571 canonicalOutput12571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12572 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, 0, -2], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12572 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound12572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12572.moment H = canonicalOutput12572.moment H :=
  canonical_of_padded canonicalInput12572 canonicalOutput12572 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12573 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, 0, -2], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12573 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound12573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12573.moment H = canonicalOutput12573.moment H :=
  canonical_of_padded canonicalInput12573 canonicalOutput12573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12574 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, 1, -3], ![0, 0, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput12574 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound12574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12574.moment H = canonicalOutput12574.moment H :=
  canonical_of_padded canonicalInput12574 canonicalOutput12574 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12575 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, 1, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12575 : ExponentCode := normalNode10564

theorem canonicalSound12575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12575.moment H = canonicalOutput12575.moment H :=
  canonical_of_padded canonicalInput12575 canonicalOutput12575 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12576 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 2, 1, -3], ![1, 0, -1, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput12576 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound12576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12576.moment H = canonicalOutput12576.moment H :=
  canonical_of_padded canonicalInput12576 canonicalOutput12576 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12577 : ExponentCode := ⟨3, 4, ![![-1, -3, 1, 3], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput12577 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound12577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12577.moment H = canonicalOutput12577.moment H :=
  canonical_of_padded canonicalInput12577 canonicalOutput12577 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12578 : ExponentCode := ⟨3, 4, ![![-1, -3, 1, 3], ![0, 2, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput12578 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩

theorem canonicalSound12578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12578.moment H = canonicalOutput12578.moment H :=
  canonical_of_padded canonicalInput12578 canonicalOutput12578 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12579 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 3, -3, 0], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12579 : ExponentCode := normalNode6793

theorem canonicalSound12579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12579.moment H = canonicalOutput12579.moment H :=
  canonical_of_padded canonicalInput12579 canonicalOutput12579 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12580 : ExponentCode := ⟨3, 4, ![![-1, -3, 1, 3], ![0, 3, -3, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput12580 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound12580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12580.moment H = canonicalOutput12580.moment H :=
  canonical_of_padded canonicalInput12580 canonicalOutput12580 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12581 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 3, -2, -1], ![0, 0, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12581 : ExponentCode := normalNode10682

theorem canonicalSound12581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12581.moment H = canonicalOutput12581.moment H :=
  canonical_of_padded canonicalInput12581 canonicalOutput12581 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12582 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput12582 : ExponentCode := normalNode5715

theorem canonicalSound12582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12582.moment H = canonicalOutput12582.moment H :=
  canonical_of_padded canonicalInput12582 canonicalOutput12582 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12583 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput12583 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node597⟩

theorem canonicalSound12583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12583.moment H = canonicalOutput12583.moment H :=
  canonical_of_padded canonicalInput12583 canonicalOutput12583 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12584 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput12584 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code591

theorem canonicalSound12584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12584.moment H = canonicalOutput12584.moment H :=
  canonical_of_padded canonicalInput12584 canonicalOutput12584 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12585 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 0, -1, 2], ![1, 1, -2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput12585 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code627

theorem canonicalSound12585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12585.moment H = canonicalOutput12585.moment H :=
  canonical_of_padded canonicalInput12585 canonicalOutput12585 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12586 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 0, -1, 2], ![1, 2, -2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput12586 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1246

theorem canonicalSound12586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12586.moment H = canonicalOutput12586.moment H :=
  canonical_of_padded canonicalInput12586 canonicalOutput12586 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12587 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 0, -1, 2], ![1, 3, 0, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1064⟩

theorem canonicalSound12587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12587.moment H = canonicalOutput12587.moment H :=
  canonical_of_padded canonicalInput12587 canonicalOutput12587 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12588 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput12588 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2175⟩

theorem canonicalSound12588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12588.moment H = canonicalOutput12588.moment H :=
  canonical_of_padded canonicalInput12588 canonicalOutput12588 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12589 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12589 : ExponentCode := normalNode2751

theorem canonicalSound12589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12589.moment H = canonicalOutput12589.moment H :=
  canonical_of_padded canonicalInput12589 canonicalOutput12589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12590 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12590 : ExponentCode := normalNode6147

theorem canonicalSound12590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12590.moment H = canonicalOutput12590.moment H :=
  canonical_of_padded canonicalInput12590 canonicalOutput12590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12591 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![0, 2, -1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput12591 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code481

theorem canonicalSound12591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12591.moment H = canonicalOutput12591.moment H :=
  canonical_of_padded canonicalInput12591 canonicalOutput12591 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12592 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput12592 : ExponentCode := normalNode7079

theorem canonicalSound12592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12592.moment H = canonicalOutput12592.moment H :=
  canonical_of_padded canonicalInput12592 canonicalOutput12592 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12593 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput12593 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code220

theorem canonicalSound12593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12593.moment H = canonicalOutput12593.moment H :=
  canonical_of_padded canonicalInput12593 canonicalOutput12593 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12594 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![1, 1, 1, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput12594 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1285

theorem canonicalSound12594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12594.moment H = canonicalOutput12594.moment H :=
  canonical_of_padded canonicalInput12594 canonicalOutput12594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12595 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -2, 2], ![1, 2, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput12595 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code220

theorem canonicalSound12595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12595.moment H = canonicalOutput12595.moment H :=
  canonical_of_padded canonicalInput12595 canonicalOutput12595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12596 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput12596 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1286

theorem canonicalSound12596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12596.moment H = canonicalOutput12596.moment H :=
  canonical_of_padded canonicalInput12596 canonicalOutput12596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12597 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput12597 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound12597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12597.moment H = canonicalOutput12597.moment H :=
  canonical_of_padded canonicalInput12597 canonicalOutput12597 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12598 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12598 : ExponentCode := normalNode4871

theorem canonicalSound12598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12598.moment H = canonicalOutput12598.moment H :=
  canonical_of_padded canonicalInput12598 canonicalOutput12598 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12599 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12599 : ExponentCode := normalNode6159

theorem canonicalSound12599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12599.moment H = canonicalOutput12599.moment H :=
  canonical_of_padded canonicalInput12599 canonicalOutput12599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12600 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12600 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2167⟩

theorem canonicalSound12600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12600.moment H = canonicalOutput12600.moment H :=
  canonical_of_padded canonicalInput12600 canonicalOutput12600 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12601 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12601 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2161⟩

theorem canonicalSound12601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12601.moment H = canonicalOutput12601.moment H :=
  canonical_of_padded canonicalInput12601 canonicalOutput12601 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12602 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12602 : ExponentCode := normalNode6161

theorem canonicalSound12602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12602.moment H = canonicalOutput12602.moment H :=
  canonical_of_padded canonicalInput12602 canonicalOutput12602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12603 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput12603 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node679⟩

theorem canonicalSound12603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12603.moment H = canonicalOutput12603.moment H :=
  canonical_of_padded canonicalInput12603 canonicalOutput12603 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12604 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput12604 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code435

theorem canonicalSound12604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12604.moment H = canonicalOutput12604.moment H :=
  canonical_of_padded canonicalInput12604 canonicalOutput12604 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12605 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12605 : ExponentCode := normalNode4868

theorem canonicalSound12605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12605.moment H = canonicalOutput12605.moment H :=
  canonical_of_padded canonicalInput12605 canonicalOutput12605 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12606 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput12606 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound12606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12606.moment H = canonicalOutput12606.moment H :=
  canonical_of_padded canonicalInput12606 canonicalOutput12606 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12607 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12607 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2162⟩

theorem canonicalSound12607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12607.moment H = canonicalOutput12607.moment H :=
  canonical_of_padded canonicalInput12607 canonicalOutput12607 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation3⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

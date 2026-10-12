import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11648 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -2, 2], ![1, -3, 0, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput11648 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code912

theorem canonicalSound11648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11648.moment H = canonicalOutput11648.moment H :=
  canonical_of_padded canonicalInput11648 canonicalOutput11648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11649 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -2, 2], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11649 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩

theorem canonicalSound11649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11649.moment H = canonicalOutput11649.moment H :=
  canonical_of_padded canonicalInput11649 canonicalOutput11649 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11650 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11650 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound11650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11650.moment H = canonicalOutput11650.moment H :=
  canonical_of_padded canonicalInput11650 canonicalOutput11650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11651 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput11651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound11651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11651.moment H = canonicalOutput11651.moment H :=
  canonical_of_padded canonicalInput11651 canonicalOutput11651 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput11652 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11652 : ExponentCode := normalNode5844

theorem canonicalSound11652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11652.moment H = canonicalOutput11652.moment H :=
  canonical_of_padded canonicalInput11652 canonicalOutput11652 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11653 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput11653 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2222⟩

theorem canonicalSound11653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11653.moment H = canonicalOutput11653.moment H :=
  canonical_of_padded canonicalInput11653 canonicalOutput11653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11654 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput11654 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound11654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11654.moment H = canonicalOutput11654.moment H :=
  canonical_of_padded canonicalInput11654 canonicalOutput11654 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11655 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -1, 1], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput11655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1372⟩

theorem canonicalSound11655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11655.moment H = canonicalOutput11655.moment H :=
  canonical_of_padded canonicalInput11655 canonicalOutput11655 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11656 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1336⟩

theorem canonicalSound11656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11656.moment H = canonicalOutput11656.moment H :=
  canonical_of_padded canonicalInput11656 canonicalOutput11656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11657 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 0, 0, 0], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput11657 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound11657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11657.moment H = canonicalOutput11657.moment H :=
  canonical_of_padded canonicalInput11657 canonicalOutput11657 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11658 : ExponentCode := ⟨5, 4, ![![-2, 1, 2, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput11658 : ExponentCode := normalNode2378

theorem canonicalSound11658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11658.moment H = canonicalOutput11658.moment H :=
  canonical_of_padded canonicalInput11658 canonicalOutput11658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11659 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, 1, -4, 3], ![2, -2, 2, -2]]⟩

def canonicalOutput11659 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound11659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11659.moment H = canonicalOutput11659.moment H :=
  canonical_of_padded canonicalInput11659 canonicalOutput11659 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11660 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11660 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound11660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11660.moment H = canonicalOutput11660.moment H :=
  canonical_of_padded canonicalInput11660 canonicalOutput11660 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11661 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound11661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11661.moment H = canonicalOutput11661.moment H :=
  canonical_of_padded canonicalInput11661 canonicalOutput11661 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11662 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11662 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound11662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11662.moment H = canonicalOutput11662.moment H :=
  canonical_of_padded canonicalInput11662 canonicalOutput11662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11663 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -3, -2, 3]]⟩

def canonicalOutput11663 : ExponentCode := normalNode7976

theorem canonicalSound11663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11663.moment H = canonicalOutput11663.moment H :=
  canonical_of_padded canonicalInput11663 canonicalOutput11663 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11664 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -1, 0], ![1, -3, -2, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput11664 : ExponentCode := normalNode7906

theorem canonicalSound11664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11664.moment H = canonicalOutput11664.moment H :=
  canonical_of_padded canonicalInput11664 canonicalOutput11664 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11665 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput11665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound11665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11665.moment H = canonicalOutput11665.moment H :=
  canonical_of_padded canonicalInput11665 canonicalOutput11665 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11666 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput11666 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound11666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11666.moment H = canonicalOutput11666.moment H :=
  canonical_of_padded canonicalInput11666 canonicalOutput11666 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11667 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -3, -2, 3]]⟩

def canonicalOutput11667 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node955⟩

theorem canonicalSound11667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11667.moment H = canonicalOutput11667.moment H :=
  canonical_of_padded canonicalInput11667 canonicalOutput11667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11668 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -3, -3, 4]]⟩

def canonicalOutput11668 : ExponentCode := normalNode6467

theorem canonicalSound11668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11668.moment H = canonicalOutput11668.moment H :=
  canonical_of_padded canonicalInput11668 canonicalOutput11668 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11669 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, 0, -1], ![1, -2, -3, 4], ![1, 0, 1, -2]]⟩

def canonicalOutput11669 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node785⟩

theorem canonicalSound11669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11669.moment H = canonicalOutput11669.moment H :=
  canonical_of_padded canonicalInput11669 canonicalOutput11669 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11670 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput11670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound11670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11670.moment H = canonicalOutput11670.moment H :=
  canonical_of_padded canonicalInput11670 canonicalOutput11670 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11671 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, 2, -4, 2], ![2, -3, 2, -1]]⟩

def canonicalOutput11671 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound11671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11671.moment H = canonicalOutput11671.moment H :=
  canonical_of_padded canonicalInput11671 canonicalOutput11671 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11672 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, 2, -3, 1], ![2, -3, 1, 0]]⟩

def canonicalOutput11672 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound11672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11672.moment H = canonicalOutput11672.moment H :=
  canonical_of_padded canonicalInput11672 canonicalOutput11672 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11673 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, 2, -1, -1], ![2, -3, -1, 2]]⟩

def canonicalOutput11673 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound11673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11673.moment H = canonicalOutput11673.moment H :=
  canonical_of_padded canonicalInput11673 canonicalOutput11673 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11674 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, 3, -4, 1], ![2, -4, 2, 0]]⟩

def canonicalOutput11674 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound11674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11674.moment H = canonicalOutput11674.moment H :=
  canonical_of_padded canonicalInput11674 canonicalOutput11674 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11675 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![0, 3, -1, -2], ![2, -4, -1, 3]]⟩

def canonicalOutput11675 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound11675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11675.moment H = canonicalOutput11675.moment H :=
  canonical_of_padded canonicalInput11675 canonicalOutput11675 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11676 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, -4, 0, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput11676 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound11676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11676.moment H = canonicalOutput11676.moment H :=
  canonical_of_padded canonicalInput11676 canonicalOutput11676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11677 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, -4, 1, 2], ![1, 3, -3, -1]]⟩

def canonicalOutput11677 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound11677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11677.moment H = canonicalOutput11677.moment H :=
  canonical_of_padded canonicalInput11677 canonicalOutput11677 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11678 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, -4, 2, 1], ![1, 3, -4, 0]]⟩

def canonicalOutput11678 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound11678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11678.moment H = canonicalOutput11678.moment H :=
  canonical_of_padded canonicalInput11678 canonicalOutput11678 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11679 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![1, -3, -1, 3], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11679 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1244

theorem canonicalSound11679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11679.moment H = canonicalOutput11679.moment H :=
  canonical_of_padded canonicalInput11679 canonicalOutput11679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11680 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![1, -3, -1, 3], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11680 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound11680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11680.moment H = canonicalOutput11680.moment H :=
  canonical_of_padded canonicalInput11680 canonicalOutput11680 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11681 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, -3, -1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput11681 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound11681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11681.moment H = canonicalOutput11681.moment H :=
  canonical_of_padded canonicalInput11681 canonicalOutput11681 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11682 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![1, -3, 0, 2], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11682 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1243

theorem canonicalSound11682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11682.moment H = canonicalOutput11682.moment H :=
  canonical_of_padded canonicalInput11682 canonicalOutput11682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11683 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, -3, 1, 1], ![1, 2, -3, 0]]⟩

def canonicalOutput11683 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound11683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11683.moment H = canonicalOutput11683.moment H :=
  canonical_of_padded canonicalInput11683 canonicalOutput11683 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11684 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![1, -2, -1, 2], ![0, 0, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11684 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩

theorem canonicalSound11684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11684.moment H = canonicalOutput11684.moment H :=
  canonical_of_padded canonicalInput11684 canonicalOutput11684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11685 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput11685 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11685.moment H = canonicalOutput11685.moment H :=
  canonical_of_padded canonicalInput11685 canonicalOutput11685 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11686 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![1, -1, -2, 2], ![0, -1, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11686 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1242

theorem canonicalSound11686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11686.moment H = canonicalOutput11686.moment H :=
  canonical_of_padded canonicalInput11686 canonicalOutput11686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11687 : ExponentCode := ⟨4, 4, ![![-2, 1, 2, -1], ![1, -1, -2, 2], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput11687 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node685⟩

theorem canonicalSound11687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11687.moment H = canonicalOutput11687.moment H :=
  canonical_of_padded canonicalInput11687 canonicalOutput11687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11688 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, 1, -4, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput11688 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound11688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11688.moment H = canonicalOutput11688.moment H :=
  canonical_of_padded canonicalInput11688 canonicalOutput11688 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11689 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, 1, 0, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput11689 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound11689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11689.moment H = canonicalOutput11689.moment H :=
  canonical_of_padded canonicalInput11689 canonicalOutput11689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11690 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, 2, -4, 1], ![1, -3, 2, 0]]⟩

def canonicalOutput11690 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound11690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11690.moment H = canonicalOutput11690.moment H :=
  canonical_of_padded canonicalInput11690 canonicalOutput11690 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11691 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, 2, -1, -2], ![1, -3, -1, 3]]⟩

def canonicalOutput11691 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound11691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11691.moment H = canonicalOutput11691.moment H :=
  canonical_of_padded canonicalInput11691 canonicalOutput11691 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11692 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![1, 2, 0, -3], ![1, -3, -2, 4]]⟩

def canonicalOutput11692 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound11692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11692.moment H = canonicalOutput11692.moment H :=
  canonical_of_padded canonicalInput11692 canonicalOutput11692 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11693 : ExponentCode := ⟨3, 4, ![![-2, 1, 2, -1], ![2, 1, 0, -3], ![0, -2, -2, 4]]⟩

def canonicalOutput11693 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound11693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11693.moment H = canonicalOutput11693.moment H :=
  canonical_of_padded canonicalInput11693 canonicalOutput11693 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11694 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11694 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11694.moment H = canonicalOutput11694.moment H :=
  canonical_of_padded canonicalInput11694 canonicalOutput11694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput11695 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, -1, 1, 1, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11695 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11695.moment H = canonicalOutput11695.moment H :=
  canonical_of_padded canonicalInput11695 canonicalOutput11695 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11696 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11696 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11696.moment H = canonicalOutput11696.moment H :=
  canonical_of_padded canonicalInput11696 canonicalOutput11696 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11697 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11697 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11697.moment H = canonicalOutput11697.moment H :=
  canonical_of_padded canonicalInput11697 canonicalOutput11697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation329⟩ (by decide +kernel) hH

def canonicalInput11698 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11698 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11698.moment H = canonicalOutput11698.moment H :=
  canonical_of_padded canonicalInput11698 canonicalOutput11698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation329⟩ (by decide +kernel) hH

def canonicalInput11699 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11699 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11699.moment H = canonicalOutput11699.moment H :=
  canonical_of_padded canonicalInput11699 canonicalOutput11699 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11700 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11700 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound11700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11700.moment H = canonicalOutput11700.moment H :=
  canonical_of_padded canonicalInput11700 canonicalOutput11700 (by decide) (by decide)
    ⟨true, false, canonicalPermutation106, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11701 : ExponentCode := ⟨6, 6, ![![-2, 1, 2, 1, -2, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11701 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code214

theorem canonicalSound11701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11701.moment H = canonicalOutput11701.moment H :=
  canonical_of_padded canonicalInput11701 canonicalOutput11701 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11702 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -3, -1, 4], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput11702 : ExponentCode := normalNode7843

theorem canonicalSound11702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11702.moment H = canonicalOutput11702.moment H :=
  canonical_of_padded canonicalInput11702 canonicalOutput11702 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11703 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -3, -1, 4], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput11703 : ExponentCode := normalNode7370

theorem canonicalSound11703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11703.moment H = canonicalOutput11703.moment H :=
  canonical_of_padded canonicalInput11703 canonicalOutput11703 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11704 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -3, -1, 4], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11704 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1326

theorem canonicalSound11704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11704.moment H = canonicalOutput11704.moment H :=
  canonical_of_padded canonicalInput11704 canonicalOutput11704 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11705 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -3, 0, 3], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput11705 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code501

theorem canonicalSound11705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11705.moment H = canonicalOutput11705.moment H :=
  canonical_of_padded canonicalInput11705 canonicalOutput11705 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11706 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, -2, 4], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput11706 : ExponentCode := normalNode9135

theorem canonicalSound11706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11706.moment H = canonicalOutput11706.moment H :=
  canonical_of_padded canonicalInput11706 canonicalOutput11706 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11707 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, -2, 4], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11707 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩

theorem canonicalSound11707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11707.moment H = canonicalOutput11707.moment H :=
  canonical_of_padded canonicalInput11707 canonicalOutput11707 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput11708 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput11708 : ExponentCode := normalNode7108

theorem canonicalSound11708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11708.moment H = canonicalOutput11708.moment H :=
  canonical_of_padded canonicalInput11708 canonicalOutput11708 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11709 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11709 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound11709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11709.moment H = canonicalOutput11709.moment H :=
  canonical_of_padded canonicalInput11709 canonicalOutput11709 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11710 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11710 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound11710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11710.moment H = canonicalOutput11710.moment H :=
  canonical_of_padded canonicalInput11710 canonicalOutput11710 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11711 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![0, -1, -1, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput11711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code198

theorem canonicalSound11711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11711.moment H = canonicalOutput11711.moment H :=
  canonical_of_padded canonicalInput11711 canonicalOutput11711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

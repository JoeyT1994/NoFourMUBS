import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26688 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput26688 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound26688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26688.moment H = canonicalOutput26688.moment H :=
  canonical_of_padded canonicalInput26688 canonicalOutput26688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26689 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -4, 4], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput26689 : ExponentCode := normalNode9731

theorem canonicalSound26689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26689.moment H = canonicalOutput26689.moment H :=
  canonical_of_padded canonicalInput26689 canonicalOutput26689 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26690 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -4, 4], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput26690 : ExponentCode := normalNode7458

theorem canonicalSound26690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26690.moment H = canonicalOutput26690.moment H :=
  canonical_of_padded canonicalInput26690 canonicalOutput26690 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26691 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -4, 4], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput26691 : ExponentCode := normalNode7385

theorem canonicalSound26691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26691.moment H = canonicalOutput26691.moment H :=
  canonical_of_padded canonicalInput26691 canonicalOutput26691 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26692 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -4, 4], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput26692 : ExponentCode := normalNode9432

theorem canonicalSound26692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26692.moment H = canonicalOutput26692.moment H :=
  canonical_of_padded canonicalInput26692 canonicalOutput26692 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26693 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput26693 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound26693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26693.moment H = canonicalOutput26693.moment H :=
  canonical_of_padded canonicalInput26693 canonicalOutput26693 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26694 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -3, 3], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput26694 : ExponentCode := normalNode9474

theorem canonicalSound26694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26694.moment H = canonicalOutput26694.moment H :=
  canonical_of_padded canonicalInput26694 canonicalOutput26694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26695 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput26695 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩

theorem canonicalSound26695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26695.moment H = canonicalOutput26695.moment H :=
  canonical_of_padded canonicalInput26695 canonicalOutput26695 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26696 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-1, 1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput26696 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node293⟩

theorem canonicalSound26696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26696.moment H = canonicalOutput26696.moment H :=
  canonical_of_padded canonicalInput26696 canonicalOutput26696 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26697 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput26697 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound26697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26697.moment H = canonicalOutput26697.moment H :=
  canonical_of_padded canonicalInput26697 canonicalOutput26697 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26698 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput26698 : ExponentCode := normalNode9973

theorem canonicalSound26698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26698.moment H = canonicalOutput26698.moment H :=
  canonical_of_padded canonicalInput26698 canonicalOutput26698 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26699 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26699 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound26699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26699.moment H = canonicalOutput26699.moment H :=
  canonical_of_padded canonicalInput26699 canonicalOutput26699 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26700 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 3, 1, -3], ![0, -2, -2, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput26700 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩

theorem canonicalSound26700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26700.moment H = canonicalOutput26700.moment H :=
  canonical_of_padded canonicalInput26700 canonicalOutput26700 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26701 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput26701 : ExponentCode := normalNode2087

theorem canonicalSound26701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26701.moment H = canonicalOutput26701.moment H :=
  canonical_of_padded canonicalInput26701 canonicalOutput26701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26702 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26702 : ExponentCode := normalNode2086

theorem canonicalSound26702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26702.moment H = canonicalOutput26702.moment H :=
  canonical_of_padded canonicalInput26702 canonicalOutput26702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26703 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26703 : ExponentCode := normalNode1225

theorem canonicalSound26703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26703.moment H = canonicalOutput26703.moment H :=
  canonical_of_padded canonicalInput26703 canonicalOutput26703 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26704 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26704 : ExponentCode := normalNode1794

theorem canonicalSound26704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26704.moment H = canonicalOutput26704.moment H :=
  canonical_of_padded canonicalInput26704 canonicalOutput26704 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26705 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, 1, -2, 3]]⟩

def canonicalOutput26705 : ExponentCode := normalNode653

theorem canonicalSound26705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26705.moment H = canonicalOutput26705.moment H :=
  canonical_of_padded canonicalInput26705 canonicalOutput26705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26706 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 3, 1, -4]]⟩

def canonicalOutput26706 : ExponentCode := normalNode2088

theorem canonicalSound26706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26706.moment H = canonicalOutput26706.moment H :=
  canonical_of_padded canonicalInput26706 canonicalOutput26706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26707 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26707 : ExponentCode := normalNode4152

theorem canonicalSound26707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26707.moment H = canonicalOutput26707.moment H :=
  canonical_of_padded canonicalInput26707 canonicalOutput26707 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26708 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -2, 1, 1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput26708 : ExponentCode := normalNode4528

theorem canonicalSound26708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26708.moment H = canonicalOutput26708.moment H :=
  canonical_of_padded canonicalInput26708 canonicalOutput26708 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26709 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![0, -1, -3, 4], ![0, 2, 2, -4]]⟩

def canonicalOutput26709 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound26709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26709.moment H = canonicalOutput26709.moment H :=
  canonical_of_padded canonicalInput26709 canonicalOutput26709 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26710 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput26710 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound26710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26710.moment H = canonicalOutput26710.moment H :=
  canonical_of_padded canonicalInput26710 canonicalOutput26710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26711 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput26711 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound26711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26711.moment H = canonicalOutput26711.moment H :=
  canonical_of_padded canonicalInput26711 canonicalOutput26711 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26712 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 2, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput26712 : ExponentCode := normalNode432

theorem canonicalSound26712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26712.moment H = canonicalOutput26712.moment H :=
  canonical_of_padded canonicalInput26712 canonicalOutput26712 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26713 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput26713 : ExponentCode := normalNode1361

theorem canonicalSound26713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26713.moment H = canonicalOutput26713.moment H :=
  canonical_of_padded canonicalInput26713 canonicalOutput26713 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26714 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 2, -2, 0]]⟩

def canonicalOutput26714 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound26714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26714.moment H = canonicalOutput26714.moment H :=
  canonical_of_padded canonicalInput26714 canonicalOutput26714 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26715 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput26715 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound26715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26715.moment H = canonicalOutput26715.moment H :=
  canonical_of_padded canonicalInput26715 canonicalOutput26715 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26716 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput26716 : ExponentCode := normalNode1271

theorem canonicalSound26716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26716.moment H = canonicalOutput26716.moment H :=
  canonical_of_padded canonicalInput26716 canonicalOutput26716 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26717 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput26717 : ExponentCode := normalNode4408

theorem canonicalSound26717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26717.moment H = canonicalOutput26717.moment H :=
  canonical_of_padded canonicalInput26717 canonicalOutput26717 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26718 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput26718 : ExponentCode := normalNode1224

theorem canonicalSound26718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26718.moment H = canonicalOutput26718.moment H :=
  canonical_of_padded canonicalInput26718 canonicalOutput26718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26719 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput26719 : ExponentCode := normalNode2284

theorem canonicalSound26719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26719.moment H = canonicalOutput26719.moment H :=
  canonical_of_padded canonicalInput26719 canonicalOutput26719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26720 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput26720 : ExponentCode := normalNode10672

theorem canonicalSound26720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26720.moment H = canonicalOutput26720.moment H :=
  canonical_of_padded canonicalInput26720 canonicalOutput26720 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation240, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26721 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput26721 : ExponentCode := normalNode2104

theorem canonicalSound26721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26721.moment H = canonicalOutput26721.moment H :=
  canonical_of_padded canonicalInput26721 canonicalOutput26721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26722 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26722 : ExponentCode := normalNode2103

theorem canonicalSound26722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26722.moment H = canonicalOutput26722.moment H :=
  canonical_of_padded canonicalInput26722 canonicalOutput26722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26723 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26723 : ExponentCode := normalNode1250

theorem canonicalSound26723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26723.moment H = canonicalOutput26723.moment H :=
  canonical_of_padded canonicalInput26723 canonicalOutput26723 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26724 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26724 : ExponentCode := normalNode1258

theorem canonicalSound26724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26724.moment H = canonicalOutput26724.moment H :=
  canonical_of_padded canonicalInput26724 canonicalOutput26724 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26725 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, 1, -2, 3]]⟩

def canonicalOutput26725 : ExponentCode := normalNode4867

theorem canonicalSound26725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26725.moment H = canonicalOutput26725.moment H :=
  canonical_of_padded canonicalInput26725 canonicalOutput26725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26726 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, 0, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput26726 : ExponentCode := normalNode2106

theorem canonicalSound26726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26726.moment H = canonicalOutput26726.moment H :=
  canonical_of_padded canonicalInput26726 canonicalOutput26726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26727 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26727 : ExponentCode := normalNode2105

theorem canonicalSound26727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26727.moment H = canonicalOutput26727.moment H :=
  canonical_of_padded canonicalInput26727 canonicalOutput26727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26728 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput26728 : ExponentCode := normalNode707

theorem canonicalSound26728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26728.moment H = canonicalOutput26728.moment H :=
  canonical_of_padded canonicalInput26728 canonicalOutput26728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26729 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, 3, -1, -3]]⟩

def canonicalOutput26729 : ExponentCode := normalNode1219

theorem canonicalSound26729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26729.moment H = canonicalOutput26729.moment H :=
  canonical_of_padded canonicalInput26729 canonicalOutput26729 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26730 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26730 : ExponentCode := normalNode1730

theorem canonicalSound26730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26730.moment H = canonicalOutput26730.moment H :=
  canonical_of_padded canonicalInput26730 canonicalOutput26730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26731 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput26731 : ExponentCode := normalNode2454

theorem canonicalSound26731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26731.moment H = canonicalOutput26731.moment H :=
  canonical_of_padded canonicalInput26731 canonicalOutput26731 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26732 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, -1, -1, 4], ![1, 3, -2, -2]]⟩

def canonicalOutput26732 : ExponentCode := normalNode1220

theorem canonicalSound26732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26732.moment H = canonicalOutput26732.moment H :=
  canonical_of_padded canonicalInput26732 canonicalOutput26732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26733 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, 2, -2, -1]]⟩

def canonicalOutput26733 : ExponentCode := normalNode2474

theorem canonicalSound26733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26733.moment H = canonicalOutput26733.moment H :=
  canonical_of_padded canonicalInput26733 canonicalOutput26733 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26734 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-2, 0, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26734 : ExponentCode := normalNode1250

theorem canonicalSound26734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26734.moment H = canonicalOutput26734.moment H :=
  canonical_of_padded canonicalInput26734 canonicalOutput26734 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26735 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, -1, 4], ![2, 1, 1, -4]]⟩

def canonicalOutput26735 : ExponentCode := normalNode1223

theorem canonicalSound26735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26735.moment H = canonicalOutput26735.moment H :=
  canonical_of_padded canonicalInput26735 canonicalOutput26735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26736 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 0, 1, -3]]⟩

def canonicalOutput26736 : ExponentCode := normalNode3440

theorem canonicalSound26736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26736.moment H = canonicalOutput26736.moment H :=
  canonical_of_padded canonicalInput26736 canonicalOutput26736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26737 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26737 : ExponentCode := normalNode1797

theorem canonicalSound26737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26737.moment H = canonicalOutput26737.moment H :=
  canonical_of_padded canonicalInput26737 canonicalOutput26737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26738 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, 2, 1, -4]]⟩

def canonicalOutput26738 : ExponentCode := normalNode1226

theorem canonicalSound26738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26738.moment H = canonicalOutput26738.moment H :=
  canonical_of_padded canonicalInput26738 canonicalOutput26738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26739 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput26739 : ExponentCode := normalNode3442

theorem canonicalSound26739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26739.moment H = canonicalOutput26739.moment H :=
  canonical_of_padded canonicalInput26739 canonicalOutput26739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26740 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 1, -3], ![-2, 1, -2, 3]]⟩

def canonicalOutput26740 : ExponentCode := normalNode658

theorem canonicalSound26740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26740.moment H = canonicalOutput26740.moment H :=
  canonical_of_padded canonicalInput26740 canonicalOutput26740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26741 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput26741 : ExponentCode := normalNode4865

theorem canonicalSound26741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26741.moment H = canonicalOutput26741.moment H :=
  canonical_of_padded canonicalInput26741 canonicalOutput26741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26742 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, 0, -2, 4]]⟩

def canonicalOutput26742 : ExponentCode := normalNode3184

theorem canonicalSound26742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26742.moment H = canonicalOutput26742.moment H :=
  canonical_of_padded canonicalInput26742 canonicalOutput26742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26743 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 3, 1, -4]]⟩

def canonicalOutput26743 : ExponentCode := normalNode2109

theorem canonicalSound26743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26743.moment H = canonicalOutput26743.moment H :=
  canonical_of_padded canonicalInput26743 canonicalOutput26743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26744 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26744 : ExponentCode := normalNode4155

theorem canonicalSound26744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26744.moment H = canonicalOutput26744.moment H :=
  canonical_of_padded canonicalInput26744 canonicalOutput26744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26745 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput26745 : ExponentCode := normalNode4514

theorem canonicalSound26745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26745.moment H = canonicalOutput26745.moment H :=
  canonical_of_padded canonicalInput26745 canonicalOutput26745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26746 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26746 : ExponentCode := normalNode6063

theorem canonicalSound26746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26746.moment H = canonicalOutput26746.moment H :=
  canonical_of_padded canonicalInput26746 canonicalOutput26746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26747 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput26747 : ExponentCode := normalNode6020

theorem canonicalSound26747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26747.moment H = canonicalOutput26747.moment H :=
  canonical_of_padded canonicalInput26747 canonicalOutput26747 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26748 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, -1, -1, 1], ![-2, 0, -1, 3], ![0, 3, 1, -4]]⟩

def canonicalOutput26748 : ExponentCode := normalNode2109

theorem canonicalSound26748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26748.moment H = canonicalOutput26748.moment H :=
  canonical_of_padded canonicalInput26748 canonicalOutput26748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26749 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, 3, 1, -4]]⟩

def canonicalOutput26749 : ExponentCode := normalNode1230

theorem canonicalSound26749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26749.moment H = canonicalOutput26749.moment H :=
  canonical_of_padded canonicalInput26749 canonicalOutput26749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26750 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput26750 : ExponentCode := normalNode3445

theorem canonicalSound26750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26750.moment H = canonicalOutput26750.moment H :=
  canonical_of_padded canonicalInput26750 canonicalOutput26750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26751 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26751 : ExponentCode := normalNode3908

theorem canonicalSound26751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26751.moment H = canonicalOutput26751.moment H :=
  canonical_of_padded canonicalInput26751 canonicalOutput26751 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

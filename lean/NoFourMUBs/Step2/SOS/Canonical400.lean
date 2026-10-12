import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25600 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 1, -2, 0], ![1, 0, -1, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput25600 : ExponentCode := normalNode873

theorem canonicalSound25600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25600.moment H = canonicalOutput25600.moment H :=
  canonical_of_padded canonicalInput25600 canonicalOutput25600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25601 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 1, -2, 0], ![2, 0, -1, -1], ![-3, 2, 2, -1]]⟩

def canonicalOutput25601 : ExponentCode := normalNode6186

theorem canonicalSound25601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25601.moment H = canonicalOutput25601.moment H :=
  canonical_of_padded canonicalInput25601 canonicalOutput25601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25602 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput25602 : ExponentCode := normalNode872

theorem canonicalSound25602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25602.moment H = canonicalOutput25602.moment H :=
  canonical_of_padded canonicalInput25602 canonicalOutput25602 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25603 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![2, 0, -2, 0], ![-1, 3, 1, -3]]⟩

def canonicalOutput25603 : ExponentCode := normalNode3850

theorem canonicalSound25603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25603.moment H = canonicalOutput25603.moment H :=
  canonical_of_padded canonicalInput25603 canonicalOutput25603 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25604 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, 0, 3, -2], ![2, 2, -1, -3]]⟩

def canonicalOutput25604 : ExponentCode := normalNode650

theorem canonicalSound25604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25604.moment H = canonicalOutput25604.moment H :=
  canonical_of_padded canonicalInput25604 canonicalOutput25604 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25605 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![-1, 2, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput25605 : ExponentCode := normalNode3085

theorem canonicalSound25605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25605.moment H = canonicalOutput25605.moment H :=
  canonical_of_padded canonicalInput25605 canonicalOutput25605 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25606 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![-1, 1, -1, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput25606 : ExponentCode := normalNode3086

theorem canonicalSound25606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25606.moment H = canonicalOutput25606.moment H :=
  canonical_of_padded canonicalInput25606 canonicalOutput25606 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25607 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 3, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput25607 : ExponentCode := normalNode636

theorem canonicalSound25607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25607.moment H = canonicalOutput25607.moment H :=
  canonical_of_padded canonicalInput25607 canonicalOutput25607 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25608 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 2, -1, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput25608 : ExponentCode := normalNode3080

theorem canonicalSound25608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25608.moment H = canonicalOutput25608.moment H :=
  canonical_of_padded canonicalInput25608 canonicalOutput25608 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25609 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 3, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput25609 : ExponentCode := normalNode7019

theorem canonicalSound25609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25609.moment H = canonicalOutput25609.moment H :=
  canonical_of_padded canonicalInput25609 canonicalOutput25609 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25610 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput25610 : ExponentCode := normalNode7202

theorem canonicalSound25610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25610.moment H = canonicalOutput25610.moment H :=
  canonical_of_padded canonicalInput25610 canonicalOutput25610 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25611 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput25611 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3414⟩

theorem canonicalSound25611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25611.moment H = canonicalOutput25611.moment H :=
  canonical_of_padded canonicalInput25611 canonicalOutput25611 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25612 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![2, 1, -1, -2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25612 : ExponentCode := normalNode2729

theorem canonicalSound25612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25612.moment H = canonicalOutput25612.moment H :=
  canonical_of_padded canonicalInput25612 canonicalOutput25612 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25613 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, -1, 3, 0], ![2, 2, -1, -3]]⟩

def canonicalOutput25613 : ExponentCode := normalNode497

theorem canonicalSound25613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25613.moment H = canonicalOutput25613.moment H :=
  canonical_of_padded canonicalInput25613 canonicalOutput25613 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25614 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput25614 : ExponentCode := normalNode2467

theorem canonicalSound25614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25614.moment H = canonicalOutput25614.moment H :=
  canonical_of_padded canonicalInput25614 canonicalOutput25614 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25615 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, -1, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25615 : ExponentCode := normalNode3053

theorem canonicalSound25615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25615.moment H = canonicalOutput25615.moment H :=
  canonical_of_padded canonicalInput25615 canonicalOutput25615 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25616 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25616 : ExponentCode := normalNode9691

theorem canonicalSound25616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25616.moment H = canonicalOutput25616.moment H :=
  canonical_of_padded canonicalInput25616 canonicalOutput25616 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25617 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 0, -1, -1], ![-2, 1, 3, -2]]⟩

def canonicalOutput25617 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3201⟩

theorem canonicalSound25617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25617.moment H = canonicalOutput25617.moment H :=
  canonical_of_padded canonicalInput25617 canonicalOutput25617 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25618 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, 0, 3, -1]]⟩

def canonicalOutput25618 : ExponentCode := normalNode2467

theorem canonicalSound25618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25618.moment H = canonicalOutput25618.moment H :=
  canonical_of_padded canonicalInput25618 canonicalOutput25618 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25619 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25619 : ExponentCode := normalNode5029

theorem canonicalSound25619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25619.moment H = canonicalOutput25619.moment H :=
  canonical_of_padded canonicalInput25619 canonicalOutput25619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25620 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25620 : ExponentCode := normalNode5857

theorem canonicalSound25620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25620.moment H = canonicalOutput25620.moment H :=
  canonical_of_padded canonicalInput25620 canonicalOutput25620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25621 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput25621 : ExponentCode := normalNode10260

theorem canonicalSound25621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25621.moment H = canonicalOutput25621.moment H :=
  canonical_of_padded canonicalInput25621 canonicalOutput25621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25622 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 1, -1, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput25622 : ExponentCode := normalNode10823

theorem canonicalSound25622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25622.moment H = canonicalOutput25622.moment H :=
  canonical_of_padded canonicalInput25622 canonicalOutput25622 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25623 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput25623 : ExponentCode := normalNode10702

theorem canonicalSound25623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25623.moment H = canonicalOutput25623.moment H :=
  canonical_of_padded canonicalInput25623 canonicalOutput25623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25624 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25624 : ExponentCode := normalNode10540

theorem canonicalSound25624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25624.moment H = canonicalOutput25624.moment H :=
  canonical_of_padded canonicalInput25624 canonicalOutput25624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25625 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25625 : ExponentCode := normalNode9679

theorem canonicalSound25625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25625.moment H = canonicalOutput25625.moment H :=
  canonical_of_padded canonicalInput25625 canonicalOutput25625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25626 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![2, 0, -1, -1], ![-2, -1, 3, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput25626 : ExponentCode := normalNode1728

theorem canonicalSound25626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25626.moment H = canonicalOutput25626.moment H :=
  canonical_of_padded canonicalInput25626 canonicalOutput25626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25627 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![2, 0, -1, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput25627 : ExponentCode := normalNode4469

theorem canonicalSound25627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25627.moment H = canonicalOutput25627.moment H :=
  canonical_of_padded canonicalInput25627 canonicalOutput25627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25628 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25628 : ExponentCode := normalNode10664

theorem canonicalSound25628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25628.moment H = canonicalOutput25628.moment H :=
  canonical_of_padded canonicalInput25628 canonicalOutput25628 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation229, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25629 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25629 : ExponentCode := normalNode10924

theorem canonicalSound25629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25629.moment H = canonicalOutput25629.moment H :=
  canonical_of_padded canonicalInput25629 canonicalOutput25629 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25630 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25630 : ExponentCode := normalNode7442

theorem canonicalSound25630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25630.moment H = canonicalOutput25630.moment H :=
  canonical_of_padded canonicalInput25630 canonicalOutput25630 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25631 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, 0, -2, 2]]⟩

def canonicalOutput25631 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node562⟩

theorem canonicalSound25631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25631.moment H = canonicalOutput25631.moment H :=
  canonical_of_padded canonicalInput25631 canonicalOutput25631 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25632 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, 0, -3, 3]]⟩

def canonicalOutput25632 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node435⟩

theorem canonicalSound25632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25632.moment H = canonicalOutput25632.moment H :=
  canonical_of_padded canonicalInput25632 canonicalOutput25632 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25633 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput25633 : ExponentCode := normalNode4811

theorem canonicalSound25633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25633.moment H = canonicalOutput25633.moment H :=
  canonical_of_padded canonicalInput25633 canonicalOutput25633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25634 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput25634 : ExponentCode := normalNode10827

theorem canonicalSound25634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25634.moment H = canonicalOutput25634.moment H :=
  canonical_of_padded canonicalInput25634 canonicalOutput25634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25635 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![-1, 0, -1, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25635 : ExponentCode := normalNode3060

theorem canonicalSound25635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25635.moment H = canonicalOutput25635.moment H :=
  canonical_of_padded canonicalInput25635 canonicalOutput25635 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25636 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![2, 0, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25636 : ExponentCode := normalNode3429

theorem canonicalSound25636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25636.moment H = canonicalOutput25636.moment H :=
  canonical_of_padded canonicalInput25636 canonicalOutput25636 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25637 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![-1, 2, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25637 : ExponentCode := normalNode6007

theorem canonicalSound25637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25637.moment H = canonicalOutput25637.moment H :=
  canonical_of_padded canonicalInput25637 canonicalOutput25637 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25638 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25638 : ExponentCode := normalNode7177

theorem canonicalSound25638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25638.moment H = canonicalOutput25638.moment H :=
  canonical_of_padded canonicalInput25638 canonicalOutput25638 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25639 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 0, 3, -5]]⟩

def canonicalOutput25639 : ExponentCode := normalNode3045

theorem canonicalSound25639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25639.moment H = canonicalOutput25639.moment H :=
  canonical_of_padded canonicalInput25639 canonicalOutput25639 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25640 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25640 : ExponentCode := normalNode9682

theorem canonicalSound25640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25640.moment H = canonicalOutput25640.moment H :=
  canonical_of_padded canonicalInput25640 canonicalOutput25640 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25641 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput25641 : ExponentCode := normalNode9680

theorem canonicalSound25641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25641.moment H = canonicalOutput25641.moment H :=
  canonical_of_padded canonicalInput25641 canonicalOutput25641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25642 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput25642 : ExponentCode := normalNode3181

theorem canonicalSound25642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25642.moment H = canonicalOutput25642.moment H :=
  canonical_of_padded canonicalInput25642 canonicalOutput25642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25643 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25643 : ExponentCode := normalNode2937

theorem canonicalSound25643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25643.moment H = canonicalOutput25643.moment H :=
  canonical_of_padded canonicalInput25643 canonicalOutput25643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25644 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25644 : ExponentCode := normalNode790

theorem canonicalSound25644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25644.moment H = canonicalOutput25644.moment H :=
  canonical_of_padded canonicalInput25644 canonicalOutput25644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25645 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, -2, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput25645 : ExponentCode := normalNode6933

theorem canonicalSound25645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25645.moment H = canonicalOutput25645.moment H :=
  canonical_of_padded canonicalInput25645 canonicalOutput25645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25646 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput25646 : ExponentCode := normalNode3410

theorem canonicalSound25646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25646.moment H = canonicalOutput25646.moment H :=
  canonical_of_padded canonicalInput25646 canonicalOutput25646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25647 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25647 : ExponentCode := normalNode5031

theorem canonicalSound25647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25647.moment H = canonicalOutput25647.moment H :=
  canonical_of_padded canonicalInput25647 canonicalOutput25647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25648 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput25648 : ExponentCode := normalNode2364

theorem canonicalSound25648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25648.moment H = canonicalOutput25648.moment H :=
  canonical_of_padded canonicalInput25648 canonicalOutput25648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25649 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25649 : ExponentCode := normalNode10261

theorem canonicalSound25649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25649.moment H = canonicalOutput25649.moment H :=
  canonical_of_padded canonicalInput25649 canonicalOutput25649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25650 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25650 : ExponentCode := normalNode10921

theorem canonicalSound25650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25650.moment H = canonicalOutput25650.moment H :=
  canonical_of_padded canonicalInput25650 canonicalOutput25650 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25651 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![-1, 2, -1, 0], ![-2, -1, 3, 0], ![3, 0, -2, -1]]⟩

def canonicalOutput25651 : ExponentCode := normalNode6662

theorem canonicalSound25651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25651.moment H = canonicalOutput25651.moment H :=
  canonical_of_padded canonicalInput25651 canonicalOutput25651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25652 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25652 : ExponentCode := normalNode9664

theorem canonicalSound25652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25652.moment H = canonicalOutput25652.moment H :=
  canonical_of_padded canonicalInput25652 canonicalOutput25652 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25653 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 1, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25653 : ExponentCode := normalNode7880

theorem canonicalSound25653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25653.moment H = canonicalOutput25653.moment H :=
  canonical_of_padded canonicalInput25653 canonicalOutput25653 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25654 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25654 : ExponentCode := normalNode10921

theorem canonicalSound25654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25654.moment H = canonicalOutput25654.moment H :=
  canonical_of_padded canonicalInput25654 canonicalOutput25654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25655 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, 0, -2, 2]]⟩

def canonicalOutput25655 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node555⟩

theorem canonicalSound25655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25655.moment H = canonicalOutput25655.moment H :=
  canonical_of_padded canonicalInput25655 canonicalOutput25655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25656 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![-3, -1, 3, 1], ![3, 0, -2, -1]]⟩

def canonicalOutput25656 : ExponentCode := normalNode74

theorem canonicalSound25656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25656.moment H = canonicalOutput25656.moment H :=
  canonical_of_padded canonicalInput25656 canonicalOutput25656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25657 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![-2, -1, 3, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput25657 : ExponentCode := normalNode3447

theorem canonicalSound25657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25657.moment H = canonicalOutput25657.moment H :=
  canonical_of_padded canonicalInput25657 canonicalOutput25657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25658 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput25658 : ExponentCode := normalNode4816

theorem canonicalSound25658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25658.moment H = canonicalOutput25658.moment H :=
  canonical_of_padded canonicalInput25658 canonicalOutput25658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25659 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput25659 : ExponentCode := normalNode10840

theorem canonicalSound25659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25659.moment H = canonicalOutput25659.moment H :=
  canonical_of_padded canonicalInput25659 canonicalOutput25659 (by decide) (by decide)
    ⟨false, true, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25660 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput25660 : ExponentCode := normalNode9681

theorem canonicalSound25660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25660.moment H = canonicalOutput25660.moment H :=
  canonical_of_padded canonicalInput25660 canonicalOutput25660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25661 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -3, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput25661 : ExponentCode := normalNode3182

theorem canonicalSound25661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25661.moment H = canonicalOutput25661.moment H :=
  canonical_of_padded canonicalInput25661 canonicalOutput25661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25662 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput25662 : ExponentCode := normalNode10611

theorem canonicalSound25662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25662.moment H = canonicalOutput25662.moment H :=
  canonical_of_padded canonicalInput25662 canonicalOutput25662 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation247, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25663 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25663 : ExponentCode := normalNode5731

theorem canonicalSound25663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25663.moment H = canonicalOutput25663.moment H :=
  canonical_of_padded canonicalInput25663 canonicalOutput25663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

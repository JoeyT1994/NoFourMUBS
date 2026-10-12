import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27648 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput27648 : ExponentCode := normalNode4070

theorem canonicalSound27648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27648.moment H = canonicalOutput27648.moment H :=
  canonical_of_padded canonicalInput27648 canonicalOutput27648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27649 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput27649 : ExponentCode := normalNode1997

theorem canonicalSound27649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27649.moment H = canonicalOutput27649.moment H :=
  canonical_of_padded canonicalInput27649 canonicalOutput27649 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27650 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput27650 : ExponentCode := normalNode3284

theorem canonicalSound27650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27650.moment H = canonicalOutput27650.moment H :=
  canonical_of_padded canonicalInput27650 canonicalOutput27650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27651 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput27651 : ExponentCode := normalNode2011

theorem canonicalSound27651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27651.moment H = canonicalOutput27651.moment H :=
  canonical_of_padded canonicalInput27651 canonicalOutput27651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27652 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput27652 : ExponentCode := normalNode952

theorem canonicalSound27652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27652.moment H = canonicalOutput27652.moment H :=
  canonical_of_padded canonicalInput27652 canonicalOutput27652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27653 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 3, 0]]⟩

def canonicalOutput27653 : ExponentCode := normalNode2012

theorem canonicalSound27653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27653.moment H = canonicalOutput27653.moment H :=
  canonical_of_padded canonicalInput27653 canonicalOutput27653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27654 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput27654 : ExponentCode := normalNode5462

theorem canonicalSound27654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27654.moment H = canonicalOutput27654.moment H :=
  canonical_of_padded canonicalInput27654 canonicalOutput27654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27655 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput27655 : ExponentCode := normalNode2399

theorem canonicalSound27655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27655.moment H = canonicalOutput27655.moment H :=
  canonical_of_padded canonicalInput27655 canonicalOutput27655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27656 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput27656 : ExponentCode := normalNode953

theorem canonicalSound27656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27656.moment H = canonicalOutput27656.moment H :=
  canonical_of_padded canonicalInput27656 canonicalOutput27656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27657 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, -1, 2, -1]]⟩

def canonicalOutput27657 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound27657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27657.moment H = canonicalOutput27657.moment H :=
  canonical_of_padded canonicalInput27657 canonicalOutput27657 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27658 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput27658 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound27658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27658.moment H = canonicalOutput27658.moment H :=
  canonical_of_padded canonicalInput27658 canonicalOutput27658 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27659 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 1, 3, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput27659 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound27659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27659.moment H = canonicalOutput27659.moment H :=
  canonical_of_padded canonicalInput27659 canonicalOutput27659 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27660 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -2, 0, 2]]⟩

def canonicalOutput27660 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound27660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27660.moment H = canonicalOutput27660.moment H :=
  canonical_of_padded canonicalInput27660 canonicalOutput27660 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27661 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput27661 : ExponentCode := normalNode2014

theorem canonicalSound27661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27661.moment H = canonicalOutput27661.moment H :=
  canonical_of_padded canonicalInput27661 canonicalOutput27661 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27662 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput27662 : ExponentCode := normalNode4073

theorem canonicalSound27662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27662.moment H = canonicalOutput27662.moment H :=
  canonical_of_padded canonicalInput27662 canonicalOutput27662 (by decide) (by decide)
    ⟨false, true, canonicalPermutation321, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27663 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 1, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput27663 : ExponentCode := normalNode3598

theorem canonicalSound27663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27663.moment H = canonicalOutput27663.moment H :=
  canonical_of_padded canonicalInput27663 canonicalOutput27663 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation334, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27664 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput27664 : ExponentCode := normalNode4071

theorem canonicalSound27664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27664.moment H = canonicalOutput27664.moment H :=
  canonical_of_padded canonicalInput27664 canonicalOutput27664 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27665 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput27665 : ExponentCode := normalNode5416

theorem canonicalSound27665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27665.moment H = canonicalOutput27665.moment H :=
  canonical_of_padded canonicalInput27665 canonicalOutput27665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27666 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput27666 : ExponentCode := normalNode5463

theorem canonicalSound27666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27666.moment H = canonicalOutput27666.moment H :=
  canonical_of_padded canonicalInput27666 canonicalOutput27666 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27667 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput27667 : ExponentCode := normalNode5464

theorem canonicalSound27667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27667.moment H = canonicalOutput27667.moment H :=
  canonical_of_padded canonicalInput27667 canonicalOutput27667 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27668 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27668 : ExponentCode := normalNode4180

theorem canonicalSound27668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27668.moment H = canonicalOutput27668.moment H :=
  canonical_of_padded canonicalInput27668 canonicalOutput27668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation250, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27669 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput27669 : ExponentCode := normalNode5945

theorem canonicalSound27669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27669.moment H = canonicalOutput27669.moment H :=
  canonical_of_padded canonicalInput27669 canonicalOutput27669 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27670 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput27670 : ExponentCode := normalNode5963

theorem canonicalSound27670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27670.moment H = canonicalOutput27670.moment H :=
  canonical_of_padded canonicalInput27670 canonicalOutput27670 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27671 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput27671 : ExponentCode := normalNode3710

theorem canonicalSound27671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27671.moment H = canonicalOutput27671.moment H :=
  canonical_of_padded canonicalInput27671 canonicalOutput27671 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27672 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput27672 : ExponentCode := normalNode2010

theorem canonicalSound27672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27672.moment H = canonicalOutput27672.moment H :=
  canonical_of_padded canonicalInput27672 canonicalOutput27672 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27673 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![-1, 2, 1, -2]]⟩

def canonicalOutput27673 : ExponentCode := normalNode5020

theorem canonicalSound27673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27673.moment H = canonicalOutput27673.moment H :=
  canonical_of_padded canonicalInput27673 canonicalOutput27673 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27674 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput27674 : ExponentCode := normalNode8861

theorem canonicalSound27674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27674.moment H = canonicalOutput27674.moment H :=
  canonical_of_padded canonicalInput27674 canonicalOutput27674 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27675 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput27675 : ExponentCode := normalNode5296

theorem canonicalSound27675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27675.moment H = canonicalOutput27675.moment H :=
  canonical_of_padded canonicalInput27675 canonicalOutput27675 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27676 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput27676 : ExponentCode := normalNode5523

theorem canonicalSound27676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27676.moment H = canonicalOutput27676.moment H :=
  canonical_of_padded canonicalInput27676 canonicalOutput27676 (by decide) (by decide)
    ⟨false, true, canonicalPermutation321, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27677 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 0, 1, -2], ![-2, 3, 0, -1]]⟩

def canonicalOutput27677 : ExponentCode := normalNode2046

theorem canonicalSound27677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27677.moment H = canonicalOutput27677.moment H :=
  canonical_of_padded canonicalInput27677 canonicalOutput27677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27678 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![1, 1, 0, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput27678 : ExponentCode := normalNode2772

theorem canonicalSound27678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27678.moment H = canonicalOutput27678.moment H :=
  canonical_of_padded canonicalInput27678 canonicalOutput27678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27679 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, -1, 1, -1], ![-2, 3, 0, -1]]⟩

def canonicalOutput27679 : ExponentCode := normalNode1858

theorem canonicalSound27679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27679.moment H = canonicalOutput27679.moment H :=
  canonical_of_padded canonicalInput27679 canonicalOutput27679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27680 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![1, -2, 1, 0], ![-2, 3, 0, -1]]⟩

def canonicalOutput27680 : ExponentCode := normalNode1649

theorem canonicalSound27680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27680.moment H = canonicalOutput27680.moment H :=
  canonical_of_padded canonicalInput27680 canonicalOutput27680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27681 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput27681 : ExponentCode := normalNode2243

theorem canonicalSound27681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27681.moment H = canonicalOutput27681.moment H :=
  canonical_of_padded canonicalInput27681 canonicalOutput27681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27682 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 1, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput27682 : ExponentCode := normalNode2944

theorem canonicalSound27682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27682.moment H = canonicalOutput27682.moment H :=
  canonical_of_padded canonicalInput27682 canonicalOutput27682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27683 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, -2, 1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput27683 : ExponentCode := normalNode2268

theorem canonicalSound27683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27683.moment H = canonicalOutput27683.moment H :=
  canonical_of_padded canonicalInput27683 canonicalOutput27683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27684 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput27684 : ExponentCode := normalNode2945

theorem canonicalSound27684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27684.moment H = canonicalOutput27684.moment H :=
  canonical_of_padded canonicalInput27684 canonicalOutput27684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27685 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput27685 : ExponentCode := normalNode5521

theorem canonicalSound27685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27685.moment H = canonicalOutput27685.moment H :=
  canonical_of_padded canonicalInput27685 canonicalOutput27685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27686 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput27686 : ExponentCode := normalNode5957

theorem canonicalSound27686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27686.moment H = canonicalOutput27686.moment H :=
  canonical_of_padded canonicalInput27686 canonicalOutput27686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27687 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput27687 : ExponentCode := normalNode1660

theorem canonicalSound27687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27687.moment H = canonicalOutput27687.moment H :=
  canonical_of_padded canonicalInput27687 canonicalOutput27687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27688 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput27688 : ExponentCode := normalNode6648

theorem canonicalSound27688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27688.moment H = canonicalOutput27688.moment H :=
  canonical_of_padded canonicalInput27688 canonicalOutput27688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27689 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput27689 : ExponentCode := normalNode2946

theorem canonicalSound27689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27689.moment H = canonicalOutput27689.moment H :=
  canonical_of_padded canonicalInput27689 canonicalOutput27689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27690 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput27690 : ExponentCode := normalNode5932

theorem canonicalSound27690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27690.moment H = canonicalOutput27690.moment H :=
  canonical_of_padded canonicalInput27690 canonicalOutput27690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27691 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput27691 : ExponentCode := normalNode1887

theorem canonicalSound27691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27691.moment H = canonicalOutput27691.moment H :=
  canonical_of_padded canonicalInput27691 canonicalOutput27691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation299, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27692 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput27692 : ExponentCode := normalNode5344

theorem canonicalSound27692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27692.moment H = canonicalOutput27692.moment H :=
  canonical_of_padded canonicalInput27692 canonicalOutput27692 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27693 : ExponentCode := ⟨5, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27693 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound27693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27693.moment H = canonicalOutput27693.moment H :=
  canonical_of_padded canonicalInput27693 canonicalOutput27693 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27694 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput27694 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1311⟩

theorem canonicalSound27694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27694.moment H = canonicalOutput27694.moment H :=
  canonical_of_padded canonicalInput27694 canonicalOutput27694 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27695 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput27695 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1378⟩

theorem canonicalSound27695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27695.moment H = canonicalOutput27695.moment H :=
  canonical_of_padded canonicalInput27695 canonicalOutput27695 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27696 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput27696 : ExponentCode := normalNode3736

theorem canonicalSound27696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27696.moment H = canonicalOutput27696.moment H :=
  canonical_of_padded canonicalInput27696 canonicalOutput27696 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27697 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput27697 : ExponentCode := normalNode2627

theorem canonicalSound27697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27697.moment H = canonicalOutput27697.moment H :=
  canonical_of_padded canonicalInput27697 canonicalOutput27697 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27698 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput27698 : ExponentCode := normalNode4425

theorem canonicalSound27698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27698.moment H = canonicalOutput27698.moment H :=
  canonical_of_padded canonicalInput27698 canonicalOutput27698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27699 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput27699 : ExponentCode := normalNode2626

theorem canonicalSound27699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27699.moment H = canonicalOutput27699.moment H :=
  canonical_of_padded canonicalInput27699 canonicalOutput27699 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27700 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput27700 : ExponentCode := normalNode5185

theorem canonicalSound27700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27700.moment H = canonicalOutput27700.moment H :=
  canonical_of_padded canonicalInput27700 canonicalOutput27700 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27701 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput27701 : ExponentCode := normalNode3831

theorem canonicalSound27701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27701.moment H = canonicalOutput27701.moment H :=
  canonical_of_padded canonicalInput27701 canonicalOutput27701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput27702 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput27702 : ExponentCode := normalNode5468

theorem canonicalSound27702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27702.moment H = canonicalOutput27702.moment H :=
  canonical_of_padded canonicalInput27702 canonicalOutput27702 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27703 : ExponentCode := ⟨5, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput27703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound27703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27703.moment H = canonicalOutput27703.moment H :=
  canonical_of_padded canonicalInput27703 canonicalOutput27703 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27704 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput27704 : ExponentCode := normalNode4025

theorem canonicalSound27704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27704.moment H = canonicalOutput27704.moment H :=
  canonical_of_padded canonicalInput27704 canonicalOutput27704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27705 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput27705 : ExponentCode := normalNode1644

theorem canonicalSound27705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27705.moment H = canonicalOutput27705.moment H :=
  canonical_of_padded canonicalInput27705 canonicalOutput27705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27706 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput27706 : ExponentCode := normalNode5481

theorem canonicalSound27706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27706.moment H = canonicalOutput27706.moment H :=
  canonical_of_padded canonicalInput27706 canonicalOutput27706 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27707 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput27707 : ExponentCode := normalNode563

theorem canonicalSound27707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27707.moment H = canonicalOutput27707.moment H :=
  canonical_of_padded canonicalInput27707 canonicalOutput27707 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27708 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput27708 : ExponentCode := normalNode5155

theorem canonicalSound27708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27708.moment H = canonicalOutput27708.moment H :=
  canonical_of_padded canonicalInput27708 canonicalOutput27708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27709 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput27709 : ExponentCode := normalNode5184

theorem canonicalSound27709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27709.moment H = canonicalOutput27709.moment H :=
  canonical_of_padded canonicalInput27709 canonicalOutput27709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27710 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -3, 1, 0]]⟩

def canonicalOutput27710 : ExponentCode := normalNode1727

theorem canonicalSound27710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27710.moment H = canonicalOutput27710.moment H :=
  canonical_of_padded canonicalInput27710 canonicalOutput27710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27711 : ExponentCode := ⟨5, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput27711 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound27711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27711.moment H = canonicalOutput27711.moment H :=
  canonical_of_padded canonicalInput27711 canonicalOutput27711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14720 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -2, 2, 0], ![0, 0, 3, -1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14720 : ExponentCode := normalNode3534

theorem canonicalSound14720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14720.moment H = canonicalOutput14720.moment H :=
  canonical_of_padded canonicalInput14720 canonicalOutput14720 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14721 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -2, 3, -1], ![0, 0, 3, -2, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14721 : ExponentCode := normalNode6661

theorem canonicalSound14721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14721.moment H = canonicalOutput14721.moment H :=
  canonical_of_padded canonicalInput14721 canonicalOutput14721 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14722 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14722 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound14722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14722.moment H = canonicalOutput14722.moment H :=
  canonical_of_padded canonicalInput14722 canonicalOutput14722 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14723 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput14723 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2373⟩

theorem canonicalSound14723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14723.moment H = canonicalOutput14723.moment H :=
  canonical_of_padded canonicalInput14723 canonicalOutput14723 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14724 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput14724 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2552⟩

theorem canonicalSound14724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14724.moment H = canonicalOutput14724.moment H :=
  canonical_of_padded canonicalInput14724 canonicalOutput14724 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14725 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14725 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound14725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14725.moment H = canonicalOutput14725.moment H :=
  canonical_of_padded canonicalInput14725 canonicalOutput14725 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14726 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14726 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound14726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14726.moment H = canonicalOutput14726.moment H :=
  canonical_of_padded canonicalInput14726 canonicalOutput14726 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14727 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput14727 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound14727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14727.moment H = canonicalOutput14727.moment H :=
  canonical_of_padded canonicalInput14727 canonicalOutput14727 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14728 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput14728 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2369⟩

theorem canonicalSound14728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14728.moment H = canonicalOutput14728.moment H :=
  canonical_of_padded canonicalInput14728 canonicalOutput14728 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14729 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput14729 : ExponentCode := normalNode10706

theorem canonicalSound14729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14729.moment H = canonicalOutput14729.moment H :=
  canonical_of_padded canonicalInput14729 canonicalOutput14729 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14730 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14730 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound14730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14730.moment H = canonicalOutput14730.moment H :=
  canonical_of_padded canonicalInput14730 canonicalOutput14730 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14731 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14731 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2318⟩

theorem canonicalSound14731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14731.moment H = canonicalOutput14731.moment H :=
  canonical_of_padded canonicalInput14731 canonicalOutput14731 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14732 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14732 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound14732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14732.moment H = canonicalOutput14732.moment H :=
  canonical_of_padded canonicalInput14732 canonicalOutput14732 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14733 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2538⟩

theorem canonicalSound14733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14733.moment H = canonicalOutput14733.moment H :=
  canonical_of_padded canonicalInput14733 canonicalOutput14733 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14734 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 3, -2], ![0, 0, 2, -2, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14734 : ExponentCode := normalNode1883

theorem canonicalSound14734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14734.moment H = canonicalOutput14734.moment H :=
  canonical_of_padded canonicalInput14734 canonicalOutput14734 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14735 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -1, 3, -2], ![0, 0, 3, -2, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14735 : ExponentCode := normalNode6686

theorem canonicalSound14735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14735.moment H = canonicalOutput14735.moment H :=
  canonical_of_padded canonicalInput14735 canonicalOutput14735 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14736 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 0, 0], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14736 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node570⟩

theorem canonicalSound14736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14736.moment H = canonicalOutput14736.moment H :=
  canonical_of_padded canonicalInput14736 canonicalOutput14736 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14737 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14737 : ExponentCode := normalNode7514

theorem canonicalSound14737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14737.moment H = canonicalOutput14737.moment H :=
  canonical_of_padded canonicalInput14737 canonicalOutput14737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14738 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2708⟩

theorem canonicalSound14738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14738.moment H = canonicalOutput14738.moment H :=
  canonical_of_padded canonicalInput14738 canonicalOutput14738 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14739 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14739 : ExponentCode := normalNode7537

theorem canonicalSound14739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14739.moment H = canonicalOutput14739.moment H :=
  canonical_of_padded canonicalInput14739 canonicalOutput14739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput14740 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput14740 : ExponentCode := normalNode7235

theorem canonicalSound14740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14740.moment H = canonicalOutput14740.moment H :=
  canonical_of_padded canonicalInput14740 canonicalOutput14740 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14741 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14741 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2551⟩

theorem canonicalSound14741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14741.moment H = canonicalOutput14741.moment H :=
  canonical_of_padded canonicalInput14741 canonicalOutput14741 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14742 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput14742 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2420⟩

theorem canonicalSound14742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14742.moment H = canonicalOutput14742.moment H :=
  canonical_of_padded canonicalInput14742 canonicalOutput14742 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14743 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput14743 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2709⟩

theorem canonicalSound14743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14743.moment H = canonicalOutput14743.moment H :=
  canonical_of_padded canonicalInput14743 canonicalOutput14743 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14744 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14744 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2542⟩

theorem canonicalSound14744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14744.moment H = canonicalOutput14744.moment H :=
  canonical_of_padded canonicalInput14744 canonicalOutput14744 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14745 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14745 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩

theorem canonicalSound14745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14745.moment H = canonicalOutput14745.moment H :=
  canonical_of_padded canonicalInput14745 canonicalOutput14745 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14746 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14746 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2708⟩

theorem canonicalSound14746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14746.moment H = canonicalOutput14746.moment H :=
  canonical_of_padded canonicalInput14746 canonicalOutput14746 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14747 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14747 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2551⟩

theorem canonicalSound14747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14747.moment H = canonicalOutput14747.moment H :=
  canonical_of_padded canonicalInput14747 canonicalOutput14747 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14748 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14748 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2420⟩

theorem canonicalSound14748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14748.moment H = canonicalOutput14748.moment H :=
  canonical_of_padded canonicalInput14748 canonicalOutput14748 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14749 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14749 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2836⟩

theorem canonicalSound14749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14749.moment H = canonicalOutput14749.moment H :=
  canonical_of_padded canonicalInput14749 canonicalOutput14749 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14750 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14750 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1507⟩

theorem canonicalSound14750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14750.moment H = canonicalOutput14750.moment H :=
  canonical_of_padded canonicalInput14750 canonicalOutput14750 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14751 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound14751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14751.moment H = canonicalOutput14751.moment H :=
  canonical_of_padded canonicalInput14751 canonicalOutput14751 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14752 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput14752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2421⟩

theorem canonicalSound14752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14752.moment H = canonicalOutput14752.moment H :=
  canonical_of_padded canonicalInput14752 canonicalOutput14752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14753 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound14753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14753.moment H = canonicalOutput14753.moment H :=
  canonical_of_padded canonicalInput14753 canonicalOutput14753 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14754 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14754 : ExponentCode := normalNode2004

theorem canonicalSound14754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14754.moment H = canonicalOutput14754.moment H :=
  canonical_of_padded canonicalInput14754 canonicalOutput14754 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14755 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 3, -2, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput14755 : ExponentCode := normalNode3395

theorem canonicalSound14755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14755.moment H = canonicalOutput14755.moment H :=
  canonical_of_padded canonicalInput14755 canonicalOutput14755 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14756 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14756 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1507⟩

theorem canonicalSound14756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14756.moment H = canonicalOutput14756.moment H :=
  canonical_of_padded canonicalInput14756 canonicalOutput14756 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14757 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14757 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound14757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14757.moment H = canonicalOutput14757.moment H :=
  canonical_of_padded canonicalInput14757 canonicalOutput14757 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14758 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14758 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2421⟩

theorem canonicalSound14758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14758.moment H = canonicalOutput14758.moment H :=
  canonical_of_padded canonicalInput14758 canonicalOutput14758 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14759 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14759 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2421⟩

theorem canonicalSound14759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14759.moment H = canonicalOutput14759.moment H :=
  canonical_of_padded canonicalInput14759 canonicalOutput14759 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14760 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -2, 1], ![0, 1, -1, 2, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14760 : ExponentCode := normalNode4055

theorem canonicalSound14760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14760.moment H = canonicalOutput14760.moment H :=
  canonical_of_padded canonicalInput14760 canonicalOutput14760 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14761 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput14761 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2754⟩

theorem canonicalSound14761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14761.moment H = canonicalOutput14761.moment H :=
  canonical_of_padded canonicalInput14761 canonicalOutput14761 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14762 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14762 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩

theorem canonicalSound14762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14762.moment H = canonicalOutput14762.moment H :=
  canonical_of_padded canonicalInput14762 canonicalOutput14762 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14763 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -2, 1], ![0, 2, -1, 1, -2], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput14763 : ExponentCode := normalNode4251

theorem canonicalSound14763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14763.moment H = canonicalOutput14763.moment H :=
  canonical_of_padded canonicalInput14763 canonicalOutput14763 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14764 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -1, 0], ![0, 0, 0, 2, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound14764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14764.moment H = canonicalOutput14764.moment H :=
  canonical_of_padded canonicalInput14764 canonicalOutput14764 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14765 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14765 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2640⟩

theorem canonicalSound14765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14765.moment H = canonicalOutput14765.moment H :=
  canonical_of_padded canonicalInput14765 canonicalOutput14765 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14766 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14766 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2704⟩

theorem canonicalSound14766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14766.moment H = canonicalOutput14766.moment H :=
  canonical_of_padded canonicalInput14766 canonicalOutput14766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14767 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14767 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2704⟩

theorem canonicalSound14767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14767.moment H = canonicalOutput14767.moment H :=
  canonical_of_padded canonicalInput14767 canonicalOutput14767 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14768 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14768 : ExponentCode := normalNode7513

theorem canonicalSound14768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14768.moment H = canonicalOutput14768.moment H :=
  canonical_of_padded canonicalInput14768 canonicalOutput14768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14769 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput14769 : ExponentCode := normalNode9785

theorem canonicalSound14769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14769.moment H = canonicalOutput14769.moment H :=
  canonical_of_padded canonicalInput14769 canonicalOutput14769 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput14770 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14770 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2419⟩

theorem canonicalSound14770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14770.moment H = canonicalOutput14770.moment H :=
  canonical_of_padded canonicalInput14770 canonicalOutput14770 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14771 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2531⟩

theorem canonicalSound14771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14771.moment H = canonicalOutput14771.moment H :=
  canonical_of_padded canonicalInput14771 canonicalOutput14771 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14772 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 2, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14772 : ExponentCode := normalNode9408

theorem canonicalSound14772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14772.moment H = canonicalOutput14772.moment H :=
  canonical_of_padded canonicalInput14772 canonicalOutput14772 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14773 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2704⟩

theorem canonicalSound14773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14773.moment H = canonicalOutput14773.moment H :=
  canonical_of_padded canonicalInput14773 canonicalOutput14773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14774 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14774 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node970⟩

theorem canonicalSound14774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14774.moment H = canonicalOutput14774.moment H :=
  canonical_of_padded canonicalInput14774 canonicalOutput14774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput14775 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 2, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2754⟩

theorem canonicalSound14775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14775.moment H = canonicalOutput14775.moment H :=
  canonical_of_padded canonicalInput14775 canonicalOutput14775 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14776 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14776 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound14776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14776.moment H = canonicalOutput14776.moment H :=
  canonical_of_padded canonicalInput14776 canonicalOutput14776 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14777 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14777 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound14777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14777.moment H = canonicalOutput14777.moment H :=
  canonical_of_padded canonicalInput14777 canonicalOutput14777 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14778 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14778 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩

theorem canonicalSound14778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14778.moment H = canonicalOutput14778.moment H :=
  canonical_of_padded canonicalInput14778 canonicalOutput14778 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14779 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14779 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2704⟩

theorem canonicalSound14779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14779.moment H = canonicalOutput14779.moment H :=
  canonical_of_padded canonicalInput14779 canonicalOutput14779 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14780 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14780 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound14780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14780.moment H = canonicalOutput14780.moment H :=
  canonical_of_padded canonicalInput14780 canonicalOutput14780 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14781 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput14781 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound14781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14781.moment H = canonicalOutput14781.moment H :=
  canonical_of_padded canonicalInput14781 canonicalOutput14781 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14782 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 1, 2, -3], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14782 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2048⟩

theorem canonicalSound14782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14782.moment H = canonicalOutput14782.moment H :=
  canonical_of_padded canonicalInput14782 canonicalOutput14782 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14783 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -2, 0], ![0, 0, -1, 2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14783 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound14783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14783.moment H = canonicalOutput14783.moment H :=
  canonical_of_padded canonicalInput14783 canonicalOutput14783 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6720 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6720 : ExponentCode := normalNode10649

theorem canonicalSound6720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6720.moment H = canonicalOutput6720.moment H :=
  canonical_of_padded canonicalInput6720 canonicalOutput6720 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6721 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput6721 : ExponentCode := normalNode10649

theorem canonicalSound6721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6721.moment H = canonicalOutput6721.moment H :=
  canonical_of_padded canonicalInput6721 canonicalOutput6721 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6722 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput6722 : ExponentCode := normalNode10682

theorem canonicalSound6722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6722.moment H = canonicalOutput6722.moment H :=
  canonical_of_padded canonicalInput6722 canonicalOutput6722 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6723 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput6723 : ExponentCode := normalNode7980

theorem canonicalSound6723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6723.moment H = canonicalOutput6723.moment H :=
  canonical_of_padded canonicalInput6723 canonicalOutput6723 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6724 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput6724 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1105⟩

theorem canonicalSound6724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6724.moment H = canonicalOutput6724.moment H :=
  canonical_of_padded canonicalInput6724 canonicalOutput6724 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6725 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6725 : ExponentCode := normalNode9082

theorem canonicalSound6725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6725.moment H = canonicalOutput6725.moment H :=
  canonical_of_padded canonicalInput6725 canonicalOutput6725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6726 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6726 : ExponentCode := normalNode10278

theorem canonicalSound6726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6726.moment H = canonicalOutput6726.moment H :=
  canonical_of_padded canonicalInput6726 canonicalOutput6726 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6727 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6727 : ExponentCode := normalNode10616

theorem canonicalSound6727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6727.moment H = canonicalOutput6727.moment H :=
  canonical_of_padded canonicalInput6727 canonicalOutput6727 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6728 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6728 : ExponentCode := normalNode10581

theorem canonicalSound6728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6728.moment H = canonicalOutput6728.moment H :=
  canonical_of_padded canonicalInput6728 canonicalOutput6728 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6729 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -1, -2, 1]]⟩

def canonicalOutput6729 : ExponentCode := normalNode10736

theorem canonicalSound6729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6729.moment H = canonicalOutput6729.moment H :=
  canonical_of_padded canonicalInput6729 canonicalOutput6729 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6730 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6730 : ExponentCode := normalNode3619

theorem canonicalSound6730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6730.moment H = canonicalOutput6730.moment H :=
  canonical_of_padded canonicalInput6730 canonicalOutput6730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6731 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![1, -2, 0, 1], ![1, 2, -3, 0]]⟩

def canonicalOutput6731 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code470

theorem canonicalSound6731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6731.moment H = canonicalOutput6731.moment H :=
  canonical_of_padded canonicalInput6731 canonicalOutput6731 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6732 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput6732 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1071⟩

theorem canonicalSound6732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6732.moment H = canonicalOutput6732.moment H :=
  canonical_of_padded canonicalInput6732 canonicalOutput6732 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6733 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput6733 : ExponentCode := normalNode7984

theorem canonicalSound6733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6733.moment H = canonicalOutput6733.moment H :=
  canonical_of_padded canonicalInput6733 canonicalOutput6733 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6734 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![1, 1, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1071⟩

theorem canonicalSound6734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6734.moment H = canonicalOutput6734.moment H :=
  canonical_of_padded canonicalInput6734 canonicalOutput6734 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6735 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 4, -4], ![1, 2, -3, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput6735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code470

theorem canonicalSound6735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6735.moment H = canonicalOutput6735.moment H :=
  canonical_of_padded canonicalInput6735 canonicalOutput6735 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6736 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6736 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1307⟩

theorem canonicalSound6736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6736.moment H = canonicalOutput6736.moment H :=
  canonical_of_padded canonicalInput6736 canonicalOutput6736 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6737 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6737 : ExponentCode := normalNode10278

theorem canonicalSound6737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6737.moment H = canonicalOutput6737.moment H :=
  canonical_of_padded canonicalInput6737 canonicalOutput6737 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6738 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, -2, 4, -4]]⟩

def canonicalOutput6738 : ExponentCode := normalNode6468

theorem canonicalSound6738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6738.moment H = canonicalOutput6738.moment H :=
  canonical_of_padded canonicalInput6738 canonicalOutput6738 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6739 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -2, 4, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6739 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code322

theorem canonicalSound6739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6739.moment H = canonicalOutput6739.moment H :=
  canonical_of_padded canonicalInput6739 canonicalOutput6739 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6740 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound6740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6740.moment H = canonicalOutput6740.moment H :=
  canonical_of_padded canonicalInput6740 canonicalOutput6740 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6741 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput6741 : ExponentCode := normalNode6523

theorem canonicalSound6741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6741.moment H = canonicalOutput6741.moment H :=
  canonical_of_padded canonicalInput6741 canonicalOutput6741 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput6742 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput6742 : ExponentCode := normalNode6523

theorem canonicalSound6742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6742.moment H = canonicalOutput6742.moment H :=
  canonical_of_padded canonicalInput6742 canonicalOutput6742 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6743 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput6743 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node597⟩

theorem canonicalSound6743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6743.moment H = canonicalOutput6743.moment H :=
  canonical_of_padded canonicalInput6743 canonicalOutput6743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6744 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, 1, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput6744 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound6744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6744.moment H = canonicalOutput6744.moment H :=
  canonical_of_padded canonicalInput6744 canonicalOutput6744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6745 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, 1, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput6745 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node596⟩

theorem canonicalSound6745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6745.moment H = canonicalOutput6745.moment H :=
  canonical_of_padded canonicalInput6745 canonicalOutput6745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6746 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6746 : ExponentCode := normalNode10824

theorem canonicalSound6746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6746.moment H = canonicalOutput6746.moment H :=
  canonical_of_padded canonicalInput6746 canonicalOutput6746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6747 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput6747 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound6747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6747.moment H = canonicalOutput6747.moment H :=
  canonical_of_padded canonicalInput6747 canonicalOutput6747 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6748 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1267⟩

theorem canonicalSound6748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6748.moment H = canonicalOutput6748.moment H :=
  canonical_of_padded canonicalInput6748 canonicalOutput6748 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6749 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound6749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6749.moment H = canonicalOutput6749.moment H :=
  canonical_of_padded canonicalInput6749 canonicalOutput6749 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput6750 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6750 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound6750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6750.moment H = canonicalOutput6750.moment H :=
  canonical_of_padded canonicalInput6750 canonicalOutput6750 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6751 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2760⟩

theorem canonicalSound6751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6751.moment H = canonicalOutput6751.moment H :=
  canonical_of_padded canonicalInput6751 canonicalOutput6751 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6752 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2763⟩

theorem canonicalSound6752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6752.moment H = canonicalOutput6752.moment H :=
  canonical_of_padded canonicalInput6752 canonicalOutput6752 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6753 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -2, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6753 : ExponentCode := normalNode3621

theorem canonicalSound6753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6753.moment H = canonicalOutput6753.moment H :=
  canonical_of_padded canonicalInput6753 canonicalOutput6753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6754 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6754 : ExponentCode := normalNode3622

theorem canonicalSound6754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6754.moment H = canonicalOutput6754.moment H :=
  canonical_of_padded canonicalInput6754 canonicalOutput6754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6755 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 4, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6755 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2147⟩

theorem canonicalSound6755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6755.moment H = canonicalOutput6755.moment H :=
  canonical_of_padded canonicalInput6755 canonicalOutput6755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6756 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput6756 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1979⟩

theorem canonicalSound6756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6756.moment H = canonicalOutput6756.moment H :=
  canonical_of_padded canonicalInput6756 canonicalOutput6756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6757 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput6757 : ExponentCode := normalNode1781

theorem canonicalSound6757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6757.moment H = canonicalOutput6757.moment H :=
  canonical_of_padded canonicalInput6757 canonicalOutput6757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6758 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput6758 : ExponentCode := normalNode1784

theorem canonicalSound6758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6758.moment H = canonicalOutput6758.moment H :=
  canonical_of_padded canonicalInput6758 canonicalOutput6758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6759 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput6759 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1640⟩

theorem canonicalSound6759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6759.moment H = canonicalOutput6759.moment H :=
  canonical_of_padded canonicalInput6759 canonicalOutput6759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6760 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1640⟩

theorem canonicalSound6760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6760.moment H = canonicalOutput6760.moment H :=
  canonical_of_padded canonicalInput6760 canonicalOutput6760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6761 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput6761 : ExponentCode := normalNode7816

theorem canonicalSound6761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6761.moment H = canonicalOutput6761.moment H :=
  canonical_of_padded canonicalInput6761 canonicalOutput6761 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6762 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![1, -1, 4, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput6762 : ExponentCode := normalNode6520

theorem canonicalSound6762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6762.moment H = canonicalOutput6762.moment H :=
  canonical_of_padded canonicalInput6762 canonicalOutput6762 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6763 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput6763 : ExponentCode := normalNode6520

theorem canonicalSound6763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6763.moment H = canonicalOutput6763.moment H :=
  canonical_of_padded canonicalInput6763 canonicalOutput6763 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6764 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput6764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound6764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6764.moment H = canonicalOutput6764.moment H :=
  canonical_of_padded canonicalInput6764 canonicalOutput6764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6765 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput6765 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1981⟩

theorem canonicalSound6765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6765.moment H = canonicalOutput6765.moment H :=
  canonical_of_padded canonicalInput6765 canonicalOutput6765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6766 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput6766 : ExponentCode := normalNode9010

theorem canonicalSound6766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6766.moment H = canonicalOutput6766.moment H :=
  canonical_of_padded canonicalInput6766 canonicalOutput6766 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6767 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput6767 : ExponentCode := normalNode10548

theorem canonicalSound6767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6767.moment H = canonicalOutput6767.moment H :=
  canonical_of_padded canonicalInput6767 canonicalOutput6767 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6768 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 1, -2], ![0, 1, -2, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput6768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node593⟩

theorem canonicalSound6768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6768.moment H = canonicalOutput6768.moment H :=
  canonical_of_padded canonicalInput6768 canonicalOutput6768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6769 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput6769 : ExponentCode := normalNode3635

theorem canonicalSound6769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6769.moment H = canonicalOutput6769.moment H :=
  canonical_of_padded canonicalInput6769 canonicalOutput6769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6770 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput6770 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1248⟩

theorem canonicalSound6770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6770.moment H = canonicalOutput6770.moment H :=
  canonical_of_padded canonicalInput6770 canonicalOutput6770 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6771 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1644⟩

theorem canonicalSound6771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6771.moment H = canonicalOutput6771.moment H :=
  canonical_of_padded canonicalInput6771 canonicalOutput6771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6772 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput6772 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1624⟩

theorem canonicalSound6772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6772.moment H = canonicalOutput6772.moment H :=
  canonical_of_padded canonicalInput6772 canonicalOutput6772 (by decide) (by decide)
    ⟨false, true, canonicalPermutation48, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6773 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1973⟩

theorem canonicalSound6773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6773.moment H = canonicalOutput6773.moment H :=
  canonical_of_padded canonicalInput6773 canonicalOutput6773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6774 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput6774 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node929⟩

theorem canonicalSound6774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6774.moment H = canonicalOutput6774.moment H :=
  canonical_of_padded canonicalInput6774 canonicalOutput6774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput6775 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 3, -4], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput6775 : ExponentCode := normalNode9677

theorem canonicalSound6775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6775.moment H = canonicalOutput6775.moment H :=
  canonical_of_padded canonicalInput6775 canonicalOutput6775 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6776 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound6776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6776.moment H = canonicalOutput6776.moment H :=
  canonical_of_padded canonicalInput6776 canonicalOutput6776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6777 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -3, 1], ![1, -2, 1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6777 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code784

theorem canonicalSound6777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6777.moment H = canonicalOutput6777.moment H :=
  canonical_of_padded canonicalInput6777 canonicalOutput6777 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6778 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -3, 1], ![1, -2, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6778 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code774

theorem canonicalSound6778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6778.moment H = canonicalOutput6778.moment H :=
  canonical_of_padded canonicalInput6778 canonicalOutput6778 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6779 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -3, 1], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6779 : ExponentCode := normalNode10883

theorem canonicalSound6779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6779.moment H = canonicalOutput6779.moment H :=
  canonical_of_padded canonicalInput6779 canonicalOutput6779 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput6780 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput6780 : ExponentCode := normalNode10889

theorem canonicalSound6780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6780.moment H = canonicalOutput6780.moment H :=
  canonical_of_padded canonicalInput6780 canonicalOutput6780 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6781 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -2, 0], ![1, -2, 4, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node783⟩

theorem canonicalSound6781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6781.moment H = canonicalOutput6781.moment H :=
  canonical_of_padded canonicalInput6781 canonicalOutput6781 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput6782 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput6782 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code319

theorem canonicalSound6782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6782.moment H = canonicalOutput6782.moment H :=
  canonical_of_padded canonicalInput6782 canonicalOutput6782 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6783 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 2, -1, -1], ![1, -2, 4, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput6783 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code335

theorem canonicalSound6783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6783.moment H = canonicalOutput6783.moment H :=
  canonical_of_padded canonicalInput6783 canonicalOutput6783 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17728 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![1, -1, 2, 0, -2], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput17728 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound17728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17728.moment H = canonicalOutput17728.moment H :=
  canonical_of_padded canonicalInput17728 canonicalOutput17728 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17729 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, -2, 0, 1], ![-1, -1, 2, -1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput17729 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17729.moment H = canonicalOutput17729.moment H :=
  canonical_of_padded canonicalInput17729 canonicalOutput17729 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17730 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, -2, 0, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput17730 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound17730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17730.moment H = canonicalOutput17730.moment H :=
  canonical_of_padded canonicalInput17730 canonicalOutput17730 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17731 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, 0, 0, -1], ![-1, -1, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17731 : ExponentCode := normalNode10650

theorem canonicalSound17731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17731.moment H = canonicalOutput17731.moment H :=
  canonical_of_padded canonicalInput17731 canonicalOutput17731 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17732 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, 0, 1, -2], ![-1, 2, -2, -1, 2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput17732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code673

theorem canonicalSound17732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17732.moment H = canonicalOutput17732.moment H :=
  canonical_of_padded canonicalInput17732 canonicalOutput17732 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17733 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, 0, 1, -2], ![0, 2, -2, -1, 1], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput17733 : ExponentCode := normalNode2781

theorem canonicalSound17733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17733.moment H = canonicalOutput17733.moment H :=
  canonical_of_padded canonicalInput17733 canonicalOutput17733 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17734 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, 1, -2, 0], ![-1, 2, 1, -1, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput17734 : ExponentCode := normalNode5885

theorem canonicalSound17734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17734.moment H = canonicalOutput17734.moment H :=
  canonical_of_padded canonicalInput17734 canonicalOutput17734 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17735 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, 1, -1, -1], ![-1, -1, 1, -1, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound17735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17735.moment H = canonicalOutput17735.moment H :=
  canonical_of_padded canonicalInput17735 canonicalOutput17735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17736 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 0, 1, 0, -2], ![-1, -1, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17736 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17736.moment H = canonicalOutput17736.moment H :=
  canonical_of_padded canonicalInput17736 canonicalOutput17736 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17737 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![-2, 1, 1, -2, 2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17737 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code908

theorem canonicalSound17737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17737.moment H = canonicalOutput17737.moment H :=
  canonical_of_padded canonicalInput17737 canonicalOutput17737 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17738 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![-2, 1, 1, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17738 : ExponentCode := normalNode4490

theorem canonicalSound17738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17738.moment H = canonicalOutput17738.moment H :=
  canonical_of_padded canonicalInput17738 canonicalOutput17738 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17739 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![-1, -1, 2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput17739 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1958⟩

theorem canonicalSound17739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17739.moment H = canonicalOutput17739.moment H :=
  canonical_of_padded canonicalInput17739 canonicalOutput17739 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17740 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![-1, 1, 1, -3, 2], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput17740 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code790

theorem canonicalSound17740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17740.moment H = canonicalOutput17740.moment H :=
  canonical_of_padded canonicalInput17740 canonicalOutput17740 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17741 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![-1, 1, 1, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17741 : ExponentCode := normalNode3991

theorem canonicalSound17741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17741.moment H = canonicalOutput17741.moment H :=
  canonical_of_padded canonicalInput17741 canonicalOutput17741 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17742 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![0, -1, 2, 1, -2], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput17742 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1964⟩

theorem canonicalSound17742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17742.moment H = canonicalOutput17742.moment H :=
  canonical_of_padded canonicalInput17742 canonicalOutput17742 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17743 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, -2, 0, 0], ![0, 1, 1, -3, 1], ![0, -1, 1, 1, -1]]⟩

def canonicalOutput17743 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound17743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17743.moment H = canonicalOutput17743.moment H :=
  canonical_of_padded canonicalInput17743 canonicalOutput17743 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17744 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![-1, -1, 2, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17744 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2362⟩

theorem canonicalSound17744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17744.moment H = canonicalOutput17744.moment H :=
  canonical_of_padded canonicalInput17744 canonicalOutput17744 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17745 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![-1, -1, 2, 1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17745 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2354⟩

theorem canonicalSound17745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17745.moment H = canonicalOutput17745.moment H :=
  canonical_of_padded canonicalInput17745 canonicalOutput17745 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17746 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![-1, -1, 3, 0, -1], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput17746 : ExponentCode := normalNode5960

theorem canonicalSound17746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17746.moment H = canonicalOutput17746.moment H :=
  canonical_of_padded canonicalInput17746 canonicalOutput17746 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17747 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![-1, 1, 2, -1, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput17747 : ExponentCode := normalNode5902

theorem canonicalSound17747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17747.moment H = canonicalOutput17747.moment H :=
  canonical_of_padded canonicalInput17747 canonicalOutput17747 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17748 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![0, -1, 2, 1, -2], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput17748 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2355⟩

theorem canonicalSound17748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17748.moment H = canonicalOutput17748.moment H :=
  canonical_of_padded canonicalInput17748 canonicalOutput17748 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17749 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![0, -1, 3, 0, -2], ![0, 1, -3, 0, 2]]⟩

def canonicalOutput17749 : ExponentCode := normalNode5961

theorem canonicalSound17749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17749.moment H = canonicalOutput17749.moment H :=
  canonical_of_padded canonicalInput17749 canonicalOutput17749 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17750 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![2, -1, -2, 0, 1], ![-1, 2, 2, -2, -1]]⟩

def canonicalOutput17750 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound17750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17750.moment H = canonicalOutput17750.moment H :=
  canonical_of_padded canonicalInput17750 canonicalOutput17750 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17751 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![2, -1, 0, -1, 0], ![-2, 1, 2, 0, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2225⟩

theorem canonicalSound17751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17751.moment H = canonicalOutput17751.moment H :=
  canonical_of_padded canonicalInput17751 canonicalOutput17751 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17752 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![2, -1, 0, -1, 0], ![-1, 1, 2, 0, -2], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput17752 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound17752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17752.moment H = canonicalOutput17752.moment H :=
  canonical_of_padded canonicalInput17752 canonicalOutput17752 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17753 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![2, 0, -2, 0, 0], ![-2, -1, 2, -1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput17753 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code880

theorem canonicalSound17753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17753.moment H = canonicalOutput17753.moment H :=
  canonical_of_padded canonicalInput17753 canonicalOutput17753 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17754 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![2, 0, -2, 0, 0], ![-1, -1, 2, -1, 1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput17754 : ExponentCode := normalNode3873

theorem canonicalSound17754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17754.moment H = canonicalOutput17754.moment H :=
  canonical_of_padded canonicalInput17754 canonicalOutput17754 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17755 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![2, 0, 0, 0, -2], ![-2, -1, 2, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17755 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code880

theorem canonicalSound17755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17755.moment H = canonicalOutput17755.moment H :=
  canonical_of_padded canonicalInput17755 canonicalOutput17755 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17756 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![2, 0, 0, 0, -2], ![-1, -1, 2, -1, 1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput17756 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound17756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17756.moment H = canonicalOutput17756.moment H :=
  canonical_of_padded canonicalInput17756 canonicalOutput17756 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17757 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![-2, 2, 2, -2, 0], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput17757 : ExponentCode := normalNode237

theorem canonicalSound17757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17757.moment H = canonicalOutput17757.moment H :=
  canonical_of_padded canonicalInput17757 canonicalOutput17757 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17758 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![-1, -1, 2, -2, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput17758 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound17758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17758.moment H = canonicalOutput17758.moment H :=
  canonical_of_padded canonicalInput17758 canonicalOutput17758 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17759 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![-1, 2, -2, -1, 2], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput17759 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound17759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17759.moment H = canonicalOutput17759.moment H :=
  canonical_of_padded canonicalInput17759 canonicalOutput17759 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17760 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![-1, 2, 2, -2, -1], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput17760 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound17760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17760.moment H = canonicalOutput17760.moment H :=
  canonical_of_padded canonicalInput17760 canonicalOutput17760 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17761 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![-1, 3, -2, -2, 2], ![2, -2, 2, -1, -1]]⟩

def canonicalOutput17761 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code74

theorem canonicalSound17761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17761.moment H = canonicalOutput17761.moment H :=
  canonical_of_padded canonicalInput17761 canonicalOutput17761 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17762 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![0, -1, 2, -2, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17762 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node377⟩

theorem canonicalSound17762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17762.moment H = canonicalOutput17762.moment H :=
  canonical_of_padded canonicalInput17762 canonicalOutput17762 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17763 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![0, -1, 2, -1, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput17763 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node666⟩

theorem canonicalSound17763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17763.moment H = canonicalOutput17763.moment H :=
  canonical_of_padded canonicalInput17763 canonicalOutput17763 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17764 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![0, 2, -2, -1, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput17764 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node377⟩

theorem canonicalSound17764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17764.moment H = canonicalOutput17764.moment H :=
  canonical_of_padded canonicalInput17764 canonicalOutput17764 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17765 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![0, 2, -2, 0, 0], ![1, -1, 2, -3, 1]]⟩

def canonicalOutput17765 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node651⟩

theorem canonicalSound17765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17765.moment H = canonicalOutput17765.moment H :=
  canonical_of_padded canonicalInput17765 canonicalOutput17765 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17766 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![0, 3, -2, -2, 1], ![1, -2, 2, -1, 0]]⟩

def canonicalOutput17766 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node360⟩

theorem canonicalSound17766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17766.moment H = canonicalOutput17766.moment H :=
  canonical_of_padded canonicalInput17766 canonicalOutput17766 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17767 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![1, -1, 2, -1, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput17767 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node361⟩

theorem canonicalSound17767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17767.moment H = canonicalOutput17767.moment H :=
  canonical_of_padded canonicalInput17767 canonicalOutput17767 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17768 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 3, -1], ![1, 2, -2, 0, -1], ![0, -1, 2, -3, 2]]⟩

def canonicalOutput17768 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node351⟩

theorem canonicalSound17768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17768.moment H = canonicalOutput17768.moment H :=
  canonical_of_padded canonicalInput17768 canonicalOutput17768 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17769 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17769 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩

theorem canonicalSound17769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17769.moment H = canonicalOutput17769.moment H :=
  canonical_of_padded canonicalInput17769 canonicalOutput17769 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17770 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17770 : ExponentCode := normalNode2634

theorem canonicalSound17770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17770.moment H = canonicalOutput17770.moment H :=
  canonical_of_padded canonicalInput17770 canonicalOutput17770 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17771 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput17771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound17771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17771.moment H = canonicalOutput17771.moment H :=
  canonical_of_padded canonicalInput17771 canonicalOutput17771 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17772 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17772 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound17772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17772.moment H = canonicalOutput17772.moment H :=
  canonical_of_padded canonicalInput17772 canonicalOutput17772 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17773 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 1, 1], ![0, 1, 0, 2, -3], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17773 : ExponentCode := normalNode5533

theorem canonicalSound17773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17773.moment H = canonicalOutput17773.moment H :=
  canonical_of_padded canonicalInput17773 canonicalOutput17773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17774 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17774 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound17774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17774.moment H = canonicalOutput17774.moment H :=
  canonical_of_padded canonicalInput17774 canonicalOutput17774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17775 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 2, 0], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1724⟩

theorem canonicalSound17775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17775.moment H = canonicalOutput17775.moment H :=
  canonical_of_padded canonicalInput17775 canonicalOutput17775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17776 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17776 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1710⟩

theorem canonicalSound17776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17776.moment H = canonicalOutput17776.moment H :=
  canonical_of_padded canonicalInput17776 canonicalOutput17776 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17777 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput17777 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2826⟩

theorem canonicalSound17777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17777.moment H = canonicalOutput17777.moment H :=
  canonical_of_padded canonicalInput17777 canonicalOutput17777 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17778 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17778 : ExponentCode := normalNode9226

theorem canonicalSound17778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17778.moment H = canonicalOutput17778.moment H :=
  canonical_of_padded canonicalInput17778 canonicalOutput17778 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput17779 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17779 : ExponentCode := normalNode8050

theorem canonicalSound17779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17779.moment H = canonicalOutput17779.moment H :=
  canonical_of_padded canonicalInput17779 canonicalOutput17779 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput17780 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17780 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2543⟩

theorem canonicalSound17780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17780.moment H = canonicalOutput17780.moment H :=
  canonical_of_padded canonicalInput17780 canonicalOutput17780 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17781 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -1, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17781 : ExponentCode := normalNode10724

theorem canonicalSound17781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17781.moment H = canonicalOutput17781.moment H :=
  canonical_of_padded canonicalInput17781 canonicalOutput17781 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17782 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17782 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1673⟩

theorem canonicalSound17782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17782.moment H = canonicalOutput17782.moment H :=
  canonical_of_padded canonicalInput17782 canonicalOutput17782 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17783 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17783 : ExponentCode := normalNode10605

theorem canonicalSound17783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17783.moment H = canonicalOutput17783.moment H :=
  canonical_of_padded canonicalInput17783 canonicalOutput17783 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17784 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17784 : ExponentCode := normalNode7953

theorem canonicalSound17784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17784.moment H = canonicalOutput17784.moment H :=
  canonical_of_padded canonicalInput17784 canonicalOutput17784 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17785 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, -1, 3, -2], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17785 : ExponentCode := normalNode9942

theorem canonicalSound17785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17785.moment H = canonicalOutput17785.moment H :=
  canonical_of_padded canonicalInput17785 canonicalOutput17785 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17786 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1676⟩

theorem canonicalSound17786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17786.moment H = canonicalOutput17786.moment H :=
  canonical_of_padded canonicalInput17786 canonicalOutput17786 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17787 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17787 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2701⟩

theorem canonicalSound17787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17787.moment H = canonicalOutput17787.moment H :=
  canonical_of_padded canonicalInput17787 canonicalOutput17787 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17788 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput17788 : ExponentCode := normalNode10621

theorem canonicalSound17788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17788.moment H = canonicalOutput17788.moment H :=
  canonical_of_padded canonicalInput17788 canonicalOutput17788 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17789 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput17789 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2701⟩

theorem canonicalSound17789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17789.moment H = canonicalOutput17789.moment H :=
  canonical_of_padded canonicalInput17789 canonicalOutput17789 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17790 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 1, -2, 0, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17790 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩

theorem canonicalSound17790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17790.moment H = canonicalOutput17790.moment H :=
  canonical_of_padded canonicalInput17790 canonicalOutput17790 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17791 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -2, 3], ![0, 1, -2, 0, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17791 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound17791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17791.moment H = canonicalOutput17791.moment H :=
  canonical_of_padded canonicalInput17791 canonicalOutput17791 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

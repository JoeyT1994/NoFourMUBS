import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15744 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 2, -2], ![0, 2, -1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15744 : ExponentCode := normalNode8949

theorem canonicalSound15744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15744.moment H = canonicalOutput15744.moment H :=
  canonical_of_padded canonicalInput15744 canonicalOutput15744 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15745 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 2, -2], ![0, 2, 0, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput15745 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound15745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15745.moment H = canonicalOutput15745.moment H :=
  canonical_of_padded canonicalInput15745 canonicalOutput15745 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15746 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 2, -2], ![0, 2, 1, -2, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput15746 : ExponentCode := normalNode2781

theorem canonicalSound15746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15746.moment H = canonicalOutput15746.moment H :=
  canonical_of_padded canonicalInput15746 canonicalOutput15746 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15747 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 2, -2], ![0, 2, 1, -1, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput15747 : ExponentCode := normalNode933

theorem canonicalSound15747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15747.moment H = canonicalOutput15747.moment H :=
  canonical_of_padded canonicalInput15747 canonicalOutput15747 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15748 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15748 : ExponentCode := normalNode8288

theorem canonicalSound15748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15748.moment H = canonicalOutput15748.moment H :=
  canonical_of_padded canonicalInput15748 canonicalOutput15748 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput15749 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15749 : ExponentCode := normalNode8685

theorem canonicalSound15749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15749.moment H = canonicalOutput15749.moment H :=
  canonical_of_padded canonicalInput15749 canonicalOutput15749 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15750 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15750 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound15750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15750.moment H = canonicalOutput15750.moment H :=
  canonical_of_padded canonicalInput15750 canonicalOutput15750 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15751 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound15751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15751.moment H = canonicalOutput15751.moment H :=
  canonical_of_padded canonicalInput15751 canonicalOutput15751 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15752 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput15752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound15752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15752.moment H = canonicalOutput15752.moment H :=
  canonical_of_padded canonicalInput15752 canonicalOutput15752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15753 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, -1, 1], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15753 : ExponentCode := normalNode9768

theorem canonicalSound15753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15753.moment H = canonicalOutput15753.moment H :=
  canonical_of_padded canonicalInput15753 canonicalOutput15753 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15754 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15754 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound15754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15754.moment H = canonicalOutput15754.moment H :=
  canonical_of_padded canonicalInput15754 canonicalOutput15754 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15755 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, 1, -2], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput15755 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound15755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15755.moment H = canonicalOutput15755.moment H :=
  canonical_of_padded canonicalInput15755 canonicalOutput15755 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15756 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 2, 2, -3], ![0, 2, -1, -1, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput15756 : ExponentCode := normalNode2141

theorem canonicalSound15756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15756.moment H = canonicalOutput15756.moment H :=
  canonical_of_padded canonicalInput15756 canonicalOutput15756 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15757 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15757 : ExponentCode := normalNode8241

theorem canonicalSound15757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15757.moment H = canonicalOutput15757.moment H :=
  canonical_of_padded canonicalInput15757 canonicalOutput15757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15758 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, -1, 1, 1, -2], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput15758 : ExponentCode := normalNode7581

theorem canonicalSound15758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15758.moment H = canonicalOutput15758.moment H :=
  canonical_of_padded canonicalInput15758 canonicalOutput15758 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15759 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput15759 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1580⟩

theorem canonicalSound15759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15759.moment H = canonicalOutput15759.moment H :=
  canonical_of_padded canonicalInput15759 canonicalOutput15759 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15760 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, 1, 0, -3], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15760 : ExponentCode := normalNode10067

theorem canonicalSound15760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15760.moment H = canonicalOutput15760.moment H :=
  canonical_of_padded canonicalInput15760 canonicalOutput15760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15761 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15761 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound15761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15761.moment H = canonicalOutput15761.moment H :=
  canonical_of_padded canonicalInput15761 canonicalOutput15761 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15762 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15762 : ExponentCode := normalNode8259

theorem canonicalSound15762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15762.moment H = canonicalOutput15762.moment H :=
  canonical_of_padded canonicalInput15762 canonicalOutput15762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15763 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput15763 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound15763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15763.moment H = canonicalOutput15763.moment H :=
  canonical_of_padded canonicalInput15763 canonicalOutput15763 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15764 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15764 : ExponentCode := normalNode8384

theorem canonicalSound15764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15764.moment H = canonicalOutput15764.moment H :=
  canonical_of_padded canonicalInput15764 canonicalOutput15764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15765 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15765 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1752⟩

theorem canonicalSound15765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15765.moment H = canonicalOutput15765.moment H :=
  canonical_of_padded canonicalInput15765 canonicalOutput15765 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15766 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15766 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1749⟩

theorem canonicalSound15766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15766.moment H = canonicalOutput15766.moment H :=
  canonical_of_padded canonicalInput15766 canonicalOutput15766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15767 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, 1, -3], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15767 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1657⟩

theorem canonicalSound15767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15767.moment H = canonicalOutput15767.moment H :=
  canonical_of_padded canonicalInput15767 canonicalOutput15767 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15768 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput15768 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2810⟩

theorem canonicalSound15768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15768.moment H = canonicalOutput15768.moment H :=
  canonical_of_padded canonicalInput15768 canonicalOutput15768 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15769 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15769 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound15769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15769.moment H = canonicalOutput15769.moment H :=
  canonical_of_padded canonicalInput15769 canonicalOutput15769 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15770 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, -3, 1], ![1, 0, 1, 2, -4]]⟩

def canonicalOutput15770 : ExponentCode := normalNode1330

theorem canonicalSound15770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15770.moment H = canonicalOutput15770.moment H :=
  canonical_of_padded canonicalInput15770 canonicalOutput15770 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15771 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15771 : ExponentCode := normalNode8252

theorem canonicalSound15771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15771.moment H = canonicalOutput15771.moment H :=
  canonical_of_padded canonicalInput15771 canonicalOutput15771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15772 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15772 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound15772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15772.moment H = canonicalOutput15772.moment H :=
  canonical_of_padded canonicalInput15772 canonicalOutput15772 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15773 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound15773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15773.moment H = canonicalOutput15773.moment H :=
  canonical_of_padded canonicalInput15773 canonicalOutput15773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15774 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15774 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound15774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15774.moment H = canonicalOutput15774.moment H :=
  canonical_of_padded canonicalInput15774 canonicalOutput15774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15775 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 1, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound15775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15775.moment H = canonicalOutput15775.moment H :=
  canonical_of_padded canonicalInput15775 canonicalOutput15775 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15776 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 2, -3, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput15776 : ExponentCode := normalNode1898

theorem canonicalSound15776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15776.moment H = canonicalOutput15776.moment H :=
  canonical_of_padded canonicalInput15776 canonicalOutput15776 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15777 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 1, 2, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15777 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound15777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15777.moment H = canonicalOutput15777.moment H :=
  canonical_of_padded canonicalInput15777 canonicalOutput15777 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15778 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 2, 1, -2, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput15778 : ExponentCode := normalNode2575

theorem canonicalSound15778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15778.moment H = canonicalOutput15778.moment H :=
  canonical_of_padded canonicalInput15778 canonicalOutput15778 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15779 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 2, 1, -1, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15779 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1741⟩

theorem canonicalSound15779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15779.moment H = canonicalOutput15779.moment H :=
  canonical_of_padded canonicalInput15779 canonicalOutput15779 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15780 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 2, 1, 0, -3], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15780 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound15780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15780.moment H = canonicalOutput15780.moment H :=
  canonical_of_padded canonicalInput15780 canonicalOutput15780 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15781 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 2, 2, -2, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput15781 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1734⟩

theorem canonicalSound15781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15781.moment H = canonicalOutput15781.moment H :=
  canonical_of_padded canonicalInput15781 canonicalOutput15781 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15782 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![1, -1, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput15782 : ExponentCode := normalNode8255

theorem canonicalSound15782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15782.moment H = canonicalOutput15782.moment H :=
  canonical_of_padded canonicalInput15782 canonicalOutput15782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15783 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![1, -1, 1, -2, 1], ![0, 2, 1, 1, -4]]⟩

def canonicalOutput15783 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1579⟩

theorem canonicalSound15783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15783.moment H = canonicalOutput15783.moment H :=
  canonical_of_padded canonicalInput15783 canonicalOutput15783 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15784 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![1, -1, 1, 1, -2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput15784 : ExponentCode := normalNode2575

theorem canonicalSound15784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15784.moment H = canonicalOutput15784.moment H :=
  canonical_of_padded canonicalInput15784 canonicalOutput15784 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15785 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![1, -1, 2, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput15785 : ExponentCode := normalNode1867

theorem canonicalSound15785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15785.moment H = canonicalOutput15785.moment H :=
  canonical_of_padded canonicalInput15785 canonicalOutput15785 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15786 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![1, 0, 0, 1, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput15786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound15786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15786.moment H = canonicalOutput15786.moment H :=
  canonical_of_padded canonicalInput15786 canonicalOutput15786 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15787 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![1, 0, 1, -2, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput15787 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound15787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15787.moment H = canonicalOutput15787.moment H :=
  canonical_of_padded canonicalInput15787 canonicalOutput15787 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15788 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput15788 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound15788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15788.moment H = canonicalOutput15788.moment H :=
  canonical_of_padded canonicalInput15788 canonicalOutput15788 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15789 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15789 : ExponentCode := normalNode8288

theorem canonicalSound15789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15789.moment H = canonicalOutput15789.moment H :=
  canonical_of_padded canonicalInput15789 canonicalOutput15789 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15790 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15790 : ExponentCode := normalNode8121

theorem canonicalSound15790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15790.moment H = canonicalOutput15790.moment H :=
  canonical_of_padded canonicalInput15790 canonicalOutput15790 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation27⟩ (by decide +kernel) hH

def canonicalInput15791 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![0, 2, 1, -1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15791 : ExponentCode := normalNode10083

theorem canonicalSound15791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15791.moment H = canonicalOutput15791.moment H :=
  canonical_of_padded canonicalInput15791 canonicalOutput15791 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation200⟩ (by decide +kernel) hH

def canonicalInput15792 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput15792 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound15792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15792.moment H = canonicalOutput15792.moment H :=
  canonical_of_padded canonicalInput15792 canonicalOutput15792 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15793 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15793 : ExponentCode := normalNode10900

theorem canonicalSound15793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15793.moment H = canonicalOutput15793.moment H :=
  canonical_of_padded canonicalInput15793 canonicalOutput15793 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15794 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1998⟩

theorem canonicalSound15794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15794.moment H = canonicalOutput15794.moment H :=
  canonical_of_padded canonicalInput15794 canonicalOutput15794 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15795 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15795 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound15795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15795.moment H = canonicalOutput15795.moment H :=
  canonical_of_padded canonicalInput15795 canonicalOutput15795 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15796 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15796 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2001⟩

theorem canonicalSound15796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15796.moment H = canonicalOutput15796.moment H :=
  canonical_of_padded canonicalInput15796 canonicalOutput15796 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15797 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput15797 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩

theorem canonicalSound15797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15797.moment H = canonicalOutput15797.moment H :=
  canonical_of_padded canonicalInput15797 canonicalOutput15797 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15798 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput15798 : ExponentCode := normalNode8715

theorem canonicalSound15798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15798.moment H = canonicalOutput15798.moment H :=
  canonical_of_padded canonicalInput15798 canonicalOutput15798 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput15799 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput15799 : ExponentCode := normalNode8752

theorem canonicalSound15799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15799.moment H = canonicalOutput15799.moment H :=
  canonical_of_padded canonicalInput15799 canonicalOutput15799 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput15800 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15800 : ExponentCode := normalNode8111

theorem canonicalSound15800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15800.moment H = canonicalOutput15800.moment H :=
  canonical_of_padded canonicalInput15800 canonicalOutput15800 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput15801 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 2, -1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15801 : ExponentCode := normalNode10755

theorem canonicalSound15801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15801.moment H = canonicalOutput15801.moment H :=
  canonical_of_padded canonicalInput15801 canonicalOutput15801 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation80⟩ (by decide +kernel) hH

def canonicalInput15802 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15802 : ExponentCode := normalNode10852

theorem canonicalSound15802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15802.moment H = canonicalOutput15802.moment H :=
  canonical_of_padded canonicalInput15802 canonicalOutput15802 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15803 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15803 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound15803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15803.moment H = canonicalOutput15803.moment H :=
  canonical_of_padded canonicalInput15803 canonicalOutput15803 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15804 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -3, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15804 : ExponentCode := normalNode3390

theorem canonicalSound15804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15804.moment H = canonicalOutput15804.moment H :=
  canonical_of_padded canonicalInput15804 canonicalOutput15804 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15805 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15805 : ExponentCode := normalNode8300

theorem canonicalSound15805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15805.moment H = canonicalOutput15805.moment H :=
  canonical_of_padded canonicalInput15805 canonicalOutput15805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15806 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound15806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15806.moment H = canonicalOutput15806.moment H :=
  canonical_of_padded canonicalInput15806 canonicalOutput15806 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15807 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15807 : ExponentCode := normalNode8111

theorem canonicalSound15807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15807.moment H = canonicalOutput15807.moment H :=
  canonical_of_padded canonicalInput15807 canonicalOutput15807 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

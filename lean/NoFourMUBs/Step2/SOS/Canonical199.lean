import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12736 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![0, 1, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput12736 : ExponentCode := normalNode235

theorem canonicalSound12736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12736.moment H = canonicalOutput12736.moment H :=
  canonical_of_padded canonicalInput12736 canonicalOutput12736 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12737 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12737 : ExponentCode := normalNode7030

theorem canonicalSound12737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12737.moment H = canonicalOutput12737.moment H :=
  canonical_of_padded canonicalInput12737 canonicalOutput12737 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12738 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12738 : ExponentCode := normalNode6249

theorem canonicalSound12738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12738.moment H = canonicalOutput12738.moment H :=
  canonical_of_padded canonicalInput12738 canonicalOutput12738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12739 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩

theorem canonicalSound12739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12739.moment H = canonicalOutput12739.moment H :=
  canonical_of_padded canonicalInput12739 canonicalOutput12739 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12740 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node832⟩

theorem canonicalSound12740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12740.moment H = canonicalOutput12740.moment H :=
  canonical_of_padded canonicalInput12740 canonicalOutput12740 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12741 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12741 : ExponentCode := normalNode7064

theorem canonicalSound12741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12741.moment H = canonicalOutput12741.moment H :=
  canonical_of_padded canonicalInput12741 canonicalOutput12741 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12742 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput12742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound12742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12742.moment H = canonicalOutput12742.moment H :=
  canonical_of_padded canonicalInput12742 canonicalOutput12742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12743 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12743 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound12743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12743.moment H = canonicalOutput12743.moment H :=
  canonical_of_padded canonicalInput12743 canonicalOutput12743 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12744 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12744 : ExponentCode := normalNode6159

theorem canonicalSound12744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12744.moment H = canonicalOutput12744.moment H :=
  canonical_of_padded canonicalInput12744 canonicalOutput12744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12745 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12745 : ExponentCode := normalNode6179

theorem canonicalSound12745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12745.moment H = canonicalOutput12745.moment H :=
  canonical_of_padded canonicalInput12745 canonicalOutput12745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12746 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput12746 : ExponentCode := normalNode7030

theorem canonicalSound12746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12746.moment H = canonicalOutput12746.moment H :=
  canonical_of_padded canonicalInput12746 canonicalOutput12746 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12747 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12747 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2843⟩

theorem canonicalSound12747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12747.moment H = canonicalOutput12747.moment H :=
  canonical_of_padded canonicalInput12747 canonicalOutput12747 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12748 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12748 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2782⟩

theorem canonicalSound12748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12748.moment H = canonicalOutput12748.moment H :=
  canonical_of_padded canonicalInput12748 canonicalOutput12748 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12749 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![0, 1, -1, 0]]⟩

def canonicalOutput12749 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2860⟩

theorem canonicalSound12749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12749.moment H = canonicalOutput12749.moment H :=
  canonical_of_padded canonicalInput12749 canonicalOutput12749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12750 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node959⟩

theorem canonicalSound12750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12750.moment H = canonicalOutput12750.moment H :=
  canonical_of_padded canonicalInput12750 canonicalOutput12750 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12751 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2823⟩

theorem canonicalSound12751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12751.moment H = canonicalOutput12751.moment H :=
  canonical_of_padded canonicalInput12751 canonicalOutput12751 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12752 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12752 : ExponentCode := normalNode6248

theorem canonicalSound12752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12752.moment H = canonicalOutput12752.moment H :=
  canonical_of_padded canonicalInput12752 canonicalOutput12752 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12753 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12753 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩

theorem canonicalSound12753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12753.moment H = canonicalOutput12753.moment H :=
  canonical_of_padded canonicalInput12753 canonicalOutput12753 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12754 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![0, 0, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12754 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound12754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12754.moment H = canonicalOutput12754.moment H :=
  canonical_of_padded canonicalInput12754 canonicalOutput12754 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput12755 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![0, 0, 1, -1]]⟩

def canonicalOutput12755 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2850⟩

theorem canonicalSound12755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12755.moment H = canonicalOutput12755.moment H :=
  canonical_of_padded canonicalInput12755 canonicalOutput12755 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12756 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound12756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12756.moment H = canonicalOutput12756.moment H :=
  canonical_of_padded canonicalInput12756 canonicalOutput12756 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12757 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1032⟩

theorem canonicalSound12757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12757.moment H = canonicalOutput12757.moment H :=
  canonical_of_padded canonicalInput12757 canonicalOutput12757 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12758 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput12758 : ExponentCode := normalNode7062

theorem canonicalSound12758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12758.moment H = canonicalOutput12758.moment H :=
  canonical_of_padded canonicalInput12758 canonicalOutput12758 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12759 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput12759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩

theorem canonicalSound12759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12759.moment H = canonicalOutput12759.moment H :=
  canonical_of_padded canonicalInput12759 canonicalOutput12759 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12760 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12760 : ExponentCode := normalNode6197

theorem canonicalSound12760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12760.moment H = canonicalOutput12760.moment H :=
  canonical_of_padded canonicalInput12760 canonicalOutput12760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12761 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12761 : ExponentCode := normalNode6241

theorem canonicalSound12761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12761.moment H = canonicalOutput12761.moment H :=
  canonical_of_padded canonicalInput12761 canonicalOutput12761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12762 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput12762 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2860⟩

theorem canonicalSound12762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12762.moment H = canonicalOutput12762.moment H :=
  canonical_of_padded canonicalInput12762 canonicalOutput12762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12763 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput12763 : ExponentCode := normalNode6251

theorem canonicalSound12763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12763.moment H = canonicalOutput12763.moment H :=
  canonical_of_padded canonicalInput12763 canonicalOutput12763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12764 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node959⟩

theorem canonicalSound12764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12764.moment H = canonicalOutput12764.moment H :=
  canonical_of_padded canonicalInput12764 canonicalOutput12764 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12765 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput12765 : ExponentCode := normalNode6251

theorem canonicalSound12765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12765.moment H = canonicalOutput12765.moment H :=
  canonical_of_padded canonicalInput12765 canonicalOutput12765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12766 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput12766 : ExponentCode := normalNode7030

theorem canonicalSound12766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12766.moment H = canonicalOutput12766.moment H :=
  canonical_of_padded canonicalInput12766 canonicalOutput12766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12767 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 2, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12767 : ExponentCode := normalNode7062

theorem canonicalSound12767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12767.moment H = canonicalOutput12767.moment H :=
  canonical_of_padded canonicalInput12767 canonicalOutput12767 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12768 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1032⟩

theorem canonicalSound12768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12768.moment H = canonicalOutput12768.moment H :=
  canonical_of_padded canonicalInput12768 canonicalOutput12768 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12769 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12769 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node796⟩

theorem canonicalSound12769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12769.moment H = canonicalOutput12769.moment H :=
  canonical_of_padded canonicalInput12769 canonicalOutput12769 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12770 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput12770 : ExponentCode := normalNode6237

theorem canonicalSound12770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12770.moment H = canonicalOutput12770.moment H :=
  canonical_of_padded canonicalInput12770 canonicalOutput12770 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12771 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 1, 1, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput12771 : ExponentCode := normalNode6251

theorem canonicalSound12771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12771.moment H = canonicalOutput12771.moment H :=
  canonical_of_padded canonicalInput12771 canonicalOutput12771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12772 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput12772 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound12772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12772.moment H = canonicalOutput12772.moment H :=
  canonical_of_padded canonicalInput12772 canonicalOutput12772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12773 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, -3, 1], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12773 : ExponentCode := normalNode7062

theorem canonicalSound12773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12773.moment H = canonicalOutput12773.moment H :=
  canonical_of_padded canonicalInput12773 canonicalOutput12773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12774 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, -3, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12774 : ExponentCode := normalNode7064

theorem canonicalSound12774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12774.moment H = canonicalOutput12774.moment H :=
  canonical_of_padded canonicalInput12774 canonicalOutput12774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12775 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput12775 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound12775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12775.moment H = canonicalOutput12775.moment H :=
  canonical_of_padded canonicalInput12775 canonicalOutput12775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12776 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, -1, -1], ![0, 0, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput12776 : ExponentCode := normalNode6220

theorem canonicalSound12776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12776.moment H = canonicalOutput12776.moment H :=
  canonical_of_padded canonicalInput12776 canonicalOutput12776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12777 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, -1, -1], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound12777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12777.moment H = canonicalOutput12777.moment H :=
  canonical_of_padded canonicalInput12777 canonicalOutput12777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12778 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, -1, -1], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12778 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound12778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12778.moment H = canonicalOutput12778.moment H :=
  canonical_of_padded canonicalInput12778 canonicalOutput12778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12779 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, 0, -2], ![0, 0, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput12779 : ExponentCode := normalNode7040

theorem canonicalSound12779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12779.moment H = canonicalOutput12779.moment H :=
  canonical_of_padded canonicalInput12779 canonicalOutput12779 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12780 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, 0, -2], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput12780 : ExponentCode := normalNode6252

theorem canonicalSound12780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12780.moment H = canonicalOutput12780.moment H :=
  canonical_of_padded canonicalInput12780 canonicalOutput12780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12781 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, 0, -2], ![1, 0, 1, -2], ![0, 1, -3, 2]]⟩

def canonicalOutput12781 : ExponentCode := normalNode6245

theorem canonicalSound12781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12781.moment H = canonicalOutput12781.moment H :=
  canonical_of_padded canonicalInput12781 canonicalOutput12781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12782 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, 1, -3], ![0, 0, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput12782 : ExponentCode := normalNode6221

theorem canonicalSound12782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12782.moment H = canonicalOutput12782.moment H :=
  canonical_of_padded canonicalInput12782 canonicalOutput12782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12783 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 2, 1, -3], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12783 : ExponentCode := normalNode6246

theorem canonicalSound12783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12783.moment H = canonicalOutput12783.moment H :=
  canonical_of_padded canonicalInput12783 canonicalOutput12783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12784 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![0, 2, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput12784 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound12784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12784.moment H = canonicalOutput12784.moment H :=
  canonical_of_padded canonicalInput12784 canonicalOutput12784 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12785 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 3, -1, -2], ![0, 0, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node729⟩

theorem canonicalSound12785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12785.moment H = canonicalOutput12785.moment H :=
  canonical_of_padded canonicalInput12785 canonicalOutput12785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12786 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 3, 0, -3], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12786 : ExponentCode := normalNode10681

theorem canonicalSound12786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12786.moment H = canonicalOutput12786.moment H :=
  canonical_of_padded canonicalInput12786 canonicalOutput12786 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12787 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![0, 3, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput12787 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound12787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12787.moment H = canonicalOutput12787.moment H :=
  canonical_of_padded canonicalInput12787 canonicalOutput12787 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12788 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![0, 3, 1, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput12788 : ExponentCode := normalNode241

theorem canonicalSound12788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12788.moment H = canonicalOutput12788.moment H :=
  canonical_of_padded canonicalInput12788 canonicalOutput12788 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12789 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![1, 0, -3, 2], ![0, 1, 1, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput12789 : ExponentCode := normalNode6252

theorem canonicalSound12789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12789.moment H = canonicalOutput12789.moment H :=
  canonical_of_padded canonicalInput12789 canonicalOutput12789 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12790 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![1, 0, -2, 1], ![0, 1, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput12790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound12790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12790.moment H = canonicalOutput12790.moment H :=
  canonical_of_padded canonicalInput12790 canonicalOutput12790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12791 : ExponentCode := ⟨3, 4, ![![-1, -3, 2, 2], ![1, 1, -3, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput12791 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound12791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12791.moment H = canonicalOutput12791.moment H :=
  canonical_of_padded canonicalInput12791 canonicalOutput12791 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12792 : ExponentCode := ⟨3, 4, ![![-1, -3, 3, 1], ![-2, 2, -2, 2], ![3, 1, -1, -3]]⟩

def canonicalOutput12792 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code68

theorem canonicalSound12792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12792.moment H = canonicalOutput12792.moment H :=
  canonical_of_padded canonicalInput12792 canonicalOutput12792 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12793 : ExponentCode := ⟨3, 4, ![![-1, -3, 3, 1], ![-2, 3, 1, -2], ![3, 0, -4, 1]]⟩

def canonicalOutput12793 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code7

theorem canonicalSound12793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12793.moment H = canonicalOutput12793.moment H :=
  canonical_of_padded canonicalInput12793 canonicalOutput12793 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12794 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound12794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12794.moment H = canonicalOutput12794.moment H :=
  canonical_of_padded canonicalInput12794 canonicalOutput12794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12795 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12795 : ExponentCode := normalNode10191

theorem canonicalSound12795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12795.moment H = canonicalOutput12795.moment H :=
  canonical_of_padded canonicalInput12795 canonicalOutput12795 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12796 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 1, -1, 1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12796 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node492⟩

theorem canonicalSound12796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12796.moment H = canonicalOutput12796.moment H :=
  canonical_of_padded canonicalInput12796 canonicalOutput12796 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12797 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 1, -1, 1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound12797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12797.moment H = canonicalOutput12797.moment H :=
  canonical_of_padded canonicalInput12797 canonicalOutput12797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12798 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 2, -3, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12798 : ExponentCode := normalNode7055

theorem canonicalSound12798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12798.moment H = canonicalOutput12798.moment H :=
  canonical_of_padded canonicalInput12798 canonicalOutput12798 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12799 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 2, -2, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2835⟩

theorem canonicalSound12799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12799.moment H = canonicalOutput12799.moment H :=
  canonical_of_padded canonicalInput12799 canonicalOutput12799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32832 : ExponentCode := ⟨6, 6, ![![0, 3, -3, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32832 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound32832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32832.moment H = canonicalOutput32832.moment H :=
  canonical_of_padded canonicalInput32832 canonicalOutput32832 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32833 : ExponentCode := ⟨6, 3, ![![1, -4, 3], ![1, -1, 0], ![1, 0, -1], ![-1, 1, 0], ![-1, 1, 0], ![-1, 3, -2]]⟩

def canonicalOutput32833 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1383⟩

theorem canonicalSound32833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32833.moment H = canonicalOutput32833.moment H :=
  canonical_of_padded canonicalInput32833 canonicalOutput32833 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32834 : ExponentCode := ⟨6, 3, ![![1, -4, 3], ![1, -1, 0], ![1, 0, -1], ![-1, 1, 0], ![-1, 2, -1], ![-1, 2, -1]]⟩

def canonicalOutput32834 : ExponentCode := normalNode116

theorem canonicalSound32834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32834.moment H = canonicalOutput32834.moment H :=
  canonical_of_padded canonicalInput32834 canonicalOutput32834 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32835 : ExponentCode := ⟨6, 3, ![![1, -4, 3], ![1, -1, 0], ![1, 1, -2], ![-1, 1, 0], ![-1, 1, 0], ![-1, 2, -1]]⟩

def canonicalOutput32835 : ExponentCode := normalNode114

theorem canonicalSound32835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32835.moment H = canonicalOutput32835.moment H :=
  canonical_of_padded canonicalInput32835 canonicalOutput32835 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32836 : ExponentCode := ⟨6, 3, ![![1, -4, 3], ![1, -1, 0], ![1, 2, -3], ![-1, 1, 0], ![-1, 1, 0], ![-1, 1, 0]]⟩

def canonicalOutput32836 : ExponentCode := normalNode113

theorem canonicalSound32836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32836.moment H = canonicalOutput32836.moment H :=
  canonical_of_padded canonicalInput32836 canonicalOutput32836 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32837 : ExponentCode := ⟨6, 3, ![![1, -4, 3], ![1, 0, -1], ![1, 0, -1], ![-1, 1, 0], ![-1, 1, 0], ![-1, 2, -1]]⟩

def canonicalOutput32837 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1390⟩

theorem canonicalSound32837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32837.moment H = canonicalOutput32837.moment H :=
  canonical_of_padded canonicalInput32837 canonicalOutput32837 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32838 : ExponentCode := ⟨6, 4, ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 2, 1, -2]]⟩

def canonicalOutput32838 : ExponentCode := normalNode78

theorem canonicalSound32838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32838.moment H = canonicalOutput32838.moment H :=
  canonical_of_padded canonicalInput32838 canonicalOutput32838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32839 : ExponentCode := ⟨6, 4, ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-1, 0, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1]]⟩

def canonicalOutput32839 : ExponentCode := normalNode80

theorem canonicalSound32839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32839.moment H = canonicalOutput32839.moment H :=
  canonical_of_padded canonicalInput32839 canonicalOutput32839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32840 : ExponentCode := ⟨6, 4, ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput32840 : ExponentCode := normalNode79

theorem canonicalSound32840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32840.moment H = canonicalOutput32840.moment H :=
  canonical_of_padded canonicalInput32840 canonicalOutput32840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32841 : ExponentCode := ⟨6, 4, ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 3, -1, -3], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 0, 1, 0]]⟩

def canonicalOutput32841 : ExponentCode := normalNode77

theorem canonicalSound32841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32841.moment H = canonicalOutput32841.moment H :=
  canonical_of_padded canonicalInput32841 canonicalOutput32841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32842 : ExponentCode := ⟨6, 4, ![![1, -3, -1, 3], ![1, 1, -1, -1], ![1, 1, -1, -1], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput32842 : ExponentCode := normalNode91

theorem canonicalSound32842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32842.moment H = canonicalOutput32842.moment H :=
  canonical_of_padded canonicalInput32842 canonicalOutput32842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32843 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, -1, 0], ![1, -1, 0], ![-1, 1, 0], ![-1, 1, 0], ![-1, 3, -2]]⟩

def canonicalOutput32843 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1873⟩

theorem canonicalSound32843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32843.moment H = canonicalOutput32843.moment H :=
  canonical_of_padded canonicalInput32843 canonicalOutput32843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32844 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, -1, 0], ![1, -1, 0], ![-1, 1, 0], ![-1, 2, -1], ![-1, 2, -1]]⟩

def canonicalOutput32844 : ExponentCode := normalNode3021

theorem canonicalSound32844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32844.moment H = canonicalOutput32844.moment H :=
  canonical_of_padded canonicalInput32844 canonicalOutput32844 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32845 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, -1, 0], ![1, 1, -2], ![-1, 0, 1], ![-1, 1, 0], ![-1, 2, -1]]⟩

def canonicalOutput32845 : ExponentCode := normalNode2989

theorem canonicalSound32845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32845.moment H = canonicalOutput32845.moment H :=
  canonical_of_padded canonicalInput32845 canonicalOutput32845 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32846 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, 0, -1], ![1, 1, -2], ![-1, 0, 1], ![-1, 0, 1], ![-1, 2, -1]]⟩

def canonicalOutput32846 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1423⟩

theorem canonicalSound32846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32846.moment H = canonicalOutput32846.moment H :=
  canonical_of_padded canonicalInput32846 canonicalOutput32846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32847 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, 0, -1], ![1, 1, -2], ![-1, 0, 1], ![-1, 1, 0], ![-1, 1, 0]]⟩

def canonicalOutput32847 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1430⟩

theorem canonicalSound32847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32847.moment H = canonicalOutput32847.moment H :=
  canonical_of_padded canonicalInput32847 canonicalOutput32847 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32848 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, 0, -1], ![1, 2, -3], ![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0]]⟩

def canonicalOutput32848 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1422⟩

theorem canonicalSound32848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32848.moment H = canonicalOutput32848.moment H :=
  canonical_of_padded canonicalInput32848 canonicalOutput32848 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32849 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, 0, -1], ![1, 3, -4], ![-1, 0, 1], ![-1, 0, 1], ![-1, 0, 1]]⟩

def canonicalOutput32849 : ExponentCode := normalNode113

theorem canonicalSound32849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32849.moment H = canonicalOutput32849.moment H :=
  canonical_of_padded canonicalInput32849 canonicalOutput32849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32850 : ExponentCode := ⟨6, 3, ![![1, -3, 2], ![1, 1, -2], ![1, 1, -2], ![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0]]⟩

def canonicalOutput32850 : ExponentCode := normalNode208

theorem canonicalSound32850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32850.moment H = canonicalOutput32850.moment H :=
  canonical_of_padded canonicalInput32850 canonicalOutput32850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32851 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32851 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound32851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32851.moment H = canonicalOutput32851.moment H :=
  canonical_of_padded canonicalInput32851 canonicalOutput32851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32852 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32852 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32852.moment H = canonicalOutput32852.moment H :=
  canonical_of_padded canonicalInput32852 canonicalOutput32852 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32853 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32853 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound32853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32853.moment H = canonicalOutput32853.moment H :=
  canonical_of_padded canonicalInput32853 canonicalOutput32853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32854 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32854 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32854.moment H = canonicalOutput32854.moment H :=
  canonical_of_padded canonicalInput32854 canonicalOutput32854 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32855 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32855 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32855.moment H = canonicalOutput32855.moment H :=
  canonical_of_padded canonicalInput32855 canonicalOutput32855 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32856 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32856 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32856.moment H = canonicalOutput32856.moment H :=
  canonical_of_padded canonicalInput32856 canonicalOutput32856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32857 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32857 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32857.moment H = canonicalOutput32857.moment H :=
  canonical_of_padded canonicalInput32857 canonicalOutput32857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32858 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32858 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32858.moment H = canonicalOutput32858.moment H :=
  canonical_of_padded canonicalInput32858 canonicalOutput32858 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32859 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32859 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32859.moment H = canonicalOutput32859.moment H :=
  canonical_of_padded canonicalInput32859 canonicalOutput32859 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput32860 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32860 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32860.moment H = canonicalOutput32860.moment H :=
  canonical_of_padded canonicalInput32860 canonicalOutput32860 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput32861 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32861 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32861.moment H = canonicalOutput32861.moment H :=
  canonical_of_padded canonicalInput32861 canonicalOutput32861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32862 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32862 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32862.moment H = canonicalOutput32862.moment H :=
  canonical_of_padded canonicalInput32862 canonicalOutput32862 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32863 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32863 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32863.moment H = canonicalOutput32863.moment H :=
  canonical_of_padded canonicalInput32863 canonicalOutput32863 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32864 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32864 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32864.moment H = canonicalOutput32864.moment H :=
  canonical_of_padded canonicalInput32864 canonicalOutput32864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32865 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32865 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32865.moment H = canonicalOutput32865.moment H :=
  canonical_of_padded canonicalInput32865 canonicalOutput32865 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32866 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32866 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound32866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32866.moment H = canonicalOutput32866.moment H :=
  canonical_of_padded canonicalInput32866 canonicalOutput32866 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32867 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32867 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound32867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32867.moment H = canonicalOutput32867.moment H :=
  canonical_of_padded canonicalInput32867 canonicalOutput32867 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32868 : ExponentCode := ⟨6, 6, ![![1, -3, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32868 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound32868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32868.moment H = canonicalOutput32868.moment H :=
  canonical_of_padded canonicalInput32868 canonicalOutput32868 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32869 : ExponentCode := ⟨6, 4, ![![1, -2, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 2, 1, -2]]⟩

def canonicalOutput32869 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3317⟩

theorem canonicalSound32869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32869.moment H = canonicalOutput32869.moment H :=
  canonical_of_padded canonicalInput32869 canonicalOutput32869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32870 : ExponentCode := ⟨6, 4, ![![1, -2, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1]]⟩

def canonicalOutput32870 : ExponentCode := normalNode5895

theorem canonicalSound32870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32870.moment H = canonicalOutput32870.moment H :=
  canonical_of_padded canonicalInput32870 canonicalOutput32870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32871 : ExponentCode := ⟨6, 4, ![![1, -2, -1, 2], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-1, -1, 1, 1], ![-1, 0, 1, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput32871 : ExponentCode := normalNode2224

theorem canonicalSound32871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32871.moment H = canonicalOutput32871.moment H :=
  canonical_of_padded canonicalInput32871 canonicalOutput32871 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32872 : ExponentCode := ⟨6, 5, ![![1, -2, 0, 0, 1], ![1, 1, -2, 0, 0], ![1, 1, 0, 0, -2], ![-1, 0, 0, -1, 2], ![-1, 0, 0, 2, -1], ![-1, 0, 2, -1, 0]]⟩

def canonicalOutput32872 : ExponentCode := normalNode3687

theorem canonicalSound32872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32872.moment H = canonicalOutput32872.moment H :=
  canonical_of_padded canonicalInput32872 canonicalOutput32872 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput32873 : ExponentCode := ⟨3, 5, ![![1, -2, 0, 2, -1], ![-4, 1, 2, -1, 2], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput32873 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1208

theorem canonicalSound32873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32873.moment H = canonicalOutput32873.moment H :=
  canonical_of_padded canonicalInput32873 canonicalOutput32873 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32874 : ExponentCode := ⟨3, 5, ![![1, -2, 0, 2, -1], ![-3, 1, 2, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput32874 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node536⟩

theorem canonicalSound32874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32874.moment H = canonicalOutput32874.moment H :=
  canonical_of_padded canonicalInput32874 canonicalOutput32874 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32875 : ExponentCode := ⟨6, 3, ![![1, -2, 1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput32875 : ExponentCode := normalNode5564

theorem canonicalSound32875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32875.moment H = canonicalOutput32875.moment H :=
  canonical_of_padded canonicalInput32875 canonicalOutput32875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32876 : ExponentCode := ⟨6, 3, ![![1, -2, 1], ![1, 0, -1], ![1, 0, -1], ![-1, 0, 1], ![-1, 0, 1], ![-1, 2, -1]]⟩

def canonicalOutput32876 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2304⟩

theorem canonicalSound32876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32876.moment H = canonicalOutput32876.moment H :=
  canonical_of_padded canonicalInput32876 canonicalOutput32876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32877 : ExponentCode := ⟨6, 3, ![![1, -2, 1], ![1, 0, -1], ![1, 0, -1], ![-1, 0, 1], ![-1, 1, 0], ![-1, 1, 0]]⟩

def canonicalOutput32877 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2306⟩

theorem canonicalSound32877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32877.moment H = canonicalOutput32877.moment H :=
  canonical_of_padded canonicalInput32877 canonicalOutput32877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32878 : ExponentCode := ⟨6, 3, ![![1, -2, 1], ![1, 0, -1], ![1, 2, -3], ![-1, -1, 2], ![-1, 0, 1], ![-1, 1, 0]]⟩

def canonicalOutput32878 : ExponentCode := normalNode2989

theorem canonicalSound32878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32878.moment H = canonicalOutput32878.moment H :=
  canonical_of_padded canonicalInput32878 canonicalOutput32878 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation238, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32879 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32879 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound32879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32879.moment H = canonicalOutput32879.moment H :=
  canonical_of_padded canonicalInput32879 canonicalOutput32879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32880 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32880 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32880.moment H = canonicalOutput32880.moment H :=
  canonical_of_padded canonicalInput32880 canonicalOutput32880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32881 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32881 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32881.moment H = canonicalOutput32881.moment H :=
  canonical_of_padded canonicalInput32881 canonicalOutput32881 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32882 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32882 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32882.moment H = canonicalOutput32882.moment H :=
  canonical_of_padded canonicalInput32882 canonicalOutput32882 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32883 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32883 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound32883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32883.moment H = canonicalOutput32883.moment H :=
  canonical_of_padded canonicalInput32883 canonicalOutput32883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32884 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32884 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32884.moment H = canonicalOutput32884.moment H :=
  canonical_of_padded canonicalInput32884 canonicalOutput32884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32885 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32885 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32885.moment H = canonicalOutput32885.moment H :=
  canonical_of_padded canonicalInput32885 canonicalOutput32885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32886 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32886 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32886.moment H = canonicalOutput32886.moment H :=
  canonical_of_padded canonicalInput32886 canonicalOutput32886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32887 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32887 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32887.moment H = canonicalOutput32887.moment H :=
  canonical_of_padded canonicalInput32887 canonicalOutput32887 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32888 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32888 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32888.moment H = canonicalOutput32888.moment H :=
  canonical_of_padded canonicalInput32888 canonicalOutput32888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32889 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32889 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32889.moment H = canonicalOutput32889.moment H :=
  canonical_of_padded canonicalInput32889 canonicalOutput32889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput32890 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32890 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32890.moment H = canonicalOutput32890.moment H :=
  canonical_of_padded canonicalInput32890 canonicalOutput32890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32891 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32891 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32891.moment H = canonicalOutput32891.moment H :=
  canonical_of_padded canonicalInput32891 canonicalOutput32891 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32892 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32892 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32892.moment H = canonicalOutput32892.moment H :=
  canonical_of_padded canonicalInput32892 canonicalOutput32892 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput32893 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32893 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32893.moment H = canonicalOutput32893.moment H :=
  canonical_of_padded canonicalInput32893 canonicalOutput32893 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32894 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32894 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32894.moment H = canonicalOutput32894.moment H :=
  canonical_of_padded canonicalInput32894 canonicalOutput32894 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32895 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32895 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32895.moment H = canonicalOutput32895.moment H :=
  canonical_of_padded canonicalInput32895 canonicalOutput32895 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32896 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32896 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32896.moment H = canonicalOutput32896.moment H :=
  canonical_of_padded canonicalInput32896 canonicalOutput32896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32897 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32897 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32897.moment H = canonicalOutput32897.moment H :=
  canonical_of_padded canonicalInput32897 canonicalOutput32897 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32898 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32898 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound32898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32898.moment H = canonicalOutput32898.moment H :=
  canonical_of_padded canonicalInput32898 canonicalOutput32898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32899 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32899 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32899.moment H = canonicalOutput32899.moment H :=
  canonical_of_padded canonicalInput32899 canonicalOutput32899 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32900 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32900 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32900.moment H = canonicalOutput32900.moment H :=
  canonical_of_padded canonicalInput32900 canonicalOutput32900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32901 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32901 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound32901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32901.moment H = canonicalOutput32901.moment H :=
  canonical_of_padded canonicalInput32901 canonicalOutput32901 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32902 : ExponentCode := ⟨6, 6, ![![1, -2, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32902 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound32902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32902.moment H = canonicalOutput32902.moment H :=
  canonical_of_padded canonicalInput32902 canonicalOutput32902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32903 : ExponentCode := ⟨3, 5, ![![1, -2, 1, 1, -1], ![-2, 1, -2, 3, 0], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput32903 : ExponentCode := normalNode5574

theorem canonicalSound32903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32903.moment H = canonicalOutput32903.moment H :=
  canonical_of_padded canonicalInput32903 canonicalOutput32903 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32904 : ExponentCode := ⟨3, 5, ![![1, -2, 1, 1, -1], ![-1, 1, -2, 3, -1], ![0, 1, 1, -4, 2]]⟩

def canonicalOutput32904 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node695⟩

theorem canonicalSound32904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32904.moment H = canonicalOutput32904.moment H :=
  canonical_of_padded canonicalInput32904 canonicalOutput32904 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32905 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-5, 2, 0, 3], ![4, 0, -2, -2]]⟩

def canonicalOutput32905 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound32905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32905.moment H = canonicalOutput32905.moment H :=
  canonical_of_padded canonicalInput32905 canonicalOutput32905 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32906 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-5, 3, 0, 2], ![4, -1, -2, -1]]⟩

def canonicalOutput32906 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound32906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32906.moment H = canonicalOutput32906.moment H :=
  canonical_of_padded canonicalInput32906 canonicalOutput32906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32907 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-4, 1, -1, 4], ![3, 1, -1, -3]]⟩

def canonicalOutput32907 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound32907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32907.moment H = canonicalOutput32907.moment H :=
  canonical_of_padded canonicalInput32907 canonicalOutput32907 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32908 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-4, 2, 0, 2], ![3, 0, -2, -1]]⟩

def canonicalOutput32908 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound32908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32908.moment H = canonicalOutput32908.moment H :=
  canonical_of_padded canonicalInput32908 canonicalOutput32908 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32909 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-4, 2, 2, 0], ![3, 0, -4, 1]]⟩

def canonicalOutput32909 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound32909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32909.moment H = canonicalOutput32909.moment H :=
  canonical_of_padded canonicalInput32909 canonicalOutput32909 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32910 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-4, 3, 0, 1], ![3, -1, -2, 0]]⟩

def canonicalOutput32910 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound32910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32910.moment H = canonicalOutput32910.moment H :=
  canonical_of_padded canonicalInput32910 canonicalOutput32910 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32911 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-4, 3, 1, 0], ![3, -1, -3, 1]]⟩

def canonicalOutput32911 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node158⟩

theorem canonicalSound32911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32911.moment H = canonicalOutput32911.moment H :=
  canonical_of_padded canonicalInput32911 canonicalOutput32911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32912 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-4, 4, 0, 0], ![3, -2, -2, 1]]⟩

def canonicalOutput32912 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound32912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32912.moment H = canonicalOutput32912.moment H :=
  canonical_of_padded canonicalInput32912 canonicalOutput32912 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32913 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-3, 1, -1, 3], ![2, 1, -1, -2]]⟩

def canonicalOutput32913 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound32913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32913.moment H = canonicalOutput32913.moment H :=
  canonical_of_padded canonicalInput32913 canonicalOutput32913 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32914 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-3, 2, 2, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput32914 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound32914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32914.moment H = canonicalOutput32914.moment H :=
  canonical_of_padded canonicalInput32914 canonicalOutput32914 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32915 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-3, 3, 1, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput32915 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound32915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32915.moment H = canonicalOutput32915.moment H :=
  canonical_of_padded canonicalInput32915 canonicalOutput32915 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32916 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![-3, 4, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput32916 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound32916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32916.moment H = canonicalOutput32916.moment H :=
  canonical_of_padded canonicalInput32916 canonicalOutput32916 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32917 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![0, 0, 2, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput32917 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound32917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32917.moment H = canonicalOutput32917.moment H :=
  canonical_of_padded canonicalInput32917 canonicalOutput32917 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32918 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![1, 0, 2, -3], ![-2, 2, -4, 4]]⟩

def canonicalOutput32918 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound32918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32918.moment H = canonicalOutput32918.moment H :=
  canonical_of_padded canonicalInput32918 canonicalOutput32918 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32919 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![1, 1, 0, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput32919 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound32919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32919.moment H = canonicalOutput32919.moment H :=
  canonical_of_padded canonicalInput32919 canonicalOutput32919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32920 : ExponentCode := ⟨3, 4, ![![1, -2, 2, -1], ![2, 1, 0, -3], ![-3, 1, -2, 4]]⟩

def canonicalOutput32920 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound32920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32920.moment H = canonicalOutput32920.moment H :=
  canonical_of_padded canonicalInput32920 canonicalOutput32920 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32921 : ExponentCode := ⟨6, 4, ![![1, -1, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![-1, 1, -1, 1]]⟩

def canonicalOutput32921 : ExponentCode := normalNode8856

theorem canonicalSound32921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32921.moment H = canonicalOutput32921.moment H :=
  canonical_of_padded canonicalInput32921 canonicalOutput32921 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32922 : ExponentCode := ⟨6, 3, ![![1, -1, 0], ![1, -2, 1], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput32922 : ExponentCode := normalNode5564

theorem canonicalSound32922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32922.moment H = canonicalOutput32922.moment H :=
  canonical_of_padded canonicalInput32922 canonicalOutput32922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32923 : ExponentCode := ⟨6, 3, ![![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput32923 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1409⟩

theorem canonicalSound32923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32923.moment H = canonicalOutput32923.moment H :=
  canonical_of_padded canonicalInput32923 canonicalOutput32923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32924 : ExponentCode := ⟨6, 3, ![![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 0, 2], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput32924 : ExponentCode := normalNode162

theorem canonicalSound32924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32924.moment H = canonicalOutput32924.moment H :=
  canonical_of_padded canonicalInput32924 canonicalOutput32924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32925 : ExponentCode := ⟨6, 3, ![![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -2, 3], ![0, 3, -3]]⟩

def canonicalOutput32925 : ExponentCode := normalNode5554

theorem canonicalSound32925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32925.moment H = canonicalOutput32925.moment H :=
  canonical_of_padded canonicalInput32925 canonicalOutput32925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32926 : ExponentCode := ⟨6, 3, ![![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![0, 2, -2]]⟩

def canonicalOutput32926 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2099⟩

theorem canonicalSound32926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32926.moment H = canonicalOutput32926.moment H :=
  canonical_of_padded canonicalInput32926 canonicalOutput32926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32927 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32927 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32927.moment H = canonicalOutput32927.moment H :=
  canonical_of_padded canonicalInput32927 canonicalOutput32927 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32928 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32928 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32928.moment H = canonicalOutput32928.moment H :=
  canonical_of_padded canonicalInput32928 canonicalOutput32928 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32929 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32929 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32929.moment H = canonicalOutput32929.moment H :=
  canonical_of_padded canonicalInput32929 canonicalOutput32929 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32930 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32930 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32930.moment H = canonicalOutput32930.moment H :=
  canonical_of_padded canonicalInput32930 canonicalOutput32930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput32931 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32931 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32931.moment H = canonicalOutput32931.moment H :=
  canonical_of_padded canonicalInput32931 canonicalOutput32931 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32932 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32932 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32932.moment H = canonicalOutput32932.moment H :=
  canonical_of_padded canonicalInput32932 canonicalOutput32932 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput32933 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32933 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32933.moment H = canonicalOutput32933.moment H :=
  canonical_of_padded canonicalInput32933 canonicalOutput32933 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32934 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32934 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32934.moment H = canonicalOutput32934.moment H :=
  canonical_of_padded canonicalInput32934 canonicalOutput32934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput32935 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32935 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32935.moment H = canonicalOutput32935.moment H :=
  canonical_of_padded canonicalInput32935 canonicalOutput32935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32936 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32936 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32936.moment H = canonicalOutput32936.moment H :=
  canonical_of_padded canonicalInput32936 canonicalOutput32936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32937 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32937 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32937.moment H = canonicalOutput32937.moment H :=
  canonical_of_padded canonicalInput32937 canonicalOutput32937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32938 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32938 : ExponentCode := normalNode10685

theorem canonicalSound32938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32938.moment H = canonicalOutput32938.moment H :=
  canonical_of_padded canonicalInput32938 canonicalOutput32938 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput32939 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32939 : ExponentCode := normalNode10452

theorem canonicalSound32939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32939.moment H = canonicalOutput32939.moment H :=
  canonical_of_padded canonicalInput32939 canonicalOutput32939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput32940 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32940 : ExponentCode := normalNode10367

theorem canonicalSound32940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32940.moment H = canonicalOutput32940.moment H :=
  canonical_of_padded canonicalInput32940 canonicalOutput32940 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32941 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32941 : ExponentCode := normalNode10869

theorem canonicalSound32941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32941.moment H = canonicalOutput32941.moment H :=
  canonical_of_padded canonicalInput32941 canonicalOutput32941 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32942 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32942 : ExponentCode := normalNode8067

theorem canonicalSound32942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32942.moment H = canonicalOutput32942.moment H :=
  canonical_of_padded canonicalInput32942 canonicalOutput32942 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32943 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32943 : ExponentCode := normalNode8067

theorem canonicalSound32943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32943.moment H = canonicalOutput32943.moment H :=
  canonical_of_padded canonicalInput32943 canonicalOutput32943 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32944 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32944 : ExponentCode := normalNode10869

theorem canonicalSound32944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32944.moment H = canonicalOutput32944.moment H :=
  canonical_of_padded canonicalInput32944 canonicalOutput32944 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32945 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32945 : ExponentCode := normalNode8067

theorem canonicalSound32945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32945.moment H = canonicalOutput32945.moment H :=
  canonical_of_padded canonicalInput32945 canonicalOutput32945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32946 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32946 : ExponentCode := normalNode10453

theorem canonicalSound32946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32946.moment H = canonicalOutput32946.moment H :=
  canonical_of_padded canonicalInput32946 canonicalOutput32946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32947 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32947 : ExponentCode := normalNode10435

theorem canonicalSound32947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32947.moment H = canonicalOutput32947.moment H :=
  canonical_of_padded canonicalInput32947 canonicalOutput32947 (by decide) (by decide)
    ⟨false, false, canonicalPermutation353, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32948 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32948 : ExponentCode := normalNode10435

theorem canonicalSound32948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32948.moment H = canonicalOutput32948.moment H :=
  canonical_of_padded canonicalInput32948 canonicalOutput32948 (by decide) (by decide)
    ⟨false, false, canonicalPermutation393, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32949 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32949 : ExponentCode := normalNode10453

theorem canonicalSound32949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32949.moment H = canonicalOutput32949.moment H :=
  canonical_of_padded canonicalInput32949 canonicalOutput32949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32950 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32950 : ExponentCode := normalNode8067

theorem canonicalSound32950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32950.moment H = canonicalOutput32950.moment H :=
  canonical_of_padded canonicalInput32950 canonicalOutput32950 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32951 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32951 : ExponentCode := normalNode8067

theorem canonicalSound32951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32951.moment H = canonicalOutput32951.moment H :=
  canonical_of_padded canonicalInput32951 canonicalOutput32951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32952 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32952 : ExponentCode := normalNode10435

theorem canonicalSound32952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32952.moment H = canonicalOutput32952.moment H :=
  canonical_of_padded canonicalInput32952 canonicalOutput32952 (by decide) (by decide)
    ⟨false, false, canonicalPermutation353, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32953 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32953 : ExponentCode := normalNode10453

theorem canonicalSound32953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32953.moment H = canonicalOutput32953.moment H :=
  canonical_of_padded canonicalInput32953 canonicalOutput32953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32954 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32954 : ExponentCode := normalNode10453

theorem canonicalSound32954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32954.moment H = canonicalOutput32954.moment H :=
  canonical_of_padded canonicalInput32954 canonicalOutput32954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32955 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32955 : ExponentCode := normalNode10435

theorem canonicalSound32955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32955.moment H = canonicalOutput32955.moment H :=
  canonical_of_padded canonicalInput32955 canonicalOutput32955 (by decide) (by decide)
    ⟨false, false, canonicalPermutation393, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32956 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32956 : ExponentCode := normalNode8067

theorem canonicalSound32956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32956.moment H = canonicalOutput32956.moment H :=
  canonical_of_padded canonicalInput32956 canonicalOutput32956 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32957 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32957 : ExponentCode := normalNode10869

theorem canonicalSound32957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32957.moment H = canonicalOutput32957.moment H :=
  canonical_of_padded canonicalInput32957 canonicalOutput32957 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32958 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32958 : ExponentCode := normalNode8067

theorem canonicalSound32958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32958.moment H = canonicalOutput32958.moment H :=
  canonical_of_padded canonicalInput32958 canonicalOutput32958 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32959 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32959 : ExponentCode := normalNode8067

theorem canonicalSound32959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32959.moment H = canonicalOutput32959.moment H :=
  canonical_of_padded canonicalInput32959 canonicalOutput32959 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, canonicalPermutation142⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

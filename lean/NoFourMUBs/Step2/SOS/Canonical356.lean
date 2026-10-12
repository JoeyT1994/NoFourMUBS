import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical209
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22784 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 4, -4], ![0, 0, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput22784 : ExponentCode := normalNode11112

theorem canonicalSound22784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22784.moment H = canonicalOutput22784.moment H :=
  canonical_of_padded canonicalInput22784 canonicalOutput22784 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22785 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput22785 : ExponentCode := normalNode7409

theorem canonicalSound22785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22785.moment H = canonicalOutput22785.moment H :=
  canonical_of_padded canonicalInput22785 canonicalOutput22785 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22786 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, -3, 2], ![0, 0, 3, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput22786 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound22786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22786.moment H = canonicalOutput22786.moment H :=
  canonical_of_padded canonicalInput22786 canonicalOutput22786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22787 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput22787 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound22787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22787.moment H = canonicalOutput22787.moment H :=
  canonical_of_padded canonicalInput22787 canonicalOutput22787 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22788 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, -2, 1], ![0, 0, 3, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput22788 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound22788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22788.moment H = canonicalOutput22788.moment H :=
  canonical_of_padded canonicalInput22788 canonicalOutput22788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22789 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, -1, 0], ![0, -1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput22789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound22789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22789.moment H = canonicalOutput22789.moment H :=
  canonical_of_padded canonicalInput22789 canonicalOutput22789 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22790 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput22790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound22790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22790.moment H = canonicalOutput22790.moment H :=
  canonical_of_padded canonicalInput22790 canonicalOutput22790 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22791 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, 0, -1], ![0, -1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput22791 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound22791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22791.moment H = canonicalOutput22791.moment H :=
  canonical_of_padded canonicalInput22791 canonicalOutput22791 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22792 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput22792 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound22792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22792.moment H = canonicalOutput22792.moment H :=
  canonical_of_padded canonicalInput22792 canonicalOutput22792 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22793 : ExponentCode := ⟨3, 4, ![![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput22793 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound22793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22793.moment H = canonicalOutput22793.moment H :=
  canonical_of_padded canonicalInput22793 canonicalOutput22793 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22794 : ExponentCode := ⟨3, 4, ![![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -2, -2, 3]]⟩

def canonicalOutput22794 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound22794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22794.moment H = canonicalOutput22794.moment H :=
  canonical_of_padded canonicalInput22794 canonicalOutput22794 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22795 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![1, -2, 2, -1], ![0, 0, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput22795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound22795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22795.moment H = canonicalOutput22795.moment H :=
  canonical_of_padded canonicalInput22795 canonicalOutput22795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22796 : ExponentCode := ⟨3, 4, ![![-1, 1, -1, 1], ![1, -1, -3, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput22796 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node242⟩

theorem canonicalSound22796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22796.moment H = canonicalOutput22796.moment H :=
  canonical_of_padded canonicalInput22796 canonicalOutput22796 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22797 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 1, 0], ![0, -1, -1, 1, 1], ![0, 0, 2, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput22797 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound22797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22797.moment H = canonicalOutput22797.moment H :=
  canonical_of_padded canonicalInput22797 canonicalOutput22797 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22798 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 1, 0], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput22798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2017⟩

theorem canonicalSound22798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22798.moment H = canonicalOutput22798.moment H :=
  canonical_of_padded canonicalInput22798 canonicalOutput22798 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22799 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 1, 0], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput22799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound22799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22799.moment H = canonicalOutput22799.moment H :=
  canonical_of_padded canonicalInput22799 canonicalOutput22799 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22800 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 1, 0], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput22800 : ExponentCode := normalNode3949

theorem canonicalSound22800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22800.moment H = canonicalOutput22800.moment H :=
  canonical_of_padded canonicalInput22800 canonicalOutput22800 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22801 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 1, 0], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput22801 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound22801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22801.moment H = canonicalOutput22801.moment H :=
  canonical_of_padded canonicalInput22801 canonicalOutput22801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22802 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![-1, -2, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22802 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound22802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22802.moment H = canonicalOutput22802.moment H :=
  canonical_of_padded canonicalInput22802 canonicalOutput22802 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, OAI.MUB6.Certificate.PairSemantics.permutation299⟩ (by decide +kernel) hH

def canonicalInput22803 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![-1, -2, 2, 1, 0, 0], ![2, 1, -1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22803 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound22803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22803.moment H = canonicalOutput22803.moment H :=
  canonical_of_padded canonicalInput22803 canonicalOutput22803 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput22804 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22804 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node614⟩

theorem canonicalSound22804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22804.moment H = canonicalOutput22804.moment H :=
  canonical_of_padded canonicalInput22804 canonicalOutput22804 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput22805 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22805 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound22805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22805.moment H = canonicalOutput22805.moment H :=
  canonical_of_padded canonicalInput22805 canonicalOutput22805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput22806 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22806 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound22806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22806.moment H = canonicalOutput22806.moment H :=
  canonical_of_padded canonicalInput22806 canonicalOutput22806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput22807 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound22807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22807.moment H = canonicalOutput22807.moment H :=
  canonical_of_padded canonicalInput22807 canonicalOutput22807 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput22808 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![2, -2, 2, -2, 0, 0], ![-1, 1, -1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22808 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound22808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22808.moment H = canonicalOutput22808.moment H :=
  canonical_of_padded canonicalInput22808 canonicalOutput22808 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput22809 : ExponentCode := ⟨6, 6, ![![-1, 1, -1, 1, 0, 0], ![2, -2, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22809 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound22809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22809.moment H = canonicalOutput22809.moment H :=
  canonical_of_padded canonicalInput22809 canonicalOutput22809 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation111⟩ (by decide +kernel) hH

def canonicalInput22810 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 2, -1], ![0, 0, -1, -1, 2], ![0, 0, 2, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput22810 : ExponentCode := normalNode2932

theorem canonicalSound22810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22810.moment H = canonicalOutput22810.moment H :=
  canonical_of_padded canonicalInput22810 canonicalOutput22810 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22811 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-2, 1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![3, 2, -5]]⟩

def canonicalOutput22811 : ExponentCode := normalNode54

theorem canonicalSound22811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22811.moment H = canonicalOutput22811.moment H :=
  canonical_of_padded canonicalInput22811 canonicalOutput22811 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22812 : ExponentCode := ⟨4, 3, ![![-1, 1, 0], ![-1, -2, 3], ![1, -2, 1], ![1, 3, -4]]⟩

def canonicalOutput22812 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound22812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22812.moment H = canonicalOutput22812.moment H :=
  canonical_of_padded canonicalInput22812 canonicalOutput22812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22813 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-1, -1, 2], ![0, 1, -1], ![1, -1, 0], ![-1, -2, 3], ![2, 2, -4]]⟩

def canonicalOutput22813 : ExponentCode := normalNode966

theorem canonicalSound22813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22813.moment H = canonicalOutput22813.moment H :=
  canonical_of_padded canonicalInput22813 canonicalOutput22813 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw6714step0⟩

def canonicalOutput22814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound22814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22814.moment H = canonicalOutput22814.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw6714step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw6714step0 = OAI.MUB6.Certificate.PairSemantics.raw6714.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw6714).trans (OAI.MUB6.Certificate.PairSemantics.canonical6714 hH)

def canonicalInput22815 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-1, -1, 2], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput22815 : ExponentCode := normalNode9520

theorem canonicalSound22815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22815.moment H = canonicalOutput22815.moment H :=
  canonical_of_padded canonicalInput22815 canonicalOutput22815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22816 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-1, 1, 0], ![-1, -1, 2], ![0, -1, 1], ![0, -2, 2], ![3, 2, -5]]⟩

def canonicalOutput22816 : ExponentCode := normalNode58

theorem canonicalSound22816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22816.moment H = canonicalOutput22816.moment H :=
  canonical_of_padded canonicalInput22816 canonicalOutput22816 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22817 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-1, 1, 0], ![0, -1, 1], ![-1, -1, 2], ![0, -2, 2], ![3, 2, -5]]⟩

def canonicalOutput22817 : ExponentCode := normalNode58

theorem canonicalSound22817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22817.moment H = canonicalOutput22817.moment H :=
  canonical_of_padded canonicalInput22817 canonicalOutput22817 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation368, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22818 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-1, 1, 0], ![0, -1, 1], ![0, -1, 1], ![-1, -2, 3], ![3, 2, -5]]⟩

def canonicalOutput22818 : ExponentCode := normalNode56

theorem canonicalSound22818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22818.moment H = canonicalOutput22818.moment H :=
  canonical_of_padded canonicalInput22818 canonicalOutput22818 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22819 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![-1, 1, 0], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![2, 2, -4]]⟩

def canonicalOutput22819 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1543⟩

theorem canonicalSound22819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22819.moment H = canonicalOutput22819.moment H :=
  canonical_of_padded canonicalInput22819 canonicalOutput22819 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22820 : ExponentCode := ⟨4, 3, ![![-1, 1, 0], ![0, -4, 4], ![0, 3, -3], ![1, 0, -1]]⟩

def canonicalOutput22820 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound22820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22820.moment H = canonicalOutput22820.moment H :=
  canonical_of_padded canonicalInput22820 canonicalOutput22820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22821 : ExponentCode := ⟨3, 3, ![![-1, 1, 0], ![0, -4, 4], ![1, 3, -4]]⟩

def canonicalOutput22821 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound22821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22821.moment H = canonicalOutput22821.moment H :=
  canonical_of_padded canonicalInput22821 canonicalOutput22821 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22822 : ExponentCode := ⟨4, 3, ![![-1, 1, 0], ![0, -2, 2], ![0, -2, 2], ![1, 3, -4]]⟩

def canonicalOutput22822 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩

theorem canonicalSound22822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22822.moment H = canonicalOutput22822.moment H :=
  canonical_of_padded canonicalInput22822 canonicalOutput22822 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22823 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![-1, 1, 0], ![1, -1, 0], ![-1, -2, 3], ![2, 2, -4]]⟩

def canonicalOutput22823 : ExponentCode := normalNode968

theorem canonicalSound22823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22823.moment H = canonicalOutput22823.moment H :=
  canonical_of_padded canonicalInput22823 canonicalOutput22823 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22824 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput22824 : ExponentCode := normalNode10775

theorem canonicalSound22824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22824.moment H = canonicalOutput22824.moment H :=
  canonical_of_padded canonicalInput22824 canonicalOutput22824 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22825 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![0, 1, -1], ![0, -1, 1], ![-1, -2, 3], ![2, 2, -4]]⟩

def canonicalOutput22825 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1537⟩

theorem canonicalSound22825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22825.moment H = canonicalOutput22825.moment H :=
  canonical_of_padded canonicalInput22825 canonicalOutput22825 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22826 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-2, -2, 4], ![2, 2, -4]]⟩

def canonicalOutput22826 : ExponentCode := normalNode961

theorem canonicalSound22826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22826.moment H = canonicalOutput22826.moment H :=
  canonical_of_padded canonicalInput22826 canonicalOutput22826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22827 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, -2, 3], ![1, 2, -3]]⟩

def canonicalOutput22827 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2465⟩

theorem canonicalSound22827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22827.moment H = canonicalOutput22827.moment H :=
  canonical_of_padded canonicalInput22827 canonicalOutput22827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22828 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![0, 0, 0], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput22828 : ExponentCode := normalNode10776

theorem canonicalSound22828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22828.moment H = canonicalOutput22828.moment H :=
  canonical_of_padded canonicalInput22828 canonicalOutput22828 (by decide) (by decide)
    ⟨false, false, canonicalPermutation198, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22829 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-1, -3, 4], ![0, 4, -4]]⟩

def canonicalOutput22829 : ExponentCode := normalNode6270

theorem canonicalSound22829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22829.moment H = canonicalOutput22829.moment H :=
  canonical_of_padded canonicalInput22829 canonicalOutput22829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22830 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput22830 : ExponentCode := normalNode6263

theorem canonicalSound22830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22830.moment H = canonicalOutput22830.moment H :=
  canonical_of_padded canonicalInput22830 canonicalOutput22830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22831 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput22831 : ExponentCode := normalNode968

theorem canonicalSound22831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22831.moment H = canonicalOutput22831.moment H :=
  canonical_of_padded canonicalInput22831 canonicalOutput22831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22832 : ExponentCode := ⟨6, 3, ![![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, 3, -2], ![0, -4, 4]]⟩

def canonicalOutput22832 : ExponentCode := normalNode7132

theorem canonicalSound22832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22832.moment H = canonicalOutput22832.moment H :=
  canonical_of_padded canonicalInput22832 canonicalOutput22832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22833 : ExponentCode := ⟨5, 5, ![![-1, 1, 0, -2, 2], ![0, -1, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput22833 : ExponentCode := normalNode10781

theorem canonicalSound22833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22833.moment H = canonicalOutput22833.moment H :=
  canonical_of_padded canonicalInput22833 canonicalOutput22833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22834 : ExponentCode := ⟨4, 5, ![![-1, 1, 0, -2, 2], ![0, -1, 1, 1, -1], ![0, 0, 0, 2, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput22834 : ExponentCode := normalNode2367

theorem canonicalSound22834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22834.moment H = canonicalOutput22834.moment H :=
  canonical_of_padded canonicalInput22834 canonicalOutput22834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22835 : ExponentCode := ⟨4, 5, ![![-1, 1, 0, -2, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput22835 : ExponentCode := normalNode2404

theorem canonicalSound22835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22835.moment H = canonicalOutput22835.moment H :=
  canonical_of_padded canonicalInput22835 canonicalOutput22835 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22836 : ExponentCode := ⟨4, 5, ![![-1, 1, 0, -1, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput22836 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound22836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22836.moment H = canonicalOutput22836.moment H :=
  canonical_of_padded canonicalInput22836 canonicalOutput22836 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22837 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput22837 : ExponentCode := normalNode7791

theorem canonicalSound22837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22837.moment H = canonicalOutput22837.moment H :=
  canonical_of_padded canonicalInput22837 canonicalOutput22837 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22838 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput22838 : ExponentCode := normalNode8872

theorem canonicalSound22838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22838.moment H = canonicalOutput22838.moment H :=
  canonical_of_padded canonicalInput22838 canonicalOutput22838 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22839 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput22839 : ExponentCode := normalNode8877

theorem canonicalSound22839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22839.moment H = canonicalOutput22839.moment H :=
  canonical_of_padded canonicalInput22839 canonicalOutput22839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22840 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, -1, 0, 2], ![1, -1, 0, 0], ![0, 0, 2, -2], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput22840 : ExponentCode := normalNode7786

theorem canonicalSound22840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22840.moment H = canonicalOutput22840.moment H :=
  canonical_of_padded canonicalInput22840 canonicalOutput22840 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22841 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput22841 : ExponentCode := normalNode9336

theorem canonicalSound22841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22841.moment H = canonicalOutput22841.moment H :=
  canonical_of_padded canonicalInput22841 canonicalOutput22841 (by decide) (by decide)
    ⟨false, false, canonicalPermutation202, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22842 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput22842 : ExponentCode := normalNode5291

theorem canonicalSound22842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22842.moment H = canonicalOutput22842.moment H :=
  canonical_of_padded canonicalInput22842 canonicalOutput22842 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22843 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput22843 : ExponentCode := normalNode5847

theorem canonicalSound22843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22843.moment H = canonicalOutput22843.moment H :=
  canonical_of_padded canonicalInput22843 canonicalOutput22843 (by decide) (by decide)
    ⟨false, false, canonicalPermutation211, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22844 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22844 : ExponentCode := normalNode10191

theorem canonicalSound22844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22844.moment H = canonicalOutput22844.moment H :=
  canonical_of_padded canonicalInput22844 canonicalOutput22844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22845 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput22845 : ExponentCode := normalNode10192

theorem canonicalSound22845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22845.moment H = canonicalOutput22845.moment H :=
  canonical_of_padded canonicalInput22845 canonicalOutput22845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22846 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput22846 : ExponentCode := normalNode9616

theorem canonicalSound22846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22846.moment H = canonicalOutput22846.moment H :=
  canonical_of_padded canonicalInput22846 canonicalOutput22846 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22847 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 1, -1], ![0, 1, -4, 3]]⟩

def canonicalOutput22847 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3314⟩

theorem canonicalSound22847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22847.moment H = canonicalOutput22847.moment H :=
  canonical_of_padded canonicalInput22847 canonicalOutput22847 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

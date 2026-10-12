import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22720 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput22720 : ExponentCode := normalNode3949

theorem canonicalSound22720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22720.moment H = canonicalOutput22720.moment H :=
  canonical_of_padded canonicalInput22720 canonicalOutput22720 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22721 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput22721 : ExponentCode := normalNode2649

theorem canonicalSound22721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22721.moment H = canonicalOutput22721.moment H :=
  canonical_of_padded canonicalInput22721 canonicalOutput22721 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22722 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput22722 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound22722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22722.moment H = canonicalOutput22722.moment H :=
  canonical_of_padded canonicalInput22722 canonicalOutput22722 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22723 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![1, -1, -1, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput22723 : ExponentCode := normalNode2649

theorem canonicalSound22723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22723.moment H = canonicalOutput22723.moment H :=
  canonical_of_padded canonicalInput22723 canonicalOutput22723 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22724 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22724 : ExponentCode := normalNode10187

theorem canonicalSound22724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22724.moment H = canonicalOutput22724.moment H :=
  canonical_of_padded canonicalInput22724 canonicalOutput22724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22725 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22725 : ExponentCode := normalNode10188

theorem canonicalSound22725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22725.moment H = canonicalOutput22725.moment H :=
  canonical_of_padded canonicalInput22725 canonicalOutput22725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22726 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, -2, 2], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22726 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1359⟩

theorem canonicalSound22726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22726.moment H = canonicalOutput22726.moment H :=
  canonical_of_padded canonicalInput22726 canonicalOutput22726 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22727 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput22727 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound22727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22727.moment H = canonicalOutput22727.moment H :=
  canonical_of_padded canonicalInput22727 canonicalOutput22727 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22728 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22728 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound22728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22728.moment H = canonicalOutput22728.moment H :=
  canonical_of_padded canonicalInput22728 canonicalOutput22728 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22729 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, -1, 1], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput22729 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound22729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22729.moment H = canonicalOutput22729.moment H :=
  canonical_of_padded canonicalInput22729 canonicalOutput22729 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22730 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, 0, 0], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput22730 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound22730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22730.moment H = canonicalOutput22730.moment H :=
  canonical_of_padded canonicalInput22730 canonicalOutput22730 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22731 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22731 : ExponentCode := normalNode9290

theorem canonicalSound22731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22731.moment H = canonicalOutput22731.moment H :=
  canonical_of_padded canonicalInput22731 canonicalOutput22731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22732 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput22732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1385

theorem canonicalSound22732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22732.moment H = canonicalOutput22732.moment H :=
  canonical_of_padded canonicalInput22732 canonicalOutput22732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22733 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, 2, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput22733 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound22733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22733.moment H = canonicalOutput22733.moment H :=
  canonical_of_padded canonicalInput22733 canonicalOutput22733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22734 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![-1, 1, 3, -3], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput22734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1339⟩

theorem canonicalSound22734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22734.moment H = canonicalOutput22734.moment H :=
  canonical_of_padded canonicalInput22734 canonicalOutput22734 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput22735 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -2, -1, 3], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput22735 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound22735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22735.moment H = canonicalOutput22735.moment H :=
  canonical_of_padded canonicalInput22735 canonicalOutput22735 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22736 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput22736 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound22736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22736.moment H = canonicalOutput22736.moment H :=
  canonical_of_padded canonicalInput22736 canonicalOutput22736 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22737 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput22737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound22737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22737.moment H = canonicalOutput22737.moment H :=
  canonical_of_padded canonicalInput22737 canonicalOutput22737 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22738 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput22738 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩

theorem canonicalSound22738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22738.moment H = canonicalOutput22738.moment H :=
  canonical_of_padded canonicalInput22738 canonicalOutput22738 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22739 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -2, 4, -2], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput22739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound22739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22739.moment H = canonicalOutput22739.moment H :=
  canonical_of_padded canonicalInput22739 canonicalOutput22739 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22740 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput22740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound22740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22740.moment H = canonicalOutput22740.moment H :=
  canonical_of_padded canonicalInput22740 canonicalOutput22740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22741 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22741 : ExponentCode := normalNode9973

theorem canonicalSound22741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22741.moment H = canonicalOutput22741.moment H :=
  canonical_of_padded canonicalInput22741 canonicalOutput22741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22742 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput22742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1228⟩

theorem canonicalSound22742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22742.moment H = canonicalOutput22742.moment H :=
  canonical_of_padded canonicalInput22742 canonicalOutput22742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22743 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput22743 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound22743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22743.moment H = canonicalOutput22743.moment H :=
  canonical_of_padded canonicalInput22743 canonicalOutput22743 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22744 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput22744 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound22744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22744.moment H = canonicalOutput22744.moment H :=
  canonical_of_padded canonicalInput22744 canonicalOutput22744 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22745 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput22745 : ExponentCode := normalNode7227

theorem canonicalSound22745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22745.moment H = canonicalOutput22745.moment H :=
  canonical_of_padded canonicalInput22745 canonicalOutput22745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22746 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput22746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound22746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22746.moment H = canonicalOutput22746.moment H :=
  canonical_of_padded canonicalInput22746 canonicalOutput22746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22747 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput22747 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound22747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22747.moment H = canonicalOutput22747.moment H :=
  canonical_of_padded canonicalInput22747 canonicalOutput22747 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22748 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput22748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound22748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22748.moment H = canonicalOutput22748.moment H :=
  canonical_of_padded canonicalInput22748 canonicalOutput22748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22749 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput22749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound22749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22749.moment H = canonicalOutput22749.moment H :=
  canonical_of_padded canonicalInput22749 canonicalOutput22749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22750 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput22750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1272⟩

theorem canonicalSound22750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22750.moment H = canonicalOutput22750.moment H :=
  canonical_of_padded canonicalInput22750 canonicalOutput22750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22751 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound22751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22751.moment H = canonicalOutput22751.moment H :=
  canonical_of_padded canonicalInput22751 canonicalOutput22751 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22752 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput22752 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound22752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22752.moment H = canonicalOutput22752.moment H :=
  canonical_of_padded canonicalInput22752 canonicalOutput22752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22753 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound22753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22753.moment H = canonicalOutput22753.moment H :=
  canonical_of_padded canonicalInput22753 canonicalOutput22753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22754 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput22754 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound22754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22754.moment H = canonicalOutput22754.moment H :=
  canonical_of_padded canonicalInput22754 canonicalOutput22754 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22755 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput22755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩

theorem canonicalSound22755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22755.moment H = canonicalOutput22755.moment H :=
  canonical_of_padded canonicalInput22755 canonicalOutput22755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22756 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput22756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1360⟩

theorem canonicalSound22756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22756.moment H = canonicalOutput22756.moment H :=
  canonical_of_padded canonicalInput22756 canonicalOutput22756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22757 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput22757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound22757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22757.moment H = canonicalOutput22757.moment H :=
  canonical_of_padded canonicalInput22757 canonicalOutput22757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22758 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput22758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound22758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22758.moment H = canonicalOutput22758.moment H :=
  canonical_of_padded canonicalInput22758 canonicalOutput22758 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22759 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput22759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound22759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22759.moment H = canonicalOutput22759.moment H :=
  canonical_of_padded canonicalInput22759 canonicalOutput22759 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22760 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput22760 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound22760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22760.moment H = canonicalOutput22760.moment H :=
  canonical_of_padded canonicalInput22760 canonicalOutput22760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22761 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 1, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput22761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1359⟩

theorem canonicalSound22761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22761.moment H = canonicalOutput22761.moment H :=
  canonical_of_padded canonicalInput22761 canonicalOutput22761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22762 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound22762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22762.moment H = canonicalOutput22762.moment H :=
  canonical_of_padded canonicalInput22762 canonicalOutput22762 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22763 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput22763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound22763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22763.moment H = canonicalOutput22763.moment H :=
  canonical_of_padded canonicalInput22763 canonicalOutput22763 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22764 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 4, -3], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput22764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1354⟩

theorem canonicalSound22764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22764.moment H = canonicalOutput22764.moment H :=
  canonical_of_padded canonicalInput22764 canonicalOutput22764 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22765 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput22765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound22765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22765.moment H = canonicalOutput22765.moment H :=
  canonical_of_padded canonicalInput22765 canonicalOutput22765 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22766 : ExponentCode := ⟨3, 4, ![![-1, 1, -1, 1], ![0, 0, -3, 3], ![1, -1, 4, -4]]⟩

def canonicalOutput22766 : ExponentCode := normalNode6267

theorem canonicalSound22766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22766.moment H = canonicalOutput22766.moment H :=
  canonical_of_padded canonicalInput22766 canonicalOutput22766 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22767 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22767 : ExponentCode := normalNode10948

theorem canonicalSound22767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22767.moment H = canonicalOutput22767.moment H :=
  canonical_of_padded canonicalInput22767 canonicalOutput22767 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22768 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22768 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound22768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22768.moment H = canonicalOutput22768.moment H :=
  canonical_of_padded canonicalInput22768 canonicalOutput22768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22769 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22769 : ExponentCode := normalNode10976

theorem canonicalSound22769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22769.moment H = canonicalOutput22769.moment H :=
  canonical_of_padded canonicalInput22769 canonicalOutput22769 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22770 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput22770 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound22770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22770.moment H = canonicalOutput22770.moment H :=
  canonical_of_padded canonicalInput22770 canonicalOutput22770 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22771 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 0, 0], ![0, 0, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput22771 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node227⟩

theorem canonicalSound22771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22771.moment H = canonicalOutput22771.moment H :=
  canonical_of_padded canonicalInput22771 canonicalOutput22771 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22772 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput22772 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound22772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22772.moment H = canonicalOutput22772.moment H :=
  canonical_of_padded canonicalInput22772 canonicalOutput22772 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22773 : ExponentCode := ⟨5, 4, ![![-1, 1, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput22773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2647⟩

theorem canonicalSound22773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22773.moment H = canonicalOutput22773.moment H :=
  canonical_of_padded canonicalInput22773 canonicalOutput22773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22774 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput22774 : ExponentCode := normalNode11069

theorem canonicalSound22774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22774.moment H = canonicalOutput22774.moment H :=
  canonical_of_padded canonicalInput22774 canonicalOutput22774 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22775 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput22775 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound22775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22775.moment H = canonicalOutput22775.moment H :=
  canonical_of_padded canonicalInput22775 canonicalOutput22775 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22776 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput22776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1344⟩

theorem canonicalSound22776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22776.moment H = canonicalOutput22776.moment H :=
  canonical_of_padded canonicalInput22776 canonicalOutput22776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22777 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput22777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound22777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22777.moment H = canonicalOutput22777.moment H :=
  canonical_of_padded canonicalInput22777 canonicalOutput22777 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22778 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput22778 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound22778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22778.moment H = canonicalOutput22778.moment H :=
  canonical_of_padded canonicalInput22778 canonicalOutput22778 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22779 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 0, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput22779 : ExponentCode := normalNode11111

theorem canonicalSound22779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22779.moment H = canonicalOutput22779.moment H :=
  canonical_of_padded canonicalInput22779 canonicalOutput22779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22780 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 0, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput22780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound22780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22780.moment H = canonicalOutput22780.moment H :=
  canonical_of_padded canonicalInput22780 canonicalOutput22780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22781 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput22781 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node259⟩

theorem canonicalSound22781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22781.moment H = canonicalOutput22781.moment H :=
  canonical_of_padded canonicalInput22781 canonicalOutput22781 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22782 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -2, 1, 0]]⟩

def canonicalOutput22782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound22782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22782.moment H = canonicalOutput22782.moment H :=
  canonical_of_padded canonicalInput22782 canonicalOutput22782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22783 : ExponentCode := ⟨4, 4, ![![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput22783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound22783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22783.moment H = canonicalOutput22783.moment H :=
  canonical_of_padded canonicalInput22783 canonicalOutput22783 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

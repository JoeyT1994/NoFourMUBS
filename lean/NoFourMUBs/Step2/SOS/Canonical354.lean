import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22656 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput22656 : ExponentCode := normalNode11182

theorem canonicalSound22656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22656.moment H = canonicalOutput22656.moment H :=
  canonical_of_padded canonicalInput22656 canonicalOutput22656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22657 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22657 : ExponentCode := normalNode11057

theorem canonicalSound22657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22657.moment H = canonicalOutput22657.moment H :=
  canonical_of_padded canonicalInput22657 canonicalOutput22657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22658 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 4, -3]]⟩

def canonicalOutput22658 : ExponentCode := normalNode7455

theorem canonicalSound22658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22658.moment H = canonicalOutput22658.moment H :=
  canonical_of_padded canonicalInput22658 canonicalOutput22658 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22659 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput22659 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound22659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22659.moment H = canonicalOutput22659.moment H :=
  canonical_of_padded canonicalInput22659 canonicalOutput22659 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22660 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput22660 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound22660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22660.moment H = canonicalOutput22660.moment H :=
  canonical_of_padded canonicalInput22660 canonicalOutput22660 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22661 : ExponentCode := ⟨3, 4, ![![-1, 1, -2, 2], ![0, 0, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22661 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound22661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22661.moment H = canonicalOutput22661.moment H :=
  canonical_of_padded canonicalInput22661 canonicalOutput22661 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22662 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput22662 : ExponentCode := normalNode11061

theorem canonicalSound22662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22662.moment H = canonicalOutput22662.moment H :=
  canonical_of_padded canonicalInput22662 canonicalOutput22662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22663 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput22663 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2450⟩

theorem canonicalSound22663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22663.moment H = canonicalOutput22663.moment H :=
  canonical_of_padded canonicalInput22663 canonicalOutput22663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22664 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput22664 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1261⟩

theorem canonicalSound22664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22664.moment H = canonicalOutput22664.moment H :=
  canonical_of_padded canonicalInput22664 canonicalOutput22664 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22665 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput22665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound22665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22665.moment H = canonicalOutput22665.moment H :=
  canonical_of_padded canonicalInput22665 canonicalOutput22665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22666 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![0, 0, 2, -2]]⟩

def canonicalOutput22666 : ExponentCode := normalNode11069

theorem canonicalSound22666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22666.moment H = canonicalOutput22666.moment H :=
  canonical_of_padded canonicalInput22666 canonicalOutput22666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22667 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput22667 : ExponentCode := normalNode11047

theorem canonicalSound22667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22667.moment H = canonicalOutput22667.moment H :=
  canonical_of_padded canonicalInput22667 canonicalOutput22667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22668 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput22668 : ExponentCode := normalNode11068

theorem canonicalSound22668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22668.moment H = canonicalOutput22668.moment H :=
  canonical_of_padded canonicalInput22668 canonicalOutput22668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22669 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput22669 : ExponentCode := normalNode11069

theorem canonicalSound22669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22669.moment H = canonicalOutput22669.moment H :=
  canonical_of_padded canonicalInput22669 canonicalOutput22669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22670 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput22670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound22670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22670.moment H = canonicalOutput22670.moment H :=
  canonical_of_padded canonicalInput22670 canonicalOutput22670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22671 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput22671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound22671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22671.moment H = canonicalOutput22671.moment H :=
  canonical_of_padded canonicalInput22671 canonicalOutput22671 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22672 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput22672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩

theorem canonicalSound22672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22672.moment H = canonicalOutput22672.moment H :=
  canonical_of_padded canonicalInput22672 canonicalOutput22672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22673 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![0, 0, 2, -2]]⟩

def canonicalOutput22673 : ExponentCode := normalNode11071

theorem canonicalSound22673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22673.moment H = canonicalOutput22673.moment H :=
  canonical_of_padded canonicalInput22673 canonicalOutput22673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22674 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 3, -3], ![0, 0, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22674 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩

theorem canonicalSound22674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22674.moment H = canonicalOutput22674.moment H :=
  canonical_of_padded canonicalInput22674 canonicalOutput22674 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22675 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput22675 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node259⟩

theorem canonicalSound22675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22675.moment H = canonicalOutput22675.moment H :=
  canonical_of_padded canonicalInput22675 canonicalOutput22675 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22676 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput22676 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound22676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22676.moment H = canonicalOutput22676.moment H :=
  canonical_of_padded canonicalInput22676 canonicalOutput22676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22677 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 4, -4], ![0, 0, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput22677 : ExponentCode := normalNode11050

theorem canonicalSound22677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22677.moment H = canonicalOutput22677.moment H :=
  canonical_of_padded canonicalInput22677 canonicalOutput22677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22678 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput22678 : ExponentCode := normalNode11065

theorem canonicalSound22678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22678.moment H = canonicalOutput22678.moment H :=
  canonical_of_padded canonicalInput22678 canonicalOutput22678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22679 : ExponentCode := ⟨3, 4, ![![-1, 1, -2, 2], ![0, 0, 4, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput22679 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound22679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22679.moment H = canonicalOutput22679.moment H :=
  canonical_of_padded canonicalInput22679 canonicalOutput22679 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22680 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 1, -2, 1], ![0, 0, 3, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput22680 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound22680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22680.moment H = canonicalOutput22680.moment H :=
  canonical_of_padded canonicalInput22680 canonicalOutput22680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22681 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 1, -1, 0], ![0, -1, 1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22681 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1335⟩

theorem canonicalSound22681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22681.moment H = canonicalOutput22681.moment H :=
  canonical_of_padded canonicalInput22681 canonicalOutput22681 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22682 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput22682 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound22682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22682.moment H = canonicalOutput22682.moment H :=
  canonical_of_padded canonicalInput22682 canonicalOutput22682 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22683 : ExponentCode := ⟨3, 4, ![![-1, 1, -2, 2], ![0, 1, 2, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput22683 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound22683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22683.moment H = canonicalOutput22683.moment H :=
  canonical_of_padded canonicalInput22683 canonicalOutput22683 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22684 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![1, -2, 3, -2], ![0, 0, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput22684 : ExponentCode := normalNode11051

theorem canonicalSound22684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22684.moment H = canonicalOutput22684.moment H :=
  canonical_of_padded canonicalInput22684 canonicalOutput22684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22685 : ExponentCode := ⟨3, 4, ![![-1, 1, -2, 2], ![1, -1, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput22685 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound22685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22685.moment H = canonicalOutput22685.moment H :=
  canonical_of_padded canonicalInput22685 canonicalOutput22685 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22686 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -2, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput22686 : ExponentCode := normalNode1986

theorem canonicalSound22686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22686.moment H = canonicalOutput22686.moment H :=
  canonical_of_padded canonicalInput22686 canonicalOutput22686 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22687 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -2, 3], ![0, -1, 2, -1, 0], ![0, 0, -1, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput22687 : ExponentCode := normalNode9883

theorem canonicalSound22687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22687.moment H = canonicalOutput22687.moment H :=
  canonical_of_padded canonicalInput22687 canonicalOutput22687 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22688 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -2, 3], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput22688 : ExponentCode := normalNode1826

theorem canonicalSound22688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22688.moment H = canonicalOutput22688.moment H :=
  canonical_of_padded canonicalInput22688 canonicalOutput22688 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22689 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -2, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput22689 : ExponentCode := normalNode2407

theorem canonicalSound22689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22689.moment H = canonicalOutput22689.moment H :=
  canonical_of_padded canonicalInput22689 canonicalOutput22689 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22690 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput22690 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound22690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22690.moment H = canonicalOutput22690.moment H :=
  canonical_of_padded canonicalInput22690 canonicalOutput22690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22691 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, -1, -1, 1, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput22691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound22691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22691.moment H = canonicalOutput22691.moment H :=
  canonical_of_padded canonicalInput22691 canonicalOutput22691 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22692 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput22692 : ExponentCode := normalNode8991

theorem canonicalSound22692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22692.moment H = canonicalOutput22692.moment H :=
  canonical_of_padded canonicalInput22692 canonicalOutput22692 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22693 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, -1, 0, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, -1, 3, -3]]⟩

def canonicalOutput22693 : ExponentCode := normalNode4501

theorem canonicalSound22693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22693.moment H = canonicalOutput22693.moment H :=
  canonical_of_padded canonicalInput22693 canonicalOutput22693 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22694 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput22694 : ExponentCode := normalNode2373

theorem canonicalSound22694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22694.moment H = canonicalOutput22694.moment H :=
  canonical_of_padded canonicalInput22694 canonicalOutput22694 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22695 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, -1, 1, -1, 1], ![0, 0, 0, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput22695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2439⟩

theorem canonicalSound22695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22695.moment H = canonicalOutput22695.moment H :=
  canonical_of_padded canonicalInput22695 canonicalOutput22695 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22696 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput22696 : ExponentCode := normalNode2932

theorem canonicalSound22696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22696.moment H = canonicalOutput22696.moment H :=
  canonical_of_padded canonicalInput22696 canonicalOutput22696 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22697 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput22697 : ExponentCode := normalNode10529

theorem canonicalSound22697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22697.moment H = canonicalOutput22697.moment H :=
  canonical_of_padded canonicalInput22697 canonicalOutput22697 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22698 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput22698 : ExponentCode := normalNode2649

theorem canonicalSound22698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22698.moment H = canonicalOutput22698.moment H :=
  canonical_of_padded canonicalInput22698 canonicalOutput22698 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22699 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput22699 : ExponentCode := normalNode2649

theorem canonicalSound22699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22699.moment H = canonicalOutput22699.moment H :=
  canonical_of_padded canonicalInput22699 canonicalOutput22699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22700 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput22700 : ExponentCode := normalNode853

theorem canonicalSound22700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22700.moment H = canonicalOutput22700.moment H :=
  canonical_of_padded canonicalInput22700 canonicalOutput22700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22701 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput22701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound22701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22701.moment H = canonicalOutput22701.moment H :=
  canonical_of_padded canonicalInput22701 canonicalOutput22701 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22702 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput22702 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound22702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22702.moment H = canonicalOutput22702.moment H :=
  canonical_of_padded canonicalInput22702 canonicalOutput22702 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22703 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput22703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound22703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22703.moment H = canonicalOutput22703.moment H :=
  canonical_of_padded canonicalInput22703 canonicalOutput22703 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22704 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, 0, 2, -1], ![0, 0, 2, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput22704 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound22704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22704.moment H = canonicalOutput22704.moment H :=
  canonical_of_padded canonicalInput22704 canonicalOutput22704 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22705 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput22705 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound22705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22705.moment H = canonicalOutput22705.moment H :=
  canonical_of_padded canonicalInput22705 canonicalOutput22705 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22706 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput22706 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound22706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22706.moment H = canonicalOutput22706.moment H :=
  canonical_of_padded canonicalInput22706 canonicalOutput22706 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22707 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, 2, 0, -1], ![0, 0, -1, 2, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput22707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound22707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22707.moment H = canonicalOutput22707.moment H :=
  canonical_of_padded canonicalInput22707 canonicalOutput22707 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22708 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, -1, 2, 1, -2], ![0, 0, 0, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput22708 : ExponentCode := normalNode2397

theorem canonicalSound22708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22708.moment H = canonicalOutput22708.moment H :=
  canonical_of_padded canonicalInput22708 canonicalOutput22708 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22709 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput22709 : ExponentCode := normalNode2932

theorem canonicalSound22709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22709.moment H = canonicalOutput22709.moment H :=
  canonical_of_padded canonicalInput22709 canonicalOutput22709 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22710 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput22710 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1748⟩

theorem canonicalSound22710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22710.moment H = canonicalOutput22710.moment H :=
  canonical_of_padded canonicalInput22710 canonicalOutput22710 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22711 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 2, -3], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput22711 : ExponentCode := normalNode1806

theorem canonicalSound22711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22711.moment H = canonicalOutput22711.moment H :=
  canonical_of_padded canonicalInput22711 canonicalOutput22711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22712 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput22712 : ExponentCode := normalNode2408

theorem canonicalSound22712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22712.moment H = canonicalOutput22712.moment H :=
  canonical_of_padded canonicalInput22712 canonicalOutput22712 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22713 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, -1, 2], ![1, -1, 0, 2, -2], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput22713 : ExponentCode := normalNode2408

theorem canonicalSound22713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22713.moment H = canonicalOutput22713.moment H :=
  canonical_of_padded canonicalInput22713 canonicalOutput22713 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22714 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput22714 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound22714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22714.moment H = canonicalOutput22714.moment H :=
  canonical_of_padded canonicalInput22714 canonicalOutput22714 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22715 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput22715 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound22715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22715.moment H = canonicalOutput22715.moment H :=
  canonical_of_padded canonicalInput22715 canonicalOutput22715 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22716 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput22716 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1746⟩

theorem canonicalSound22716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22716.moment H = canonicalOutput22716.moment H :=
  canonical_of_padded canonicalInput22716 canonicalOutput22716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22717 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 0, -1, 1], ![0, 0, 0, 2, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput22717 : ExponentCode := normalNode8979

theorem canonicalSound22717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22717.moment H = canonicalOutput22717.moment H :=
  canonical_of_padded canonicalInput22717 canonicalOutput22717 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22718 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput22718 : ExponentCode := normalNode9460

theorem canonicalSound22718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22718.moment H = canonicalOutput22718.moment H :=
  canonical_of_padded canonicalInput22718 canonicalOutput22718 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22719 : ExponentCode := ⟨4, 5, ![![-1, 1, -1, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput22719 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound22719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22719.moment H = canonicalOutput22719.moment H :=
  canonical_of_padded canonicalInput22719 canonicalOutput22719 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

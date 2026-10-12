import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5632 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5632 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound5632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5632.moment H = canonicalOutput5632.moment H :=
  canonical_of_padded canonicalInput5632 canonicalOutput5632 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5633 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput5633 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node508⟩

theorem canonicalSound5633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5633.moment H = canonicalOutput5633.moment H :=
  canonical_of_padded canonicalInput5633 canonicalOutput5633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5634 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput5634 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node839⟩

theorem canonicalSound5634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5634.moment H = canonicalOutput5634.moment H :=
  canonical_of_padded canonicalInput5634 canonicalOutput5634 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5635 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput5635 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound5635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5635.moment H = canonicalOutput5635.moment H :=
  canonical_of_padded canonicalInput5635 canonicalOutput5635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5636 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput5636 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound5636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5636.moment H = canonicalOutput5636.moment H :=
  canonical_of_padded canonicalInput5636 canonicalOutput5636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5637 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, 2, 1, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput5637 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound5637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5637.moment H = canonicalOutput5637.moment H :=
  canonical_of_padded canonicalInput5637 canonicalOutput5637 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5638 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, 3, 0, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput5638 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound5638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5638.moment H = canonicalOutput5638.moment H :=
  canonical_of_padded canonicalInput5638 canonicalOutput5638 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5639 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2349⟩

theorem canonicalSound5639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5639.moment H = canonicalOutput5639.moment H :=
  canonical_of_padded canonicalInput5639 canonicalOutput5639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5640 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5640 : ExponentCode := normalNode5858

theorem canonicalSound5640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5640.moment H = canonicalOutput5640.moment H :=
  canonical_of_padded canonicalInput5640 canonicalOutput5640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5641 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5641 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1586⟩

theorem canonicalSound5641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5641.moment H = canonicalOutput5641.moment H :=
  canonical_of_padded canonicalInput5641 canonicalOutput5641 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5642 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput5642 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node839⟩

theorem canonicalSound5642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5642.moment H = canonicalOutput5642.moment H :=
  canonical_of_padded canonicalInput5642 canonicalOutput5642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5643 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5643 : ExponentCode := normalNode5844

theorem canonicalSound5643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5643.moment H = canonicalOutput5643.moment H :=
  canonical_of_padded canonicalInput5643 canonicalOutput5643 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5644 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5644 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1794⟩

theorem canonicalSound5644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5644.moment H = canonicalOutput5644.moment H :=
  canonical_of_padded canonicalInput5644 canonicalOutput5644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5645 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput5645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound5645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5645.moment H = canonicalOutput5645.moment H :=
  canonical_of_padded canonicalInput5645 canonicalOutput5645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5646 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput5646 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound5646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5646.moment H = canonicalOutput5646.moment H :=
  canonical_of_padded canonicalInput5646 canonicalOutput5646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5647 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5647 : ExponentCode := normalNode2747

theorem canonicalSound5647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5647.moment H = canonicalOutput5647.moment H :=
  canonical_of_padded canonicalInput5647 canonicalOutput5647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5648 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5648 : ExponentCode := normalNode2761

theorem canonicalSound5648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5648.moment H = canonicalOutput5648.moment H :=
  canonical_of_padded canonicalInput5648 canonicalOutput5648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5649 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput5649 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound5649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5649.moment H = canonicalOutput5649.moment H :=
  canonical_of_padded canonicalInput5649 canonicalOutput5649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5650 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 3, 0, -3], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput5650 : ExponentCode := normalNode5854

theorem canonicalSound5650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5650.moment H = canonicalOutput5650.moment H :=
  canonical_of_padded canonicalInput5650 canonicalOutput5650 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5651 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 3, 0, -3], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5651 : ExponentCode := normalNode5867

theorem canonicalSound5651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5651.moment H = canonicalOutput5651.moment H :=
  canonical_of_padded canonicalInput5651 canonicalOutput5651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5652 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput5652 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node758⟩

theorem canonicalSound5652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5652.moment H = canonicalOutput5652.moment H :=
  canonical_of_padded canonicalInput5652 canonicalOutput5652 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5653 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput5653 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node756⟩

theorem canonicalSound5653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5653.moment H = canonicalOutput5653.moment H :=
  canonical_of_padded canonicalInput5653 canonicalOutput5653 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5654 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5654 : ExponentCode := normalNode7037

theorem canonicalSound5654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5654.moment H = canonicalOutput5654.moment H :=
  canonical_of_padded canonicalInput5654 canonicalOutput5654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5655 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound5655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5655.moment H = canonicalOutput5655.moment H :=
  canonical_of_padded canonicalInput5655 canonicalOutput5655 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5656 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound5656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5656.moment H = canonicalOutput5656.moment H :=
  canonical_of_padded canonicalInput5656 canonicalOutput5656 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput5657 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5657 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound5657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5657.moment H = canonicalOutput5657.moment H :=
  canonical_of_padded canonicalInput5657 canonicalOutput5657 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5658 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput5658 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1769⟩

theorem canonicalSound5658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5658.moment H = canonicalOutput5658.moment H :=
  canonical_of_padded canonicalInput5658 canonicalOutput5658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5659 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput5659 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound5659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5659.moment H = canonicalOutput5659.moment H :=
  canonical_of_padded canonicalInput5659 canonicalOutput5659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5660 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput5660 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound5660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5660.moment H = canonicalOutput5660.moment H :=
  canonical_of_padded canonicalInput5660 canonicalOutput5660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5661 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput5661 : ExponentCode := normalNode2687

theorem canonicalSound5661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5661.moment H = canonicalOutput5661.moment H :=
  canonical_of_padded canonicalInput5661 canonicalOutput5661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5662 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5662 : ExponentCode := normalNode2673

theorem canonicalSound5662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5662.moment H = canonicalOutput5662.moment H :=
  canonical_of_padded canonicalInput5662 canonicalOutput5662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5663 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5663 : ExponentCode := normalNode2706

theorem canonicalSound5663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5663.moment H = canonicalOutput5663.moment H :=
  canonical_of_padded canonicalInput5663 canonicalOutput5663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5664 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput5664 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1765⟩

theorem canonicalSound5664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5664.moment H = canonicalOutput5664.moment H :=
  canonical_of_padded canonicalInput5664 canonicalOutput5664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5665 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput5665 : ExponentCode := normalNode2700

theorem canonicalSound5665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5665.moment H = canonicalOutput5665.moment H :=
  canonical_of_padded canonicalInput5665 canonicalOutput5665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5666 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput5666 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound5666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5666.moment H = canonicalOutput5666.moment H :=
  canonical_of_padded canonicalInput5666 canonicalOutput5666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5667 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput5667 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1767⟩

theorem canonicalSound5667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5667.moment H = canonicalOutput5667.moment H :=
  canonical_of_padded canonicalInput5667 canonicalOutput5667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5668 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput5668 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1764⟩

theorem canonicalSound5668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5668.moment H = canonicalOutput5668.moment H :=
  canonical_of_padded canonicalInput5668 canonicalOutput5668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5669 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 2, -4, 2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5669 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1777⟩

theorem canonicalSound5669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5669.moment H = canonicalOutput5669.moment H :=
  canonical_of_padded canonicalInput5669 canonicalOutput5669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5670 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5670 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound5670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5670.moment H = canonicalOutput5670.moment H :=
  canonical_of_padded canonicalInput5670 canonicalOutput5670 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5671 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput5671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound5671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5671.moment H = canonicalOutput5671.moment H :=
  canonical_of_padded canonicalInput5671 canonicalOutput5671 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5672 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput5672 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound5672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5672.moment H = canonicalOutput5672.moment H :=
  canonical_of_padded canonicalInput5672 canonicalOutput5672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5673 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput5673 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound5673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5673.moment H = canonicalOutput5673.moment H :=
  canonical_of_padded canonicalInput5673 canonicalOutput5673 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5674 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5674 : ExponentCode := normalNode6979

theorem canonicalSound5674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5674.moment H = canonicalOutput5674.moment H :=
  canonical_of_padded canonicalInput5674 canonicalOutput5674 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5675 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![1, -2, -2, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput5675 : ExponentCode := normalNode7066

theorem canonicalSound5675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5675.moment H = canonicalOutput5675.moment H :=
  canonical_of_padded canonicalInput5675 canonicalOutput5675 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5676 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput5676 : ExponentCode := normalNode7081

theorem canonicalSound5676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5676.moment H = canonicalOutput5676.moment H :=
  canonical_of_padded canonicalInput5676 canonicalOutput5676 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5677 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput5677 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1209⟩

theorem canonicalSound5677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5677.moment H = canonicalOutput5677.moment H :=
  canonical_of_padded canonicalInput5677 canonicalOutput5677 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5678 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput5678 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound5678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5678.moment H = canonicalOutput5678.moment H :=
  canonical_of_padded canonicalInput5678 canonicalOutput5678 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5679 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node836⟩

theorem canonicalSound5679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5679.moment H = canonicalOutput5679.moment H :=
  canonical_of_padded canonicalInput5679 canonicalOutput5679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5680 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput5680 : ExponentCode := normalNode2602

theorem canonicalSound5680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5680.moment H = canonicalOutput5680.moment H :=
  canonical_of_padded canonicalInput5680 canonicalOutput5680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5681 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput5681 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1754⟩

theorem canonicalSound5681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5681.moment H = canonicalOutput5681.moment H :=
  canonical_of_padded canonicalInput5681 canonicalOutput5681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5682 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![0, 0, 1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5682 : ExponentCode := normalNode7011

theorem canonicalSound5682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5682.moment H = canonicalOutput5682.moment H :=
  canonical_of_padded canonicalInput5682 canonicalOutput5682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5683 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5683 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node852⟩

theorem canonicalSound5683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5683.moment H = canonicalOutput5683.moment H :=
  canonical_of_padded canonicalInput5683 canonicalOutput5683 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5684 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput5684 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound5684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5684.moment H = canonicalOutput5684.moment H :=
  canonical_of_padded canonicalInput5684 canonicalOutput5684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5685 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5685 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code629

theorem canonicalSound5685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5685.moment H = canonicalOutput5685.moment H :=
  canonical_of_padded canonicalInput5685 canonicalOutput5685 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5686 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node516⟩

theorem canonicalSound5686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5686.moment H = canonicalOutput5686.moment H :=
  canonical_of_padded canonicalInput5686 canonicalOutput5686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5687 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput5687 : ExponentCode := normalNode7062

theorem canonicalSound5687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5687.moment H = canonicalOutput5687.moment H :=
  canonical_of_padded canonicalInput5687 canonicalOutput5687 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5688 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5688 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node836⟩

theorem canonicalSound5688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5688.moment H = canonicalOutput5688.moment H :=
  canonical_of_padded canonicalInput5688 canonicalOutput5688 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5689 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput5689 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound5689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5689.moment H = canonicalOutput5689.moment H :=
  canonical_of_padded canonicalInput5689 canonicalOutput5689 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5690 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5690 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1830⟩

theorem canonicalSound5690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5690.moment H = canonicalOutput5690.moment H :=
  canonical_of_padded canonicalInput5690 canonicalOutput5690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5691 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5691 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5691.moment H = canonicalOutput5691.moment H :=
  canonical_of_padded canonicalInput5691 canonicalOutput5691 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5692 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5692 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound5692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5692.moment H = canonicalOutput5692.moment H :=
  canonical_of_padded canonicalInput5692 canonicalOutput5692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5693 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5693 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound5693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5693.moment H = canonicalOutput5693.moment H :=
  canonical_of_padded canonicalInput5693 canonicalOutput5693 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5694 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput5694 : ExponentCode := normalNode2834

theorem canonicalSound5694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5694.moment H = canonicalOutput5694.moment H :=
  canonical_of_padded canonicalInput5694 canonicalOutput5694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5695 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5695 : ExponentCode := normalNode881

theorem canonicalSound5695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5695.moment H = canonicalOutput5695.moment H :=
  canonical_of_padded canonicalInput5695 canonicalOutput5695 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

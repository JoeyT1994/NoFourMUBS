import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30784 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, -1, 0, 1], ![-2, 0, 0, 2, 1, -1]]⟩

def canonicalOutput30784 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30784.moment H = canonicalOutput30784.moment H :=
  canonical_of_padded canonicalInput30784 canonicalOutput30784 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30785 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 2, 0, 0]]⟩

def canonicalOutput30785 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30785.moment H = canonicalOutput30785.moment H :=
  canonical_of_padded canonicalInput30785 canonicalOutput30785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation211⟩ (by decide +kernel) hH

def canonicalInput30786 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30786 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30786.moment H = canonicalOutput30786.moment H :=
  canonical_of_padded canonicalInput30786 canonicalOutput30786 (by decide) (by decide)
    ⟨true, false, canonicalPermutation355, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30787 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 1, -1], ![-2, 0, 0, 1, 0, 1]]⟩

def canonicalOutput30787 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound30787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30787.moment H = canonicalOutput30787.moment H :=
  canonical_of_padded canonicalInput30787 canonicalOutput30787 (by decide) (by decide)
    ⟨true, false, canonicalPermutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30788 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 1, 0, -1], ![-2, 0, 0, 0, 1, 1]]⟩

def canonicalOutput30788 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound30788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30788.moment H = canonicalOutput30788.moment H :=
  canonical_of_padded canonicalInput30788 canonicalOutput30788 (by decide) (by decide)
    ⟨true, false, canonicalPermutation375, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30789 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, 0, -1], ![0, 0, 0, -2, 0, 2], ![-2, 0, 0, 3, 0, -1]]⟩

def canonicalOutput30789 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30789.moment H = canonicalOutput30789.moment H :=
  canonical_of_padded canonicalInput30789 canonicalOutput30789 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, canonicalPermutation382⟩ (by decide +kernel) hH

def canonicalInput30790 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, 0, -1], ![0, 0, 0, -1, 0, 1], ![-2, 0, 0, 2, 0, 0]]⟩

def canonicalOutput30790 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30790.moment H = canonicalOutput30790.moment H :=
  canonical_of_padded canonicalInput30790 canonicalOutput30790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput30791 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, 0, -1], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1]]⟩

def canonicalOutput30791 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30791.moment H = canonicalOutput30791.moment H :=
  canonical_of_padded canonicalInput30791 canonicalOutput30791 (by decide) (by decide)
    ⟨true, false, canonicalPermutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30792 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, 0, -1], ![0, 0, 0, 1, 0, -1], ![-2, 0, 0, 0, 0, 2]]⟩

def canonicalOutput30792 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30792.moment H = canonicalOutput30792.moment H :=
  canonical_of_padded canonicalInput30792 canonicalOutput30792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput30793 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -3, 1], ![0, 0, 0, -2, 2, 0], ![-2, 0, 0, 2, 1, -1]]⟩

def canonicalOutput30793 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound30793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30793.moment H = canonicalOutput30793.moment H :=
  canonical_of_padded canonicalInput30793 canonicalOutput30793 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30794 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -3, 1], ![0, 0, 0, -2, 3, -1], ![-2, 0, 0, 2, 0, 0]]⟩

def canonicalOutput30794 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩

theorem canonicalSound30794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30794.moment H = canonicalOutput30794.moment H :=
  canonical_of_padded canonicalInput30794 canonicalOutput30794 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30795 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -3, 1], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 2, -1]]⟩

def canonicalOutput30795 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound30795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30795.moment H = canonicalOutput30795.moment H :=
  canonical_of_padded canonicalInput30795 canonicalOutput30795 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30796 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -3, 1], ![0, 0, 0, -1, 2, -1], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30796 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound30796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30796.moment H = canonicalOutput30796.moment H :=
  canonical_of_padded canonicalInput30796 canonicalOutput30796 (by decide) (by decide)
    ⟨true, true, canonicalPermutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30797 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -3, 1], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 0, 3, -1]]⟩

def canonicalOutput30797 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30797.moment H = canonicalOutput30797.moment H :=
  canonical_of_padded canonicalInput30797 canonicalOutput30797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30798 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -3, 1], ![0, 0, 0, 0, 1, -1], ![-2, 0, 0, 0, 2, 0]]⟩

def canonicalOutput30798 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30798.moment H = canonicalOutput30798.moment H :=
  canonical_of_padded canonicalInput30798 canonicalOutput30798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation378⟩ (by decide +kernel) hH

def canonicalInput30799 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -2, 1, 1], ![-2, 0, 0, 2, 1, -1]]⟩

def canonicalOutput30799 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30799.moment H = canonicalOutput30799.moment H :=
  canonical_of_padded canonicalInput30799 canonicalOutput30799 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation207, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30800 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -2, 2, 0], ![-2, 0, 0, 2, 0, 0]]⟩

def canonicalOutput30800 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound30800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30800.moment H = canonicalOutput30800.moment H :=
  canonical_of_padded canonicalInput30800 canonicalOutput30800 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput30801 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 0, 1], ![-2, 0, 0, 1, 2, -1]]⟩

def canonicalOutput30801 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound30801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30801.moment H = canonicalOutput30801.moment H :=
  canonical_of_padded canonicalInput30801 canonicalOutput30801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30802 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30802 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30802.moment H = canonicalOutput30802.moment H :=
  canonical_of_padded canonicalInput30802 canonicalOutput30802 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation232⟩ (by decide +kernel) hH

def canonicalInput30803 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 2, -1], ![-2, 0, 0, 1, 0, 1]]⟩

def canonicalOutput30803 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node207⟩

theorem canonicalSound30803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30803.moment H = canonicalOutput30803.moment H :=
  canonical_of_padded canonicalInput30803 canonicalOutput30803 (by decide) (by decide)
    ⟨true, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30804 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 0, 2, 0]]⟩

def canonicalOutput30804 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30804.moment H = canonicalOutput30804.moment H :=
  canonical_of_padded canonicalInput30804 canonicalOutput30804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation378⟩ (by decide +kernel) hH

def canonicalInput30805 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, 0, 1, -1], ![-2, 0, 0, 0, 1, 1]]⟩

def canonicalOutput30805 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30805.moment H = canonicalOutput30805.moment H :=
  canonical_of_padded canonicalInput30805 canonicalOutput30805 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput30806 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 0, 0, -2, 0, 2], ![-2, 0, 0, 2, 1, -1]]⟩

def canonicalOutput30806 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30806.moment H = canonicalOutput30806.moment H :=
  canonical_of_padded canonicalInput30806 canonicalOutput30806 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30807 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 0, 0, -2, 1, 1], ![-2, 0, 0, 2, 0, 0]]⟩

def canonicalOutput30807 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node207⟩

theorem canonicalSound30807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30807.moment H = canonicalOutput30807.moment H :=
  canonical_of_padded canonicalInput30807 canonicalOutput30807 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30808 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 0, 0, -1, 0, 1], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30808 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound30808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30808.moment H = canonicalOutput30808.moment H :=
  canonical_of_padded canonicalInput30808 canonicalOutput30808 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30809 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 0, 1]]⟩

def canonicalOutput30809 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound30809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30809.moment H = canonicalOutput30809.moment H :=
  canonical_of_padded canonicalInput30809 canonicalOutput30809 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30810 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 0, 1, 1]]⟩

def canonicalOutput30810 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30810.moment H = canonicalOutput30810.moment H :=
  canonical_of_padded canonicalInput30810 canonicalOutput30810 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30811 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 0, 0, 0, 1, -1], ![-2, 0, 0, 0, 0, 2]]⟩

def canonicalOutput30811 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30811.moment H = canonicalOutput30811.moment H :=
  canonical_of_padded canonicalInput30811 canonicalOutput30811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput30812 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -3, 0], ![0, 0, 0, -2, 1, 1], ![-2, 0, 0, 1, 2, -1]]⟩

def canonicalOutput30812 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound30812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30812.moment H = canonicalOutput30812.moment H :=
  canonical_of_padded canonicalInput30812 canonicalOutput30812 (by decide) (by decide)
    ⟨true, false, canonicalPermutation380, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30813 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -3, 0], ![0, 0, 0, -2, 2, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30813 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30813.moment H = canonicalOutput30813.moment H :=
  canonical_of_padded canonicalInput30813 canonicalOutput30813 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput30814 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -3, 0], ![0, 0, 0, -2, 3, -1], ![-2, 0, 0, 1, 0, 1]]⟩

def canonicalOutput30814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound30814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30814.moment H = canonicalOutput30814.moment H :=
  canonical_of_padded canonicalInput30814 canonicalOutput30814 (by decide) (by decide)
    ⟨true, false, canonicalPermutation379, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30815 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -3, 0], ![0, 0, 0, -1, 0, 1], ![-2, 0, 0, 0, 3, -1]]⟩

def canonicalOutput30815 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node292⟩

theorem canonicalSound30815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30815.moment H = canonicalOutput30815.moment H :=
  canonical_of_padded canonicalInput30815 canonicalOutput30815 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30816 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -3, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 0, 2, 0]]⟩

def canonicalOutput30816 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30816.moment H = canonicalOutput30816.moment H :=
  canonical_of_padded canonicalInput30816 canonicalOutput30816 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation377⟩ (by decide +kernel) hH

def canonicalInput30817 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -3, 0], ![0, 0, 0, -1, 2, -1], ![-2, 0, 0, 0, 1, 1]]⟩

def canonicalOutput30817 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound30817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30817.moment H = canonicalOutput30817.moment H :=
  canonical_of_padded canonicalInput30817 canonicalOutput30817 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30818 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -2, -1], ![0, 0, 0, -2, 0, 2], ![-2, 0, 0, 1, 2, -1]]⟩

def canonicalOutput30818 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound30818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30818.moment H = canonicalOutput30818.moment H :=
  canonical_of_padded canonicalInput30818 canonicalOutput30818 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30819 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -2, -1], ![0, 0, 0, -2, 1, 1], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30819 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound30819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30819.moment H = canonicalOutput30819.moment H :=
  canonical_of_padded canonicalInput30819 canonicalOutput30819 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation207, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30820 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -2, -1], ![0, 0, 0, -2, 2, 0], ![-2, 0, 0, 1, 0, 1]]⟩

def canonicalOutput30820 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30820.moment H = canonicalOutput30820.moment H :=
  canonical_of_padded canonicalInput30820 canonicalOutput30820 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30821 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -2, -1], ![0, 0, 0, -1, 0, 1], ![-2, 0, 0, 0, 2, 0]]⟩

def canonicalOutput30821 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound30821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30821.moment H = canonicalOutput30821.moment H :=
  canonical_of_padded canonicalInput30821 canonicalOutput30821 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30822 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -2, -1], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 0, 1, 1]]⟩

def canonicalOutput30822 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30822.moment H = canonicalOutput30822.moment H :=
  canonical_of_padded canonicalInput30822 canonicalOutput30822 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30823 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 1, -2, -1], ![0, 0, 0, -1, 2, -1], ![-2, 0, 0, 0, 0, 2]]⟩

def canonicalOutput30823 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30823.moment H = canonicalOutput30823.moment H :=
  canonical_of_padded canonicalInput30823 canonicalOutput30823 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30824 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 2, -3, -1], ![0, 0, 0, -2, 0, 2], ![-2, 0, 0, 0, 3, -1]]⟩

def canonicalOutput30824 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound30824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30824.moment H = canonicalOutput30824.moment H :=
  canonical_of_padded canonicalInput30824 canonicalOutput30824 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30825 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 2, -3, -1], ![0, 0, 0, -2, 1, 1], ![-2, 0, 0, 0, 2, 0]]⟩

def canonicalOutput30825 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound30825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30825.moment H = canonicalOutput30825.moment H :=
  canonical_of_padded canonicalInput30825 canonicalOutput30825 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation210, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30826 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 2, -3, -1], ![0, 0, 0, -2, 2, 0], ![-2, 0, 0, 0, 1, 1]]⟩

def canonicalOutput30826 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound30826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30826.moment H = canonicalOutput30826.moment H :=
  canonical_of_padded canonicalInput30826 canonicalOutput30826 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30827 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 2, -3, -1], ![0, 0, 0, -2, 3, -1], ![-2, 0, 0, 0, 0, 2]]⟩

def canonicalOutput30827 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound30827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30827.moment H = canonicalOutput30827.moment H :=
  canonical_of_padded canonicalInput30827 canonicalOutput30827 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30828 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30828 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30828.moment H = canonicalOutput30828.moment H :=
  canonical_of_padded canonicalInput30828 canonicalOutput30828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30829 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30829 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound30829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30829.moment H = canonicalOutput30829.moment H :=
  canonical_of_padded canonicalInput30829 canonicalOutput30829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput30830 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30830 : ExponentCode := normalNode10415

theorem canonicalSound30830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30830.moment H = canonicalOutput30830.moment H :=
  canonical_of_padded canonicalInput30830 canonicalOutput30830 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput30831 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30831 : ExponentCode := normalNode10371

theorem canonicalSound30831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30831.moment H = canonicalOutput30831.moment H :=
  canonical_of_padded canonicalInput30831 canonicalOutput30831 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput30832 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30832 : ExponentCode := normalNode11165

theorem canonicalSound30832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30832.moment H = canonicalOutput30832.moment H :=
  canonical_of_padded canonicalInput30832 canonicalOutput30832 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30833 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30833 : ExponentCode := normalNode8361

theorem canonicalSound30833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30833.moment H = canonicalOutput30833.moment H :=
  canonical_of_padded canonicalInput30833 canonicalOutput30833 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30834 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30834 : ExponentCode := normalNode8361

theorem canonicalSound30834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30834.moment H = canonicalOutput30834.moment H :=
  canonical_of_padded canonicalInput30834 canonicalOutput30834 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30835 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30835 : ExponentCode := normalNode11165

theorem canonicalSound30835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30835.moment H = canonicalOutput30835.moment H :=
  canonical_of_padded canonicalInput30835 canonicalOutput30835 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30836 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30836 : ExponentCode := normalNode8361

theorem canonicalSound30836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30836.moment H = canonicalOutput30836.moment H :=
  canonical_of_padded canonicalInput30836 canonicalOutput30836 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30837 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30837 : ExponentCode := normalNode10645

theorem canonicalSound30837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30837.moment H = canonicalOutput30837.moment H :=
  canonical_of_padded canonicalInput30837 canonicalOutput30837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30838 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30838 : ExponentCode := normalNode10453

theorem canonicalSound30838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30838.moment H = canonicalOutput30838.moment H :=
  canonical_of_padded canonicalInput30838 canonicalOutput30838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30839 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30839 : ExponentCode := normalNode10453

theorem canonicalSound30839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30839.moment H = canonicalOutput30839.moment H :=
  canonical_of_padded canonicalInput30839 canonicalOutput30839 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30840 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30840 : ExponentCode := normalNode10645

theorem canonicalSound30840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30840.moment H = canonicalOutput30840.moment H :=
  canonical_of_padded canonicalInput30840 canonicalOutput30840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30841 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30841 : ExponentCode := normalNode8361

theorem canonicalSound30841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30841.moment H = canonicalOutput30841.moment H :=
  canonical_of_padded canonicalInput30841 canonicalOutput30841 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30842 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30842 : ExponentCode := normalNode8361

theorem canonicalSound30842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30842.moment H = canonicalOutput30842.moment H :=
  canonical_of_padded canonicalInput30842 canonicalOutput30842 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30843 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30843 : ExponentCode := normalNode10453

theorem canonicalSound30843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30843.moment H = canonicalOutput30843.moment H :=
  canonical_of_padded canonicalInput30843 canonicalOutput30843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30844 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30844 : ExponentCode := normalNode10645

theorem canonicalSound30844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30844.moment H = canonicalOutput30844.moment H :=
  canonical_of_padded canonicalInput30844 canonicalOutput30844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30845 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30845 : ExponentCode := normalNode10645

theorem canonicalSound30845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30845.moment H = canonicalOutput30845.moment H :=
  canonical_of_padded canonicalInput30845 canonicalOutput30845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30846 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30846 : ExponentCode := normalNode10453

theorem canonicalSound30846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30846.moment H = canonicalOutput30846.moment H :=
  canonical_of_padded canonicalInput30846 canonicalOutput30846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30847 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30847 : ExponentCode := normalNode8361

theorem canonicalSound30847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30847.moment H = canonicalOutput30847.moment H :=
  canonical_of_padded canonicalInput30847 canonicalOutput30847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

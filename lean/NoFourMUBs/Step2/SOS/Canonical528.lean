import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33792 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33792 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound33792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33792.moment H = canonicalOutput33792.moment H :=
  canonical_of_padded canonicalInput33792 canonicalOutput33792 (by decide) (by decide)
    ⟨false, true, canonicalPermutation373, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33793 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33793 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound33793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33793.moment H = canonicalOutput33793.moment H :=
  canonical_of_padded canonicalInput33793 canonicalOutput33793 (by decide) (by decide)
    ⟨false, true, canonicalPermutation379, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33794 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33794 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound33794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33794.moment H = canonicalOutput33794.moment H :=
  canonical_of_padded canonicalInput33794 canonicalOutput33794 (by decide) (by decide)
    ⟨false, true, canonicalPermutation376, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33795 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33795 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33795.moment H = canonicalOutput33795.moment H :=
  canonical_of_padded canonicalInput33795 canonicalOutput33795 (by decide) (by decide)
    ⟨false, true, canonicalPermutation355, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33796 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33796 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound33796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33796.moment H = canonicalOutput33796.moment H :=
  canonical_of_padded canonicalInput33796 canonicalOutput33796 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33797 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33797 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound33797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33797.moment H = canonicalOutput33797.moment H :=
  canonical_of_padded canonicalInput33797 canonicalOutput33797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33798 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 1, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33798 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound33798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33798.moment H = canonicalOutput33798.moment H :=
  canonical_of_padded canonicalInput33798 canonicalOutput33798 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33799 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -1, -2, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound33799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33799.moment H = canonicalOutput33799.moment H :=
  canonical_of_padded canonicalInput33799 canonicalOutput33799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation381, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33800 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -1, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33800 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound33800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33800.moment H = canonicalOutput33800.moment H :=
  canonical_of_padded canonicalInput33800 canonicalOutput33800 (by decide) (by decide)
    ⟨false, false, canonicalPermutation378, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33801 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33801 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound33801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33801.moment H = canonicalOutput33801.moment H :=
  canonical_of_padded canonicalInput33801 canonicalOutput33801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33802 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33802 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound33802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33802.moment H = canonicalOutput33802.moment H :=
  canonical_of_padded canonicalInput33802 canonicalOutput33802 (by decide) (by decide)
    ⟨true, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33803 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound33803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33803.moment H = canonicalOutput33803.moment H :=
  canonical_of_padded canonicalInput33803 canonicalOutput33803 (by decide) (by decide)
    ⟨false, false, canonicalPermutation289, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33804 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 1, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33804 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound33804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33804.moment H = canonicalOutput33804.moment H :=
  canonical_of_padded canonicalInput33804 canonicalOutput33804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation374⟩ (by decide +kernel) hH

def canonicalInput33805 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -1, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound33805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33805.moment H = canonicalOutput33805.moment H :=
  canonical_of_padded canonicalInput33805 canonicalOutput33805 (by decide) (by decide)
    ⟨false, true, canonicalPermutation376, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33806 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33806 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33806.moment H = canonicalOutput33806.moment H :=
  canonical_of_padded canonicalInput33806 canonicalOutput33806 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33807 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -1, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound33807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33807.moment H = canonicalOutput33807.moment H :=
  canonical_of_padded canonicalInput33807 canonicalOutput33807 (by decide) (by decide)
    ⟨false, true, canonicalPermutation355, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33808 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33808 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound33808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33808.moment H = canonicalOutput33808.moment H :=
  canonical_of_padded canonicalInput33808 canonicalOutput33808 (by decide) (by decide)
    ⟨false, true, canonicalPermutation376, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33809 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33809 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound33809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33809.moment H = canonicalOutput33809.moment H :=
  canonical_of_padded canonicalInput33809 canonicalOutput33809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33810 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, 0, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1202⟩

theorem canonicalSound33810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33810.moment H = canonicalOutput33810.moment H :=
  canonical_of_padded canonicalInput33810 canonicalOutput33810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33811 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, -2, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33811 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound33811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33811.moment H = canonicalOutput33811.moment H :=
  canonical_of_padded canonicalInput33811 canonicalOutput33811 (by decide) (by decide)
    ⟨true, true, canonicalPermutation376, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput33812 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33812 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound33812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33812.moment H = canonicalOutput33812.moment H :=
  canonical_of_padded canonicalInput33812 canonicalOutput33812 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33813 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33813 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1202⟩

theorem canonicalSound33813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33813.moment H = canonicalOutput33813.moment H :=
  canonical_of_padded canonicalInput33813 canonicalOutput33813 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33814 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, 0, -2, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33814 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node801⟩

theorem canonicalSound33814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33814.moment H = canonicalOutput33814.moment H :=
  canonical_of_padded canonicalInput33814 canonicalOutput33814 (by decide) (by decide)
    ⟨false, false, canonicalPermutation378, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33815 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33815 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1203⟩

theorem canonicalSound33815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33815.moment H = canonicalOutput33815.moment H :=
  canonical_of_padded canonicalInput33815 canonicalOutput33815 (by decide) (by decide)
    ⟨false, false, canonicalPermutation289, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput33816 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, 0, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33816 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound33816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33816.moment H = canonicalOutput33816.moment H :=
  canonical_of_padded canonicalInput33816 canonicalOutput33816 (by decide) (by decide)
    ⟨false, true, canonicalPermutation379, canonicalPermutation382⟩ (by decide +kernel) hH

def canonicalInput33817 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, -2, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33817 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩

theorem canonicalSound33817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33817.moment H = canonicalOutput33817.moment H :=
  canonical_of_padded canonicalInput33817 canonicalOutput33817 (by decide) (by decide)
    ⟨false, false, canonicalPermutation378, canonicalPermutation374⟩ (by decide +kernel) hH

def canonicalInput33818 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node766⟩

theorem canonicalSound33818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33818.moment H = canonicalOutput33818.moment H :=
  canonical_of_padded canonicalInput33818 canonicalOutput33818 (by decide) (by decide)
    ⟨false, false, canonicalPermutation378, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput33819 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node910⟩

theorem canonicalSound33819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33819.moment H = canonicalOutput33819.moment H :=
  canonical_of_padded canonicalInput33819 canonicalOutput33819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput33820 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33820 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node454⟩

theorem canonicalSound33820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33820.moment H = canonicalOutput33820.moment H :=
  canonical_of_padded canonicalInput33820 canonicalOutput33820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation372⟩ (by decide +kernel) hH

def canonicalInput33821 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33821 : ExponentCode := normalNode10415

theorem canonicalSound33821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33821.moment H = canonicalOutput33821.moment H :=
  canonical_of_padded canonicalInput33821 canonicalOutput33821 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput33822 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33822 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33822.moment H = canonicalOutput33822.moment H :=
  canonical_of_padded canonicalInput33822 canonicalOutput33822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput33823 : ExponentCode := ⟨6, 6, ![![1, 0, 0, -2, 1, 0], ![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33823 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33823.moment H = canonicalOutput33823.moment H :=
  canonical_of_padded canonicalInput33823 canonicalOutput33823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput33824 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-4, 2, 2, 0], ![3, -2, -2, 1]]⟩

def canonicalOutput33824 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩

theorem canonicalSound33824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33824.moment H = canonicalOutput33824.moment H :=
  canonical_of_padded canonicalInput33824 canonicalOutput33824 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33825 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-3, -2, 2, 3], ![2, 2, -2, -2]]⟩

def canonicalOutput33825 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound33825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33825.moment H = canonicalOutput33825.moment H :=
  canonical_of_padded canonicalInput33825 canonicalOutput33825 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33826 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-3, -2, 3, 2], ![2, 2, -3, -1]]⟩

def canonicalOutput33826 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound33826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33826.moment H = canonicalOutput33826.moment H :=
  canonical_of_padded canonicalInput33826 canonicalOutput33826 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33827 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-3, 2, 2, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput33827 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound33827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33827.moment H = canonicalOutput33827.moment H :=
  canonical_of_padded canonicalInput33827 canonicalOutput33827 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33828 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-2, -3, 3, 2], ![1, 3, -3, -1]]⟩

def canonicalOutput33828 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node277⟩

theorem canonicalSound33828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33828.moment H = canonicalOutput33828.moment H :=
  canonical_of_padded canonicalInput33828 canonicalOutput33828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33829 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-2, -2, 3, 1], ![1, 2, -3, 0]]⟩

def canonicalOutput33829 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound33829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33829.moment H = canonicalOutput33829.moment H :=
  canonical_of_padded canonicalInput33829 canonicalOutput33829 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33830 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-2, -2, 4, 0], ![1, 2, -4, 1]]⟩

def canonicalOutput33830 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound33830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33830.moment H = canonicalOutput33830.moment H :=
  canonical_of_padded canonicalInput33830 canonicalOutput33830 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33831 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-2, 2, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput33831 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound33831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33831.moment H = canonicalOutput33831.moment H :=
  canonical_of_padded canonicalInput33831 canonicalOutput33831 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33832 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-1, -3, 3, 1], ![0, 3, -3, 0]]⟩

def canonicalOutput33832 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound33832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33832.moment H = canonicalOutput33832.moment H :=
  canonical_of_padded canonicalInput33832 canonicalOutput33832 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33833 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![-1, -2, 4, -1], ![0, 2, -4, 2]]⟩

def canonicalOutput33833 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound33833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33833.moment H = canonicalOutput33833.moment H :=
  canonical_of_padded canonicalInput33833 canonicalOutput33833 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33834 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![0, -2, 4, -2], ![-1, 2, -4, 3]]⟩

def canonicalOutput33834 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node266⟩

theorem canonicalSound33834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33834.moment H = canonicalOutput33834.moment H :=
  canonical_of_padded canonicalInput33834 canonicalOutput33834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33835 : ExponentCode := ⟨3, 4, ![![1, 0, 0, -1], ![2, -2, 2, -2], ![-3, 2, -2, 3]]⟩

def canonicalOutput33835 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound33835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33835.moment H = canonicalOutput33835.moment H :=
  canonical_of_padded canonicalInput33835 canonicalOutput33835 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33836 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 0, -1], ![-1, -3, 2, 2, 0], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput33836 : ExponentCode := normalNode10778

theorem canonicalSound33836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33836.moment H = canonicalOutput33836.moment H :=
  canonical_of_padded canonicalInput33836 canonicalOutput33836 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33837 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-3, -2, 2, 1, 2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput33837 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1049

theorem canonicalSound33837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33837.moment H = canonicalOutput33837.moment H :=
  canonical_of_padded canonicalInput33837 canonicalOutput33837 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33838 : ExponentCode := ⟨4, 5, ![![1, 0, 0, 1, -2], ![-3, -1, 2, 1, 1], ![1, -1, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput33838 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code665

theorem canonicalSound33838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33838.moment H = canonicalOutput33838.moment H :=
  canonical_of_padded canonicalInput33838 canonicalOutput33838 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput33839 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-2, -3, 2, 1, 2], ![1, 3, -2, -2, 0]]⟩

def canonicalOutput33839 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1051

theorem canonicalSound33839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33839.moment H = canonicalOutput33839.moment H :=
  canonical_of_padded canonicalInput33839 canonicalOutput33839 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33840 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-2, -3, 2, 2, 1], ![1, 3, -2, -3, 1]]⟩

def canonicalOutput33840 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1215

theorem canonicalSound33840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33840.moment H = canonicalOutput33840.moment H :=
  canonical_of_padded canonicalInput33840 canonicalOutput33840 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33841 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-2, -3, 3, 1, 1], ![1, 3, -3, -2, 1]]⟩

def canonicalOutput33841 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1216

theorem canonicalSound33841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33841.moment H = canonicalOutput33841.moment H :=
  canonical_of_padded canonicalInput33841 canonicalOutput33841 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33842 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-2, -2, 2, 1, 1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput33842 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound33842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33842.moment H = canonicalOutput33842.moment H :=
  canonical_of_padded canonicalInput33842 canonicalOutput33842 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33843 : ExponentCode := ⟨4, 5, ![![1, 0, 0, 1, -2], ![-2, -1, 2, 1, 0], ![0, -1, -1, -1, 3], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput33843 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code424

theorem canonicalSound33843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33843.moment H = canonicalOutput33843.moment H :=
  canonical_of_padded canonicalInput33843 canonicalOutput33843 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput33844 : ExponentCode := ⟨4, 5, ![![1, 0, 0, 1, -2], ![-2, -1, 2, 1, 0], ![1, -1, -1, -1, 2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput33844 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound33844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33844.moment H = canonicalOutput33844.moment H :=
  canonical_of_padded canonicalInput33844 canonicalOutput33844 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput33845 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-1, -3, 2, 1, 1], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput33845 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node698⟩

theorem canonicalSound33845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33845.moment H = canonicalOutput33845.moment H :=
  canonical_of_padded canonicalInput33845 canonicalOutput33845 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33846 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-1, -3, 2, 2, 0], ![0, 3, -2, -3, 2]]⟩

def canonicalOutput33846 : ExponentCode := normalNode4615

theorem canonicalSound33846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33846.moment H = canonicalOutput33846.moment H :=
  canonical_of_padded canonicalInput33846 canonicalOutput33846 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33847 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-1, -3, 3, 1, 0], ![0, 3, -3, -2, 2]]⟩

def canonicalOutput33847 : ExponentCode := normalNode4616

theorem canonicalSound33847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33847.moment H = canonicalOutput33847.moment H :=
  canonical_of_padded canonicalInput33847 canonicalOutput33847 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33848 : ExponentCode := ⟨3, 5, ![![1, 0, 0, 1, -2], ![-1, -2, 2, 1, 0], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput33848 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound33848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33848.moment H = canonicalOutput33848.moment H :=
  canonical_of_padded canonicalInput33848 canonicalOutput33848 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33849 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-5, 2, 2, 1], ![4, -2, -3, 1]]⟩

def canonicalOutput33849 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound33849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33849.moment H = canonicalOutput33849.moment H :=
  canonical_of_padded canonicalInput33849 canonicalOutput33849 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33850 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-5, 3, 1, 1], ![4, -3, -2, 1]]⟩

def canonicalOutput33850 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound33850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33850.moment H = canonicalOutput33850.moment H :=
  canonical_of_padded canonicalInput33850 canonicalOutput33850 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33851 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-4, 2, 2, 0], ![3, -2, -3, 2]]⟩

def canonicalOutput33851 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound33851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33851.moment H = canonicalOutput33851.moment H :=
  canonical_of_padded canonicalInput33851 canonicalOutput33851 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33852 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-4, 3, 1, 0], ![3, -3, -2, 2]]⟩

def canonicalOutput33852 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound33852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33852.moment H = canonicalOutput33852.moment H :=
  canonical_of_padded canonicalInput33852 canonicalOutput33852 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33853 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-3, -2, 1, 4], ![2, 2, -2, -2]]⟩

def canonicalOutput33853 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound33853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33853.moment H = canonicalOutput33853.moment H :=
  canonical_of_padded canonicalInput33853 canonicalOutput33853 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33854 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-3, -2, 2, 3], ![2, 2, -3, -1]]⟩

def canonicalOutput33854 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound33854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33854.moment H = canonicalOutput33854.moment H :=
  canonical_of_padded canonicalInput33854 canonicalOutput33854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33855 : ExponentCode := ⟨3, 4, ![![1, 0, 1, -2], ![-3, -2, 3, 2], ![2, 2, -4, 0]]⟩

def canonicalOutput33855 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound33855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33855.moment H = canonicalOutput33855.moment H :=
  canonical_of_padded canonicalInput33855 canonicalOutput33855 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

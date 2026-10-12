import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14656 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![1, -1, 1, -1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput14656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩

theorem canonicalSound14656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14656.moment H = canonicalOutput14656.moment H :=
  canonical_of_padded canonicalInput14656 canonicalOutput14656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14657 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![1, -1, 4, -4], ![0, 2, -2, 0]]⟩

def canonicalOutput14657 : ExponentCode := normalNode1002

theorem canonicalSound14657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14657.moment H = canonicalOutput14657.moment H :=
  canonical_of_padded canonicalInput14657 canonicalOutput14657 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14658 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![1, 0, 4, -5], ![0, 1, -2, 1]]⟩

def canonicalOutput14658 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node142⟩

theorem canonicalSound14658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14658.moment H = canonicalOutput14658.moment H :=
  canonical_of_padded canonicalInput14658 canonicalOutput14658 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14659 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, 0, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14659 : ExponentCode := normalNode7486

theorem canonicalSound14659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14659.moment H = canonicalOutput14659.moment H :=
  canonical_of_padded canonicalInput14659 canonicalOutput14659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14660 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, 1, -1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14660 : ExponentCode := normalNode9983

theorem canonicalSound14660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14660.moment H = canonicalOutput14660.moment H :=
  canonical_of_padded canonicalInput14660 canonicalOutput14660 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput14661 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput14661 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1567⟩

theorem canonicalSound14661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14661.moment H = canonicalOutput14661.moment H :=
  canonical_of_padded canonicalInput14661 canonicalOutput14661 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14662 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 0, 2, -1], ![1, 0, 1, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput14662 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1580⟩

theorem canonicalSound14662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14662.moment H = canonicalOutput14662.moment H :=
  canonical_of_padded canonicalInput14662 canonicalOutput14662 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14663 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 1, 1, -1], ![0, 2, -1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14663 : ExponentCode := normalNode7320

theorem canonicalSound14663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14663.moment H = canonicalOutput14663.moment H :=
  canonical_of_padded canonicalInput14663 canonicalOutput14663 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14664 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 1, 2, -2], ![0, 0, 1, 0, -1], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14664 : ExponentCode := normalNode9983

theorem canonicalSound14664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14664.moment H = canonicalOutput14664.moment H :=
  canonical_of_padded canonicalInput14664 canonicalOutput14664 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput14665 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, -1, 4], ![0, -1, 2, 1, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14665 : ExponentCode := normalNode8693

theorem canonicalSound14665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14665.moment H = canonicalOutput14665.moment H :=
  canonical_of_padded canonicalInput14665 canonicalOutput14665 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput14666 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14666 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1580⟩

theorem canonicalSound14666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14666.moment H = canonicalOutput14666.moment H :=
  canonical_of_padded canonicalInput14666 canonicalOutput14666 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14667 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14667 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1576⟩

theorem canonicalSound14667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14667.moment H = canonicalOutput14667.moment H :=
  canonical_of_padded canonicalInput14667 canonicalOutput14667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14668 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14668 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2497⟩

theorem canonicalSound14668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14668.moment H = canonicalOutput14668.moment H :=
  canonical_of_padded canonicalInput14668 canonicalOutput14668 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14669 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14669 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1592⟩

theorem canonicalSound14669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14669.moment H = canonicalOutput14669.moment H :=
  canonical_of_padded canonicalInput14669 canonicalOutput14669 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14670 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14670 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1576⟩

theorem canonicalSound14670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14670.moment H = canonicalOutput14670.moment H :=
  canonical_of_padded canonicalInput14670 canonicalOutput14670 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14671 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![0, 1, -1, 2, -2], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14671 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2497⟩

theorem canonicalSound14671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14671.moment H = canonicalOutput14671.moment H :=
  canonical_of_padded canonicalInput14671 canonicalOutput14671 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14672 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, -1, 4], ![1, -1, -1, 2, -1], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput14672 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1567⟩

theorem canonicalSound14672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14672.moment H = canonicalOutput14672.moment H :=
  canonical_of_padded canonicalInput14672 canonicalOutput14672 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14673 : ExponentCode := ⟨5, 6, ![![-1, -1, -1, 0, 1, 2], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, -1, 0, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput14673 : ExponentCode := normalNode8323

theorem canonicalSound14673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14673.moment H = canonicalOutput14673.moment H :=
  canonical_of_padded canonicalInput14673 canonicalOutput14673 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput14674 : ExponentCode := ⟨5, 6, ![![-1, -1, -1, 0, 1, 2], ![0, 0, 0, 2, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput14674 : ExponentCode := normalNode8227

theorem canonicalSound14674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14674.moment H = canonicalOutput14674.moment H :=
  canonical_of_padded canonicalInput14674 canonicalOutput14674 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput14675 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14675 : ExponentCode := normalNode6539

theorem canonicalSound14675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14675.moment H = canonicalOutput14675.moment H :=
  canonical_of_padded canonicalInput14675 canonicalOutput14675 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput14676 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput14676 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1958⟩

theorem canonicalSound14676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14676.moment H = canonicalOutput14676.moment H :=
  canonical_of_padded canonicalInput14676 canonicalOutput14676 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14677 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 2, -1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14677 : ExponentCode := normalNode5403

theorem canonicalSound14677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14677.moment H = canonicalOutput14677.moment H :=
  canonical_of_padded canonicalInput14677 canonicalOutput14677 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14678 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 0, -1, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput14678 : ExponentCode := normalNode5504

theorem canonicalSound14678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14678.moment H = canonicalOutput14678.moment H :=
  canonical_of_padded canonicalInput14678 canonicalOutput14678 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14679 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 1, -2, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14679 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound14679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14679.moment H = canonicalOutput14679.moment H :=
  canonical_of_padded canonicalInput14679 canonicalOutput14679 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14680 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 1, 0], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14680 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound14680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14680.moment H = canonicalOutput14680.moment H :=
  canonical_of_padded canonicalInput14680 canonicalOutput14680 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14681 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14681 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2812⟩

theorem canonicalSound14681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14681.moment H = canonicalOutput14681.moment H :=
  canonical_of_padded canonicalInput14681 canonicalOutput14681 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14682 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14682 : ExponentCode := normalNode7534

theorem canonicalSound14682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14682.moment H = canonicalOutput14682.moment H :=
  canonical_of_padded canonicalInput14682 canonicalOutput14682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14683 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14683 : ExponentCode := normalNode10012

theorem canonicalSound14683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14683.moment H = canonicalOutput14683.moment H :=
  canonical_of_padded canonicalInput14683 canonicalOutput14683 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput14684 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput14684 : ExponentCode := normalNode1839

theorem canonicalSound14684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14684.moment H = canonicalOutput14684.moment H :=
  canonical_of_padded canonicalInput14684 canonicalOutput14684 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14685 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput14685 : ExponentCode := normalNode9218

theorem canonicalSound14685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14685.moment H = canonicalOutput14685.moment H :=
  canonical_of_padded canonicalInput14685 canonicalOutput14685 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput14686 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14686 : ExponentCode := normalNode7532

theorem canonicalSound14686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14686.moment H = canonicalOutput14686.moment H :=
  canonical_of_padded canonicalInput14686 canonicalOutput14686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14687 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput14687 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound14687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14687.moment H = canonicalOutput14687.moment H :=
  canonical_of_padded canonicalInput14687 canonicalOutput14687 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14688 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 2, -1, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput14688 : ExponentCode := normalNode5508

theorem canonicalSound14688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14688.moment H = canonicalOutput14688.moment H :=
  canonical_of_padded canonicalInput14688 canonicalOutput14688 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14689 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 2, 0, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14689 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound14689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14689.moment H = canonicalOutput14689.moment H :=
  canonical_of_padded canonicalInput14689 canonicalOutput14689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14690 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![0, 2, 0, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14690 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound14690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14690.moment H = canonicalOutput14690.moment H :=
  canonical_of_padded canonicalInput14690 canonicalOutput14690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14691 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 0, 2, -1], ![1, 0, 1, 0, -2], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput14691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound14691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14691.moment H = canonicalOutput14691.moment H :=
  canonical_of_padded canonicalInput14691 canonicalOutput14691 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14692 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, -1, 1], ![0, 2, -1, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14692 : ExponentCode := normalNode4871

theorem canonicalSound14692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14692.moment H = canonicalOutput14692.moment H :=
  canonical_of_padded canonicalInput14692 canonicalOutput14692 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14693 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 0, 0], ![0, 2, -1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14693 : ExponentCode := normalNode9423

theorem canonicalSound14693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14693.moment H = canonicalOutput14693.moment H :=
  canonical_of_padded canonicalInput14693 canonicalOutput14693 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14694 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput14694 : ExponentCode := normalNode5294

theorem canonicalSound14694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14694.moment H = canonicalOutput14694.moment H :=
  canonical_of_padded canonicalInput14694 canonicalOutput14694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14695 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound14695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14695.moment H = canonicalOutput14695.moment H :=
  canonical_of_padded canonicalInput14695 canonicalOutput14695 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14696 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound14696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14696.moment H = canonicalOutput14696.moment H :=
  canonical_of_padded canonicalInput14696 canonicalOutput14696 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14697 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 1, -1], ![0, 2, -1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14697 : ExponentCode := normalNode5288

theorem canonicalSound14697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14697.moment H = canonicalOutput14697.moment H :=
  canonical_of_padded canonicalInput14697 canonicalOutput14697 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14698 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 1, -1], ![0, 2, 0, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2251⟩

theorem canonicalSound14698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14698.moment H = canonicalOutput14698.moment H :=
  canonical_of_padded canonicalInput14698 canonicalOutput14698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14699 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 1, -1], ![1, 0, 1, -2, 0], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput14699 : ExponentCode := normalNode5288

theorem canonicalSound14699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14699.moment H = canonicalOutput14699.moment H :=
  canonical_of_padded canonicalInput14699 canonicalOutput14699 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14700 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 2, -2], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14700 : ExponentCode := normalNode10383

theorem canonicalSound14700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14700.moment H = canonicalOutput14700.moment H :=
  canonical_of_padded canonicalInput14700 canonicalOutput14700 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput14701 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 2, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14701 : ExponentCode := normalNode8707

theorem canonicalSound14701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14701.moment H = canonicalOutput14701.moment H :=
  canonical_of_padded canonicalInput14701 canonicalOutput14701 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput14702 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 2, -2], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14702 : ExponentCode := normalNode4398

theorem canonicalSound14702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14702.moment H = canonicalOutput14702.moment H :=
  canonical_of_padded canonicalInput14702 canonicalOutput14702 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14703 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 1, 2, -2], ![0, 2, 1, -1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput14703 : ExponentCode := normalNode6171

theorem canonicalSound14703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14703.moment H = canonicalOutput14703.moment H :=
  canonical_of_padded canonicalInput14703 canonicalOutput14703 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput14704 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, -2, 1], ![0, 2, -1, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14704 : ExponentCode := normalNode557

theorem canonicalSound14704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14704.moment H = canonicalOutput14704.moment H :=
  canonical_of_padded canonicalInput14704 canonicalOutput14704 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14705 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, -1, 0], ![0, 1, -1, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14705 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound14705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14705.moment H = canonicalOutput14705.moment H :=
  canonical_of_padded canonicalInput14705 canonicalOutput14705 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14706 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14706 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound14706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14706.moment H = canonicalOutput14706.moment H :=
  canonical_of_padded canonicalInput14706 canonicalOutput14706 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14707 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound14707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14707.moment H = canonicalOutput14707.moment H :=
  canonical_of_padded canonicalInput14707 canonicalOutput14707 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14708 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14708 : ExponentCode := normalNode8694

theorem canonicalSound14708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14708.moment H = canonicalOutput14708.moment H :=
  canonical_of_padded canonicalInput14708 canonicalOutput14708 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14709 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound14709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14709.moment H = canonicalOutput14709.moment H :=
  canonical_of_padded canonicalInput14709 canonicalOutput14709 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14710 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14710 : ExponentCode := normalNode10530

theorem canonicalSound14710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14710.moment H = canonicalOutput14710.moment H :=
  canonical_of_padded canonicalInput14710 canonicalOutput14710 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14711 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 0, -1], ![0, 2, -1, 2, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14711 : ExponentCode := normalNode3847

theorem canonicalSound14711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14711.moment H = canonicalOutput14711.moment H :=
  canonical_of_padded canonicalInput14711 canonicalOutput14711 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14712 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 0, -1], ![0, 2, 0, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound14712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14712.moment H = canonicalOutput14712.moment H :=
  canonical_of_padded canonicalInput14712 canonicalOutput14712 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14713 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput14713 : ExponentCode := normalNode4251

theorem canonicalSound14713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14713.moment H = canonicalOutput14713.moment H :=
  canonical_of_padded canonicalInput14713 canonicalOutput14713 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput14714 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14714 : ExponentCode := normalNode8692

theorem canonicalSound14714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14714.moment H = canonicalOutput14714.moment H :=
  canonical_of_padded canonicalInput14714 canonicalOutput14714 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput14715 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14715 : ExponentCode := normalNode8696

theorem canonicalSound14715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14715.moment H = canonicalOutput14715.moment H :=
  canonical_of_padded canonicalInput14715 canonicalOutput14715 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput14716 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14716 : ExponentCode := normalNode4258

theorem canonicalSound14716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14716.moment H = canonicalOutput14716.moment H :=
  canonical_of_padded canonicalInput14716 canonicalOutput14716 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput14717 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 2, 0, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14717 : ExponentCode := normalNode4383

theorem canonicalSound14717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14717.moment H = canonicalOutput14717.moment H :=
  canonical_of_padded canonicalInput14717 canonicalOutput14717 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14718 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![1, 1, -1, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput14718 : ExponentCode := normalNode668

theorem canonicalSound14718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14718.moment H = canonicalOutput14718.moment H :=
  canonical_of_padded canonicalInput14718 canonicalOutput14718 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14719 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, -2, 2, 0], ![0, 0, 3, -2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14719 : ExponentCode := normalNode3388

theorem canonicalSound14719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14719.moment H = canonicalOutput14719.moment H :=
  canonical_of_padded canonicalInput14719 canonicalOutput14719 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

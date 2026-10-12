import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24832 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 2, -2], ![-1, 2, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput24832 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound24832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24832.moment H = canonicalOutput24832.moment H :=
  canonical_of_padded canonicalInput24832 canonicalOutput24832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24833 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 2, -2, 0], ![0, -1, 1, 0]]⟩

def canonicalOutput24833 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound24833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24833.moment H = canonicalOutput24833.moment H :=
  canonical_of_padded canonicalInput24833 canonicalOutput24833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24834 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![0, -1, -1, 2]]⟩

def canonicalOutput24834 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound24834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24834.moment H = canonicalOutput24834.moment H :=
  canonical_of_padded canonicalInput24834 canonicalOutput24834 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24835 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 3, -3], ![-1, 2, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput24835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound24835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24835.moment H = canonicalOutput24835.moment H :=
  canonical_of_padded canonicalInput24835 canonicalOutput24835 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24836 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 3, -3], ![-1, 2, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput24836 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound24836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24836.moment H = canonicalOutput24836.moment H :=
  canonical_of_padded canonicalInput24836 canonicalOutput24836 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24837 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 3, -3], ![0, 2, -2, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput24837 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound24837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24837.moment H = canonicalOutput24837.moment H :=
  canonical_of_padded canonicalInput24837 canonicalOutput24837 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24838 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 3, -3], ![0, 2, -1, -1], ![0, -1, -1, 2]]⟩

def canonicalOutput24838 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node223⟩

theorem canonicalSound24838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24838.moment H = canonicalOutput24838.moment H :=
  canonical_of_padded canonicalInput24838 canonicalOutput24838 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24839 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 4, -4], ![-1, 2, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput24839 : ExponentCode := normalNode9039

theorem canonicalSound24839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24839.moment H = canonicalOutput24839.moment H :=
  canonical_of_padded canonicalInput24839 canonicalOutput24839 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput24840 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 4, -4], ![0, 2, -3, 1], ![0, -1, 0, 1]]⟩

def canonicalOutput24840 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound24840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24840.moment H = canonicalOutput24840.moment H :=
  canonical_of_padded canonicalInput24840 canonicalOutput24840 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24841 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, -2, 1], ![-1, 1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24841 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound24841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24841.moment H = canonicalOutput24841.moment H :=
  canonical_of_padded canonicalInput24841 canonicalOutput24841 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24842 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, -1, 2, -1]]⟩

def canonicalOutput24842 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound24842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24842.moment H = canonicalOutput24842.moment H :=
  canonical_of_padded canonicalInput24842 canonicalOutput24842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24843 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput24843 : ExponentCode := normalNode3909

theorem canonicalSound24843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24843.moment H = canonicalOutput24843.moment H :=
  canonical_of_padded canonicalInput24843 canonicalOutput24843 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24844 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput24844 : ExponentCode := normalNode612

theorem canonicalSound24844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24844.moment H = canonicalOutput24844.moment H :=
  canonical_of_padded canonicalInput24844 canonicalOutput24844 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24845 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput24845 : ExponentCode := normalNode2313

theorem canonicalSound24845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24845.moment H = canonicalOutput24845.moment H :=
  canonical_of_padded canonicalInput24845 canonicalOutput24845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24846 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput24846 : ExponentCode := normalNode3832

theorem canonicalSound24846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24846.moment H = canonicalOutput24846.moment H :=
  canonical_of_padded canonicalInput24846 canonicalOutput24846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24847 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput24847 : ExponentCode := normalNode4241

theorem canonicalSound24847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24847.moment H = canonicalOutput24847.moment H :=
  canonical_of_padded canonicalInput24847 canonicalOutput24847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24848 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput24848 : ExponentCode := normalNode4341

theorem canonicalSound24848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24848.moment H = canonicalOutput24848.moment H :=
  canonical_of_padded canonicalInput24848 canonicalOutput24848 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24849 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput24849 : ExponentCode := normalNode619

theorem canonicalSound24849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24849.moment H = canonicalOutput24849.moment H :=
  canonical_of_padded canonicalInput24849 canonicalOutput24849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24850 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput24850 : ExponentCode := normalNode879

theorem canonicalSound24850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24850.moment H = canonicalOutput24850.moment H :=
  canonical_of_padded canonicalInput24850 canonicalOutput24850 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24851 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput24851 : ExponentCode := normalNode5319

theorem canonicalSound24851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24851.moment H = canonicalOutput24851.moment H :=
  canonical_of_padded canonicalInput24851 canonicalOutput24851 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24852 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput24852 : ExponentCode := normalNode1974

theorem canonicalSound24852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24852.moment H = canonicalOutput24852.moment H :=
  canonical_of_padded canonicalInput24852 canonicalOutput24852 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24853 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput24853 : ExponentCode := normalNode2915

theorem canonicalSound24853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24853.moment H = canonicalOutput24853.moment H :=
  canonical_of_padded canonicalInput24853 canonicalOutput24853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24854 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput24854 : ExponentCode := normalNode2282

theorem canonicalSound24854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24854.moment H = canonicalOutput24854.moment H :=
  canonical_of_padded canonicalInput24854 canonicalOutput24854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24855 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput24855 : ExponentCode := normalNode3842

theorem canonicalSound24855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24855.moment H = canonicalOutput24855.moment H :=
  canonical_of_padded canonicalInput24855 canonicalOutput24855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24856 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput24856 : ExponentCode := normalNode2283

theorem canonicalSound24856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24856.moment H = canonicalOutput24856.moment H :=
  canonical_of_padded canonicalInput24856 canonicalOutput24856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24857 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput24857 : ExponentCode := normalNode4340

theorem canonicalSound24857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24857.moment H = canonicalOutput24857.moment H :=
  canonical_of_padded canonicalInput24857 canonicalOutput24857 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24858 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput24858 : ExponentCode := normalNode6398

theorem canonicalSound24858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24858.moment H = canonicalOutput24858.moment H :=
  canonical_of_padded canonicalInput24858 canonicalOutput24858 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24859 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput24859 : ExponentCode := normalNode2285

theorem canonicalSound24859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24859.moment H = canonicalOutput24859.moment H :=
  canonical_of_padded canonicalInput24859 canonicalOutput24859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24860 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput24860 : ExponentCode := normalNode4186

theorem canonicalSound24860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24860.moment H = canonicalOutput24860.moment H :=
  canonical_of_padded canonicalInput24860 canonicalOutput24860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24861 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput24861 : ExponentCode := normalNode4680

theorem canonicalSound24861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24861.moment H = canonicalOutput24861.moment H :=
  canonical_of_padded canonicalInput24861 canonicalOutput24861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24862 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput24862 : ExponentCode := normalNode5656

theorem canonicalSound24862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24862.moment H = canonicalOutput24862.moment H :=
  canonical_of_padded canonicalInput24862 canonicalOutput24862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24863 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput24863 : ExponentCode := normalNode750

theorem canonicalSound24863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24863.moment H = canonicalOutput24863.moment H :=
  canonical_of_padded canonicalInput24863 canonicalOutput24863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24864 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput24864 : ExponentCode := normalNode6907

theorem canonicalSound24864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24864.moment H = canonicalOutput24864.moment H :=
  canonical_of_padded canonicalInput24864 canonicalOutput24864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24865 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24865 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound24865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24865.moment H = canonicalOutput24865.moment H :=
  canonical_of_padded canonicalInput24865 canonicalOutput24865 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24866 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput24866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound24866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24866.moment H = canonicalOutput24866.moment H :=
  canonical_of_padded canonicalInput24866 canonicalOutput24866 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24867 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -2, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput24867 : ExponentCode := normalNode3833

theorem canonicalSound24867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24867.moment H = canonicalOutput24867.moment H :=
  canonical_of_padded canonicalInput24867 canonicalOutput24867 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24868 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput24868 : ExponentCode := normalNode4649

theorem canonicalSound24868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24868.moment H = canonicalOutput24868.moment H :=
  canonical_of_padded canonicalInput24868 canonicalOutput24868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24869 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput24869 : ExponentCode := normalNode5630

theorem canonicalSound24869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24869.moment H = canonicalOutput24869.moment H :=
  canonical_of_padded canonicalInput24869 canonicalOutput24869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24870 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, -1, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput24870 : ExponentCode := normalNode4325

theorem canonicalSound24870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24870.moment H = canonicalOutput24870.moment H :=
  canonical_of_padded canonicalInput24870 canonicalOutput24870 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24871 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -1, 0, 1]]⟩

def canonicalOutput24871 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound24871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24871.moment H = canonicalOutput24871.moment H :=
  canonical_of_padded canonicalInput24871 canonicalOutput24871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24872 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 3, -4], ![0, -1, -2, 3]]⟩

def canonicalOutput24872 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound24872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24872.moment H = canonicalOutput24872.moment H :=
  canonical_of_padded canonicalInput24872 canonicalOutput24872 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24873 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput24873 : ExponentCode := normalNode5024

theorem canonicalSound24873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24873.moment H = canonicalOutput24873.moment H :=
  canonical_of_padded canonicalInput24873 canonicalOutput24873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24874 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput24874 : ExponentCode := normalNode8796

theorem canonicalSound24874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24874.moment H = canonicalOutput24874.moment H :=
  canonical_of_padded canonicalInput24874 canonicalOutput24874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24875 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![1, 1, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput24875 : ExponentCode := normalNode8795

theorem canonicalSound24875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24875.moment H = canonicalOutput24875.moment H :=
  canonical_of_padded canonicalInput24875 canonicalOutput24875 (by decide) (by decide)
    ⟨false, false, canonicalPermutation125, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24876 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput24876 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1360⟩

theorem canonicalSound24876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24876.moment H = canonicalOutput24876.moment H :=
  canonical_of_padded canonicalInput24876 canonicalOutput24876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24877 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -1, -1, 2]]⟩

def canonicalOutput24877 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound24877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24877.moment H = canonicalOutput24877.moment H :=
  canonical_of_padded canonicalInput24877 canonicalOutput24877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24878 : ExponentCode := ⟨3, 4, ![![0, -1, -1, 2], ![0, 2, 2, -4], ![0, -1, -1, 2]]⟩

def canonicalOutput24878 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound24878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24878.moment H = canonicalOutput24878.moment H :=
  canonical_of_padded canonicalInput24878 canonicalOutput24878 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24879 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput24879 : ExponentCode := normalNode3416

theorem canonicalSound24879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24879.moment H = canonicalOutput24879.moment H :=
  canonical_of_padded canonicalInput24879 canonicalOutput24879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24880 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput24880 : ExponentCode := normalNode5616

theorem canonicalSound24880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24880.moment H = canonicalOutput24880.moment H :=
  canonical_of_padded canonicalInput24880 canonicalOutput24880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24881 : ExponentCode := ⟨3, 5, ![![0, -1, -1, 2, 0], ![-3, -1, 3, -1, 2], ![3, 2, -2, -1, -2]]⟩

def canonicalOutput24881 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1215

theorem canonicalSound24881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24881.moment H = canonicalOutput24881.moment H :=
  canonical_of_padded canonicalInput24881 canonicalOutput24881 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24882 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-2, -1, 1, 2, 0], ![0, 2, -1, -2, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput24882 : ExponentCode := normalNode902

theorem canonicalSound24882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24882.moment H = canonicalOutput24882.moment H :=
  canonical_of_padded canonicalInput24882 canonicalOutput24882 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24883 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-2, -1, 3, -1, 1], ![-1, 2, -1, -1, 1], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput24883 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code929

theorem canonicalSound24883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24883.moment H = canonicalOutput24883.moment H :=
  canonical_of_padded canonicalInput24883 canonicalOutput24883 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24884 : ExponentCode := ⟨3, 5, ![![0, -1, -1, 2, 0], ![-2, -1, 3, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput24884 : ExponentCode := normalNode5601

theorem canonicalSound24884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24884.moment H = canonicalOutput24884.moment H :=
  canonical_of_padded canonicalInput24884 canonicalOutput24884 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24885 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 1, 2, -1], ![-1, 2, -1, -2, 2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput24885 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code213

theorem canonicalSound24885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24885.moment H = canonicalOutput24885.moment H :=
  canonical_of_padded canonicalInput24885 canonicalOutput24885 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24886 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 1, 2, -1], ![0, 2, -1, -2, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput24886 : ExponentCode := normalNode5801

theorem canonicalSound24886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24886.moment H = canonicalOutput24886.moment H :=
  canonical_of_padded canonicalInput24886 canonicalOutput24886 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24887 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 2, -1, 1], ![-2, 2, -1, 0, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput24887 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code980

theorem canonicalSound24887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24887.moment H = canonicalOutput24887.moment H :=
  canonical_of_padded canonicalInput24887 canonicalOutput24887 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24888 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 2, -1, 1], ![-1, 1, 0, 2, -2], ![2, 1, -1, -3, 1]]⟩

def canonicalOutput24888 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code178

theorem canonicalSound24888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24888.moment H = canonicalOutput24888.moment H :=
  canonical_of_padded canonicalInput24888 canonicalOutput24888 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24889 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 2, 0, 0], ![-1, 1, 2, -1, -1], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput24889 : ExponentCode := normalNode4504

theorem canonicalSound24889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24889.moment H = canonicalOutput24889.moment H :=
  canonical_of_padded canonicalInput24889 canonicalOutput24889 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24890 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 3, -1, 0], ![-2, 2, -1, -1, 2], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput24890 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code931

theorem canonicalSound24890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24890.moment H = canonicalOutput24890.moment H :=
  canonical_of_padded canonicalInput24890 canonicalOutput24890 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24891 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, -1, 3, -1, 0], ![-1, 2, -1, -1, 1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput24891 : ExponentCode := normalNode4211

theorem canonicalSound24891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24891.moment H = canonicalOutput24891.moment H :=
  canonical_of_padded canonicalInput24891 canonicalOutput24891 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput24892 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![-1, 1, 1, 0, -1], ![-1, -1, 1, -1, 2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput24892 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound24892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24892.moment H = canonicalOutput24892.moment H :=
  canonical_of_padded canonicalInput24892 canonicalOutput24892 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24893 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![-3, 2, -1, 0, 2], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput24893 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound24893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24893.moment H = canonicalOutput24893.moment H :=
  canonical_of_padded canonicalInput24893 canonicalOutput24893 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24894 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![-2, 1, 0, 2, -1], ![2, 1, -1, -3, 1]]⟩

def canonicalOutput24894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩

theorem canonicalSound24894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24894.moment H = canonicalOutput24894.moment H :=
  canonical_of_padded canonicalInput24894 canonicalOutput24894 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24895 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![-2, 2, -1, 0, 1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput24895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound24895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24895.moment H = canonicalOutput24895.moment H :=
  canonical_of_padded canonicalInput24895 canonicalOutput24895 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation15⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

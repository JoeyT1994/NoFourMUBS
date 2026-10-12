import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16832 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, -2, 0, 2], ![0, 0, 2, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput16832 : ExponentCode := normalNode4011

theorem canonicalSound16832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16832.moment H = canonicalOutput16832.moment H :=
  canonical_of_padded canonicalInput16832 canonicalOutput16832 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16833 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, -2, 0, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput16833 : ExponentCode := normalNode5412

theorem canonicalSound16833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16833.moment H = canonicalOutput16833.moment H :=
  canonical_of_padded canonicalInput16833 canonicalOutput16833 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16834 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, -1, 0, 1], ![0, 1, -1, 1, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput16834 : ExponentCode := normalNode8866

theorem canonicalSound16834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16834.moment H = canonicalOutput16834.moment H :=
  canonical_of_padded canonicalInput16834 canonicalOutput16834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16835 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput16835 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound16835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16835.moment H = canonicalOutput16835.moment H :=
  canonical_of_padded canonicalInput16835 canonicalOutput16835 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16836 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 0, -1, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput16836 : ExponentCode := normalNode9326

theorem canonicalSound16836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16836.moment H = canonicalOutput16836.moment H :=
  canonical_of_padded canonicalInput16836 canonicalOutput16836 (by decide) (by decide)
    ⟨true, false, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16837 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 1, -2, 1], ![0, 0, -2, 1, 1], ![0, 2, 1, 0, -3]]⟩

def canonicalOutput16837 : ExponentCode := normalNode4253

theorem canonicalSound16837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16837.moment H = canonicalOutput16837.moment H :=
  canonical_of_padded canonicalInput16837 canonicalOutput16837 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16838 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput16838 : ExponentCode := normalNode4269

theorem canonicalSound16838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16838.moment H = canonicalOutput16838.moment H :=
  canonical_of_padded canonicalInput16838 canonicalOutput16838 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16839 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 1, -2, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput16839 : ExponentCode := normalNode4385

theorem canonicalSound16839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16839.moment H = canonicalOutput16839.moment H :=
  canonical_of_padded canonicalInput16839 canonicalOutput16839 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16840 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput16840 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound16840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16840.moment H = canonicalOutput16840.moment H :=
  canonical_of_padded canonicalInput16840 canonicalOutput16840 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16841 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 1, 0, -1], ![0, 0, 0, -2, 2], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput16841 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound16841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16841.moment H = canonicalOutput16841.moment H :=
  canonical_of_padded canonicalInput16841 canonicalOutput16841 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16842 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, 1, 1, -2], ![0, 0, -2, 0, 2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput16842 : ExponentCode := normalNode2554

theorem canonicalSound16842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16842.moment H = canonicalOutput16842.moment H :=
  canonical_of_padded canonicalInput16842 canonicalOutput16842 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16843 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, -2, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput16843 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16843.moment H = canonicalOutput16843.moment H :=
  canonical_of_padded canonicalInput16843 canonicalOutput16843 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16844 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, -1, -2, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2]]⟩

def canonicalOutput16844 : ExponentCode := normalNode4550

theorem canonicalSound16844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16844.moment H = canonicalOutput16844.moment H :=
  canonical_of_padded canonicalInput16844 canonicalOutput16844 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16845 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, -1, -2, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16845 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound16845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16845.moment H = canonicalOutput16845.moment H :=
  canonical_of_padded canonicalInput16845 canonicalOutput16845 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16846 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, -1, -1, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16846 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2088⟩

theorem canonicalSound16846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16846.moment H = canonicalOutput16846.moment H :=
  canonical_of_padded canonicalInput16846 canonicalOutput16846 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16847 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, 0, -2, 1], ![0, 0, 2, 0, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput16847 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16847.moment H = canonicalOutput16847.moment H :=
  canonical_of_padded canonicalInput16847 canonicalOutput16847 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16848 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, 0, 1, -2], ![-1, -1, 2, -2, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput16848 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1113

theorem canonicalSound16848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16848.moment H = canonicalOutput16848.moment H :=
  canonical_of_padded canonicalInput16848 canonicalOutput16848 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16849 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, 0, 1, -2], ![0, -1, 2, -2, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput16849 : ExponentCode := normalNode3773

theorem canonicalSound16849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16849.moment H = canonicalOutput16849.moment H :=
  canonical_of_padded canonicalInput16849 canonicalOutput16849 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16850 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, 1, -3, 1], ![0, 0, 2, 0, -2], ![0, 1, -3, 2, 0]]⟩

def canonicalOutput16850 : ExponentCode := normalNode3535

theorem canonicalSound16850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16850.moment H = canonicalOutput16850.moment H :=
  canonical_of_padded canonicalInput16850 canonicalOutput16850 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16851 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 0, 1, -2, 0], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1]]⟩

def canonicalOutput16851 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound16851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16851.moment H = canonicalOutput16851.moment H :=
  canonical_of_padded canonicalInput16851 canonicalOutput16851 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16852 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 1, 0, -1, -1], ![-1, -1, 2, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16852 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1399

theorem canonicalSound16852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16852.moment H = canonicalOutput16852.moment H :=
  canonical_of_padded canonicalInput16852 canonicalOutput16852 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16853 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 1, 0, 0, -2], ![-1, -1, 2, -2, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16853 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1123

theorem canonicalSound16853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16853.moment H = canonicalOutput16853.moment H :=
  canonical_of_padded canonicalInput16853 canonicalOutput16853 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16854 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 1, 0, 0, -2], ![-1, 1, 2, -3, 1], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput16854 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1193

theorem canonicalSound16854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16854.moment H = canonicalOutput16854.moment H :=
  canonical_of_padded canonicalInput16854 canonicalOutput16854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16855 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 1, 0, 0, -2], ![0, -1, 2, -2, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput16855 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound16855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16855.moment H = canonicalOutput16855.moment H :=
  canonical_of_padded canonicalInput16855 canonicalOutput16855 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16856 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, 1, 0, 0, -2], ![0, 1, 2, -3, 0], ![0, -1, -2, 2, 1]]⟩

def canonicalOutput16856 : ExponentCode := normalNode5536

theorem canonicalSound16856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16856.moment H = canonicalOutput16856.moment H :=
  canonical_of_padded canonicalInput16856 canonicalOutput16856 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16857 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -2, 2, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput16857 : ExponentCode := normalNode6845

theorem canonicalSound16857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16857.moment H = canonicalOutput16857.moment H :=
  canonical_of_padded canonicalInput16857 canonicalOutput16857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16858 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput16858 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1618⟩

theorem canonicalSound16858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16858.moment H = canonicalOutput16858.moment H :=
  canonical_of_padded canonicalInput16858 canonicalOutput16858 (by decide) (by decide)
    ⟨false, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16859 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput16859 : ExponentCode := normalNode8776

theorem canonicalSound16859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16859.moment H = canonicalOutput16859.moment H :=
  canonical_of_padded canonicalInput16859 canonicalOutput16859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16860 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 0, 2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput16860 : ExponentCode := normalNode4640

theorem canonicalSound16860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16860.moment H = canonicalOutput16860.moment H :=
  canonical_of_padded canonicalInput16860 canonicalOutput16860 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16861 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 0, 2], ![1, 0, 3, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput16861 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code134

theorem canonicalSound16861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16861.moment H = canonicalOutput16861.moment H :=
  canonical_of_padded canonicalInput16861 canonicalOutput16861 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16862 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 0, 2], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput16862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node398⟩

theorem canonicalSound16862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16862.moment H = canonicalOutput16862.moment H :=
  canonical_of_padded canonicalInput16862 canonicalOutput16862 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16863 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput16863 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code958

theorem canonicalSound16863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16863.moment H = canonicalOutput16863.moment H :=
  canonical_of_padded canonicalInput16863 canonicalOutput16863 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16864 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput16864 : ExponentCode := normalNode7296

theorem canonicalSound16864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16864.moment H = canonicalOutput16864.moment H :=
  canonical_of_padded canonicalInput16864 canonicalOutput16864 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16865 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput16865 : ExponentCode := normalNode4303

theorem canonicalSound16865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16865.moment H = canonicalOutput16865.moment H :=
  canonical_of_padded canonicalInput16865 canonicalOutput16865 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16866 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput16866 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1358

theorem canonicalSound16866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16866.moment H = canonicalOutput16866.moment H :=
  canonical_of_padded canonicalInput16866 canonicalOutput16866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16867 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput16867 : ExponentCode := normalNode4303

theorem canonicalSound16867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16867.moment H = canonicalOutput16867.moment H :=
  canonical_of_padded canonicalInput16867 canonicalOutput16867 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16868 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput16868 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2510⟩

theorem canonicalSound16868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16868.moment H = canonicalOutput16868.moment H :=
  canonical_of_padded canonicalInput16868 canonicalOutput16868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16869 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16869 : ExponentCode := normalNode10835

theorem canonicalSound16869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16869.moment H = canonicalOutput16869.moment H :=
  canonical_of_padded canonicalInput16869 canonicalOutput16869 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16870 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput16870 : ExponentCode := normalNode8787

theorem canonicalSound16870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16870.moment H = canonicalOutput16870.moment H :=
  canonical_of_padded canonicalInput16870 canonicalOutput16870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16871 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput16871 : ExponentCode := normalNode8786

theorem canonicalSound16871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16871.moment H = canonicalOutput16871.moment H :=
  canonical_of_padded canonicalInput16871 canonicalOutput16871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16872 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput16872 : ExponentCode := normalNode10835

theorem canonicalSound16872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16872.moment H = canonicalOutput16872.moment H :=
  canonical_of_padded canonicalInput16872 canonicalOutput16872 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16873 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput16873 : ExponentCode := normalNode5625

theorem canonicalSound16873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16873.moment H = canonicalOutput16873.moment H :=
  canonical_of_padded canonicalInput16873 canonicalOutput16873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16874 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput16874 : ExponentCode := normalNode8786

theorem canonicalSound16874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16874.moment H = canonicalOutput16874.moment H :=
  canonical_of_padded canonicalInput16874 canonicalOutput16874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16875 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput16875 : ExponentCode := normalNode4690

theorem canonicalSound16875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16875.moment H = canonicalOutput16875.moment H :=
  canonical_of_padded canonicalInput16875 canonicalOutput16875 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16876 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput16876 : ExponentCode := normalNode3880

theorem canonicalSound16876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16876.moment H = canonicalOutput16876.moment H :=
  canonical_of_padded canonicalInput16876 canonicalOutput16876 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16877 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput16877 : ExponentCode := normalNode4647

theorem canonicalSound16877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16877.moment H = canonicalOutput16877.moment H :=
  canonical_of_padded canonicalInput16877 canonicalOutput16877 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16878 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput16878 : ExponentCode := normalNode4254

theorem canonicalSound16878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16878.moment H = canonicalOutput16878.moment H :=
  canonical_of_padded canonicalInput16878 canonicalOutput16878 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16879 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput16879 : ExponentCode := normalNode9330

theorem canonicalSound16879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16879.moment H = canonicalOutput16879.moment H :=
  canonical_of_padded canonicalInput16879 canonicalOutput16879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16880 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput16880 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound16880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16880.moment H = canonicalOutput16880.moment H :=
  canonical_of_padded canonicalInput16880 canonicalOutput16880 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16881 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput16881 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code446

theorem canonicalSound16881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16881.moment H = canonicalOutput16881.moment H :=
  canonical_of_padded canonicalInput16881 canonicalOutput16881 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16882 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, -3, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput16882 : ExponentCode := normalNode8788

theorem canonicalSound16882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16882.moment H = canonicalOutput16882.moment H :=
  canonical_of_padded canonicalInput16882 canonicalOutput16882 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16883 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16883 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1360⟩

theorem canonicalSound16883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16883.moment H = canonicalOutput16883.moment H :=
  canonical_of_padded canonicalInput16883 canonicalOutput16883 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16884 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput16884 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1360⟩

theorem canonicalSound16884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16884.moment H = canonicalOutput16884.moment H :=
  canonical_of_padded canonicalInput16884 canonicalOutput16884 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16885 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput16885 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound16885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16885.moment H = canonicalOutput16885.moment H :=
  canonical_of_padded canonicalInput16885 canonicalOutput16885 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16886 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput16886 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code303

theorem canonicalSound16886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16886.moment H = canonicalOutput16886.moment H :=
  canonical_of_padded canonicalInput16886 canonicalOutput16886 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16887 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16887 : ExponentCode := normalNode4299

theorem canonicalSound16887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16887.moment H = canonicalOutput16887.moment H :=
  canonical_of_padded canonicalInput16887 canonicalOutput16887 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16888 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput16888 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound16888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16888.moment H = canonicalOutput16888.moment H :=
  canonical_of_padded canonicalInput16888 canonicalOutput16888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16889 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput16889 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound16889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16889.moment H = canonicalOutput16889.moment H :=
  canonical_of_padded canonicalInput16889 canonicalOutput16889 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16890 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput16890 : ExponentCode := normalNode4299

theorem canonicalSound16890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16890.moment H = canonicalOutput16890.moment H :=
  canonical_of_padded canonicalInput16890 canonicalOutput16890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16891 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput16891 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound16891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16891.moment H = canonicalOutput16891.moment H :=
  canonical_of_padded canonicalInput16891 canonicalOutput16891 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16892 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput16892 : ExponentCode := normalNode4299

theorem canonicalSound16892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16892.moment H = canonicalOutput16892.moment H :=
  canonical_of_padded canonicalInput16892 canonicalOutput16892 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16893 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput16893 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1363

theorem canonicalSound16893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16893.moment H = canonicalOutput16893.moment H :=
  canonical_of_padded canonicalInput16893 canonicalOutput16893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16894 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput16894 : ExponentCode := normalNode3456

theorem canonicalSound16894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16894.moment H = canonicalOutput16894.moment H :=
  canonical_of_padded canonicalInput16894 canonicalOutput16894 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16895 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput16895 : ExponentCode := normalNode1778

theorem canonicalSound16895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16895.moment H = canonicalOutput16895.moment H :=
  canonical_of_padded canonicalInput16895 canonicalOutput16895 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

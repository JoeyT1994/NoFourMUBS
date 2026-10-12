import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29888 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput29888 : ExponentCode := normalNode2702

theorem canonicalSound29888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29888.moment H = canonicalOutput29888.moment H :=
  canonical_of_padded canonicalInput29888 canonicalOutput29888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29889 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput29889 : ExponentCode := normalNode10624

theorem canonicalSound29889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29889.moment H = canonicalOutput29889.moment H :=
  canonical_of_padded canonicalInput29889 canonicalOutput29889 (by decide) (by decide)
    ⟨false, true, canonicalPermutation334, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29890 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput29890 : ExponentCode := normalNode4921

theorem canonicalSound29890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29890.moment H = canonicalOutput29890.moment H :=
  canonical_of_padded canonicalInput29890 canonicalOutput29890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29891 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput29891 : ExponentCode := normalNode5051

theorem canonicalSound29891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29891.moment H = canonicalOutput29891.moment H :=
  canonical_of_padded canonicalInput29891 canonicalOutput29891 (by decide) (by decide)
    ⟨false, false, canonicalPermutation371, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29892 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 2, 1, -2]]⟩

def canonicalOutput29892 : ExponentCode := normalNode10490

theorem canonicalSound29892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29892.moment H = canonicalOutput29892.moment H :=
  canonical_of_padded canonicalInput29892 canonicalOutput29892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29893 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, 0, -1]]⟩

def canonicalOutput29893 : ExponentCode := normalNode2702

theorem canonicalSound29893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29893.moment H = canonicalOutput29893.moment H :=
  canonical_of_padded canonicalInput29893 canonicalOutput29893 (by decide) (by decide)
    ⟨false, true, canonicalPermutation270, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput29894 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1]]⟩

def canonicalOutput29894 : ExponentCode := normalNode9285

theorem canonicalSound29894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29894.moment H = canonicalOutput29894.moment H :=
  canonical_of_padded canonicalInput29894 canonicalOutput29894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation346, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29895 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput29895 : ExponentCode := normalNode4911

theorem canonicalSound29895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29895.moment H = canonicalOutput29895.moment H :=
  canonical_of_padded canonicalInput29895 canonicalOutput29895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29896 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -1, 2, -1]]⟩

def canonicalOutput29896 : ExponentCode := normalNode2372

theorem canonicalSound29896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29896.moment H = canonicalOutput29896.moment H :=
  canonical_of_padded canonicalInput29896 canonicalOutput29896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29897 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -2, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput29897 : ExponentCode := normalNode773

theorem canonicalSound29897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29897.moment H = canonicalOutput29897.moment H :=
  canonical_of_padded canonicalInput29897 canonicalOutput29897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29898 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -2, 2, 0]]⟩

def canonicalOutput29898 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3041⟩

theorem canonicalSound29898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29898.moment H = canonicalOutput29898.moment H :=
  canonical_of_padded canonicalInput29898 canonicalOutput29898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29899 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, 1, 3, -3]]⟩

def canonicalOutput29899 : ExponentCode := normalNode7351

theorem canonicalSound29899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29899.moment H = canonicalOutput29899.moment H :=
  canonical_of_padded canonicalInput29899 canonicalOutput29899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29900 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -3, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput29900 : ExponentCode := normalNode7357

theorem canonicalSound29900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29900.moment H = canonicalOutput29900.moment H :=
  canonical_of_padded canonicalInput29900 canonicalOutput29900 (by decide) (by decide)
    ⟨false, false, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29901 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput29901 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2937⟩

theorem canonicalSound29901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29901.moment H = canonicalOutput29901.moment H :=
  canonical_of_padded canonicalInput29901 canonicalOutput29901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29902 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput29902 : ExponentCode := normalNode5492

theorem canonicalSound29902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29902.moment H = canonicalOutput29902.moment H :=
  canonical_of_padded canonicalInput29902 canonicalOutput29902 (by decide) (by decide)
    ⟨false, false, canonicalPermutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29903 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 1, 1, 0], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput29903 : ExponentCode := normalNode5208

theorem canonicalSound29903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29903.moment H = canonicalOutput29903.moment H :=
  canonical_of_padded canonicalInput29903 canonicalOutput29903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29904 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 2, 0, 0], ![0, -2, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29904 : ExponentCode := normalNode3896

theorem canonicalSound29904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29904.moment H = canonicalOutput29904.moment H :=
  canonical_of_padded canonicalInput29904 canonicalOutput29904 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29905 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-1, 2, 0, -1], ![1, -2, 0, 1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29905 : ExponentCode := normalNode7649

theorem canonicalSound29905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29905.moment H = canonicalOutput29905.moment H :=
  canonical_of_padded canonicalInput29905 canonicalOutput29905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29906 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput29906 : ExponentCode := normalNode2669

theorem canonicalSound29906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29906.moment H = canonicalOutput29906.moment H :=
  canonical_of_padded canonicalInput29906 canonicalOutput29906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29907 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29907 : ExponentCode := normalNode858

theorem canonicalSound29907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29907.moment H = canonicalOutput29907.moment H :=
  canonical_of_padded canonicalInput29907 canonicalOutput29907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29908 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29908 : ExponentCode := normalNode3291

theorem canonicalSound29908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29908.moment H = canonicalOutput29908.moment H :=
  canonical_of_padded canonicalInput29908 canonicalOutput29908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29909 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29909 : ExponentCode := normalNode1966

theorem canonicalSound29909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29909.moment H = canonicalOutput29909.moment H :=
  canonical_of_padded canonicalInput29909 canonicalOutput29909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29910 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput29910 : ExponentCode := normalNode2671

theorem canonicalSound29910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29910.moment H = canonicalOutput29910.moment H :=
  canonical_of_padded canonicalInput29910 canonicalOutput29910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29911 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29911 : ExponentCode := normalNode607

theorem canonicalSound29911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29911.moment H = canonicalOutput29911.moment H :=
  canonical_of_padded canonicalInput29911 canonicalOutput29911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29912 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29912 : ExponentCode := normalNode3913

theorem canonicalSound29912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29912.moment H = canonicalOutput29912.moment H :=
  canonical_of_padded canonicalInput29912 canonicalOutput29912 (by decide) (by decide)
    ⟨false, false, canonicalPermutation319, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29913 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput29913 : ExponentCode := normalNode5212

theorem canonicalSound29913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29913.moment H = canonicalOutput29913.moment H :=
  canonical_of_padded canonicalInput29913 canonicalOutput29913 (by decide) (by decide)
    ⟨false, false, canonicalPermutation198, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29914 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput29914 : ExponentCode := normalNode5209

theorem canonicalSound29914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29914.moment H = canonicalOutput29914.moment H :=
  canonical_of_padded canonicalInput29914 canonicalOutput29914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29915 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput29915 : ExponentCode := normalNode5209

theorem canonicalSound29915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29915.moment H = canonicalOutput29915.moment H :=
  canonical_of_padded canonicalInput29915 canonicalOutput29915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29916 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, 0, 2, -2]]⟩

def canonicalOutput29916 : ExponentCode := normalNode3872

theorem canonicalSound29916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29916.moment H = canonicalOutput29916.moment H :=
  canonical_of_padded canonicalInput29916 canonicalOutput29916 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29917 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 0, 2, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput29917 : ExponentCode := normalNode5206

theorem canonicalSound29917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29917.moment H = canonicalOutput29917.moment H :=
  canonical_of_padded canonicalInput29917 canonicalOutput29917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29918 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 0, 3, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput29918 : ExponentCode := normalNode4944

theorem canonicalSound29918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29918.moment H = canonicalOutput29918.moment H :=
  canonical_of_padded canonicalInput29918 canonicalOutput29918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29919 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29919 : ExponentCode := normalNode4389

theorem canonicalSound29919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29919.moment H = canonicalOutput29919.moment H :=
  canonical_of_padded canonicalInput29919 canonicalOutput29919 (by decide) (by decide)
    ⟨false, false, canonicalPermutation205, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29920 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![0, -2, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29920 : ExponentCode := normalNode2448

theorem canonicalSound29920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29920.moment H = canonicalOutput29920.moment H :=
  canonical_of_padded canonicalInput29920 canonicalOutput29920 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29921 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -2, 0, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29921 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3075⟩

theorem canonicalSound29921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29921.moment H = canonicalOutput29921.moment H :=
  canonical_of_padded canonicalInput29921 canonicalOutput29921 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29922 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -2, 1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput29922 : ExponentCode := normalNode3897

theorem canonicalSound29922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29922.moment H = canonicalOutput29922.moment H :=
  canonical_of_padded canonicalInput29922 canonicalOutput29922 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29923 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 2, -1, 0], ![1, -2, 0, 1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29923 : ExponentCode := normalNode7716

theorem canonicalSound29923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29923.moment H = canonicalOutput29923.moment H :=
  canonical_of_padded canonicalInput29923 canonicalOutput29923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput29924 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![1, -2, -1, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput29924 : ExponentCode := normalNode6848

theorem canonicalSound29924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29924.moment H = canonicalOutput29924.moment H :=
  canonical_of_padded canonicalInput29924 canonicalOutput29924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29925 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![1, -2, 0, 1], ![-1, -1, 2, 0]]⟩

def canonicalOutput29925 : ExponentCode := normalNode4298

theorem canonicalSound29925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29925.moment H = canonicalOutput29925.moment H :=
  canonical_of_padded canonicalInput29925 canonicalOutput29925 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation402, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput29926 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![1, 1, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput29926 : ExponentCode := normalNode3349

theorem canonicalSound29926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29926.moment H = canonicalOutput29926.moment H :=
  canonical_of_padded canonicalInput29926 canonicalOutput29926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29927 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput29927 : ExponentCode := normalNode2534

theorem canonicalSound29927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29927.moment H = canonicalOutput29927.moment H :=
  canonical_of_padded canonicalInput29927 canonicalOutput29927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29928 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput29928 : ExponentCode := normalNode1824

theorem canonicalSound29928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29928.moment H = canonicalOutput29928.moment H :=
  canonical_of_padded canonicalInput29928 canonicalOutput29928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29929 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29929 : ExponentCode := normalNode6739

theorem canonicalSound29929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29929.moment H = canonicalOutput29929.moment H :=
  canonical_of_padded canonicalInput29929 canonicalOutput29929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29930 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29930 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2768⟩

theorem canonicalSound29930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29930.moment H = canonicalOutput29930.moment H :=
  canonical_of_padded canonicalInput29930 canonicalOutput29930 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29931 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29931 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2815⟩

theorem canonicalSound29931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29931.moment H = canonicalOutput29931.moment H :=
  canonical_of_padded canonicalInput29931 canonicalOutput29931 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29932 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput29932 : ExponentCode := normalNode5082

theorem canonicalSound29932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29932.moment H = canonicalOutput29932.moment H :=
  canonical_of_padded canonicalInput29932 canonicalOutput29932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation344, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29933 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput29933 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3379⟩

theorem canonicalSound29933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29933.moment H = canonicalOutput29933.moment H :=
  canonical_of_padded canonicalInput29933 canonicalOutput29933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation345, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29934 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, -2, 1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput29934 : ExponentCode := normalNode2669

theorem canonicalSound29934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29934.moment H = canonicalOutput29934.moment H :=
  canonical_of_padded canonicalInput29934 canonicalOutput29934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation273, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29935 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![0, 1, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29935 : ExponentCode := normalNode858

theorem canonicalSound29935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29935.moment H = canonicalOutput29935.moment H :=
  canonical_of_padded canonicalInput29935 canonicalOutput29935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29936 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput29936 : ExponentCode := normalNode415

theorem canonicalSound29936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29936.moment H = canonicalOutput29936.moment H :=
  canonical_of_padded canonicalInput29936 canonicalOutput29936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29937 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29937 : ExponentCode := normalNode3295

theorem canonicalSound29937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29937.moment H = canonicalOutput29937.moment H :=
  canonical_of_padded canonicalInput29937 canonicalOutput29937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29938 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29938 : ExponentCode := normalNode1969

theorem canonicalSound29938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29938.moment H = canonicalOutput29938.moment H :=
  canonical_of_padded canonicalInput29938 canonicalOutput29938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29939 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput29939 : ExponentCode := normalNode2681

theorem canonicalSound29939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29939.moment H = canonicalOutput29939.moment H :=
  canonical_of_padded canonicalInput29939 canonicalOutput29939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29940 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29940 : ExponentCode := normalNode9018

theorem canonicalSound29940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29940.moment H = canonicalOutput29940.moment H :=
  canonical_of_padded canonicalInput29940 canonicalOutput29940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation297, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29941 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29941 : ExponentCode := normalNode873

theorem canonicalSound29941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29941.moment H = canonicalOutput29941.moment H :=
  canonical_of_padded canonicalInput29941 canonicalOutput29941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29942 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29942 : ExponentCode := normalNode615

theorem canonicalSound29942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29942.moment H = canonicalOutput29942.moment H :=
  canonical_of_padded canonicalInput29942 canonicalOutput29942 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29943 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, -2, 4, -2]]⟩

def canonicalOutput29943 : ExponentCode := normalNode3290

theorem canonicalSound29943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29943.moment H = canonicalOutput29943.moment H :=
  canonical_of_padded canonicalInput29943 canonicalOutput29943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29944 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, -1, 4], ![-1, 1, 3, -3]]⟩

def canonicalOutput29944 : ExponentCode := normalNode1346

theorem canonicalSound29944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29944.moment H = canonicalOutput29944.moment H :=
  canonical_of_padded canonicalInput29944 canonicalOutput29944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29945 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput29945 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2989⟩

theorem canonicalSound29945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29945.moment H = canonicalOutput29945.moment H :=
  canonical_of_padded canonicalInput29945 canonicalOutput29945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29946 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 1, 1, -1]]⟩

def canonicalOutput29946 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3076⟩

theorem canonicalSound29946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29946.moment H = canonicalOutput29946.moment H :=
  canonical_of_padded canonicalInput29946 canonicalOutput29946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29947 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput29947 : ExponentCode := normalNode1381

theorem canonicalSound29947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29947.moment H = canonicalOutput29947.moment H :=
  canonical_of_padded canonicalInput29947 canonicalOutput29947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29948 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, 1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput29948 : ExponentCode := normalNode618

theorem canonicalSound29948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29948.moment H = canonicalOutput29948.moment H :=
  canonical_of_padded canonicalInput29948 canonicalOutput29948 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29949 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput29949 : ExponentCode := normalNode418

theorem canonicalSound29949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29949.moment H = canonicalOutput29949.moment H :=
  canonical_of_padded canonicalInput29949 canonicalOutput29949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29950 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29950 : ExponentCode := normalNode5326

theorem canonicalSound29950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29950.moment H = canonicalOutput29950.moment H :=
  canonical_of_padded canonicalInput29950 canonicalOutput29950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29951 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -2, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29951 : ExponentCode := normalNode3937

theorem canonicalSound29951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29951.moment H = canonicalOutput29951.moment H :=
  canonical_of_padded canonicalInput29951 canonicalOutput29951 (by decide) (by decide)
    ⟨false, false, canonicalPermutation319, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

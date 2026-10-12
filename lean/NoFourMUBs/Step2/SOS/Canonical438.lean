import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound21
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28032 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix1350⟩

def canonicalOutput28032 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1350⟩

theorem canonicalSound28032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28032.moment H = canonicalOutput28032.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix1350 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1350
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix1350 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node1350 (OAI.MUB6.Certificate.PairSemantics.pivotPermutation1350 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node1350 OAI.MUB6.Certificate.PairSemantics.pivotPermutation1350)

def canonicalInput28033 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput28033 : ExponentCode := normalNode2695

theorem canonicalSound28033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28033.moment H = canonicalOutput28033.moment H :=
  canonical_of_padded canonicalInput28033 canonicalOutput28033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28034 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput28034 : ExponentCode := normalNode1984

theorem canonicalSound28034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28034.moment H = canonicalOutput28034.moment H :=
  canonical_of_padded canonicalInput28034 canonicalOutput28034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28035 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput28035 : ExponentCode := normalNode7775

theorem canonicalSound28035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28035.moment H = canonicalOutput28035.moment H :=
  canonical_of_padded canonicalInput28035 canonicalOutput28035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28036 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput28036 : ExponentCode := normalNode1978

theorem canonicalSound28036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28036.moment H = canonicalOutput28036.moment H :=
  canonical_of_padded canonicalInput28036 canonicalOutput28036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28037 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput28037 : ExponentCode := normalNode5147

theorem canonicalSound28037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28037.moment H = canonicalOutput28037.moment H :=
  canonical_of_padded canonicalInput28037 canonicalOutput28037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28038 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput28038 : ExponentCode := normalNode7776

theorem canonicalSound28038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28038.moment H = canonicalOutput28038.moment H :=
  canonical_of_padded canonicalInput28038 canonicalOutput28038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28039 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput28039 : ExponentCode := normalNode7778

theorem canonicalSound28039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28039.moment H = canonicalOutput28039.moment H :=
  canonical_of_padded canonicalInput28039 canonicalOutput28039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28040 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput28040 : ExponentCode := normalNode2679

theorem canonicalSound28040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28040.moment H = canonicalOutput28040.moment H :=
  canonical_of_padded canonicalInput28040 canonicalOutput28040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28041 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput28041 : ExponentCode := normalNode1971

theorem canonicalSound28041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28041.moment H = canonicalOutput28041.moment H :=
  canonical_of_padded canonicalInput28041 canonicalOutput28041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28042 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput28042 : ExponentCode := normalNode3287

theorem canonicalSound28042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28042.moment H = canonicalOutput28042.moment H :=
  canonical_of_padded canonicalInput28042 canonicalOutput28042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28043 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput28043 : ExponentCode := normalNode3585

theorem canonicalSound28043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28043.moment H = canonicalOutput28043.moment H :=
  canonical_of_padded canonicalInput28043 canonicalOutput28043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28044 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput28044 : ExponentCode := normalNode9811

theorem canonicalSound28044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28044.moment H = canonicalOutput28044.moment H :=
  canonical_of_padded canonicalInput28044 canonicalOutput28044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28045 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput28045 : ExponentCode := normalNode7355

theorem canonicalSound28045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28045.moment H = canonicalOutput28045.moment H :=
  canonical_of_padded canonicalInput28045 canonicalOutput28045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28046 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput28046 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3367⟩

theorem canonicalSound28046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28046.moment H = canonicalOutput28046.moment H :=
  canonical_of_padded canonicalInput28046 canonicalOutput28046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28047 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, -2, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput28047 : ExponentCode := normalNode7356

theorem canonicalSound28047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28047.moment H = canonicalOutput28047.moment H :=
  canonical_of_padded canonicalInput28047 canonicalOutput28047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28048 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput28048 : ExponentCode := normalNode4911

theorem canonicalSound28048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28048.moment H = canonicalOutput28048.moment H :=
  canonical_of_padded canonicalInput28048 canonicalOutput28048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28049 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput28049 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2937⟩

theorem canonicalSound28049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28049.moment H = canonicalOutput28049.moment H :=
  canonical_of_padded canonicalInput28049 canonicalOutput28049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28050 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, 0, 3, -2], ![0, -2, -1, 3]]⟩

def canonicalOutput28050 : ExponentCode := normalNode3528

theorem canonicalSound28050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28050.moment H = canonicalOutput28050.moment H :=
  canonical_of_padded canonicalInput28050 canonicalOutput28050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28051 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput28051 : ExponentCode := normalNode9625

theorem canonicalSound28051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28051.moment H = canonicalOutput28051.moment H :=
  canonical_of_padded canonicalInput28051 canonicalOutput28051 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28052 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput28052 : ExponentCode := normalNode7792

theorem canonicalSound28052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28052.moment H = canonicalOutput28052.moment H :=
  canonical_of_padded canonicalInput28052 canonicalOutput28052 (by decide) (by decide)
    ⟨false, false, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28053 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput28053 : ExponentCode := normalNode9811

theorem canonicalSound28053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28053.moment H = canonicalOutput28053.moment H :=
  canonical_of_padded canonicalInput28053 canonicalOutput28053 (by decide) (by decide)
    ⟨false, false, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28054 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput28054 : ExponentCode := normalNode7355

theorem canonicalSound28054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28054.moment H = canonicalOutput28054.moment H :=
  canonical_of_padded canonicalInput28054 canonicalOutput28054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28055 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput28055 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2988⟩

theorem canonicalSound28055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28055.moment H = canonicalOutput28055.moment H :=
  canonical_of_padded canonicalInput28055 canonicalOutput28055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28056 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput28056 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3122⟩

theorem canonicalSound28056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28056.moment H = canonicalOutput28056.moment H :=
  canonical_of_padded canonicalInput28056 canonicalOutput28056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28057 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput28057 : ExponentCode := normalNode3578

theorem canonicalSound28057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28057.moment H = canonicalOutput28057.moment H :=
  canonical_of_padded canonicalInput28057 canonicalOutput28057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28058 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput28058 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2936⟩

theorem canonicalSound28058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28058.moment H = canonicalOutput28058.moment H :=
  canonical_of_padded canonicalInput28058 canonicalOutput28058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28059 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput28059 : ExponentCode := normalNode7751

theorem canonicalSound28059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28059.moment H = canonicalOutput28059.moment H :=
  canonical_of_padded canonicalInput28059 canonicalOutput28059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28060 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput28060 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound28060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28060.moment H = canonicalOutput28060.moment H :=
  canonical_of_padded canonicalInput28060 canonicalOutput28060 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28061 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -2, 0, 2], ![0, 0, 3, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput28061 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩

theorem canonicalSound28061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28061.moment H = canonicalOutput28061.moment H :=
  canonical_of_padded canonicalInput28061 canonicalOutput28061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28062 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 2, -2, 0]]⟩

def canonicalOutput28062 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound28062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28062.moment H = canonicalOutput28062.moment H :=
  canonical_of_padded canonicalInput28062 canonicalOutput28062 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28063 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput28063 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound28063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28063.moment H = canonicalOutput28063.moment H :=
  canonical_of_padded canonicalInput28063 canonicalOutput28063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28064 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -2, 2, 0], ![0, 0, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput28064 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound28064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28064.moment H = canonicalOutput28064.moment H :=
  canonical_of_padded canonicalInput28064 canonicalOutput28064 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28065 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -2, 2, 0], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput28065 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound28065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28065.moment H = canonicalOutput28065.moment H :=
  canonical_of_padded canonicalInput28065 canonicalOutput28065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28066 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput28066 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound28066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28066.moment H = canonicalOutput28066.moment H :=
  canonical_of_padded canonicalInput28066 canonicalOutput28066 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28067 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28067 : ExponentCode := normalNode819

theorem canonicalSound28067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28067.moment H = canonicalOutput28067.moment H :=
  canonical_of_padded canonicalInput28067 canonicalOutput28067 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28068 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![-1, 2, 0, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28068 : ExponentCode := normalNode944

theorem canonicalSound28068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28068.moment H = canonicalOutput28068.moment H :=
  canonical_of_padded canonicalInput28068 canonicalOutput28068 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28069 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28069 : ExponentCode := normalNode4215

theorem canonicalSound28069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28069.moment H = canonicalOutput28069.moment H :=
  canonical_of_padded canonicalInput28069 canonicalOutput28069 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28070 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28070 : ExponentCode := normalNode5674

theorem canonicalSound28070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28070.moment H = canonicalOutput28070.moment H :=
  canonical_of_padded canonicalInput28070 canonicalOutput28070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28071 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28071 : ExponentCode := normalNode4695

theorem canonicalSound28071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28071.moment H = canonicalOutput28071.moment H :=
  canonical_of_padded canonicalInput28071 canonicalOutput28071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28072 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28072 : ExponentCode := normalNode5679

theorem canonicalSound28072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28072.moment H = canonicalOutput28072.moment H :=
  canonical_of_padded canonicalInput28072 canonicalOutput28072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28073 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28073 : ExponentCode := normalNode5829

theorem canonicalSound28073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28073.moment H = canonicalOutput28073.moment H :=
  canonical_of_padded canonicalInput28073 canonicalOutput28073 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation297, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28074 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput28074 : ExponentCode := normalNode4694

theorem canonicalSound28074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28074.moment H = canonicalOutput28074.moment H :=
  canonical_of_padded canonicalInput28074 canonicalOutput28074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28075 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput28075 : ExponentCode := normalNode5718

theorem canonicalSound28075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28075.moment H = canonicalOutput28075.moment H :=
  canonical_of_padded canonicalInput28075 canonicalOutput28075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28076 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![-2, 3, 1, -2]]⟩

def canonicalOutput28076 : ExponentCode := normalNode5719

theorem canonicalSound28076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28076.moment H = canonicalOutput28076.moment H :=
  canonical_of_padded canonicalInput28076 canonicalOutput28076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28077 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput28077 : ExponentCode := normalNode2351

theorem canonicalSound28077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28077.moment H = canonicalOutput28077.moment H :=
  canonical_of_padded canonicalInput28077 canonicalOutput28077 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28078 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28078 : ExponentCode := normalNode764

theorem canonicalSound28078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28078.moment H = canonicalOutput28078.moment H :=
  canonical_of_padded canonicalInput28078 canonicalOutput28078 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28079 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 2, 2, -2]]⟩

def canonicalOutput28079 : ExponentCode := normalNode5694

theorem canonicalSound28079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28079.moment H = canonicalOutput28079.moment H :=
  canonical_of_padded canonicalInput28079 canonicalOutput28079 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28080 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28080 : ExponentCode := normalNode2355

theorem canonicalSound28080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28080.moment H = canonicalOutput28080.moment H :=
  canonical_of_padded canonicalInput28080 canonicalOutput28080 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28081 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput28081 : ExponentCode := normalNode1740

theorem canonicalSound28081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28081.moment H = canonicalOutput28081.moment H :=
  canonical_of_padded canonicalInput28081 canonicalOutput28081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28082 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput28082 : ExponentCode := normalNode807

theorem canonicalSound28082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28082.moment H = canonicalOutput28082.moment H :=
  canonical_of_padded canonicalInput28082 canonicalOutput28082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28083 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput28083 : ExponentCode := normalNode4237

theorem canonicalSound28083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28083.moment H = canonicalOutput28083.moment H :=
  canonical_of_padded canonicalInput28083 canonicalOutput28083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28084 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput28084 : ExponentCode := normalNode712

theorem canonicalSound28084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28084.moment H = canonicalOutput28084.moment H :=
  canonical_of_padded canonicalInput28084 canonicalOutput28084 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28085 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput28085 : ExponentCode := normalNode2819

theorem canonicalSound28085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28085.moment H = canonicalOutput28085.moment H :=
  canonical_of_padded canonicalInput28085 canonicalOutput28085 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28086 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28086 : ExponentCode := normalNode4545

theorem canonicalSound28086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28086.moment H = canonicalOutput28086.moment H :=
  canonical_of_padded canonicalInput28086 canonicalOutput28086 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28087 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput28087 : ExponentCode := normalNode2901

theorem canonicalSound28087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28087.moment H = canonicalOutput28087.moment H :=
  canonical_of_padded canonicalInput28087 canonicalOutput28087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28088 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28088 : ExponentCode := normalNode4259

theorem canonicalSound28088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28088.moment H = canonicalOutput28088.moment H :=
  canonical_of_padded canonicalInput28088 canonicalOutput28088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28089 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28089 : ExponentCode := normalNode4699

theorem canonicalSound28089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28089.moment H = canonicalOutput28089.moment H :=
  canonical_of_padded canonicalInput28089 canonicalOutput28089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28090 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28090 : ExponentCode := normalNode5681

theorem canonicalSound28090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28090.moment H = canonicalOutput28090.moment H :=
  canonical_of_padded canonicalInput28090 canonicalOutput28090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28091 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput28091 : ExponentCode := normalNode2902

theorem canonicalSound28091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28091.moment H = canonicalOutput28091.moment H :=
  canonical_of_padded canonicalInput28091 canonicalOutput28091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28092 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput28092 : ExponentCode := normalNode5427

theorem canonicalSound28092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28092.moment H = canonicalOutput28092.moment H :=
  canonical_of_padded canonicalInput28092 canonicalOutput28092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28093 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28093 : ExponentCode := normalNode1831

theorem canonicalSound28093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28093.moment H = canonicalOutput28093.moment H :=
  canonical_of_padded canonicalInput28093 canonicalOutput28093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28094 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput28094 : ExponentCode := normalNode2903

theorem canonicalSound28094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28094.moment H = canonicalOutput28094.moment H :=
  canonical_of_padded canonicalInput28094 canonicalOutput28094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28095 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput28095 : ExponentCode := normalNode5292

theorem canonicalSound28095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28095.moment H = canonicalOutput28095.moment H :=
  canonical_of_padded canonicalInput28095 canonicalOutput28095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15040 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, -1, -1], ![0, 2, 0, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput15040 : ExponentCode := normalNode2538

theorem canonicalSound15040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15040.moment H = canonicalOutput15040.moment H :=
  canonical_of_padded canonicalInput15040 canonicalOutput15040 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15041 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -3, 3], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15041 : ExponentCode := normalNode621

theorem canonicalSound15041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15041.moment H = canonicalOutput15041.moment H :=
  canonical_of_padded canonicalInput15041 canonicalOutput15041 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15042 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput15042 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound15042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15042.moment H = canonicalOutput15042.moment H :=
  canonical_of_padded canonicalInput15042 canonicalOutput15042 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15043 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, -1, -1, 1], ![0, 0, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15043 : ExponentCode := normalNode9098

theorem canonicalSound15043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15043.moment H = canonicalOutput15043.moment H :=
  canonical_of_padded canonicalInput15043 canonicalOutput15043 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15044 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, -1, -1, 1], ![0, 0, 1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15044 : ExponentCode := normalNode9381

theorem canonicalSound15044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15044.moment H = canonicalOutput15044.moment H :=
  canonical_of_padded canonicalInput15044 canonicalOutput15044 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15045 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15045 : ExponentCode := normalNode8863

theorem canonicalSound15045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15045.moment H = canonicalOutput15045.moment H :=
  canonical_of_padded canonicalInput15045 canonicalOutput15045 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15046 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15046 : ExponentCode := normalNode4304

theorem canonicalSound15046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15046.moment H = canonicalOutput15046.moment H :=
  canonical_of_padded canonicalInput15046 canonicalOutput15046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15047 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, 1, -1, -1], ![0, 0, 1, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput15047 : ExponentCode := normalNode9381

theorem canonicalSound15047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15047.moment H = canonicalOutput15047.moment H :=
  canonical_of_padded canonicalInput15047 canonicalOutput15047 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15048 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput15048 : ExponentCode := normalNode2545

theorem canonicalSound15048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15048.moment H = canonicalOutput15048.moment H :=
  canonical_of_padded canonicalInput15048 canonicalOutput15048 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15049 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 1, 1, 0, -2], ![-1, -1, 1, -1, 2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput15049 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound15049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15049.moment H = canonicalOutput15049.moment H :=
  canonical_of_padded canonicalInput15049 canonicalOutput15049 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15050 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![1, -1, -1, -1, 2], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput15050 : ExponentCode := normalNode2538

theorem canonicalSound15050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15050.moment H = canonicalOutput15050.moment H :=
  canonical_of_padded canonicalInput15050 canonicalOutput15050 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15051 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![1, 0, 0, 1, -2], ![-1, -1, 2, -1, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput15051 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound15051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15051.moment H = canonicalOutput15051.moment H :=
  canonical_of_padded canonicalInput15051 canonicalOutput15051 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15052 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![1, 0, 1, 0, -2], ![-1, -1, 1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput15052 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound15052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15052.moment H = canonicalOutput15052.moment H :=
  canonical_of_padded canonicalInput15052 canonicalOutput15052 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15053 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![1, 0, 1, 0, -2], ![-1, -1, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput15053 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound15053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15053.moment H = canonicalOutput15053.moment H :=
  canonical_of_padded canonicalInput15053 canonicalOutput15053 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15054 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -2, 3, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15054 : ExponentCode := normalNode6652

theorem canonicalSound15054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15054.moment H = canonicalOutput15054.moment H :=
  canonical_of_padded canonicalInput15054 canonicalOutput15054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15055 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -2, 3, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput15055 : ExponentCode := normalNode6655

theorem canonicalSound15055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15055.moment H = canonicalOutput15055.moment H :=
  canonical_of_padded canonicalInput15055 canonicalOutput15055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15056 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -2, 3, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15056 : ExponentCode := normalNode6661

theorem canonicalSound15056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15056.moment H = canonicalOutput15056.moment H :=
  canonical_of_padded canonicalInput15056 canonicalOutput15056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15057 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -2, 3, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15057 : ExponentCode := normalNode6660

theorem canonicalSound15057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15057.moment H = canonicalOutput15057.moment H :=
  canonical_of_padded canonicalInput15057 canonicalOutput15057 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15058 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput15058 : ExponentCode := normalNode7646

theorem canonicalSound15058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15058.moment H = canonicalOutput15058.moment H :=
  canonical_of_padded canonicalInput15058 canonicalOutput15058 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15059 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15059 : ExponentCode := normalNode7644

theorem canonicalSound15059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15059.moment H = canonicalOutput15059.moment H :=
  canonical_of_padded canonicalInput15059 canonicalOutput15059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15060 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput15060 : ExponentCode := normalNode7648

theorem canonicalSound15060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15060.moment H = canonicalOutput15060.moment H :=
  canonical_of_padded canonicalInput15060 canonicalOutput15060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15061 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput15061 : ExponentCode := normalNode4643

theorem canonicalSound15061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15061.moment H = canonicalOutput15061.moment H :=
  canonical_of_padded canonicalInput15061 canonicalOutput15061 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15062 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput15062 : ExponentCode := normalNode4221

theorem canonicalSound15062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15062.moment H = canonicalOutput15062.moment H :=
  canonical_of_padded canonicalInput15062 canonicalOutput15062 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15063 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput15063 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound15063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15063.moment H = canonicalOutput15063.moment H :=
  canonical_of_padded canonicalInput15063 canonicalOutput15063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15064 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput15064 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code662

theorem canonicalSound15064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15064.moment H = canonicalOutput15064.moment H :=
  canonical_of_padded canonicalInput15064 canonicalOutput15064 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15065 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 0, 3, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput15065 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code451

theorem canonicalSound15065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15065.moment H = canonicalOutput15065.moment H :=
  canonical_of_padded canonicalInput15065 canonicalOutput15065 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15066 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput15066 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node987⟩

theorem canonicalSound15066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15066.moment H = canonicalOutput15066.moment H :=
  canonical_of_padded canonicalInput15066 canonicalOutput15066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15067 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 1, 1], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput15067 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node687⟩

theorem canonicalSound15067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15067.moment H = canonicalOutput15067.moment H :=
  canonical_of_padded canonicalInput15067 canonicalOutput15067 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15068 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput15068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound15068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15068.moment H = canonicalOutput15068.moment H :=
  canonical_of_padded canonicalInput15068 canonicalOutput15068 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15069 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput15069 : ExponentCode := normalNode7666

theorem canonicalSound15069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15069.moment H = canonicalOutput15069.moment H :=
  canonical_of_padded canonicalInput15069 canonicalOutput15069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15070 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15070 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound15070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15070.moment H = canonicalOutput15070.moment H :=
  canonical_of_padded canonicalInput15070 canonicalOutput15070 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15071 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput15071 : ExponentCode := normalNode7667

theorem canonicalSound15071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15071.moment H = canonicalOutput15071.moment H :=
  canonical_of_padded canonicalInput15071 canonicalOutput15071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15072 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput15072 : ExponentCode := normalNode7667

theorem canonicalSound15072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15072.moment H = canonicalOutput15072.moment H :=
  canonical_of_padded canonicalInput15072 canonicalOutput15072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15073 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput15073 : ExponentCode := normalNode3917

theorem canonicalSound15073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15073.moment H = canonicalOutput15073.moment H :=
  canonical_of_padded canonicalInput15073 canonicalOutput15073 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15074 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput15074 : ExponentCode := normalNode4253

theorem canonicalSound15074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15074.moment H = canonicalOutput15074.moment H :=
  canonical_of_padded canonicalInput15074 canonicalOutput15074 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15075 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15075 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound15075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15075.moment H = canonicalOutput15075.moment H :=
  canonical_of_padded canonicalInput15075 canonicalOutput15075 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15076 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15076 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound15076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15076.moment H = canonicalOutput15076.moment H :=
  canonical_of_padded canonicalInput15076 canonicalOutput15076 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15077 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound15077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15077.moment H = canonicalOutput15077.moment H :=
  canonical_of_padded canonicalInput15077 canonicalOutput15077 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15078 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput15078 : ExponentCode := normalNode7669

theorem canonicalSound15078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15078.moment H = canonicalOutput15078.moment H :=
  canonical_of_padded canonicalInput15078 canonicalOutput15078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15079 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput15079 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code630

theorem canonicalSound15079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15079.moment H = canonicalOutput15079.moment H :=
  canonical_of_padded canonicalInput15079 canonicalOutput15079 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15080 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15080 : ExponentCode := normalNode5322

theorem canonicalSound15080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15080.moment H = canonicalOutput15080.moment H :=
  canonical_of_padded canonicalInput15080 canonicalOutput15080 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15081 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput15081 : ExponentCode := normalNode7670

theorem canonicalSound15081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15081.moment H = canonicalOutput15081.moment H :=
  canonical_of_padded canonicalInput15081 canonicalOutput15081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15082 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput15082 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound15082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15082.moment H = canonicalOutput15082.moment H :=
  canonical_of_padded canonicalInput15082 canonicalOutput15082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15083 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, 0, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15083 : ExponentCode := normalNode5636

theorem canonicalSound15083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15083.moment H = canonicalOutput15083.moment H :=
  canonical_of_padded canonicalInput15083 canonicalOutput15083 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15084 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, 0, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15084 : ExponentCode := normalNode5355

theorem canonicalSound15084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15084.moment H = canonicalOutput15084.moment H :=
  canonical_of_padded canonicalInput15084 canonicalOutput15084 (by decide) (by decide)
    ⟨false, true, canonicalPermutation40, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15085 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput15085 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound15085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15085.moment H = canonicalOutput15085.moment H :=
  canonical_of_padded canonicalInput15085 canonicalOutput15085 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15086 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput15086 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound15086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15086.moment H = canonicalOutput15086.moment H :=
  canonical_of_padded canonicalInput15086 canonicalOutput15086 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15087 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15087 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound15087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15087.moment H = canonicalOutput15087.moment H :=
  canonical_of_padded canonicalInput15087 canonicalOutput15087 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15088 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15088 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound15088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15088.moment H = canonicalOutput15088.moment H :=
  canonical_of_padded canonicalInput15088 canonicalOutput15088 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15089 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput15089 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩

theorem canonicalSound15089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15089.moment H = canonicalOutput15089.moment H :=
  canonical_of_padded canonicalInput15089 canonicalOutput15089 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15090 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 2, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput15090 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound15090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15090.moment H = canonicalOutput15090.moment H :=
  canonical_of_padded canonicalInput15090 canonicalOutput15090 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15091 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 3, -2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput15091 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound15091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15091.moment H = canonicalOutput15091.moment H :=
  canonical_of_padded canonicalInput15091 canonicalOutput15091 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15092 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput15092 : ExponentCode := normalNode7677

theorem canonicalSound15092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15092.moment H = canonicalOutput15092.moment H :=
  canonical_of_padded canonicalInput15092 canonicalOutput15092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15093 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput15093 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound15093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15093.moment H = canonicalOutput15093.moment H :=
  canonical_of_padded canonicalInput15093 canonicalOutput15093 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15094 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput15094 : ExponentCode := normalNode6872

theorem canonicalSound15094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15094.moment H = canonicalOutput15094.moment H :=
  canonical_of_padded canonicalInput15094 canonicalOutput15094 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15095 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput15095 : ExponentCode := normalNode7676

theorem canonicalSound15095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15095.moment H = canonicalOutput15095.moment H :=
  canonical_of_padded canonicalInput15095 canonicalOutput15095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15096 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15096 : ExponentCode := normalNode7685

theorem canonicalSound15096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15096.moment H = canonicalOutput15096.moment H :=
  canonical_of_padded canonicalInput15096 canonicalOutput15096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15097 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput15097 : ExponentCode := normalNode6874

theorem canonicalSound15097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15097.moment H = canonicalOutput15097.moment H :=
  canonical_of_padded canonicalInput15097 canonicalOutput15097 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15098 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput15098 : ExponentCode := normalNode6872

theorem canonicalSound15098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15098.moment H = canonicalOutput15098.moment H :=
  canonical_of_padded canonicalInput15098 canonicalOutput15098 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15099 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15099 : ExponentCode := normalNode7685

theorem canonicalSound15099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15099.moment H = canonicalOutput15099.moment H :=
  canonical_of_padded canonicalInput15099 canonicalOutput15099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15100 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput15100 : ExponentCode := normalNode7684

theorem canonicalSound15100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15100.moment H = canonicalOutput15100.moment H :=
  canonical_of_padded canonicalInput15100 canonicalOutput15100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15101 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15101 : ExponentCode := normalNode7684

theorem canonicalSound15101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15101.moment H = canonicalOutput15101.moment H :=
  canonical_of_padded canonicalInput15101 canonicalOutput15101 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15102 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15102 : ExponentCode := normalNode3912

theorem canonicalSound15102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15102.moment H = canonicalOutput15102.moment H :=
  canonical_of_padded canonicalInput15102 canonicalOutput15102 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15103 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput15103 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound15103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15103.moment H = canonicalOutput15103.moment H :=
  canonical_of_padded canonicalInput15103 canonicalOutput15103 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

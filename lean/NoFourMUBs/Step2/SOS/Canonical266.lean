import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17024 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput17024 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound17024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17024.moment H = canonicalOutput17024.moment H :=
  canonical_of_padded canonicalInput17024 canonicalOutput17024 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17025 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput17025 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound17025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17025.moment H = canonicalOutput17025.moment H :=
  canonical_of_padded canonicalInput17025 canonicalOutput17025 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17026 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 3, -3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput17026 : ExponentCode := normalNode6076

theorem canonicalSound17026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17026.moment H = canonicalOutput17026.moment H :=
  canonical_of_padded canonicalInput17026 canonicalOutput17026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17027 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput17027 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node491⟩

theorem canonicalSound17027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17027.moment H = canonicalOutput17027.moment H :=
  canonical_of_padded canonicalInput17027 canonicalOutput17027 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17028 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 4, -4], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17028 : ExponentCode := normalNode8876

theorem canonicalSound17028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17028.moment H = canonicalOutput17028.moment H :=
  canonical_of_padded canonicalInput17028 canonicalOutput17028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17029 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 2, -3, 2], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput17029 : ExponentCode := normalNode4854

theorem canonicalSound17029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17029.moment H = canonicalOutput17029.moment H :=
  canonical_of_padded canonicalInput17029 canonicalOutput17029 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17030 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, -3, 2], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput17030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node713⟩

theorem canonicalSound17030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17030.moment H = canonicalOutput17030.moment H :=
  canonical_of_padded canonicalInput17030 canonicalOutput17030 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17031 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, -3, 2], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput17031 : ExponentCode := normalNode9713

theorem canonicalSound17031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17031.moment H = canonicalOutput17031.moment H :=
  canonical_of_padded canonicalInput17031 canonicalOutput17031 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17032 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17032 : ExponentCode := normalNode5409

theorem canonicalSound17032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17032.moment H = canonicalOutput17032.moment H :=
  canonical_of_padded canonicalInput17032 canonicalOutput17032 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17033 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, -1, 0], ![1, -1, 4, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput17033 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code743

theorem canonicalSound17033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17033.moment H = canonicalOutput17033.moment H :=
  canonical_of_padded canonicalInput17033 canonicalOutput17033 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17034 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17034 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound17034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17034.moment H = canonicalOutput17034.moment H :=
  canonical_of_padded canonicalInput17034 canonicalOutput17034 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17035 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17035 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩

theorem canonicalSound17035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17035.moment H = canonicalOutput17035.moment H :=
  canonical_of_padded canonicalInput17035 canonicalOutput17035 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17036 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput17036 : ExponentCode := normalNode623

theorem canonicalSound17036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17036.moment H = canonicalOutput17036.moment H :=
  canonical_of_padded canonicalInput17036 canonicalOutput17036 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17037 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 2, 2, -3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput17037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1496⟩

theorem canonicalSound17037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17037.moment H = canonicalOutput17037.moment H :=
  canonical_of_padded canonicalInput17037 canonicalOutput17037 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17038 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, 2, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput17038 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1351⟩

theorem canonicalSound17038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17038.moment H = canonicalOutput17038.moment H :=
  canonical_of_padded canonicalInput17038 canonicalOutput17038 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17039 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, 2, -3], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput17039 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩

theorem canonicalSound17039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17039.moment H = canonicalOutput17039.moment H :=
  canonical_of_padded canonicalInput17039 canonicalOutput17039 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17040 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, 3, -4], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput17040 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code314

theorem canonicalSound17040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17040.moment H = canonicalOutput17040.moment H :=
  canonical_of_padded canonicalInput17040 canonicalOutput17040 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17041 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 2, 3, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput17041 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1026⟩

theorem canonicalSound17041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17041.moment H = canonicalOutput17041.moment H :=
  canonical_of_padded canonicalInput17041 canonicalOutput17041 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17042 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 3, -2, 0], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput17042 : ExponentCode := normalNode6668

theorem canonicalSound17042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17042.moment H = canonicalOutput17042.moment H :=
  canonical_of_padded canonicalInput17042 canonicalOutput17042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17043 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput17043 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound17043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17043.moment H = canonicalOutput17043.moment H :=
  canonical_of_padded canonicalInput17043 canonicalOutput17043 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17044 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput17044 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code931

theorem canonicalSound17044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17044.moment H = canonicalOutput17044.moment H :=
  canonical_of_padded canonicalInput17044 canonicalOutput17044 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17045 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput17045 : ExponentCode := normalNode7747

theorem canonicalSound17045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17045.moment H = canonicalOutput17045.moment H :=
  canonical_of_padded canonicalInput17045 canonicalOutput17045 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17046 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput17046 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code640

theorem canonicalSound17046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17046.moment H = canonicalOutput17046.moment H :=
  canonical_of_padded canonicalInput17046 canonicalOutput17046 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17047 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 3, -1, -1], ![1, -2, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput17047 : ExponentCode := normalNode6144

theorem canonicalSound17047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17047.moment H = canonicalOutput17047.moment H :=
  canonical_of_padded canonicalInput17047 canonicalOutput17047 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17048 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 3, -1, -1], ![1, -1, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput17048 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code181

theorem canonicalSound17048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17048.moment H = canonicalOutput17048.moment H :=
  canonical_of_padded canonicalInput17048 canonicalOutput17048 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17049 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 3, 2, -4], ![1, -2, 1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput17049 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code510

theorem canonicalSound17049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17049.moment H = canonicalOutput17049.moment H :=
  canonical_of_padded canonicalInput17049 canonicalOutput17049 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17050 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 3, 2, -4], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput17050 : ExponentCode := normalNode7939

theorem canonicalSound17050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17050.moment H = canonicalOutput17050.moment H :=
  canonical_of_padded canonicalInput17050 canonicalOutput17050 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17051 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 0, 2], ![0, 2, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput17051 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node773⟩

theorem canonicalSound17051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17051.moment H = canonicalOutput17051.moment H :=
  canonical_of_padded canonicalInput17051 canonicalOutput17051 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17052 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput17052 : ExponentCode := normalNode6121

theorem canonicalSound17052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17052.moment H = canonicalOutput17052.moment H :=
  canonical_of_padded canonicalInput17052 canonicalOutput17052 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17053 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput17053 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound17053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17053.moment H = canonicalOutput17053.moment H :=
  canonical_of_padded canonicalInput17053 canonicalOutput17053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17054 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput17054 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound17054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17054.moment H = canonicalOutput17054.moment H :=
  canonical_of_padded canonicalInput17054 canonicalOutput17054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17055 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput17055 : ExponentCode := normalNode6714

theorem canonicalSound17055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17055.moment H = canonicalOutput17055.moment H :=
  canonical_of_padded canonicalInput17055 canonicalOutput17055 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17056 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput17056 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound17056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17056.moment H = canonicalOutput17056.moment H :=
  canonical_of_padded canonicalInput17056 canonicalOutput17056 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17057 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput17057 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound17057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17057.moment H = canonicalOutput17057.moment H :=
  canonical_of_padded canonicalInput17057 canonicalOutput17057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17058 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput17058 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound17058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17058.moment H = canonicalOutput17058.moment H :=
  canonical_of_padded canonicalInput17058 canonicalOutput17058 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17059 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput17059 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1278⟩

theorem canonicalSound17059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17059.moment H = canonicalOutput17059.moment H :=
  canonical_of_padded canonicalInput17059 canonicalOutput17059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17060 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput17060 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound17060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17060.moment H = canonicalOutput17060.moment H :=
  canonical_of_padded canonicalInput17060 canonicalOutput17060 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17061 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 1, 1], ![1, 1, 1, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput17061 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound17061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17061.moment H = canonicalOutput17061.moment H :=
  canonical_of_padded canonicalInput17061 canonicalOutput17061 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17062 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput17062 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound17062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17062.moment H = canonicalOutput17062.moment H :=
  canonical_of_padded canonicalInput17062 canonicalOutput17062 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17063 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput17063 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound17063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17063.moment H = canonicalOutput17063.moment H :=
  canonical_of_padded canonicalInput17063 canonicalOutput17063 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17064 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput17064 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound17064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17064.moment H = canonicalOutput17064.moment H :=
  canonical_of_padded canonicalInput17064 canonicalOutput17064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17065 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput17065 : ExponentCode := normalNode7839

theorem canonicalSound17065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17065.moment H = canonicalOutput17065.moment H :=
  canonical_of_padded canonicalInput17065 canonicalOutput17065 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17066 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput17066 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound17066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17066.moment H = canonicalOutput17066.moment H :=
  canonical_of_padded canonicalInput17066 canonicalOutput17066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17067 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput17067 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound17067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17067.moment H = canonicalOutput17067.moment H :=
  canonical_of_padded canonicalInput17067 canonicalOutput17067 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17068 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput17068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1301⟩

theorem canonicalSound17068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17068.moment H = canonicalOutput17068.moment H :=
  canonical_of_padded canonicalInput17068 canonicalOutput17068 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput17069 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 2, 0], ![0, 3, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput17069 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound17069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17069.moment H = canonicalOutput17069.moment H :=
  canonical_of_padded canonicalInput17069 canonicalOutput17069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17070 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput17070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound17070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17070.moment H = canonicalOutput17070.moment H :=
  canonical_of_padded canonicalInput17070 canonicalOutput17070 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17071 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17071 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound17071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17071.moment H = canonicalOutput17071.moment H :=
  canonical_of_padded canonicalInput17071 canonicalOutput17071 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17072 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput17072 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound17072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17072.moment H = canonicalOutput17072.moment H :=
  canonical_of_padded canonicalInput17072 canonicalOutput17072 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17073 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput17073 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound17073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17073.moment H = canonicalOutput17073.moment H :=
  canonical_of_padded canonicalInput17073 canonicalOutput17073 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17074 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput17074 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound17074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17074.moment H = canonicalOutput17074.moment H :=
  canonical_of_padded canonicalInput17074 canonicalOutput17074 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17075 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![1, 1, -3, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput17075 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound17075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17075.moment H = canonicalOutput17075.moment H :=
  canonical_of_padded canonicalInput17075 canonicalOutput17075 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17076 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -2, 3, -1], ![1, 1, -2, 0], ![0, 2, -1, -1]]⟩

def canonicalOutput17076 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound17076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17076.moment H = canonicalOutput17076.moment H :=
  canonical_of_padded canonicalInput17076 canonicalOutput17076 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17077 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput17077 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound17077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17077.moment H = canonicalOutput17077.moment H :=
  canonical_of_padded canonicalInput17077 canonicalOutput17077 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17078 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -2, 3], ![0, 1, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput17078 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound17078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17078.moment H = canonicalOutput17078.moment H :=
  canonical_of_padded canonicalInput17078 canonicalOutput17078 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17079 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -2, 3], ![1, 1, 1, -3], ![0, 1, 1, -2]]⟩

def canonicalOutput17079 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound17079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17079.moment H = canonicalOutput17079.moment H :=
  canonical_of_padded canonicalInput17079 canonicalOutput17079 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17080 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput17080 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound17080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17080.moment H = canonicalOutput17080.moment H :=
  canonical_of_padded canonicalInput17080 canonicalOutput17080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17081 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput17081 : ExponentCode := normalNode6243

theorem canonicalSound17081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17081.moment H = canonicalOutput17081.moment H :=
  canonical_of_padded canonicalInput17081 canonicalOutput17081 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17082 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput17082 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound17082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17082.moment H = canonicalOutput17082.moment H :=
  canonical_of_padded canonicalInput17082 canonicalOutput17082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17083 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput17083 : ExponentCode := normalNode7119

theorem canonicalSound17083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17083.moment H = canonicalOutput17083.moment H :=
  canonical_of_padded canonicalInput17083 canonicalOutput17083 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17084 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput17084 : ExponentCode := normalNode9393

theorem canonicalSound17084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17084.moment H = canonicalOutput17084.moment H :=
  canonical_of_padded canonicalInput17084 canonicalOutput17084 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17085 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput17085 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1237⟩

theorem canonicalSound17085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17085.moment H = canonicalOutput17085.moment H :=
  canonical_of_padded canonicalInput17085 canonicalOutput17085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17086 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput17086 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound17086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17086.moment H = canonicalOutput17086.moment H :=
  canonical_of_padded canonicalInput17086 canonicalOutput17086 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17087 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput17087 : ExponentCode := normalNode7063

theorem canonicalSound17087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17087.moment H = canonicalOutput17087.moment H :=
  canonical_of_padded canonicalInput17087 canonicalOutput17087 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22208 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22208 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound22208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22208.moment H = canonicalOutput22208.moment H :=
  canonical_of_padded canonicalInput22208 canonicalOutput22208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput22209 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22209 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound22209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22209.moment H = canonicalOutput22209.moment H :=
  canonical_of_padded canonicalInput22209 canonicalOutput22209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput22210 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -3, 1, 1, 2], ![0, 2, -2, 1, -1], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput22210 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1370

theorem canonicalSound22210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22210.moment H = canonicalOutput22210.moment H :=
  canonical_of_padded canonicalInput22210 canonicalOutput22210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22211 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 1, -1], ![-1, -3, 1, 1, 2], ![2, 3, -2, -2, -1]]⟩

def canonicalOutput22211 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1387

theorem canonicalSound22211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22211.moment H = canonicalOutput22211.moment H :=
  canonical_of_padded canonicalInput22211 canonicalOutput22211 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22212 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 0, 1, 2], ![0, 1, 1, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput22212 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound22212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22212.moment H = canonicalOutput22212.moment H :=
  canonical_of_padded canonicalInput22212 canonicalOutput22212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22213 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 0, 1, 2], ![0, 2, -2, 0, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput22213 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound22213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22213.moment H = canonicalOutput22213.moment H :=
  canonical_of_padded canonicalInput22213 canonicalOutput22213 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22214 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 0, 1, 2], ![0, 3, -2, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput22214 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1369

theorem canonicalSound22214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22214.moment H = canonicalOutput22214.moment H :=
  canonical_of_padded canonicalInput22214 canonicalOutput22214 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22215 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 0, 1, 2], ![1, 1, -2, 1, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput22215 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound22215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22215.moment H = canonicalOutput22215.moment H :=
  canonical_of_padded canonicalInput22215 canonicalOutput22215 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22216 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 0, 2, 1], ![0, 0, 1, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput22216 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1239

theorem canonicalSound22216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22216.moment H = canonicalOutput22216.moment H :=
  canonical_of_padded canonicalInput22216 canonicalOutput22216 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22217 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 0, 2, 1], ![0, 1, 1, -3, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput22217 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1302

theorem canonicalSound22217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22217.moment H = canonicalOutput22217.moment H :=
  canonical_of_padded canonicalInput22217 canonicalOutput22217 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22218 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 1, 1, 1], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput22218 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound22218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22218.moment H = canonicalOutput22218.moment H :=
  canonical_of_padded canonicalInput22218 canonicalOutput22218 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22219 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 1, 1, 1], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput22219 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound22219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22219.moment H = canonicalOutput22219.moment H :=
  canonical_of_padded canonicalInput22219 canonicalOutput22219 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22220 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 1, 1, 1], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput22220 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound22220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22220.moment H = canonicalOutput22220.moment H :=
  canonical_of_padded canonicalInput22220 canonicalOutput22220 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22221 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 1, 1, 1], ![1, 1, -1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput22221 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound22221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22221.moment H = canonicalOutput22221.moment H :=
  canonical_of_padded canonicalInput22221 canonicalOutput22221 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22222 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 1, -1], ![-1, -2, 1, 1, 1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput22222 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1131⟩

theorem canonicalSound22222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22222.moment H = canonicalOutput22222.moment H :=
  canonical_of_padded canonicalInput22222 canonicalOutput22222 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22223 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, -1, -1, 4], ![1, -1, 1, 1, -2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput22223 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1297

theorem canonicalSound22223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22223.moment H = canonicalOutput22223.moment H :=
  canonical_of_padded canonicalInput22223 canonicalOutput22223 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22224 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, -1, 1, 2], ![-1, 3, -1, 0, -1], ![3, -2, 1, -2, 0]]⟩

def canonicalOutput22224 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1337

theorem canonicalSound22224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22224.moment H = canonicalOutput22224.moment H :=
  canonical_of_padded canonicalInput22224 canonicalOutput22224 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22225 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, -1, 1, 2], ![0, 2, -1, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput22225 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound22225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22225.moment H = canonicalOutput22225.moment H :=
  canonical_of_padded canonicalInput22225 canonicalOutput22225 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22226 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, -1, 2, 1], ![0, 2, -1, 0, -1], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput22226 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code960

theorem canonicalSound22226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22226.moment H = canonicalOutput22226.moment H :=
  canonical_of_padded canonicalInput22226 canonicalOutput22226 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22227 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, -1, 3, 0], ![0, 2, 1, -3, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput22227 : ExponentCode := normalNode6059

theorem canonicalSound22227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22227.moment H = canonicalOutput22227.moment H :=
  canonical_of_padded canonicalInput22227 canonicalOutput22227 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22228 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput22228 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound22228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22228.moment H = canonicalOutput22228.moment H :=
  canonical_of_padded canonicalInput22228 canonicalOutput22228 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22229 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, -1, 1, 1, 0], ![1, -1, -2, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput22229 : ExponentCode := normalNode7666

theorem canonicalSound22229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22229.moment H = canonicalOutput22229.moment H :=
  canonical_of_padded canonicalInput22229 canonicalOutput22229 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22230 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 0, -2, 1, 2], ![0, 2, 0, -2, 0], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput22230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound22230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22230.moment H = canonicalOutput22230.moment H :=
  canonical_of_padded canonicalInput22230 canonicalOutput22230 (by decide) (by decide)
    ⟨true, true, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22231 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 0, -2, 1, 2], ![0, 2, 0, 0, -2], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput22231 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code663

theorem canonicalSound22231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22231.moment H = canonicalOutput22231.moment H :=
  canonical_of_padded canonicalInput22231 canonicalOutput22231 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22232 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 0, -1, 2, 0], ![0, 2, -1, -1, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput22232 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩

theorem canonicalSound22232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22232.moment H = canonicalOutput22232.moment H :=
  canonical_of_padded canonicalInput22232 canonicalOutput22232 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22233 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -3, 1, 2], ![0, 2, 1, -2, -1], ![2, -3, 1, 0, 0]]⟩

def canonicalOutput22233 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1346

theorem canonicalSound22233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22233.moment H = canonicalOutput22233.moment H :=
  canonical_of_padded canonicalInput22233 canonicalOutput22233 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22234 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -2, 1, 1], ![0, -3, 1, 1, 1], ![2, 2, 0, -3, -1]]⟩

def canonicalOutput22234 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1337

theorem canonicalSound22234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22234.moment H = canonicalOutput22234.moment H :=
  canonical_of_padded canonicalInput22234 canonicalOutput22234 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22235 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -2, 1, 1], ![0, 1, 0, -2, 1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput22235 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound22235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22235.moment H = canonicalOutput22235.moment H :=
  canonical_of_padded canonicalInput22235 canonicalOutput22235 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22236 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -2, 1, 1], ![0, 1, 1, -3, 1], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput22236 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound22236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22236.moment H = canonicalOutput22236.moment H :=
  canonical_of_padded canonicalInput22236 canonicalOutput22236 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22237 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -1, 1, 0], ![0, -3, 1, 1, 1], ![2, 2, -1, -3, 0]]⟩

def canonicalOutput22237 : ExponentCode := normalNode7755

theorem canonicalSound22237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22237.moment H = canonicalOutput22237.moment H :=
  canonical_of_padded canonicalInput22237 canonicalOutput22237 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22238 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -1, 1, 0], ![0, 1, 1, -3, 1], ![2, -2, -1, 1, 0]]⟩

def canonicalOutput22238 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2514⟩

theorem canonicalSound22238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22238.moment H = canonicalOutput22238.moment H :=
  canonical_of_padded canonicalInput22238 canonicalOutput22238 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22239 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -1, 1, 0], ![1, -2, 1, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput22239 : ExponentCode := normalNode4396

theorem canonicalSound22239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22239.moment H = canonicalOutput22239.moment H :=
  canonical_of_padded canonicalInput22239 canonicalOutput22239 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22240 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 1, -1, 1, 0], ![1, 1, -1, -1, 0], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput22240 : ExponentCode := normalNode8863

theorem canonicalSound22240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22240.moment H = canonicalOutput22240.moment H :=
  canonical_of_padded canonicalInput22240 canonicalOutput22240 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22241 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -3, 1, 1], ![1, -2, 1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput22241 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1339

theorem canonicalSound22241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22241.moment H = canonicalOutput22241.moment H :=
  canonical_of_padded canonicalInput22241 canonicalOutput22241 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22242 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -2, 0, 1], ![-1, -2, 1, 1, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput22242 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1353

theorem canonicalSound22242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22242.moment H = canonicalOutput22242.moment H :=
  canonical_of_padded canonicalInput22242 canonicalOutput22242 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22243 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -2, 0, 1], ![0, -3, 1, 1, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput22243 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1364

theorem canonicalSound22243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22243.moment H = canonicalOutput22243.moment H :=
  canonical_of_padded canonicalInput22243 canonicalOutput22243 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22244 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -2, 1, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput22244 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1136⟩

theorem canonicalSound22244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22244.moment H = canonicalOutput22244.moment H :=
  canonical_of_padded canonicalInput22244 canonicalOutput22244 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22245 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -1, -1, 1], ![0, -1, -1, 3, -1], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput22245 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1282

theorem canonicalSound22245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22245.moment H = canonicalOutput22245.moment H :=
  canonical_of_padded canonicalInput22245 canonicalOutput22245 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22246 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -1, 0, 0], ![0, -3, 1, 1, 1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput22246 : ExponentCode := normalNode3519

theorem canonicalSound22246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22246.moment H = canonicalOutput22246.moment H :=
  canonical_of_padded canonicalInput22246 canonicalOutput22246 (by decide) (by decide)
    ⟨true, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22247 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -1, 0, 0], ![0, 1, 1, -3, 1], ![2, -3, -1, 2, 0]]⟩

def canonicalOutput22247 : ExponentCode := normalNode3536

theorem canonicalSound22247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22247.moment H = canonicalOutput22247.moment H :=
  canonical_of_padded canonicalInput22247 canonicalOutput22247 (by decide) (by decide)
    ⟨true, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22248 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, -1, 0, 0], ![1, -3, 1, 1, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput22248 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩

theorem canonicalSound22248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22248.moment H = canonicalOutput22248.moment H :=
  canonical_of_padded canonicalInput22248 canonicalOutput22248 (by decide) (by decide)
    ⟨true, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22249 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![-1, 2, 0, 0, -1], ![0, -1, -2, 1, 2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput22249 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound22249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22249.moment H = canonicalOutput22249.moment H :=
  canonical_of_padded canonicalInput22249 canonicalOutput22249 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22250 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -3, 1, 1, 1], ![-1, 2, -2, 1, 0], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput22250 : ExponentCode := normalNode7668

theorem canonicalSound22250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22250.moment H = canonicalOutput22250.moment H :=
  canonical_of_padded canonicalInput22250 canonicalOutput22250 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22251 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -3, 1, 1, 1], ![0, 2, -2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput22251 : ExponentCode := normalNode7669

theorem canonicalSound22251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22251.moment H = canonicalOutput22251.moment H :=
  canonical_of_padded canonicalInput22251 canonicalOutput22251 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22252 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 1, -1], ![0, -3, 1, 1, 1], ![1, 3, -2, -2, 0]]⟩

def canonicalOutput22252 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1132⟩

theorem canonicalSound22252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22252.moment H = canonicalOutput22252.moment H :=
  canonical_of_padded canonicalInput22252 canonicalOutput22252 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22253 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 0, 2], ![-1, 1, -2, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput22253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code968

theorem canonicalSound22253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22253.moment H = canonicalOutput22253.moment H :=
  canonical_of_padded canonicalInput22253 canonicalOutput22253 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22254 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 0, 2], ![-1, 2, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput22254 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound22254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22254.moment H = canonicalOutput22254.moment H :=
  canonical_of_padded canonicalInput22254 canonicalOutput22254 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22255 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![-2, 1, 1, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput22255 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code960

theorem canonicalSound22255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22255.moment H = canonicalOutput22255.moment H :=
  canonical_of_padded canonicalInput22255 canonicalOutput22255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22256 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![-1, 1, 1, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput22256 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound22256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22256.moment H = canonicalOutput22256.moment H :=
  canonical_of_padded canonicalInput22256 canonicalOutput22256 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22257 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![-1, 2, -2, 0, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput22257 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code886

theorem canonicalSound22257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22257.moment H = canonicalOutput22257.moment H :=
  canonical_of_padded canonicalInput22257 canonicalOutput22257 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22258 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![-1, 3, -2, 0, 0], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput22258 : ExponentCode := normalNode3520

theorem canonicalSound22258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22258.moment H = canonicalOutput22258.moment H :=
  canonical_of_padded canonicalInput22258 canonicalOutput22258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22259 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![0, 1, -2, 1, 0], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput22259 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound22259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22259.moment H = canonicalOutput22259.moment H :=
  canonical_of_padded canonicalInput22259 canonicalOutput22259 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22260 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![0, 1, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput22260 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound22260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22260.moment H = canonicalOutput22260.moment H :=
  canonical_of_padded canonicalInput22260 canonicalOutput22260 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22261 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput22261 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound22261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22261.moment H = canonicalOutput22261.moment H :=
  canonical_of_padded canonicalInput22261 canonicalOutput22261 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22262 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![0, 3, -2, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput22262 : ExponentCode := normalNode3485

theorem canonicalSound22262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22262.moment H = canonicalOutput22262.moment H :=
  canonical_of_padded canonicalInput22262 canonicalOutput22262 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22263 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 1, 1], ![1, 1, -2, 1, -1], ![0, 1, 1, -3, 1]]⟩

def canonicalOutput22263 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound22263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22263.moment H = canonicalOutput22263.moment H :=
  canonical_of_padded canonicalInput22263 canonicalOutput22263 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22264 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 2, 0], ![-1, 0, 1, -2, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput22264 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code663

theorem canonicalSound22264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22264.moment H = canonicalOutput22264.moment H :=
  canonical_of_padded canonicalInput22264 canonicalOutput22264 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22265 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 2, 0], ![-1, 1, 1, -3, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput22265 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code416

theorem canonicalSound22265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22265.moment H = canonicalOutput22265.moment H :=
  canonical_of_padded canonicalInput22265 canonicalOutput22265 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22266 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 2, 0], ![0, 0, 1, -2, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput22266 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound22266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22266.moment H = canonicalOutput22266.moment H :=
  canonical_of_padded canonicalInput22266 canonicalOutput22266 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22267 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 0, 2, 0], ![0, 1, 1, -3, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput22267 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound22267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22267.moment H = canonicalOutput22267.moment H :=
  canonical_of_padded canonicalInput22267 canonicalOutput22267 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22268 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![-1, 1, -2, 0, 2], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput22268 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound22268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22268.moment H = canonicalOutput22268.moment H :=
  canonical_of_padded canonicalInput22268 canonicalOutput22268 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22269 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![-1, 2, -1, 0, 0], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput22269 : ExponentCode := normalNode4647

theorem canonicalSound22269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22269.moment H = canonicalOutput22269.moment H :=
  canonical_of_padded canonicalInput22269 canonicalOutput22269 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22270 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![0, 0, -2, 0, 2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput22270 : ExponentCode := normalNode3877

theorem canonicalSound22270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22270.moment H = canonicalOutput22270.moment H :=
  canonical_of_padded canonicalInput22270 canonicalOutput22270 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22271 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput22271 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound22271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22271.moment H = canonicalOutput22271.moment H :=
  canonical_of_padded canonicalInput22271 canonicalOutput22271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

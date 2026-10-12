import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13248 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13248 : ExponentCode := normalNode10044

theorem canonicalSound13248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13248.moment H = canonicalOutput13248.moment H :=
  canonical_of_padded canonicalInput13248 canonicalOutput13248 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput13249 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13249 : ExponentCode := normalNode8943

theorem canonicalSound13249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13249.moment H = canonicalOutput13249.moment H :=
  canonical_of_padded canonicalInput13249 canonicalOutput13249 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13250 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput13250 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1799⟩

theorem canonicalSound13250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13250.moment H = canonicalOutput13250.moment H :=
  canonical_of_padded canonicalInput13250 canonicalOutput13250 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13251 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13251 : ExponentCode := normalNode3901

theorem canonicalSound13251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13251.moment H = canonicalOutput13251.moment H :=
  canonical_of_padded canonicalInput13251 canonicalOutput13251 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13252 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13252 : ExponentCode := normalNode8599

theorem canonicalSound13252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13252.moment H = canonicalOutput13252.moment H :=
  canonical_of_padded canonicalInput13252 canonicalOutput13252 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput13253 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput13253 : ExponentCode := normalNode924

theorem canonicalSound13253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13253.moment H = canonicalOutput13253.moment H :=
  canonical_of_padded canonicalInput13253 canonicalOutput13253 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13254 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13254 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1769⟩

theorem canonicalSound13254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13254.moment H = canonicalOutput13254.moment H :=
  canonical_of_padded canonicalInput13254 canonicalOutput13254 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13255 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13255 : ExponentCode := normalNode8333

theorem canonicalSound13255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13255.moment H = canonicalOutput13255.moment H :=
  canonical_of_padded canonicalInput13255 canonicalOutput13255 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13256 : ExponentCode := ⟨5, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13256 : ExponentCode := normalNode8336

theorem canonicalSound13256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13256.moment H = canonicalOutput13256.moment H :=
  canonical_of_padded canonicalInput13256 canonicalOutput13256 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13257 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput13257 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1782⟩

theorem canonicalSound13257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13257.moment H = canonicalOutput13257.moment H :=
  canonical_of_padded canonicalInput13257 canonicalOutput13257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13258 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput13258 : ExponentCode := normalNode3982

theorem canonicalSound13258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13258.moment H = canonicalOutput13258.moment H :=
  canonical_of_padded canonicalInput13258 canonicalOutput13258 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13259 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13259 : ExponentCode := normalNode8948

theorem canonicalSound13259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13259.moment H = canonicalOutput13259.moment H :=
  canonical_of_padded canonicalInput13259 canonicalOutput13259 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13260 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 2, -1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13260 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound13260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13260.moment H = canonicalOutput13260.moment H :=
  canonical_of_padded canonicalInput13260 canonicalOutput13260 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13261 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![1, 1, -2, 1, -1], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput13261 : ExponentCode := normalNode3982

theorem canonicalSound13261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13261.moment H = canonicalOutput13261.moment H :=
  canonical_of_padded canonicalInput13261 canonicalOutput13261 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13262 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput13262 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1782⟩

theorem canonicalSound13262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13262.moment H = canonicalOutput13262.moment H :=
  canonical_of_padded canonicalInput13262 canonicalOutput13262 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13263 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 1, -3], ![0, 1, -1, -2, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput13263 : ExponentCode := normalNode6189

theorem canonicalSound13263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13263.moment H = canonicalOutput13263.moment H :=
  canonical_of_padded canonicalInput13263 canonicalOutput13263 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13264 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13264 : ExponentCode := normalNode3786

theorem canonicalSound13264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13264.moment H = canonicalOutput13264.moment H :=
  canonical_of_padded canonicalInput13264 canonicalOutput13264 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13265 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 0, 2, 1, -3], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13265 : ExponentCode := normalNode3902

theorem canonicalSound13265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13265.moment H = canonicalOutput13265.moment H :=
  canonical_of_padded canonicalInput13265 canonicalOutput13265 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13266 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput13266 : ExponentCode := normalNode4058

theorem canonicalSound13266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13266.moment H = canonicalOutput13266.moment H :=
  canonical_of_padded canonicalInput13266 canonicalOutput13266 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13267 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput13267 : ExponentCode := normalNode4486

theorem canonicalSound13267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13267.moment H = canonicalOutput13267.moment H :=
  canonical_of_padded canonicalInput13267 canonicalOutput13267 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13268 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13268 : ExponentCode := normalNode2411

theorem canonicalSound13268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13268.moment H = canonicalOutput13268.moment H :=
  canonical_of_padded canonicalInput13268 canonicalOutput13268 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13269 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13269 : ExponentCode := normalNode2408

theorem canonicalSound13269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13269.moment H = canonicalOutput13269.moment H :=
  canonical_of_padded canonicalInput13269 canonicalOutput13269 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13270 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13270 : ExponentCode := normalNode4521

theorem canonicalSound13270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13270.moment H = canonicalOutput13270.moment H :=
  canonical_of_padded canonicalInput13270 canonicalOutput13270 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13271 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 2, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13271 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2050⟩

theorem canonicalSound13271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13271.moment H = canonicalOutput13271.moment H :=
  canonical_of_padded canonicalInput13271 canonicalOutput13271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13272 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13272 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound13272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13272.moment H = canonicalOutput13272.moment H :=
  canonical_of_padded canonicalInput13272 canonicalOutput13272 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13273 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13273 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound13273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13273.moment H = canonicalOutput13273.moment H :=
  canonical_of_padded canonicalInput13273 canonicalOutput13273 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13274 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput13274 : ExponentCode := normalNode6190

theorem canonicalSound13274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13274.moment H = canonicalOutput13274.moment H :=
  canonical_of_padded canonicalInput13274 canonicalOutput13274 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13275 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13275 : ExponentCode := normalNode932

theorem canonicalSound13275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13275.moment H = canonicalOutput13275.moment H :=
  canonical_of_padded canonicalInput13275 canonicalOutput13275 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13276 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13276 : ExponentCode := normalNode930

theorem canonicalSound13276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13276.moment H = canonicalOutput13276.moment H :=
  canonical_of_padded canonicalInput13276 canonicalOutput13276 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13277 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, -2, 2], ![0, 1, 2, 0, -3], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13277 : ExponentCode := normalNode6191

theorem canonicalSound13277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13277.moment H = canonicalOutput13277.moment H :=
  canonical_of_padded canonicalInput13277 canonicalOutput13277 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13278 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, -1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13278 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound13278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13278.moment H = canonicalOutput13278.moment H :=
  canonical_of_padded canonicalInput13278 canonicalOutput13278 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13279 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13279 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound13279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13279.moment H = canonicalOutput13279.moment H :=
  canonical_of_padded canonicalInput13279 canonicalOutput13279 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13280 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13280 : ExponentCode := normalNode8992

theorem canonicalSound13280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13280.moment H = canonicalOutput13280.moment H :=
  canonical_of_padded canonicalInput13280 canonicalOutput13280 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13281 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13281 : ExponentCode := normalNode9079

theorem canonicalSound13281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13281.moment H = canonicalOutput13281.moment H :=
  canonical_of_padded canonicalInput13281 canonicalOutput13281 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13282 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13282 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound13282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13282.moment H = canonicalOutput13282.moment H :=
  canonical_of_padded canonicalInput13282 canonicalOutput13282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13283 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13283 : ExponentCode := normalNode8968

theorem canonicalSound13283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13283.moment H = canonicalOutput13283.moment H :=
  canonical_of_padded canonicalInput13283 canonicalOutput13283 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13284 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13284 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound13284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13284.moment H = canonicalOutput13284.moment H :=
  canonical_of_padded canonicalInput13284 canonicalOutput13284 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13285 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput13285 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound13285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13285.moment H = canonicalOutput13285.moment H :=
  canonical_of_padded canonicalInput13285 canonicalOutput13285 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13286 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 2, 0, -3], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13286 : ExponentCode := normalNode6188

theorem canonicalSound13286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13286.moment H = canonicalOutput13286.moment H :=
  canonical_of_padded canonicalInput13286 canonicalOutput13286 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13287 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 0, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13287 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound13287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13287.moment H = canonicalOutput13287.moment H :=
  canonical_of_padded canonicalInput13287 canonicalOutput13287 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13288 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13288 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound13288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13288.moment H = canonicalOutput13288.moment H :=
  canonical_of_padded canonicalInput13288 canonicalOutput13288 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13289 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 0, -2, 1], ![0, 1, 1, 1, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput13289 : ExponentCode := normalNode10530

theorem canonicalSound13289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13289.moment H = canonicalOutput13289.moment H :=
  canonical_of_padded canonicalInput13289 canonicalOutput13289 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13290 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 0, -2, 1], ![0, 1, 2, 1, -4], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13290 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1991⟩

theorem canonicalSound13290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13290.moment H = canonicalOutput13290.moment H :=
  canonical_of_padded canonicalInput13290 canonicalOutput13290 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13291 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13291 : ExponentCode := normalNode893

theorem canonicalSound13291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13291.moment H = canonicalOutput13291.moment H :=
  canonical_of_padded canonicalInput13291 canonicalOutput13291 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13292 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput13292 : ExponentCode := normalNode4090

theorem canonicalSound13292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13292.moment H = canonicalOutput13292.moment H :=
  canonical_of_padded canonicalInput13292 canonicalOutput13292 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13293 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13293 : ExponentCode := normalNode8966

theorem canonicalSound13293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13293.moment H = canonicalOutput13293.moment H :=
  canonical_of_padded canonicalInput13293 canonicalOutput13293 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13294 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput13294 : ExponentCode := normalNode3759

theorem canonicalSound13294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13294.moment H = canonicalOutput13294.moment H :=
  canonical_of_padded canonicalInput13294 canonicalOutput13294 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13295 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13295 : ExponentCode := normalNode4518

theorem canonicalSound13295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13295.moment H = canonicalOutput13295.moment H :=
  canonical_of_padded canonicalInput13295 canonicalOutput13295 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13296 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13296 : ExponentCode := normalNode2380

theorem canonicalSound13296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13296.moment H = canonicalOutput13296.moment H :=
  canonical_of_padded canonicalInput13296 canonicalOutput13296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13297 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 1, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13297 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound13297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13297.moment H = canonicalOutput13297.moment H :=
  canonical_of_padded canonicalInput13297 canonicalOutput13297 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13298 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 2, -2, -1], ![0, 1, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput13298 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2050⟩

theorem canonicalSound13298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13298.moment H = canonicalOutput13298.moment H :=
  canonical_of_padded canonicalInput13298 canonicalOutput13298 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13299 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![0, 1, 2, 0, -3], ![0, 1, -1, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13299 : ExponentCode := normalNode6191

theorem canonicalSound13299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13299.moment H = canonicalOutput13299.moment H :=
  canonical_of_padded canonicalInput13299 canonicalOutput13299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13300 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![1, 0, -2, 1, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13300 : ExponentCode := normalNode3759

theorem canonicalSound13300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13300.moment H = canonicalOutput13300.moment H :=
  canonical_of_padded canonicalInput13300 canonicalOutput13300 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13301 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![1, 0, 1, -2, 0], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput13301 : ExponentCode := normalNode3888

theorem canonicalSound13301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13301.moment H = canonicalOutput13301.moment H :=
  canonical_of_padded canonicalInput13301 canonicalOutput13301 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13302 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![1, 0, 1, 0, -2], ![0, 1, -1, 1, -1], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput13302 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound13302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13302.moment H = canonicalOutput13302.moment H :=
  canonical_of_padded canonicalInput13302 canonicalOutput13302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13303 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![1, 0, 2, -2, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput13303 : ExponentCode := normalNode4058

theorem canonicalSound13303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13303.moment H = canonicalOutput13303.moment H :=
  canonical_of_padded canonicalInput13303 canonicalOutput13303 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13304 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 1, 2], ![1, 0, 2, 0, -3], ![0, 1, -1, -2, 2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput13304 : ExponentCode := normalNode6190

theorem canonicalSound13304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13304.moment H = canonicalOutput13304.moment H :=
  canonical_of_padded canonicalInput13304 canonicalOutput13304 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13305 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![-2, 0, 2, -1, 1], ![3, 2, -2, -1, -2]]⟩

def canonicalOutput13305 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node534⟩

theorem canonicalSound13305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13305.moment H = canonicalOutput13305.moment H :=
  canonical_of_padded canonicalInput13305 canonicalOutput13305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13306 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![-1, 0, 2, -2, 1], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput13306 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound13306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13306.moment H = canonicalOutput13306.moment H :=
  canonical_of_padded canonicalInput13306 canonicalOutput13306 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13307 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![-1, 1, 2, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput13307 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node624⟩

theorem canonicalSound13307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13307.moment H = canonicalOutput13307.moment H :=
  canonical_of_padded canonicalInput13307 canonicalOutput13307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13308 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![-1, 1, 2, -1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput13308 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound13308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13308.moment H = canonicalOutput13308.moment H :=
  canonical_of_padded canonicalInput13308 canonicalOutput13308 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13309 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![-1, 1, 2, 0, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput13309 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound13309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13309.moment H = canonicalOutput13309.moment H :=
  canonical_of_padded canonicalInput13309 canonicalOutput13309 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13310 : ExponentCode := ⟨3, 5, ![![-1, -2, 0, 2, 1], ![-1, 1, 3, -1, -2], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput13310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound13310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13310.moment H = canonicalOutput13310.moment H :=
  canonical_of_padded canonicalInput13310 canonicalOutput13310 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13311 : ExponentCode := ⟨4, 5, ![![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 0, 2, -1, -1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput13311 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2234⟩

theorem canonicalSound13311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13311.moment H = canonicalOutput13311.moment H :=
  canonical_of_padded canonicalInput13311 canonicalOutput13311 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

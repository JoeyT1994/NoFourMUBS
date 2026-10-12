import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14272 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput14272 : ExponentCode := normalNode7209

theorem canonicalSound14272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14272.moment H = canonicalOutput14272.moment H :=
  canonical_of_padded canonicalInput14272 canonicalOutput14272 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14273 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput14273 : ExponentCode := normalNode6317

theorem canonicalSound14273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14273.moment H = canonicalOutput14273.moment H :=
  canonical_of_padded canonicalInput14273 canonicalOutput14273 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14274 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput14274 : ExponentCode := normalNode9598

theorem canonicalSound14274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14274.moment H = canonicalOutput14274.moment H :=
  canonical_of_padded canonicalInput14274 canonicalOutput14274 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14275 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput14275 : ExponentCode := normalNode6317

theorem canonicalSound14275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14275.moment H = canonicalOutput14275.moment H :=
  canonical_of_padded canonicalInput14275 canonicalOutput14275 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14276 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput14276 : ExponentCode := normalNode7209

theorem canonicalSound14276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14276.moment H = canonicalOutput14276.moment H :=
  canonical_of_padded canonicalInput14276 canonicalOutput14276 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14277 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput14277 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node239⟩

theorem canonicalSound14277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14277.moment H = canonicalOutput14277.moment H :=
  canonical_of_padded canonicalInput14277 canonicalOutput14277 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14278 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14278 : ExponentCode := normalNode7169

theorem canonicalSound14278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14278.moment H = canonicalOutput14278.moment H :=
  canonical_of_padded canonicalInput14278 canonicalOutput14278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14279 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩

theorem canonicalSound14279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14279.moment H = canonicalOutput14279.moment H :=
  canonical_of_padded canonicalInput14279 canonicalOutput14279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14280 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14280 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound14280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14280.moment H = canonicalOutput14280.moment H :=
  canonical_of_padded canonicalInput14280 canonicalOutput14280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14281 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput14281 : ExponentCode := normalNode6317

theorem canonicalSound14281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14281.moment H = canonicalOutput14281.moment H :=
  canonical_of_padded canonicalInput14281 canonicalOutput14281 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14282 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14282 : ExponentCode := normalNode7185

theorem canonicalSound14282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14282.moment H = canonicalOutput14282.moment H :=
  canonical_of_padded canonicalInput14282 canonicalOutput14282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14283 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![0, 0, 1, -1]]⟩

def canonicalOutput14283 : ExponentCode := normalNode7214

theorem canonicalSound14283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14283.moment H = canonicalOutput14283.moment H :=
  canonical_of_padded canonicalInput14283 canonicalOutput14283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14284 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 1, -2], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput14284 : ExponentCode := normalNode7227

theorem canonicalSound14284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14284.moment H = canonicalOutput14284.moment H :=
  canonical_of_padded canonicalInput14284 canonicalOutput14284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14285 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 2, -3], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14285 : ExponentCode := normalNode7213

theorem canonicalSound14285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14285.moment H = canonicalOutput14285.moment H :=
  canonical_of_padded canonicalInput14285 canonicalOutput14285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14286 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput14286 : ExponentCode := normalNode7226

theorem canonicalSound14286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14286.moment H = canonicalOutput14286.moment H :=
  canonical_of_padded canonicalInput14286 canonicalOutput14286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14287 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 2, -3], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput14287 : ExponentCode := normalNode7228

theorem canonicalSound14287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14287.moment H = canonicalOutput14287.moment H :=
  canonical_of_padded canonicalInput14287 canonicalOutput14287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14288 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 2, -3], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput14288 : ExponentCode := normalNode7226

theorem canonicalSound14288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14288.moment H = canonicalOutput14288.moment H :=
  canonical_of_padded canonicalInput14288 canonicalOutput14288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14289 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput14289 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node239⟩

theorem canonicalSound14289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14289.moment H = canonicalOutput14289.moment H :=
  canonical_of_padded canonicalInput14289 canonicalOutput14289 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14290 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 2, 0, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput14290 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound14290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14290.moment H = canonicalOutput14290.moment H :=
  canonical_of_padded canonicalInput14290 canonicalOutput14290 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14291 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 2, 1, -3], ![1, -1, 2, -2]]⟩

def canonicalOutput14291 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound14291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14291.moment H = canonicalOutput14291.moment H :=
  canonical_of_padded canonicalInput14291 canonicalOutput14291 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14292 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 2, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput14292 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound14292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14292.moment H = canonicalOutput14292.moment H :=
  canonical_of_padded canonicalInput14292 canonicalOutput14292 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14293 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![1, -1, 2, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput14293 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound14293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14293.moment H = canonicalOutput14293.moment H :=
  canonical_of_padded canonicalInput14293 canonicalOutput14293 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14294 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![1, -1, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput14294 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound14294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14294.moment H = canonicalOutput14294.moment H :=
  canonical_of_padded canonicalInput14294 canonicalOutput14294 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14295 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![1, 0, 1, -2], ![0, 1, 2, -3]]⟩

def canonicalOutput14295 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound14295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14295.moment H = canonicalOutput14295.moment H :=
  canonical_of_padded canonicalInput14295 canonicalOutput14295 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14296 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 0, 4], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14296 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2401⟩

theorem canonicalSound14296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14296.moment H = canonicalOutput14296.moment H :=
  canonical_of_padded canonicalInput14296 canonicalOutput14296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14297 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput14297 : ExponentCode := normalNode4502

theorem canonicalSound14297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14297.moment H = canonicalOutput14297.moment H :=
  canonical_of_padded canonicalInput14297 canonicalOutput14297 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14298 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, -2, 2], ![0, 1, 1, 1, -3], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14298 : ExponentCode := normalNode4502

theorem canonicalSound14298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14298.moment H = canonicalOutput14298.moment H :=
  canonical_of_padded canonicalInput14298 canonicalOutput14298 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14299 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14299 : ExponentCode := normalNode10724

theorem canonicalSound14299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14299.moment H = canonicalOutput14299.moment H :=
  canonical_of_padded canonicalInput14299 canonicalOutput14299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14300 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 0, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14300 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node560⟩

theorem canonicalSound14300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14300.moment H = canonicalOutput14300.moment H :=
  canonical_of_padded canonicalInput14300 canonicalOutput14300 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14301 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14301 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2429⟩

theorem canonicalSound14301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14301.moment H = canonicalOutput14301.moment H :=
  canonical_of_padded canonicalInput14301 canonicalOutput14301 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14302 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14302 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2553⟩

theorem canonicalSound14302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14302.moment H = canonicalOutput14302.moment H :=
  canonical_of_padded canonicalInput14302 canonicalOutput14302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14303 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14303 : ExponentCode := normalNode6777

theorem canonicalSound14303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14303.moment H = canonicalOutput14303.moment H :=
  canonical_of_padded canonicalInput14303 canonicalOutput14303 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14304 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14304 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2559⟩

theorem canonicalSound14304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14304.moment H = canonicalOutput14304.moment H :=
  canonical_of_padded canonicalInput14304 canonicalOutput14304 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14305 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14305 : ExponentCode := normalNode6777

theorem canonicalSound14305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14305.moment H = canonicalOutput14305.moment H :=
  canonical_of_padded canonicalInput14305 canonicalOutput14305 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14306 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14306 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1699⟩

theorem canonicalSound14306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14306.moment H = canonicalOutput14306.moment H :=
  canonical_of_padded canonicalInput14306 canonicalOutput14306 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14307 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 0, 2, -2], ![0, 0, 3, -2, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14307 : ExponentCode := normalNode3539

theorem canonicalSound14307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14307.moment H = canonicalOutput14307.moment H :=
  canonical_of_padded canonicalInput14307 canonicalOutput14307 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14308 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput14308 : ExponentCode := normalNode9070

theorem canonicalSound14308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14308.moment H = canonicalOutput14308.moment H :=
  canonical_of_padded canonicalInput14308 canonicalOutput14308 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14309 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14309 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound14309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14309.moment H = canonicalOutput14309.moment H :=
  canonical_of_padded canonicalInput14309 canonicalOutput14309 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14310 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput14310 : ExponentCode := normalNode10572

theorem canonicalSound14310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14310.moment H = canonicalOutput14310.moment H :=
  canonical_of_padded canonicalInput14310 canonicalOutput14310 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14311 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14311 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound14311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14311.moment H = canonicalOutput14311.moment H :=
  canonical_of_padded canonicalInput14311 canonicalOutput14311 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14312 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14312 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound14312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14312.moment H = canonicalOutput14312.moment H :=
  canonical_of_padded canonicalInput14312 canonicalOutput14312 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14313 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14313 : ExponentCode := normalNode10572

theorem canonicalSound14313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14313.moment H = canonicalOutput14313.moment H :=
  canonical_of_padded canonicalInput14313 canonicalOutput14313 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14314 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14314 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2594⟩

theorem canonicalSound14314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14314.moment H = canonicalOutput14314.moment H :=
  canonical_of_padded canonicalInput14314 canonicalOutput14314 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14315 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14315 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2595⟩

theorem canonicalSound14315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14315.moment H = canonicalOutput14315.moment H :=
  canonical_of_padded canonicalInput14315 canonicalOutput14315 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14316 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14316 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2700⟩

theorem canonicalSound14316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14316.moment H = canonicalOutput14316.moment H :=
  canonical_of_padded canonicalInput14316 canonicalOutput14316 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14317 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14317 : ExponentCode := normalNode8940

theorem canonicalSound14317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14317.moment H = canonicalOutput14317.moment H :=
  canonical_of_padded canonicalInput14317 canonicalOutput14317 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14318 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput14318 : ExponentCode := normalNode10268

theorem canonicalSound14318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14318.moment H = canonicalOutput14318.moment H :=
  canonical_of_padded canonicalInput14318 canonicalOutput14318 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14319 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14319 : ExponentCode := normalNode9893

theorem canonicalSound14319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14319.moment H = canonicalOutput14319.moment H :=
  canonical_of_padded canonicalInput14319 canonicalOutput14319 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14320 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14320 : ExponentCode := normalNode6773

theorem canonicalSound14320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14320.moment H = canonicalOutput14320.moment H :=
  canonical_of_padded canonicalInput14320 canonicalOutput14320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14321 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14321 : ExponentCode := normalNode6773

theorem canonicalSound14321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14321.moment H = canonicalOutput14321.moment H :=
  canonical_of_padded canonicalInput14321 canonicalOutput14321 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14322 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 1, -2], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14322 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1724⟩

theorem canonicalSound14322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14322.moment H = canonicalOutput14322.moment H :=
  canonical_of_padded canonicalInput14322 canonicalOutput14322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14323 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 1, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14323 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1673⟩

theorem canonicalSound14323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14323.moment H = canonicalOutput14323.moment H :=
  canonical_of_padded canonicalInput14323 canonicalOutput14323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14324 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14324 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound14324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14324.moment H = canonicalOutput14324.moment H :=
  canonical_of_padded canonicalInput14324 canonicalOutput14324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14325 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14325 : ExponentCode := normalNode6774

theorem canonicalSound14325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14325.moment H = canonicalOutput14325.moment H :=
  canonical_of_padded canonicalInput14325 canonicalOutput14325 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14326 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14326 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound14326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14326.moment H = canonicalOutput14326.moment H :=
  canonical_of_padded canonicalInput14326 canonicalOutput14326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14327 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14327 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2426⟩

theorem canonicalSound14327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14327.moment H = canonicalOutput14327.moment H :=
  canonical_of_padded canonicalInput14327 canonicalOutput14327 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14328 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14328 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1736⟩

theorem canonicalSound14328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14328.moment H = canonicalOutput14328.moment H :=
  canonical_of_padded canonicalInput14328 canonicalOutput14328 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14329 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14329 : ExponentCode := normalNode2360

theorem canonicalSound14329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14329.moment H = canonicalOutput14329.moment H :=
  canonical_of_padded canonicalInput14329 canonicalOutput14329 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14330 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14330 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2619⟩

theorem canonicalSound14330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14330.moment H = canonicalOutput14330.moment H :=
  canonical_of_padded canonicalInput14330 canonicalOutput14330 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14331 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14331 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1676⟩

theorem canonicalSound14331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14331.moment H = canonicalOutput14331.moment H :=
  canonical_of_padded canonicalInput14331 canonicalOutput14331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14332 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14332 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩

theorem canonicalSound14332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14332.moment H = canonicalOutput14332.moment H :=
  canonical_of_padded canonicalInput14332 canonicalOutput14332 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14333 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 1, 3], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14333 : ExponentCode := normalNode6774

theorem canonicalSound14333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14333.moment H = canonicalOutput14333.moment H :=
  canonical_of_padded canonicalInput14333 canonicalOutput14333 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14334 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14334 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1516⟩

theorem canonicalSound14334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14334.moment H = canonicalOutput14334.moment H :=
  canonical_of_padded canonicalInput14334 canonicalOutput14334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14335 : ExponentCode := ⟨4, 5, ![![-1, -1, -2, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14335 : ExponentCode := normalNode6975

theorem canonicalSound14335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14335.moment H = canonicalOutput14335.moment H :=
  canonical_of_padded canonicalInput14335 canonicalOutput14335 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

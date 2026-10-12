import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2240 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput2240 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound2240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2240.moment H = canonicalOutput2240.moment H :=
  canonical_of_padded canonicalInput2240 canonicalOutput2240 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2241 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput2241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node407⟩

theorem canonicalSound2241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2241.moment H = canonicalOutput2241.moment H :=
  canonical_of_padded canonicalInput2241 canonicalOutput2241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2242 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2242 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code162

theorem canonicalSound2242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2242.moment H = canonicalOutput2242.moment H :=
  canonical_of_padded canonicalInput2242 canonicalOutput2242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2243 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput2243 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code284

theorem canonicalSound2243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2243.moment H = canonicalOutput2243.moment H :=
  canonical_of_padded canonicalInput2243 canonicalOutput2243 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2244 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput2244 : ExponentCode := normalNode9859

theorem canonicalSound2244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2244.moment H = canonicalOutput2244.moment H :=
  canonical_of_padded canonicalInput2244 canonicalOutput2244 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2245 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput2245 : ExponentCode := normalNode6450

theorem canonicalSound2245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2245.moment H = canonicalOutput2245.moment H :=
  canonical_of_padded canonicalInput2245 canonicalOutput2245 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2246 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput2246 : ExponentCode := normalNode7904

theorem canonicalSound2246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2246.moment H = canonicalOutput2246.moment H :=
  canonical_of_padded canonicalInput2246 canonicalOutput2246 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2247 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![0, 1, -4, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput2247 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code6

theorem canonicalSound2247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2247.moment H = canonicalOutput2247.moment H :=
  canonical_of_padded canonicalInput2247 canonicalOutput2247 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput2248 : ExponentCode := ⟨5, 4, ![![-2, -2, 3, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2248 : ExponentCode := normalNode710

theorem canonicalSound2248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2248.moment H = canonicalOutput2248.moment H :=
  canonical_of_padded canonicalInput2248 canonicalOutput2248 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2249 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2249 : ExponentCode := normalNode7120

theorem canonicalSound2249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2249.moment H = canonicalOutput2249.moment H :=
  canonical_of_padded canonicalInput2249 canonicalOutput2249 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2250 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2250 : ExponentCode := normalNode7119

theorem canonicalSound2250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2250.moment H = canonicalOutput2250.moment H :=
  canonical_of_padded canonicalInput2250 canonicalOutput2250 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2251 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput2251 : ExponentCode := normalNode6969

theorem canonicalSound2251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2251.moment H = canonicalOutput2251.moment H :=
  canonical_of_padded canonicalInput2251 canonicalOutput2251 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2252 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput2252 : ExponentCode := normalNode6931

theorem canonicalSound2252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2252.moment H = canonicalOutput2252.moment H :=
  canonical_of_padded canonicalInput2252 canonicalOutput2252 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2253 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![0, 1, 2, -3], ![2, 1, -5, 2]]⟩

def canonicalOutput2253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound2253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2253.moment H = canonicalOutput2253.moment H :=
  canonical_of_padded canonicalInput2253 canonicalOutput2253 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2254 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![0, 2, 1, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput2254 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound2254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2254.moment H = canonicalOutput2254.moment H :=
  canonical_of_padded canonicalInput2254 canonicalOutput2254 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2255 : ExponentCode := ⟨4, 4, ![![-2, -2, 3, 1], ![0, 3, -1, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput2255 : ExponentCode := normalNode7108

theorem canonicalSound2255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2255.moment H = canonicalOutput2255.moment H :=
  canonical_of_padded canonicalInput2255 canonicalOutput2255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2256 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![0, 3, 0, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput2256 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code73

theorem canonicalSound2256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2256.moment H = canonicalOutput2256.moment H :=
  canonical_of_padded canonicalInput2256 canonicalOutput2256 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2257 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![0, 4, -1, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput2257 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code11

theorem canonicalSound2257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2257.moment H = canonicalOutput2257.moment H :=
  canonical_of_padded canonicalInput2257 canonicalOutput2257 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput2258 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![1, -1, 2, -2], ![1, 3, -5, 1]]⟩

def canonicalOutput2258 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound2258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2258.moment H = canonicalOutput2258.moment H :=
  canonical_of_padded canonicalInput2258 canonicalOutput2258 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2259 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![1, 1, 1, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput2259 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound2259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2259.moment H = canonicalOutput2259.moment H :=
  canonical_of_padded canonicalInput2259 canonicalOutput2259 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2260 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![2, 0, 1, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput2260 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound2260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2260.moment H = canonicalOutput2260.moment H :=
  canonical_of_padded canonicalInput2260 canonicalOutput2260 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2261 : ExponentCode := ⟨3, 4, ![![-2, -2, 3, 1], ![3, -1, 0, -2], ![-1, 3, -3, 1]]⟩

def canonicalOutput2261 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound2261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2261.moment H = canonicalOutput2261.moment H :=
  canonical_of_padded canonicalInput2261 canonicalOutput2261 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput2262 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 0, 1], ![0, 3, -3], ![1, -1, 0], ![2, 0, -2]]⟩

def canonicalOutput2262 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node326⟩

theorem canonicalSound2262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2262.moment H = canonicalOutput2262.moment H :=
  canonical_of_padded canonicalInput2262 canonicalOutput2262 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2263 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 0, 1], ![0, 3, -3], ![1, 0, -1], ![2, -1, -1]]⟩

def canonicalOutput2263 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node335⟩

theorem canonicalSound2263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2263.moment H = canonicalOutput2263.moment H :=
  canonical_of_padded canonicalInput2263 canonicalOutput2263 (by decide) (by decide)
    ⟨false, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2264 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 0, 1], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput2264 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node306⟩

theorem canonicalSound2264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2264.moment H = canonicalOutput2264.moment H :=
  canonical_of_padded canonicalInput2264 canonicalOutput2264 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2265 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![-1, 0, 1], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput2265 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound2265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2265.moment H = canonicalOutput2265.moment H :=
  canonical_of_padded canonicalInput2265 canonicalOutput2265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2266 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput2266 : ExponentCode := normalNode969

theorem canonicalSound2266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2266.moment H = canonicalOutput2266.moment H :=
  canonical_of_padded canonicalInput2266 canonicalOutput2266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2267 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 2, -1], ![0, 0, 0], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput2267 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound2267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2267.moment H = canonicalOutput2267.moment H :=
  canonical_of_padded canonicalInput2267 canonicalOutput2267 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2268 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 3, -2], ![1, -2, 1], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput2268 : ExponentCode := normalNode978

theorem canonicalSound2268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2268.moment H = canonicalOutput2268.moment H :=
  canonical_of_padded canonicalInput2268 canonicalOutput2268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2269 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![-1, 4, -3], ![1, -1, 0], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput2269 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node428⟩

theorem canonicalSound2269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2269.moment H = canonicalOutput2269.moment H :=
  canonical_of_padded canonicalInput2269 canonicalOutput2269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2270 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, -2, 2], ![0, 1, -1], ![2, 3, -5]]⟩

def canonicalOutput2270 : ExponentCode := normalNode337

theorem canonicalSound2270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2270.moment H = canonicalOutput2270.moment H :=
  canonical_of_padded canonicalInput2270 canonicalOutput2270 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2271 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -2, 2], ![0, 3, -3], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput2271 : ExponentCode := normalNode990

theorem canonicalSound2271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2271.moment H = canonicalOutput2271.moment H :=
  canonical_of_padded canonicalInput2271 canonicalOutput2271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2272 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, -2, 2], ![1, 3, -4], ![1, 1, -2]]⟩

def canonicalOutput2272 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound2272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2272.moment H = canonicalOutput2272.moment H :=
  canonical_of_padded canonicalInput2272 canonicalOutput2272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2273 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, -2, 2], ![1, 4, -5], ![1, 0, -1]]⟩

def canonicalOutput2273 : ExponentCode := normalNode992

theorem canonicalSound2273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2273.moment H = canonicalOutput2273.moment H :=
  canonical_of_padded canonicalInput2273 canonicalOutput2273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2274 : ExponentCode := ⟨3, 3, ![![-2, -2, 4], ![0, -2, 2], ![2, 4, -6]]⟩

def canonicalOutput2274 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code95

theorem canonicalSound2274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2274.moment H = canonicalOutput2274.moment H :=
  canonical_of_padded canonicalInput2274 canonicalOutput2274 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2275 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![-1, 1, 0], ![1, 1, -2], ![2, 1, -3]]⟩

def canonicalOutput2275 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node418⟩

theorem canonicalSound2275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2275.moment H = canonicalOutput2275.moment H :=
  canonical_of_padded canonicalInput2275 canonicalOutput2275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2276 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![-1, 2, -1], ![1, -1, 0], ![2, 2, -4]]⟩

def canonicalOutput2276 : ExponentCode := normalNode967

theorem canonicalSound2276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2276.moment H = canonicalOutput2276.moment H :=
  canonical_of_padded canonicalInput2276 canonicalOutput2276 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2277 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![-1, 2, -1], ![1, 2, -3], ![2, -1, -1]]⟩

def canonicalOutput2277 : ExponentCode := normalNode974

theorem canonicalSound2277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2277.moment H = canonicalOutput2277.moment H :=
  canonical_of_padded canonicalInput2277 canonicalOutput2277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2278 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![-1, 4, -3], ![1, -1, 0], ![2, 0, -2]]⟩

def canonicalOutput2278 : ExponentCode := normalNode980

theorem canonicalSound2278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2278.moment H = canonicalOutput2278.moment H :=
  canonical_of_padded canonicalInput2278 canonicalOutput2278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2279 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![-1, 4, -3], ![1, 0, -1], ![2, -1, -1]]⟩

def canonicalOutput2279 : ExponentCode := normalNode981

theorem canonicalSound2279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2279.moment H = canonicalOutput2279.moment H :=
  canonical_of_padded canonicalInput2279 canonicalOutput2279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2280 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 0, 0], ![0, 1, -1], ![2, 2, -4]]⟩

def canonicalOutput2280 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound2280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2280.moment H = canonicalOutput2280.moment H :=
  canonical_of_padded canonicalInput2280 canonicalOutput2280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2281 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 0, 0], ![0, 2, -2], ![2, 1, -3]]⟩

def canonicalOutput2281 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound2281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2281.moment H = canonicalOutput2281.moment H :=
  canonical_of_padded canonicalInput2281 canonicalOutput2281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2282 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput2282 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound2282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2282.moment H = canonicalOutput2282.moment H :=
  canonical_of_padded canonicalInput2282 canonicalOutput2282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2283 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 0, 0], ![1, 1, -2], ![1, 2, -3]]⟩

def canonicalOutput2283 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound2283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2283.moment H = canonicalOutput2283.moment H :=
  canonical_of_padded canonicalInput2283 canonicalOutput2283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2284 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![2, 2, -4]]⟩

def canonicalOutput2284 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound2284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2284.moment H = canonicalOutput2284.moment H :=
  canonical_of_padded canonicalInput2284 canonicalOutput2284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2285 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 1, -1], ![1, 2, -3], ![1, 0, -1]]⟩

def canonicalOutput2285 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node432⟩

theorem canonicalSound2285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2285.moment H = canonicalOutput2285.moment H :=
  canonical_of_padded canonicalInput2285 canonicalOutput2285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2286 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 3, -3], ![0, 0, 0], ![2, 0, -2]]⟩

def canonicalOutput2286 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node141⟩

theorem canonicalSound2286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2286.moment H = canonicalOutput2286.moment H :=
  canonical_of_padded canonicalInput2286 canonicalOutput2286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2287 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 3, -3], ![0, 1, -1], ![2, -1, -1]]⟩

def canonicalOutput2287 : ExponentCode := normalNode997

theorem canonicalSound2287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2287.moment H = canonicalOutput2287.moment H :=
  canonical_of_padded canonicalInput2287 canonicalOutput2287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2288 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![0, 4, -4], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput2288 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node436⟩

theorem canonicalSound2288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2288.moment H = canonicalOutput2288.moment H :=
  canonical_of_padded canonicalInput2288 canonicalOutput2288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2289 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![1, -1, 0], ![0, 1, -1], ![1, 3, -4]]⟩

def canonicalOutput2289 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node431⟩

theorem canonicalSound2289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2289.moment H = canonicalOutput2289.moment H :=
  canonical_of_padded canonicalInput2289 canonicalOutput2289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2290 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![1, -1, 0], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput2290 : ExponentCode := normalNode1000

theorem canonicalSound2290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2290.moment H = canonicalOutput2290.moment H :=
  canonical_of_padded canonicalInput2290 canonicalOutput2290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2291 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![0, 4, -4]]⟩

def canonicalOutput2291 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node436⟩

theorem canonicalSound2291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2291.moment H = canonicalOutput2291.moment H :=
  canonical_of_padded canonicalInput2291 canonicalOutput2291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2292 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![0, 3, -3]]⟩

def canonicalOutput2292 : ExponentCode := normalNode1001

theorem canonicalSound2292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2292.moment H = canonicalOutput2292.moment H :=
  canonical_of_padded canonicalInput2292 canonicalOutput2292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2293 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, 0, 0], ![0, 3, -3], ![2, -1, -1]]⟩

def canonicalOutput2293 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound2293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2293.moment H = canonicalOutput2293.moment H :=
  canonical_of_padded canonicalInput2293 canonicalOutput2293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2294 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 0, 0], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput2294 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSound2294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2294.moment H = canonicalOutput2294.moment H :=
  canonical_of_padded canonicalInput2294 canonicalOutput2294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2295 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 1, -1], ![-1, 1, 0], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput2295 : ExponentCode := normalNode969

theorem canonicalSound2295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2295.moment H = canonicalOutput2295.moment H :=
  canonical_of_padded canonicalInput2295 canonicalOutput2295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2296 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 1, -1], ![0, 1, -1], ![0, -1, 1], ![2, 1, -3]]⟩

def canonicalOutput2296 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node429⟩

theorem canonicalSound2296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2296.moment H = canonicalOutput2296.moment H :=
  canonical_of_padded canonicalInput2296 canonicalOutput2296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2297 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 1, -1], ![0, 2, -2], ![0, 1, -1], ![2, -2, 0]]⟩

def canonicalOutput2297 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node438⟩

theorem canonicalSound2297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2297.moment H = canonicalOutput2297.moment H :=
  canonical_of_padded canonicalInput2297 canonicalOutput2297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2298 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 1, -1], ![0, 4, -4], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput2298 : ExponentCode := normalNode1008

theorem canonicalSound2298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2298.moment H = canonicalOutput2298.moment H :=
  canonical_of_padded canonicalInput2298 canonicalOutput2298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2299 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 1, -1], ![1, -1, 0], ![0, 0, 0], ![1, 2, -3]]⟩

def canonicalOutput2299 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node149⟩

theorem canonicalSound2299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2299.moment H = canonicalOutput2299.moment H :=
  canonical_of_padded canonicalInput2299 canonicalOutput2299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2300 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![0, 3, -3]]⟩

def canonicalOutput2300 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound2300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2300.moment H = canonicalOutput2300.moment H :=
  canonical_of_padded canonicalInput2300 canonicalOutput2300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2301 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 2, -2], ![0, 1, -1], ![0, 1, -1], ![2, -2, 0]]⟩

def canonicalOutput2301 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node438⟩

theorem canonicalSound2301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2301.moment H = canonicalOutput2301.moment H :=
  canonical_of_padded canonicalInput2301 canonicalOutput2301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2302 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 2, -2], ![0, 1, -1], ![0, 2, -2], ![2, -3, 1]]⟩

def canonicalOutput2302 : ExponentCode := normalNode1007

theorem canonicalSound2302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2302.moment H = canonicalOutput2302.moment H :=
  canonical_of_padded canonicalInput2302 canonicalOutput2302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2303 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 2, -2], ![0, 3, -3], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput2303 : ExponentCode := normalNode1010

theorem canonicalSound2303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2303.moment H = canonicalOutput2303.moment H :=
  canonical_of_padded canonicalInput2303 canonicalOutput2303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

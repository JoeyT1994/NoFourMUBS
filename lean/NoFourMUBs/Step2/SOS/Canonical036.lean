import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2304 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, 2, -2], ![1, 2, -3], ![1, -2, 1]]⟩

def canonicalOutput2304 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound2304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2304.moment H = canonicalOutput2304.moment H :=
  canonical_of_padded canonicalInput2304 canonicalOutput2304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2305 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 3, -3], ![0, 0, 0], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput2305 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound2305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2305.moment H = canonicalOutput2305.moment H :=
  canonical_of_padded canonicalInput2305 canonicalOutput2305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2306 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, 3, -3], ![0, 0, 0], ![2, -1, -1]]⟩

def canonicalOutput2306 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound2306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2306.moment H = canonicalOutput2306.moment H :=
  canonical_of_padded canonicalInput2306 canonicalOutput2306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2307 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, 3, -3], ![0, 2, -2], ![2, -3, 1]]⟩

def canonicalOutput2307 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code239

theorem canonicalSound2307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2307.moment H = canonicalOutput2307.moment H :=
  canonical_of_padded canonicalInput2307 canonicalOutput2307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2308 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 3, -3], ![1, -1, 0], ![0, 0, 0], ![1, 0, -1]]⟩

def canonicalOutput2308 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound2308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2308.moment H = canonicalOutput2308.moment H :=
  canonical_of_padded canonicalInput2308 canonicalOutput2308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2309 : ExponentCode := ⟨5, 3, ![![-2, -2, 4], ![0, 3, -3], ![1, -1, 0], ![1, -1, 0], ![0, 1, -1]]⟩

def canonicalOutput2309 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound2309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2309.moment H = canonicalOutput2309.moment H :=
  canonical_of_padded canonicalInput2309 canonicalOutput2309 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2310 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![0, 5, -5], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput2310 : ExponentCode := normalNode1011

theorem canonicalSound2310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2310.moment H = canonicalOutput2310.moment H :=
  canonical_of_padded canonicalInput2310 canonicalOutput2310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2311 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![1, -2, 1], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput2311 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound2311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2311.moment H = canonicalOutput2311.moment H :=
  canonical_of_padded canonicalInput2311 canonicalOutput2311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2312 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![1, -2, 1], ![0, 3, -3], ![1, 1, -2]]⟩

def canonicalOutput2312 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound2312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2312.moment H = canonicalOutput2312.moment H :=
  canonical_of_padded canonicalInput2312 canonicalOutput2312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2313 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![1, -2, 1], ![0, 4, -4], ![1, 0, -1]]⟩

def canonicalOutput2313 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound2313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2313.moment H = canonicalOutput2313.moment H :=
  canonical_of_padded canonicalInput2313 canonicalOutput2313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2314 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![1, -1, 0], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput2314 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound2314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2314.moment H = canonicalOutput2314.moment H :=
  canonical_of_padded canonicalInput2314 canonicalOutput2314 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2315 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![1, -1, 0], ![1, -1, 0], ![0, 4, -4]]⟩

def canonicalOutput2315 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSound2315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2315.moment H = canonicalOutput2315.moment H :=
  canonical_of_padded canonicalInput2315 canonicalOutput2315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2316 : ExponentCode := ⟨4, 3, ![![-2, -2, 4], ![1, 1, -2], ![0, 3, -3], ![1, -2, 1]]⟩

def canonicalOutput2316 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound2316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2316.moment H = canonicalOutput2316.moment H :=
  canonical_of_padded canonicalInput2316 canonicalOutput2316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2317 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput2317 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1446⟩

theorem canonicalSound2317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2317.moment H = canonicalOutput2317.moment H :=
  canonical_of_padded canonicalInput2317 canonicalOutput2317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2318 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2318 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1451⟩

theorem canonicalSound2318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2318.moment H = canonicalOutput2318.moment H :=
  canonical_of_padded canonicalInput2318 canonicalOutput2318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2319 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2319 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1439⟩

theorem canonicalSound2319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2319.moment H = canonicalOutput2319.moment H :=
  canonical_of_padded canonicalInput2319 canonicalOutput2319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2320 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2320 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1444⟩

theorem canonicalSound2320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2320.moment H = canonicalOutput2320.moment H :=
  canonical_of_padded canonicalInput2320 canonicalOutput2320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2321 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2321 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1452⟩

theorem canonicalSound2321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2321.moment H = canonicalOutput2321.moment H :=
  canonical_of_padded canonicalInput2321 canonicalOutput2321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2322 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2322 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1447⟩

theorem canonicalSound2322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2322.moment H = canonicalOutput2322.moment H :=
  canonical_of_padded canonicalInput2322 canonicalOutput2322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2323 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2323 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1453⟩

theorem canonicalSound2323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2323.moment H = canonicalOutput2323.moment H :=
  canonical_of_padded canonicalInput2323 canonicalOutput2323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2324 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput2324 : ExponentCode := normalNode7220

theorem canonicalSound2324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2324.moment H = canonicalOutput2324.moment H :=
  canonical_of_padded canonicalInput2324 canonicalOutput2324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2325 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput2325 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node391⟩

theorem canonicalSound2325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2325.moment H = canonicalOutput2325.moment H :=
  canonical_of_padded canonicalInput2325 canonicalOutput2325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2326 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2326 : ExponentCode := normalNode10358

theorem canonicalSound2326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2326.moment H = canonicalOutput2326.moment H :=
  canonical_of_padded canonicalInput2326 canonicalOutput2326 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2327 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput2327 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩

theorem canonicalSound2327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2327.moment H = canonicalOutput2327.moment H :=
  canonical_of_padded canonicalInput2327 canonicalOutput2327 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2328 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2328 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node392⟩

theorem canonicalSound2328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2328.moment H = canonicalOutput2328.moment H :=
  canonical_of_padded canonicalInput2328 canonicalOutput2328 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2329 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 1, 1, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput2329 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code252

theorem canonicalSound2329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2329.moment H = canonicalOutput2329.moment H :=
  canonical_of_padded canonicalInput2329 canonicalOutput2329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2330 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 2, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2330 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code251

theorem canonicalSound2330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2330.moment H = canonicalOutput2330.moment H :=
  canonical_of_padded canonicalInput2330 canonicalOutput2330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2331 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 2, 0, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2331 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩

theorem canonicalSound2331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2331.moment H = canonicalOutput2331.moment H :=
  canonical_of_padded canonicalInput2331 canonicalOutput2331 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2332 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2332 : ExponentCode := normalNode1063

theorem canonicalSound2332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2332.moment H = canonicalOutput2332.moment H :=
  canonical_of_padded canonicalInput2332 canonicalOutput2332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2333 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput2333 : ExponentCode := normalNode6297

theorem canonicalSound2333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2333.moment H = canonicalOutput2333.moment H :=
  canonical_of_padded canonicalInput2333 canonicalOutput2333 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2334 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput2334 : ExponentCode := normalNode8900

theorem canonicalSound2334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2334.moment H = canonicalOutput2334.moment H :=
  canonical_of_padded canonicalInput2334 canonicalOutput2334 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2335 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2335 : ExponentCode := normalNode6296

theorem canonicalSound2335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2335.moment H = canonicalOutput2335.moment H :=
  canonical_of_padded canonicalInput2335 canonicalOutput2335 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2336 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code255

theorem canonicalSound2336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2336.moment H = canonicalOutput2336.moment H :=
  canonical_of_padded canonicalInput2336 canonicalOutput2336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2337 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 2, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2337 : ExponentCode := normalNode6296

theorem canonicalSound2337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2337.moment H = canonicalOutput2337.moment H :=
  canonical_of_padded canonicalInput2337 canonicalOutput2337 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2338 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2338 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound2338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2338.moment H = canonicalOutput2338.moment H :=
  canonical_of_padded canonicalInput2338 canonicalOutput2338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput2339 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2339 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node755⟩

theorem canonicalSound2339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2339.moment H = canonicalOutput2339.moment H :=
  canonical_of_padded canonicalInput2339 canonicalOutput2339 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2340 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput2340 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node240⟩

theorem canonicalSound2340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2340.moment H = canonicalOutput2340.moment H :=
  canonical_of_padded canonicalInput2340 canonicalOutput2340 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2341 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput2341 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound2341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2341.moment H = canonicalOutput2341.moment H :=
  canonical_of_padded canonicalInput2341 canonicalOutput2341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2342 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput2342 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node238⟩

theorem canonicalSound2342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2342.moment H = canonicalOutput2342.moment H :=
  canonical_of_padded canonicalInput2342 canonicalOutput2342 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2343 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 0, 0], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput2343 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound2343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2343.moment H = canonicalOutput2343.moment H :=
  canonical_of_padded canonicalInput2343 canonicalOutput2343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2344 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput2344 : ExponentCode := normalNode1044

theorem canonicalSound2344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2344.moment H = canonicalOutput2344.moment H :=
  canonical_of_padded canonicalInput2344 canonicalOutput2344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2345 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2345 : ExponentCode := normalNode1045

theorem canonicalSound2345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2345.moment H = canonicalOutput2345.moment H :=
  canonical_of_padded canonicalInput2345 canonicalOutput2345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2346 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput2346 : ExponentCode := normalNode1046

theorem canonicalSound2346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2346.moment H = canonicalOutput2346.moment H :=
  canonical_of_padded canonicalInput2346 canonicalOutput2346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2347 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2347 : ExponentCode := normalNode1048

theorem canonicalSound2347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2347.moment H = canonicalOutput2347.moment H :=
  canonical_of_padded canonicalInput2347 canonicalOutput2347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2348 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2348 : ExponentCode := normalNode1049

theorem canonicalSound2348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2348.moment H = canonicalOutput2348.moment H :=
  canonical_of_padded canonicalInput2348 canonicalOutput2348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2349 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2349 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound2349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2349.moment H = canonicalOutput2349.moment H :=
  canonical_of_padded canonicalInput2349 canonicalOutput2349 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2350 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2350 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node750⟩

theorem canonicalSound2350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2350.moment H = canonicalOutput2350.moment H :=
  canonical_of_padded canonicalInput2350 canonicalOutput2350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2351 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput2351 : ExponentCode := normalNode6300

theorem canonicalSound2351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2351.moment H = canonicalOutput2351.moment H :=
  canonical_of_padded canonicalInput2351 canonicalOutput2351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2352 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2352 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2386⟩

theorem canonicalSound2352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2352.moment H = canonicalOutput2352.moment H :=
  canonical_of_padded canonicalInput2352 canonicalOutput2352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2353 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput2353 : ExponentCode := normalNode6304

theorem canonicalSound2353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2353.moment H = canonicalOutput2353.moment H :=
  canonical_of_padded canonicalInput2353 canonicalOutput2353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2354 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2354 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1448⟩

theorem canonicalSound2354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2354.moment H = canonicalOutput2354.moment H :=
  canonical_of_padded canonicalInput2354 canonicalOutput2354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2355 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput2355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1453⟩

theorem canonicalSound2355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2355.moment H = canonicalOutput2355.moment H :=
  canonical_of_padded canonicalInput2355 canonicalOutput2355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2356 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2356 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2385⟩

theorem canonicalSound2356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2356.moment H = canonicalOutput2356.moment H :=
  canonical_of_padded canonicalInput2356 canonicalOutput2356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2357 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2357 : ExponentCode := normalNode6303

theorem canonicalSound2357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2357.moment H = canonicalOutput2357.moment H :=
  canonical_of_padded canonicalInput2357 canonicalOutput2357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2358 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2358 : ExponentCode := normalNode6303

theorem canonicalSound2358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2358.moment H = canonicalOutput2358.moment H :=
  canonical_of_padded canonicalInput2358 canonicalOutput2358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2359 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2359 : ExponentCode := normalNode6307

theorem canonicalSound2359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2359.moment H = canonicalOutput2359.moment H :=
  canonical_of_padded canonicalInput2359 canonicalOutput2359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2360 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2360 : ExponentCode := normalNode6308

theorem canonicalSound2360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2360.moment H = canonicalOutput2360.moment H :=
  canonical_of_padded canonicalInput2360 canonicalOutput2360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2361 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2361 : ExponentCode := normalNode6305

theorem canonicalSound2361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2361.moment H = canonicalOutput2361.moment H :=
  canonical_of_padded canonicalInput2361 canonicalOutput2361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2362 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2362 : ExponentCode := normalNode6316

theorem canonicalSound2362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2362.moment H = canonicalOutput2362.moment H :=
  canonical_of_padded canonicalInput2362 canonicalOutput2362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2363 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput2363 : ExponentCode := normalNode6309

theorem canonicalSound2363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2363.moment H = canonicalOutput2363.moment H :=
  canonical_of_padded canonicalInput2363 canonicalOutput2363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2364 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput2364 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1440⟩

theorem canonicalSound2364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2364.moment H = canonicalOutput2364.moment H :=
  canonical_of_padded canonicalInput2364 canonicalOutput2364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2365 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2365 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1445⟩

theorem canonicalSound2365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2365.moment H = canonicalOutput2365.moment H :=
  canonical_of_padded canonicalInput2365 canonicalOutput2365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2366 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2366 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1443⟩

theorem canonicalSound2366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2366.moment H = canonicalOutput2366.moment H :=
  canonical_of_padded canonicalInput2366 canonicalOutput2366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2367 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2367 : ExponentCode := normalNode371

theorem canonicalSound2367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2367.moment H = canonicalOutput2367.moment H :=
  canonical_of_padded canonicalInput2367 canonicalOutput2367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

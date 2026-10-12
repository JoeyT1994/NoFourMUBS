import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2368 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2368 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2387⟩

theorem canonicalSound2368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2368.moment H = canonicalOutput2368.moment H :=
  canonical_of_padded canonicalInput2368 canonicalOutput2368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2369 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2369 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2387⟩

theorem canonicalSound2369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2369.moment H = canonicalOutput2369.moment H :=
  canonical_of_padded canonicalInput2369 canonicalOutput2369 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2370 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound2370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2370.moment H = canonicalOutput2370.moment H :=
  canonical_of_padded canonicalInput2370 canonicalOutput2370 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2371 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2371 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1452⟩

theorem canonicalSound2371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2371.moment H = canonicalOutput2371.moment H :=
  canonical_of_padded canonicalInput2371 canonicalOutput2371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2372 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2372 : ExponentCode := normalNode6313

theorem canonicalSound2372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2372.moment H = canonicalOutput2372.moment H :=
  canonical_of_padded canonicalInput2372 canonicalOutput2372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2373 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2373 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2385⟩

theorem canonicalSound2373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2373.moment H = canonicalOutput2373.moment H :=
  canonical_of_padded canonicalInput2373 canonicalOutput2373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2374 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2374 : ExponentCode := normalNode6312

theorem canonicalSound2374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2374.moment H = canonicalOutput2374.moment H :=
  canonical_of_padded canonicalInput2374 canonicalOutput2374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2375 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput2375 : ExponentCode := normalNode1098

theorem canonicalSound2375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2375.moment H = canonicalOutput2375.moment H :=
  canonical_of_padded canonicalInput2375 canonicalOutput2375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2376 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput2376 : ExponentCode := normalNode7219

theorem canonicalSound2376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2376.moment H = canonicalOutput2376.moment H :=
  canonical_of_padded canonicalInput2376 canonicalOutput2376 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2377 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2377 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1449⟩

theorem canonicalSound2377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2377.moment H = canonicalOutput2377.moment H :=
  canonical_of_padded canonicalInput2377 canonicalOutput2377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2378 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput2378 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node753⟩

theorem canonicalSound2378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2378.moment H = canonicalOutput2378.moment H :=
  canonical_of_padded canonicalInput2378 canonicalOutput2378 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2379 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2379 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩

theorem canonicalSound2379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2379.moment H = canonicalOutput2379.moment H :=
  canonical_of_padded canonicalInput2379 canonicalOutput2379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2380 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput2380 : ExponentCode := normalNode1099

theorem canonicalSound2380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2380.moment H = canonicalOutput2380.moment H :=
  canonical_of_padded canonicalInput2380 canonicalOutput2380 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2381 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput2381 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩

theorem canonicalSound2381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2381.moment H = canonicalOutput2381.moment H :=
  canonical_of_padded canonicalInput2381 canonicalOutput2381 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2382 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 2, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput2382 : ExponentCode := normalNode9590

theorem canonicalSound2382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2382.moment H = canonicalOutput2382.moment H :=
  canonical_of_padded canonicalInput2382 canonicalOutput2382 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2383 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput2383 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩

theorem canonicalSound2383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2383.moment H = canonicalOutput2383.moment H :=
  canonical_of_padded canonicalInput2383 canonicalOutput2383 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2384 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2384 : ExponentCode := normalNode6293

theorem canonicalSound2384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2384.moment H = canonicalOutput2384.moment H :=
  canonical_of_padded canonicalInput2384 canonicalOutput2384 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2385 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput2385 : ExponentCode := normalNode9594

theorem canonicalSound2385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2385.moment H = canonicalOutput2385.moment H :=
  canonical_of_padded canonicalInput2385 canonicalOutput2385 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2386 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2386 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node889⟩

theorem canonicalSound2386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2386.moment H = canonicalOutput2386.moment H :=
  canonical_of_padded canonicalInput2386 canonicalOutput2386 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2387 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2387 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node750⟩

theorem canonicalSound2387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2387.moment H = canonicalOutput2387.moment H :=
  canonical_of_padded canonicalInput2387 canonicalOutput2387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2388 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput2388 : ExponentCode := normalNode6317

theorem canonicalSound2388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2388.moment H = canonicalOutput2388.moment H :=
  canonical_of_padded canonicalInput2388 canonicalOutput2388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2389 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2389 : ExponentCode := normalNode6317

theorem canonicalSound2389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2389.moment H = canonicalOutput2389.moment H :=
  canonical_of_padded canonicalInput2389 canonicalOutput2389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2390 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2390 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node754⟩

theorem canonicalSound2390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2390.moment H = canonicalOutput2390.moment H :=
  canonical_of_padded canonicalInput2390 canonicalOutput2390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2391 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2391 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node751⟩

theorem canonicalSound2391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2391.moment H = canonicalOutput2391.moment H :=
  canonical_of_padded canonicalInput2391 canonicalOutput2391 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2392 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2392 : ExponentCode := normalNode1080

theorem canonicalSound2392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2392.moment H = canonicalOutput2392.moment H :=
  canonical_of_padded canonicalInput2392 canonicalOutput2392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2393 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput2393 : ExponentCode := normalNode1081

theorem canonicalSound2393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2393.moment H = canonicalOutput2393.moment H :=
  canonical_of_padded canonicalInput2393 canonicalOutput2393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2394 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2394 : ExponentCode := normalNode6307

theorem canonicalSound2394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2394.moment H = canonicalOutput2394.moment H :=
  canonical_of_padded canonicalInput2394 canonicalOutput2394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2395 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2395 : ExponentCode := normalNode6308

theorem canonicalSound2395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2395.moment H = canonicalOutput2395.moment H :=
  canonical_of_padded canonicalInput2395 canonicalOutput2395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2396 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2396 : ExponentCode := normalNode6310

theorem canonicalSound2396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2396.moment H = canonicalOutput2396.moment H :=
  canonical_of_padded canonicalInput2396 canonicalOutput2396 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2397 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2397 : ExponentCode := normalNode6322

theorem canonicalSound2397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2397.moment H = canonicalOutput2397.moment H :=
  canonical_of_padded canonicalInput2397 canonicalOutput2397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2398 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2398 : ExponentCode := normalNode6325

theorem canonicalSound2398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2398.moment H = canonicalOutput2398.moment H :=
  canonical_of_padded canonicalInput2398 canonicalOutput2398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2399 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2399 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1442⟩

theorem canonicalSound2399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2399.moment H = canonicalOutput2399.moment H :=
  canonical_of_padded canonicalInput2399 canonicalOutput2399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2400 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2400 : ExponentCode := normalNode6320

theorem canonicalSound2400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2400.moment H = canonicalOutput2400.moment H :=
  canonical_of_padded canonicalInput2400 canonicalOutput2400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2401 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2401 : ExponentCode := normalNode6319

theorem canonicalSound2401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2401.moment H = canonicalOutput2401.moment H :=
  canonical_of_padded canonicalInput2401 canonicalOutput2401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2402 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2402 : ExponentCode := normalNode6319

theorem canonicalSound2402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2402.moment H = canonicalOutput2402.moment H :=
  canonical_of_padded canonicalInput2402 canonicalOutput2402 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2403 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput2403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node753⟩

theorem canonicalSound2403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2403.moment H = canonicalOutput2403.moment H :=
  canonical_of_padded canonicalInput2403 canonicalOutput2403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2404 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2404 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1446⟩

theorem canonicalSound2404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2404.moment H = canonicalOutput2404.moment H :=
  canonical_of_padded canonicalInput2404 canonicalOutput2404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2405 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput2405 : ExponentCode := normalNode1110

theorem canonicalSound2405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2405.moment H = canonicalOutput2405.moment H :=
  canonical_of_padded canonicalInput2405 canonicalOutput2405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2406 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2406 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node391⟩

theorem canonicalSound2406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2406.moment H = canonicalOutput2406.moment H :=
  canonical_of_padded canonicalInput2406 canonicalOutput2406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2407 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput2407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1233⟩

theorem canonicalSound2407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2407.moment H = canonicalOutput2407.moment H :=
  canonical_of_padded canonicalInput2407 canonicalOutput2407 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2408 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2408 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code248

theorem canonicalSound2408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2408.moment H = canonicalOutput2408.moment H :=
  canonical_of_padded canonicalInput2408 canonicalOutput2408 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2409 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2409 : ExponentCode := normalNode6321

theorem canonicalSound2409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2409.moment H = canonicalOutput2409.moment H :=
  canonical_of_padded canonicalInput2409 canonicalOutput2409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2410 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2410 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩

theorem canonicalSound2410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2410.moment H = canonicalOutput2410.moment H :=
  canonical_of_padded canonicalInput2410 canonicalOutput2410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2411 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, 1, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2411 : ExponentCode := normalNode6321

theorem canonicalSound2411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2411.moment H = canonicalOutput2411.moment H :=
  canonical_of_padded canonicalInput2411 canonicalOutput2411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2412 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, 2, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput2412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code248

theorem canonicalSound2412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2412.moment H = canonicalOutput2412.moment H :=
  canonical_of_padded canonicalInput2412 canonicalOutput2412 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2413 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput2413 : ExponentCode := normalNode6332

theorem canonicalSound2413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2413.moment H = canonicalOutput2413.moment H :=
  canonical_of_padded canonicalInput2413 canonicalOutput2413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2414 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2414 : ExponentCode := normalNode6326

theorem canonicalSound2414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2414.moment H = canonicalOutput2414.moment H :=
  canonical_of_padded canonicalInput2414 canonicalOutput2414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2415 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2415 : ExponentCode := normalNode6326

theorem canonicalSound2415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2415.moment H = canonicalOutput2415.moment H :=
  canonical_of_padded canonicalInput2415 canonicalOutput2415 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2416 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput2416 : ExponentCode := normalNode6331

theorem canonicalSound2416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2416.moment H = canonicalOutput2416.moment H :=
  canonical_of_padded canonicalInput2416 canonicalOutput2416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2417 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput2417 : ExponentCode := normalNode9129

theorem canonicalSound2417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2417.moment H = canonicalOutput2417.moment H :=
  canonical_of_padded canonicalInput2417 canonicalOutput2417 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2418 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2418 : ExponentCode := normalNode6327

theorem canonicalSound2418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2418.moment H = canonicalOutput2418.moment H :=
  canonical_of_padded canonicalInput2418 canonicalOutput2418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2419 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2419 : ExponentCode := normalNode6328

theorem canonicalSound2419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2419.moment H = canonicalOutput2419.moment H :=
  canonical_of_padded canonicalInput2419 canonicalOutput2419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2420 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2420 : ExponentCode := normalNode6328

theorem canonicalSound2420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2420.moment H = canonicalOutput2420.moment H :=
  canonical_of_padded canonicalInput2420 canonicalOutput2420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2421 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![1, 1, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2421 : ExponentCode := normalNode6327

theorem canonicalSound2421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2421.moment H = canonicalOutput2421.moment H :=
  canonical_of_padded canonicalInput2421 canonicalOutput2421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2422 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2422 : ExponentCode := normalNode6315

theorem canonicalSound2422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2422.moment H = canonicalOutput2422.moment H :=
  canonical_of_padded canonicalInput2422 canonicalOutput2422 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2423 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2423 : ExponentCode := normalNode6316

theorem canonicalSound2423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2423.moment H = canonicalOutput2423.moment H :=
  canonical_of_padded canonicalInput2423 canonicalOutput2423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2424 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput2424 : ExponentCode := normalNode9595

theorem canonicalSound2424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2424.moment H = canonicalOutput2424.moment H :=
  canonical_of_padded canonicalInput2424 canonicalOutput2424 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2425 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput2425 : ExponentCode := normalNode6332

theorem canonicalSound2425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2425.moment H = canonicalOutput2425.moment H :=
  canonical_of_padded canonicalInput2425 canonicalOutput2425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2426 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput2426 : ExponentCode := normalNode1120

theorem canonicalSound2426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2426.moment H = canonicalOutput2426.moment H :=
  canonical_of_padded canonicalInput2426 canonicalOutput2426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2427 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput2427 : ExponentCode := normalNode1119

theorem canonicalSound2427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2427.moment H = canonicalOutput2427.moment H :=
  canonical_of_padded canonicalInput2427 canonicalOutput2427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2428 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput2428 : ExponentCode := normalNode9451

theorem canonicalSound2428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2428.moment H = canonicalOutput2428.moment H :=
  canonical_of_padded canonicalInput2428 canonicalOutput2428 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2429 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput2429 : ExponentCode := normalNode9455

theorem canonicalSound2429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2429.moment H = canonicalOutput2429.moment H :=
  canonical_of_padded canonicalInput2429 canonicalOutput2429 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2430 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def canonicalOutput2430 : ExponentCode := normalNode9456

theorem canonicalSound2430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2430.moment H = canonicalOutput2430.moment H :=
  canonical_of_padded canonicalInput2430 canonicalOutput2430 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2431 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput2431 : ExponentCode := normalNode9977

theorem canonicalSound2431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2431.moment H = canonicalOutput2431.moment H :=
  canonical_of_padded canonicalInput2431 canonicalOutput2431 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2432 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput2432 : ExponentCode := normalNode11090

theorem canonicalSound2432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2432.moment H = canonicalOutput2432.moment H :=
  canonical_of_padded canonicalInput2432 canonicalOutput2432 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2433 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput2433 : ExponentCode := normalNode9402

theorem canonicalSound2433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2433.moment H = canonicalOutput2433.moment H :=
  canonical_of_padded canonicalInput2433 canonicalOutput2433 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2434 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput2434 : ExponentCode := normalNode9401

theorem canonicalSound2434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2434.moment H = canonicalOutput2434.moment H :=
  canonical_of_padded canonicalInput2434 canonicalOutput2434 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2435 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput2435 : ExponentCode := normalNode9591

theorem canonicalSound2435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2435.moment H = canonicalOutput2435.moment H :=
  canonical_of_padded canonicalInput2435 canonicalOutput2435 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2436 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput2436 : ExponentCode := normalNode6335

theorem canonicalSound2436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2436.moment H = canonicalOutput2436.moment H :=
  canonical_of_padded canonicalInput2436 canonicalOutput2436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2437 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput2437 : ExponentCode := normalNode6335

theorem canonicalSound2437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2437.moment H = canonicalOutput2437.moment H :=
  canonical_of_padded canonicalInput2437 canonicalOutput2437 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2438 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2438 : ExponentCode := normalNode6326

theorem canonicalSound2438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2438.moment H = canonicalOutput2438.moment H :=
  canonical_of_padded canonicalInput2438 canonicalOutput2438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2439 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1439⟩

theorem canonicalSound2439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2439.moment H = canonicalOutput2439.moment H :=
  canonical_of_padded canonicalInput2439 canonicalOutput2439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2440 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2440 : ExponentCode := normalNode359

theorem canonicalSound2440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2440.moment H = canonicalOutput2440.moment H :=
  canonical_of_padded canonicalInput2440 canonicalOutput2440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2441 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1440⟩

theorem canonicalSound2441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2441.moment H = canonicalOutput2441.moment H :=
  canonical_of_padded canonicalInput2441 canonicalOutput2441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2442 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput2442 : ExponentCode := normalNode7215

theorem canonicalSound2442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2442.moment H = canonicalOutput2442.moment H :=
  canonical_of_padded canonicalInput2442 canonicalOutput2442 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2443 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput2443 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩

theorem canonicalSound2443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2443.moment H = canonicalOutput2443.moment H :=
  canonical_of_padded canonicalInput2443 canonicalOutput2443 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2444 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1441⟩

theorem canonicalSound2444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2444.moment H = canonicalOutput2444.moment H :=
  canonical_of_padded canonicalInput2444 canonicalOutput2444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2445 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput2445 : ExponentCode := normalNode1128

theorem canonicalSound2445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2445.moment H = canonicalOutput2445.moment H :=
  canonical_of_padded canonicalInput2445 canonicalOutput2445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2446 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput2446 : ExponentCode := normalNode7220

theorem canonicalSound2446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2446.moment H = canonicalOutput2446.moment H :=
  canonical_of_padded canonicalInput2446 canonicalOutput2446 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2447 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 3, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput2447 : ExponentCode := normalNode9593

theorem canonicalSound2447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2447.moment H = canonicalOutput2447.moment H :=
  canonical_of_padded canonicalInput2447 canonicalOutput2447 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2448 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput2448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1161⟩

theorem canonicalSound2448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2448.moment H = canonicalOutput2448.moment H :=
  canonical_of_padded canonicalInput2448 canonicalOutput2448 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2449 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2449 : ExponentCode := normalNode7227

theorem canonicalSound2449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2449.moment H = canonicalOutput2449.moment H :=
  canonical_of_padded canonicalInput2449 canonicalOutput2449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2450 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2450 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩

theorem canonicalSound2450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2450.moment H = canonicalOutput2450.moment H :=
  canonical_of_padded canonicalInput2450 canonicalOutput2450 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2451 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput2451 : ExponentCode := normalNode7198

theorem canonicalSound2451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2451.moment H = canonicalOutput2451.moment H :=
  canonical_of_padded canonicalInput2451 canonicalOutput2451 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2452 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput2452 : ExponentCode := normalNode9592

theorem canonicalSound2452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2452.moment H = canonicalOutput2452.moment H :=
  canonical_of_padded canonicalInput2452 canonicalOutput2452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2453 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2453 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound2453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2453.moment H = canonicalOutput2453.moment H :=
  canonical_of_padded canonicalInput2453 canonicalOutput2453 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2454 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput2454 : ExponentCode := normalNode9592

theorem canonicalSound2454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2454.moment H = canonicalOutput2454.moment H :=
  canonical_of_padded canonicalInput2454 canonicalOutput2454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2455 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2455 : ExponentCode := normalNode6319

theorem canonicalSound2455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2455.moment H = canonicalOutput2455.moment H :=
  canonical_of_padded canonicalInput2455 canonicalOutput2455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2456 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2456 : ExponentCode := normalNode371

theorem canonicalSound2456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2456.moment H = canonicalOutput2456.moment H :=
  canonical_of_padded canonicalInput2456 canonicalOutput2456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2457 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput2457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩

theorem canonicalSound2457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2457.moment H = canonicalOutput2457.moment H :=
  canonical_of_padded canonicalInput2457 canonicalOutput2457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2458 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2458 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1451⟩

theorem canonicalSound2458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2458.moment H = canonicalOutput2458.moment H :=
  canonical_of_padded canonicalInput2458 canonicalOutput2458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2459 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput2459 : ExponentCode := normalNode1130

theorem canonicalSound2459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2459.moment H = canonicalOutput2459.moment H :=
  canonical_of_padded canonicalInput2459 canonicalOutput2459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2460 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2460 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node392⟩

theorem canonicalSound2460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2460.moment H = canonicalOutput2460.moment H :=
  canonical_of_padded canonicalInput2460 canonicalOutput2460 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2461 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2461 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1240⟩

theorem canonicalSound2461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2461.moment H = canonicalOutput2461.moment H :=
  canonical_of_padded canonicalInput2461 canonicalOutput2461 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2462 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2462 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node393⟩

theorem canonicalSound2462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2462.moment H = canonicalOutput2462.moment H :=
  canonical_of_padded canonicalInput2462 canonicalOutput2462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2463 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2463 : ExponentCode := normalNode6334

theorem canonicalSound2463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2463.moment H = canonicalOutput2463.moment H :=
  canonical_of_padded canonicalInput2463 canonicalOutput2463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2464 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2464 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node750⟩

theorem canonicalSound2464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2464.moment H = canonicalOutput2464.moment H :=
  canonical_of_padded canonicalInput2464 canonicalOutput2464 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2465 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2465 : ExponentCode := normalNode6334

theorem canonicalSound2465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2465.moment H = canonicalOutput2465.moment H :=
  canonical_of_padded canonicalInput2465 canonicalOutput2465 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2466 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, 1, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput2466 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node393⟩

theorem canonicalSound2466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2466.moment H = canonicalOutput2466.moment H :=
  canonical_of_padded canonicalInput2466 canonicalOutput2466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2467 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2467 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1441⟩

theorem canonicalSound2467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2467.moment H = canonicalOutput2467.moment H :=
  canonical_of_padded canonicalInput2467 canonicalOutput2467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput2468 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2468 : ExponentCode := normalNode1131

theorem canonicalSound2468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2468.moment H = canonicalOutput2468.moment H :=
  canonical_of_padded canonicalInput2468 canonicalOutput2468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2469 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2469 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code260

theorem canonicalSound2469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2469.moment H = canonicalOutput2469.moment H :=
  canonical_of_padded canonicalInput2469 canonicalOutput2469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2470 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2470 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩

theorem canonicalSound2470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2470.moment H = canonicalOutput2470.moment H :=
  canonical_of_padded canonicalInput2470 canonicalOutput2470 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2471 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2471 : ExponentCode := normalNode6333

theorem canonicalSound2471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2471.moment H = canonicalOutput2471.moment H :=
  canonical_of_padded canonicalInput2471 canonicalOutput2471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2472 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2472 : ExponentCode := normalNode6333

theorem canonicalSound2472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2472.moment H = canonicalOutput2472.moment H :=
  canonical_of_padded canonicalInput2472 canonicalOutput2472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2473 : ExponentCode := ⟨5, 4, ![![-2, -1, -2, 5], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2473 : ExponentCode := normalNode1129

theorem canonicalSound2473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2473.moment H = canonicalOutput2473.moment H :=
  canonical_of_padded canonicalInput2473 canonicalOutput2473 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2474 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput2474 : ExponentCode := normalNode9127

theorem canonicalSound2474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2474.moment H = canonicalOutput2474.moment H :=
  canonical_of_padded canonicalInput2474 canonicalOutput2474 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2475 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2475 : ExponentCode := normalNode9083

theorem canonicalSound2475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2475.moment H = canonicalOutput2475.moment H :=
  canonical_of_padded canonicalInput2475 canonicalOutput2475 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2476 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2476 : ExponentCode := normalNode9083

theorem canonicalSound2476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2476.moment H = canonicalOutput2476.moment H :=
  canonical_of_padded canonicalInput2476 canonicalOutput2476 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2477 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput2477 : ExponentCode := normalNode10356

theorem canonicalSound2477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2477.moment H = canonicalOutput2477.moment H :=
  canonical_of_padded canonicalInput2477 canonicalOutput2477 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2478 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, -1, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2478 : ExponentCode := normalNode7199

theorem canonicalSound2478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2478.moment H = canonicalOutput2478.moment H :=
  canonical_of_padded canonicalInput2478 canonicalOutput2478 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2479 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2479 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1258⟩

theorem canonicalSound2479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2479.moment H = canonicalOutput2479.moment H :=
  canonical_of_padded canonicalInput2479 canonicalOutput2479 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2480 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2480 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node392⟩

theorem canonicalSound2480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2480.moment H = canonicalOutput2480.moment H :=
  canonical_of_padded canonicalInput2480 canonicalOutput2480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2481 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2481 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node753⟩

theorem canonicalSound2481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2481.moment H = canonicalOutput2481.moment H :=
  canonical_of_padded canonicalInput2481 canonicalOutput2481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2482 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 0, -2], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2482 : ExponentCode := normalNode10231

theorem canonicalSound2482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2482.moment H = canonicalOutput2482.moment H :=
  canonical_of_padded canonicalInput2482 canonicalOutput2482 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2483 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2483 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound2483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2483.moment H = canonicalOutput2483.moment H :=
  canonical_of_padded canonicalInput2483 canonicalOutput2483 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2484 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 1, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2484 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩

theorem canonicalSound2484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2484.moment H = canonicalOutput2484.moment H :=
  canonical_of_padded canonicalInput2484 canonicalOutput2484 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2485 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 1, -3], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2485 : ExponentCode := normalNode9131

theorem canonicalSound2485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2485.moment H = canonicalOutput2485.moment H :=
  canonical_of_padded canonicalInput2485 canonicalOutput2485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2486 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2486 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1030⟩

theorem canonicalSound2486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2486.moment H = canonicalOutput2486.moment H :=
  canonical_of_padded canonicalInput2486 canonicalOutput2486 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2487 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 2, -4], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2487 : ExponentCode := normalNode9130

theorem canonicalSound2487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2487.moment H = canonicalOutput2487.moment H :=
  canonical_of_padded canonicalInput2487 canonicalOutput2487 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2488 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2488 : ExponentCode := normalNode9121

theorem canonicalSound2488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2488.moment H = canonicalOutput2488.moment H :=
  canonical_of_padded canonicalInput2488 canonicalOutput2488 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2489 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 1, -1], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node393⟩

theorem canonicalSound2489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2489.moment H = canonicalOutput2489.moment H :=
  canonical_of_padded canonicalInput2489 canonicalOutput2489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2490 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 1, -1], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2490 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩

theorem canonicalSound2490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2490.moment H = canonicalOutput2490.moment H :=
  canonical_of_padded canonicalInput2490 canonicalOutput2490 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2491 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 2, -2], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2491 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code261

theorem canonicalSound2491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2491.moment H = canonicalOutput2491.moment H :=
  canonical_of_padded canonicalInput2491 canonicalOutput2491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2492 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 2, -2], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2492 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code264

theorem canonicalSound2492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2492.moment H = canonicalOutput2492.moment H :=
  canonical_of_padded canonicalInput2492 canonicalOutput2492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2493 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 2, -2], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2493 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node753⟩

theorem canonicalSound2493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2493.moment H = canonicalOutput2493.moment H :=
  canonical_of_padded canonicalInput2493 canonicalOutput2493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2494 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 2, -2], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2494 : ExponentCode := normalNode9131

theorem canonicalSound2494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2494.moment H = canonicalOutput2494.moment H :=
  canonical_of_padded canonicalInput2494 canonicalOutput2494 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2495 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 3, -3], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2495 : ExponentCode := normalNode7199

theorem canonicalSound2495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2495.moment H = canonicalOutput2495.moment H :=
  canonical_of_padded canonicalInput2495 canonicalOutput2495 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
